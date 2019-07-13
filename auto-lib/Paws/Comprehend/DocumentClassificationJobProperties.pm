package Paws::Comprehend::DocumentClassificationJobProperties;
  use Moose;
  has DataAccessRoleArn => (is => 'ro', isa => 'Str');
  has DocumentClassifierArn => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::InputDataConfig');
  has JobId => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::OutputDataConfig');
  has SubmitTime => (is => 'ro', isa => 'Str');
  has VolumeKmsKeyId => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::Comprehend::VpcConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DocumentClassificationJobProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::DocumentClassificationJobProperties object:

  $service_obj->Method(Att1 => { DataAccessRoleArn => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::DocumentClassificationJobProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->DataAccessRoleArn

=head1 DESCRIPTION

Provides information about a document classification job.

=head1 ATTRIBUTES


=head2 DataAccessRoleArn => Str

  The Amazon Resource Name (ARN) of the AWS identity and Access
Management (IAM) role that grants Amazon Comprehend read access to your
input data.


=head2 DocumentClassifierArn => Str

  The Amazon Resource Name (ARN) that identifies the document classifier.


=head2 EndTime => Str

  The time that the document classification job completed.


=head2 InputDataConfig => L<Paws::Comprehend::InputDataConfig>

  The input data configuration that you supplied when you created the
document classification job.


=head2 JobId => Str

  The identifier assigned to the document classification job.


=head2 JobName => Str

  The name that you assigned to the document classification job.


=head2 JobStatus => Str

  The current status of the document classification job. If the status is
C<FAILED>, the C<Message> field shows the reason for the failure.


=head2 Message => Str

  A description of the status of the job.


=head2 OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

  The output data configuration that you supplied when you created the
document classification job.


=head2 SubmitTime => Str

  The time that the document classification job was submitted for
processing.


=head2 VolumeKmsKeyId => Str

  ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
uses to encrypt data on the storage volume attached to the ML compute
instance(s) that process the analysis job. The VolumeKmsKeyId can be
either of the following formats:

=over

=item *

KMS Key ID: C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

Amazon Resource Name (ARN) of a KMS Key:
C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=back



=head2 VpcConfig => L<Paws::Comprehend::VpcConfig>

  Configuration parameters for a private Virtual Private Cloud (VPC)
containing the resources you are using for your document classification
job. For more information, see Amazon VPC
(https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

