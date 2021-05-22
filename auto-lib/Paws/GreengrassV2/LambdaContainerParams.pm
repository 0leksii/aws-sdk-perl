# Generated by default/object.tt
package Paws::GreengrassV2::LambdaContainerParams;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::LambdaDeviceMount]', request_name => 'devices', traits => ['NameInRequest']);
  has MemorySizeInKB => (is => 'ro', isa => 'Int', request_name => 'memorySizeInKB', traits => ['NameInRequest']);
  has MountROSysfs => (is => 'ro', isa => 'Bool', request_name => 'mountROSysfs', traits => ['NameInRequest']);
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::LambdaVolumeMount]', request_name => 'volumes', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::LambdaContainerParams

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GreengrassV2::LambdaContainerParams object:

  $service_obj->Method(Att1 => { Devices => $value, ..., Volumes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GreengrassV2::LambdaContainerParams object:

  $result = $service_obj->Method(...);
  $result->Att1->Devices

=head1 DESCRIPTION

Contains information about a container in which AWS Lambda functions
run on AWS IoT Greengrass core devices.

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[L<Paws::GreengrassV2::LambdaDeviceMount>]

The list of system devices that the container can access.


=head2 MemorySizeInKB => Int

The memory size of the container, expressed in kilobytes.

Default: C<16384> (16 MB)


=head2 MountROSysfs => Bool

Whether or not the container can read information from the device's
C</sys> folder.

Default: C<false>


=head2 Volumes => ArrayRef[L<Paws::GreengrassV2::LambdaVolumeMount>]

The list of volumes that the container can access.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

