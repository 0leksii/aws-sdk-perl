# Generated by default/object.tt
package Paws::Macie2::BucketCountPolicyAllowsUnencryptedObjectUploads;
  use Moose;
  has AllowsUnencryptedObjectUploads => (is => 'ro', isa => 'Int', request_name => 'allowsUnencryptedObjectUploads', traits => ['NameInRequest']);
  has DeniesUnencryptedObjectUploads => (is => 'ro', isa => 'Int', request_name => 'deniesUnencryptedObjectUploads', traits => ['NameInRequest']);
  has Unknown => (is => 'ro', isa => 'Int', request_name => 'unknown', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::BucketCountPolicyAllowsUnencryptedObjectUploads

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::BucketCountPolicyAllowsUnencryptedObjectUploads object:

  $service_obj->Method(Att1 => { AllowsUnencryptedObjectUploads => $value, ..., Unknown => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::BucketCountPolicyAllowsUnencryptedObjectUploads object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowsUnencryptedObjectUploads

=head1 DESCRIPTION

Provides information about the number of S3 buckets whose bucket
policies do or don't require server-side encryption of objects when
objects are uploaded to the buckets.

=head1 ATTRIBUTES


=head2 AllowsUnencryptedObjectUploads => Int

The total number of buckets that don't have a bucket policy or have a
bucket policy that doesn't require server-side encryption of new
objects. If a bucket policy exists, the policy doesn't require
PutObject requests to include the x-amz-server-side-encryption header
and it doesn't require the value for that header to be AES256 or
aws:kms.


=head2 DeniesUnencryptedObjectUploads => Int

The total number of buckets whose bucket policies require server-side
encryption of new objects. PutObject requests for these buckets must
include the x-amz-server-side-encryption header and the value for that
header must be AES256 or aws:kms.


=head2 Unknown => Int

The total number of buckets that Amazon Macie wasn't able to evaluate
server-side encryption requirements for. Macie can't determine whether
the bucket policies for these buckets require server-side encryption of
new objects.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

