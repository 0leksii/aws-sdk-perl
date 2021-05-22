# Generated by default/object.tt
package Paws::NimbleStudio::LaunchProfileInitialization;
  use Moose;
  has ActiveDirectory => (is => 'ro', isa => 'Paws::NimbleStudio::LaunchProfileInitializationActiveDirectory', request_name => 'activeDirectory', traits => ['NameInRequest']);
  has Ec2SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ec2SecurityGroupIds', traits => ['NameInRequest']);
  has LaunchProfileId => (is => 'ro', isa => 'Str', request_name => 'launchProfileId', traits => ['NameInRequest']);
  has LaunchProfileProtocolVersion => (is => 'ro', isa => 'Str', request_name => 'launchProfileProtocolVersion', traits => ['NameInRequest']);
  has LaunchPurpose => (is => 'ro', isa => 'Str', request_name => 'launchPurpose', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has SystemInitializationScripts => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::LaunchProfileInitializationScript]', request_name => 'systemInitializationScripts', traits => ['NameInRequest']);
  has UserInitializationScripts => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::LaunchProfileInitializationScript]', request_name => 'userInitializationScripts', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::LaunchProfileInitialization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NimbleStudio::LaunchProfileInitialization object:

  $service_obj->Method(Att1 => { ActiveDirectory => $value, ..., UserInitializationScripts => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NimbleStudio::LaunchProfileInitialization object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveDirectory

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ActiveDirectory => L<Paws::NimbleStudio::LaunchProfileInitializationActiveDirectory>

A LaunchProfileInitializationActiveDirectory resource.


=head2 Ec2SecurityGroupIds => ArrayRef[Str|Undef]

The EC2 security groups that control access to the studio component.


=head2 LaunchProfileId => Str

The launch profile ID.


=head2 LaunchProfileProtocolVersion => Str

The version number of the protocol that is used by the launch profile.
The only valid version is "2021-03-31".


=head2 LaunchPurpose => Str

The launch purpose.


=head2 Name => Str

The name for the launch profile.


=head2 Platform => Str

The platform of the launch platform, either WINDOWS or LINUX.


=head2 SystemInitializationScripts => ArrayRef[L<Paws::NimbleStudio::LaunchProfileInitializationScript>]

The system initializtion scripts.


=head2 UserInitializationScripts => ArrayRef[L<Paws::NimbleStudio::LaunchProfileInitializationScript>]

The user initializtion scripts.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

