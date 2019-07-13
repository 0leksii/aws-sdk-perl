package Paws::DirectConnect::AssociatedGateway;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has OwnerAccount => (is => 'ro', isa => 'Str', request_name => 'ownerAccount', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::AssociatedGateway

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::AssociatedGateway object:

  $service_obj->Method(Att1 => { Id => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::AssociatedGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Information about the associated gateway.

=head1 ATTRIBUTES


=head2 Id => Str

  The ID of the associated gateway.


=head2 OwnerAccount => Str

  The ID of the AWS account that owns the associated virtual private
gateway or transit gateway.


=head2 Region => Str

  The Region where the associated gateway is located.


=head2 Type => Str

  The type of associated gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

