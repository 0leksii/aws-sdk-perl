use MooseX::Declare;
use Moose::Util::TypeConstraints;

role AWS::API::Attribute::Trait::Unwrapped {
  use Moose::Util;
  Moose::Util::meta_attribute_alias('Unwrapped');
  has xmlname => (is => 'ro', isa => 'Str');
}

class AWS::Common::Tag with AWS::API::ResultParser {
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::API::Integer {
  has Value => (isa => 'Int', is => 'ro', required => 1);
  method to_params (Str $param_name) { ($param_name => $self->Value) }
}

coerce 'AWS::API::Integer', from 'Int', via { AWS::API::Integer->new(Value => $_) };

class AWS::API::String {
  has Value => (isa => 'Str', is => 'rw', required => 1);
  method to_params (Str $param_name) { ($param_name => $self->Value) }
}

coerce 'AWS::API::String', from 'Str', via { AWS::API::String->new(Value => $_) };

class AWS::API::Boolean {
  has Value => (isa => 'Bool', is => 'rw', required => 1);
  #where { $_ eq 'true' or $_ eq 'false' };
  method to_params (Str $param_name) { ( $param_name => ($self->Value?'true':'false') ) }
}

coerce 'AWS::API::Boolean', from 'Str', via { 
  my $val = $_;
  $val = 1 if ($val eq 'true');
  $val = 0 if ($val eq 'false');
  AWS::API::Boolean->new(Value => $_) 
};

class AWS::API::StringList {
  has Value => (isa => 'ArrayRef[Str]', is => 'rw', required => 1);

