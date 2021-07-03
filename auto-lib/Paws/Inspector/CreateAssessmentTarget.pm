
package Paws::Inspector::CreateAssessmentTarget;
  use Moose;
  has AssessmentTargetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentTargetName' , required => 1);
  has ResourceGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceGroupArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssessmentTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::CreateAssessmentTargetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateAssessmentTarget - Arguments for method CreateAssessmentTarget on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssessmentTarget on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method CreateAssessmentTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssessmentTarget.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
  # Create assessment target
  # Creates a new assessment target using the ARN of the resource group that is
  # generated by CreateResourceGroup. You can create up to 50 assessment targets
  # per AWS account. You can run up to 500 concurrent agents per AWS account.
    my $CreateAssessmentTargetResponse = $inspector->CreateAssessmentTarget(
      'AssessmentTargetName' => 'ExampleAssessmentTarget',
      'ResourceGroupArn'     =>
        'arn:aws:inspector:us-west-2:123456789012:resourcegroup/0-AB6DMKnv'
    );

    # Results:
    my $assessmentTargetArn =
      $CreateAssessmentTargetResponse->assessmentTargetArn;

    # Returns a L<Paws::Inspector::CreateAssessmentTargetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/CreateAssessmentTarget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargetName => Str

The user-defined name that identifies the assessment target that you
want to create. The name must be unique within the AWS account.



=head2 ResourceGroupArn => Str

The ARN that specifies the resource group that is used to create the
assessment target. If resourceGroupArn is not specified, all EC2
instances in the current AWS account and region are included in the
assessment target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssessmentTarget in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

