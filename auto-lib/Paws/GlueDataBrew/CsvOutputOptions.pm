# Generated by default/object.tt
package Paws::GlueDataBrew::CsvOutputOptions;
  use Moose;
  has Delimiter => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::CsvOutputOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GlueDataBrew::CsvOutputOptions object:

  $service_obj->Method(Att1 => { Delimiter => $value, ..., Delimiter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GlueDataBrew::CsvOutputOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->Delimiter

=head1 DESCRIPTION

Represents a set of options that define how DataBrew will write a
comma-separated value (CSV) file.

=head1 ATTRIBUTES


=head2 Delimiter => Str

A single character that specifies the delimiter used to create CSV job
output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