  method to_params (Str $param_name) {
    my $i = 1;
    my %params;
    foreach my $value (@{ $self->Value }){
      $params{ sprintf("%s.member.%d", $param_name, $i) } = $value;
      $i++
    }
    return %params
  }
}

coerce 'AWS::API::StringList',
  from 'ArrayRef',
   via { AWS::API::StringList->new( Value => $_ ) };

role AWS::API::RegionalEndpointCaller {
  has region => (is => 'rw', isa => 'Str');
  requires 'service';

  method endpoint_host {
    return sprintf '%s.%s.amazonaws.com', $self->service, $self->region;
  }

  method _api_endpoint {
    return sprintf '%s://%s/', 'https', $self->endpoint_host;
  }
}

role AWS::API::SingleEndpointCaller {
  requires 'service';

  method region {
    # http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    # For services that use a globally unique endpoint, such as IAM, use us-east-1
    return 'us-east-1';
  }

  method endpoint_host {
    return sprintf '%s.amazonaws.com', $self->service;
  }

  method _api_endpoint {
    return sprintf '%s://%s/', 'https', $self->endpoint_host;
  }
}

role AWS::API::MapParser {
  sub from_result {
    my ($class, $result) = @_;
    $class->new(map { ($_->{ key } => $_->{ value }) } @$result);
  }

  sub result_to_args {
    die "Should this be deprecated??\n";
    my ($class, $result) = @_;
    $class->new(map { ($_->{ key } => $_->{ value }) } @$result);
  }
}

role AWS::API::StrToStrMapParser {
  sub from_result {
    my ($class, $result) = @_;
    $class->new(Map => { %$result });  
  }

  sub result_to_args {
    die "Should this be deprecated??\n";
    my ($class, $result) = @_;
    $class->new(Map => { %$result });
  }
}

role AWS::API::ToParams {
  sub _to_params {
    my ($self) = @_;
    my $params = {};
    foreach my $att ($self->meta->get_attribute_list) {
      $params->{$att} = $self->$att();
    }
    return $params;
  }
}

role AWS::API::UnwrappedParser {
  sub result_to_args {
    my ($class, $result) = @_;
    my %args;

    foreach my $att ($class->meta->get_attribute_list) {
      next if (not my $meta = $class->meta->get_attribute($att));
      my $key = $meta->xmlname;

      if (not ref($result->{ $key })) {
        if (defined $result->{ $key }){
          $args{ $att } = $result->{ $key };
        }
      } elsif (exists $result->{ $key }{ item } and ref($result->{ $key }{ item }) eq 'ARRAY'){
        if ($class->meta->get_attribute($att)->type_constraint =~ m/^ArrayRef\[(.*)\]/) {
          my $att_class = $1;
          if ($att_class eq 'HashRef') {
            warn "Hey!!! I found a HashRef Attribute!!!";
            $args{ $att } = $result->{ $key };
          } else {
            $args{ $att } = [ map { $att_class->from_result( $_ ) } @{ $result->{ $key }{ item } } ];
          }
        } else {
          die "Found a member in the result, but the attribute $key isn't an ArrayRef";
        }
      } elsif (exists $result->{ $key }{ item } and ref($result->{ $key }{ item }) eq 'HASH'){
        if ($class->meta->get_attribute($key)->type_constraint =~ m/^ArrayRef\[(.*)\]/) {
          my $att_class = $1;
          $args{ $att } = [ $att_class->from_result( $result->{ $key }{ item } ) ];
        } else {
          die "Found a member in the result, but the attribute $key isn't an ArrayRef";
        }
      } elsif (exists $result->{ $key }{ item } and not ref($result->{ $key }{ item }) ) {
        $args{ $att } = [ $result->{ $key }{ item } ];
      } elsif (exists $result->{ $key }{ entry }) {
        my $att_class = $class->meta->get_attribute($att)->type_constraint->class;
        $args{ $att } = $att_class->result_to_args( $result->{ $key }{ entry } ); 
      } elsif (ref($result->{ $key }) eq 'HASH') {
        my $att_class = $class->meta->get_attribute($att)->type_constraint->class;
        $att_class->new(%{ $result->{ $key } });
      } else {
        die "not implemented yet: $key $result->{ $key } ...";
      }
    }
    return %args;
  }

  sub from_result {
    my ($class, $result) = @_;
    my %args = $class->result_to_args($result, $class);
    return $class->new(%args);
  }
}

role AWS::API::ResultParser {
  sub result_to_args {
    my ($class, $result) = @_;
    my %args;

    foreach my $key ($class->meta->get_attribute_list) {
      next if (not my $meta = $class->meta->get_attribute($key));

      #use Data::Dumper;
      #print STDERR "ATTRIBUTE: $key: ", $meta->type_constraint, " result: ", Dumper($result->{$key});
      my $att_type = $meta->type_constraint;

      my $value = $result->{ $key };
      my $value_ref = ref($value);
      if ($value_ref eq 'HASH') {
        if (exists $value->{ member }) {
          $value = $value->{ member };
        } elsif (exists $value->{ entry }) {
          $value = $value->{ entry  };
        }
      }
      $value_ref = ref($value);

      #print STDERR "GOING TO DO AN $att_type\n";
      #print STDERR "VALUE: " . Dumper($value);
      #print STDERR "REF de \$value" . ref($value) . "\n";

      # We'll consider that an attribute without brackets [] isn't an array type
      if ($att_type !~ m/\[.*\]$/) {
        if ($att_type =~ m/\:\:/) {
          if (defined $value) {
            if (not $value_ref) {
              $args{ $key } = $value;
            } else {
              #my $class = ("$att_type" eq 'Moose::Meta::TypeConstraint::Class') ? $att_type->class : $att_type;
              my $class = $att_type->class;
              $args{ $key } = $class->from_result( $value );
            }
          }
        } else {
          $args{ $key } = $result->{ $key } if (defined $result->{ $key });
        }
      } elsif (my ($type) = ($att_type =~ m/^ArrayRef\[(.*)\]$/)) {
        if ($type =~ m/\:\:/) {
          if (not defined $value) {
            $args{ $key } = [ ];
          } elsif ($value_ref eq 'ARRAY') {
            $args{ $key } = [ map { $type->from_result( $_ ) } @$value ] ;
          } elsif ($value_ref eq 'HASH') {
            $args{ $key } = [ $type->from_result( $value ) ];
          }
        } else {
          if (defined $value){
            if ($value_ref eq 'ARRAY') {
              $args{ $key } = $result->{ $key }->{ member }; 
            } else {
              $args{ $key } = [ $result->{ $key }->{ member } ];
            }
          }
        }
      }
    }
    return %args;
  }

  sub from_result {
    my ($class, $result) = @_;
    my %args = $class->result_to_args($result, $class);
    return $class->new(%args);
  }
}


