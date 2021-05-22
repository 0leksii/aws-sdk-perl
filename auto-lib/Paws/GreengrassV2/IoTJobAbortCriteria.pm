# Generated by default/object.tt
package Paws::GreengrassV2::IoTJobAbortCriteria;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', request_name => 'action', traits => ['NameInRequest'], required => 1);
  has FailureType => (is => 'ro', isa => 'Str', request_name => 'failureType', traits => ['NameInRequest'], required => 1);
  has MinNumberOfExecutedThings => (is => 'ro', isa => 'Int', request_name => 'minNumberOfExecutedThings', traits => ['NameInRequest'], required => 1);
  has ThresholdPercentage => (is => 'ro', isa => 'Num', request_name => 'thresholdPercentage', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::IoTJobAbortCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GreengrassV2::IoTJobAbortCriteria object:

  $service_obj->Method(Att1 => { Action => $value, ..., ThresholdPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GreengrassV2::IoTJobAbortCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Contains criteria that define when and how to cancel a job.

The deployment stops if the following conditions are true:

=over

=item 1.

The number of things that receive the deployment exceeds the
C<minNumberOfExecutedThings>.

=item 2.

The percentage of failures with type C<failureType> exceeds the
C<thresholdPercentage>.

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The action to perform when the criteria are met.


=head2 B<REQUIRED> FailureType => Str

The type of job deployment failure that can cancel a job.


=head2 B<REQUIRED> MinNumberOfExecutedThings => Int

The minimum number of things that receive the configuration before the
job can cancel.


=head2 B<REQUIRED> ThresholdPercentage => Num

The minimum percentage of C<failureType> failures that occur before the
job can cancel.

This parameter supports up to two digits after the decimal (for
example, you can specify C<10.9> or C<10.99>, but not C<10.999>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

