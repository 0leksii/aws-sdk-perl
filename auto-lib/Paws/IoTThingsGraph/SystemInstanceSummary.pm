package Paws::IoTThingsGraph::SystemInstanceSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has GreengrassGroupId => (is => 'ro', isa => 'Str', request_name => 'greengrassGroupId', traits => ['NameInRequest']);
  has GreengrassGroupName => (is => 'ro', isa => 'Str', request_name => 'greengrassGroupName', traits => ['NameInRequest']);
  has GreengrassGroupVersionId => (is => 'ro', isa => 'Str', request_name => 'greengrassGroupVersionId', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Target => (is => 'ro', isa => 'Str', request_name => 'target', traits => ['NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SystemInstanceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTThingsGraph::SystemInstanceSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTThingsGraph::SystemInstanceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An object that contains summary information about a system instance.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the system instance.


=head2 CreatedAt => Str

  The date when the system instance was created.


=head2 GreengrassGroupId => Str

  The ID of the Greengrass group where the system instance is deployed.


=head2 GreengrassGroupName => Str

  The ID of the Greengrass group where the system instance is deployed.


=head2 GreengrassGroupVersionId => Str

  The version of the Greengrass group where the system instance is
deployed.


=head2 Id => Str

  The ID of the system instance.


=head2 Status => Str

  The status of the system instance.


=head2 Target => Str

  The target of the system instance.


=head2 UpdatedAt => Str

  The date and time when the system instance was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

