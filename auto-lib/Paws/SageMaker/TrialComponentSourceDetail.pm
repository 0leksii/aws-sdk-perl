# Generated by default/object.tt
package Paws::SageMaker::TrialComponentSourceDetail;
  use Moose;
  has ProcessingJob => (is => 'ro', isa => 'Paws::SageMaker::ProcessingJob');
  has SourceArn => (is => 'ro', isa => 'Str');
  has TrainingJob => (is => 'ro', isa => 'Paws::SageMaker::TrainingJob');
  has TransformJob => (is => 'ro', isa => 'Paws::SageMaker::TransformJob');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TrialComponentSourceDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TrialComponentSourceDetail object:

  $service_obj->Method(Att1 => { ProcessingJob => $value, ..., TransformJob => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TrialComponentSourceDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ProcessingJob

=head1 DESCRIPTION

Detailed information about the source of a trial component. Either
C<ProcessingJob> or C<TrainingJob> is returned.

=head1 ATTRIBUTES


=head2 ProcessingJob => L<Paws::SageMaker::ProcessingJob>

Information about a processing job that's the source of a trial
component.


=head2 SourceArn => Str

The Amazon Resource Name (ARN) of the source.


=head2 TrainingJob => L<Paws::SageMaker::TrainingJob>

Information about a training job that's the source of a trial
component.


=head2 TransformJob => L<Paws::SageMaker::TransformJob>

Information about a transform job that's the source of a trial
component.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

