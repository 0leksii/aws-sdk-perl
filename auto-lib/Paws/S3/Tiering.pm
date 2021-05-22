# Generated by default/object.tt
package Paws::S3::Tiering;
  use Moose;
  has AccessTier => (is => 'ro', isa => 'Str', required => 1);
  has Days => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Tiering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Tiering object:

  $service_obj->Method(Att1 => { AccessTier => $value, ..., Days => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Tiering object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessTier

=head1 DESCRIPTION

The S3 Intelligent-Tiering storage class is designed to optimize
storage costs by automatically moving data to the most cost-effective
storage access tier, without additional operational overhead.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessTier => Str

S3 Intelligent-Tiering access tier. See Storage class for automatically
optimizing frequently and infrequently accessed objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access)
for a list of access tiers in the S3 Intelligent-Tiering storage class.


=head2 B<REQUIRED> Days => Int

The number of consecutive days of no access after which an object will
be eligible to be transitioned to the corresponding tier. The minimum
number of days specified for Archive Access tier must be at least 90
days and Deep Archive Access tier must be at least 180 days. The
maximum can be up to 2 years (730 days).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

