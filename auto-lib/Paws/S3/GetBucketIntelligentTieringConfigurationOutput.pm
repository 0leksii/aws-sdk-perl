
package Paws::S3::GetBucketIntelligentTieringConfigurationOutput;
  use Moose;
  has IntelligentTieringConfiguration => (is => 'ro', isa => 'Paws::S3::IntelligentTieringConfiguration', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketIntelligentTieringConfigurationOutput

=head1 ATTRIBUTES


=head2 IntelligentTieringConfiguration => L<Paws::S3::IntelligentTieringConfiguration>

Container for S3 Intelligent-Tiering configuration.




=cut

