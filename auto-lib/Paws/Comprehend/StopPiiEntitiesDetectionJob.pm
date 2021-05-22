
package Paws::Comprehend::StopPiiEntitiesDetectionJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopPiiEntitiesDetectionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::StopPiiEntitiesDetectionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StopPiiEntitiesDetectionJob - Arguments for method StopPiiEntitiesDetectionJob on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopPiiEntitiesDetectionJob on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method StopPiiEntitiesDetectionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopPiiEntitiesDetectionJob.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $StopPiiEntitiesDetectionJobResponse =
      $comprehend->StopPiiEntitiesDetectionJob(
      JobId => 'MyJobId',

      );

    # Results:
    my $JobId     = $StopPiiEntitiesDetectionJobResponse->JobId;
    my $JobStatus = $StopPiiEntitiesDetectionJobResponse->JobStatus;

    # Returns a L<Paws::Comprehend::StopPiiEntitiesDetectionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/StopPiiEntitiesDetectionJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier of the PII entities detection job to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopPiiEntitiesDetectionJob in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

