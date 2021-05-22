# Generated by default/object.tt
package Paws::SageMaker::SharingSettings;
  use Moose;
  has NotebookOutputOption => (is => 'ro', isa => 'Str');
  has S3KmsKeyId => (is => 'ro', isa => 'Str');
  has S3OutputPath => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SharingSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::SharingSettings object:

  $service_obj->Method(Att1 => { NotebookOutputOption => $value, ..., S3OutputPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::SharingSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->NotebookOutputOption

=head1 DESCRIPTION

Specifies options for sharing SageMaker Studio notebooks. These
settings are specified as part of C<DefaultUserSettings> when the
C<CreateDomain> API is called, and as part of C<UserSettings> when the
C<CreateUserProfile> API is called. When C<SharingSettings> is not
specified, notebook sharing isn't allowed.

=head1 ATTRIBUTES


=head2 NotebookOutputOption => Str

Whether to include the notebook cell output when sharing the notebook.
The default is C<Disabled>.


=head2 S3KmsKeyId => Str

When C<NotebookOutputOption> is C<Allowed>, the AWS Key Management
Service (KMS) encryption key ID used to encrypt the notebook cell
output in the Amazon S3 bucket.


=head2 S3OutputPath => Str

When C<NotebookOutputOption> is C<Allowed>, the Amazon S3 bucket used
to store the shared notebook snapshots.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

