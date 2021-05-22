# Generated by default/object.tt
package Paws::GreengrassV2::IoTJobTimeoutConfig;
  use Moose;
  has InProgressTimeoutInMinutes => (is => 'ro', isa => 'Int', request_name => 'inProgressTimeoutInMinutes', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::IoTJobTimeoutConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GreengrassV2::IoTJobTimeoutConfig object:

  $service_obj->Method(Att1 => { InProgressTimeoutInMinutes => $value, ..., InProgressTimeoutInMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GreengrassV2::IoTJobTimeoutConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->InProgressTimeoutInMinutes

=head1 DESCRIPTION

Contains information about the timeout configuration for a job.

=head1 ATTRIBUTES


=head2 InProgressTimeoutInMinutes => Int

The amount of time, in minutes, that devices have to complete the job.
The timer starts when the job status is set to C<IN_PROGRESS>. If the
job status doesn't change to a terminal state before the time expires,
then the job status is set to C<TIMED_OUT>.

The timeout interval must be between 1 minute and 7 days (10080
minutes).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

