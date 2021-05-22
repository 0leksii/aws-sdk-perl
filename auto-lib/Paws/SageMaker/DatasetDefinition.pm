# Generated by default/object.tt
package Paws::SageMaker::DatasetDefinition;
  use Moose;
  has AthenaDatasetDefinition => (is => 'ro', isa => 'Paws::SageMaker::AthenaDatasetDefinition');
  has DataDistributionType => (is => 'ro', isa => 'Str');
  has InputMode => (is => 'ro', isa => 'Str');
  has LocalPath => (is => 'ro', isa => 'Str');
  has RedshiftDatasetDefinition => (is => 'ro', isa => 'Paws::SageMaker::RedshiftDatasetDefinition');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DatasetDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::DatasetDefinition object:

  $service_obj->Method(Att1 => { AthenaDatasetDefinition => $value, ..., RedshiftDatasetDefinition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::DatasetDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->AthenaDatasetDefinition

=head1 DESCRIPTION

Configuration for Dataset Definition inputs. The Dataset Definition
input must specify exactly one of either C<AthenaDatasetDefinition> or
C<RedshiftDatasetDefinition> types.

=head1 ATTRIBUTES


=head2 AthenaDatasetDefinition => L<Paws::SageMaker::AthenaDatasetDefinition>




=head2 DataDistributionType => Str

Whether the generated dataset is C<FullyReplicated> or
C<ShardedByS3Key> (default).


=head2 InputMode => Str

Whether to use C<File> or C<Pipe> input mode. In C<File> (default)
mode, Amazon SageMaker copies the data from the input source onto the
local Amazon Elastic Block Store (Amazon EBS) volumes before starting
your training algorithm. This is the most commonly used input mode. In
C<Pipe> mode, Amazon SageMaker streams input data from the source
directly to your algorithm without using the EBS volume.


=head2 LocalPath => Str

The local path where you want Amazon SageMaker to download the Dataset
Definition inputs to run a processing job. C<LocalPath> is an absolute
path to the input data. This is a required parameter when C<AppManaged>
is C<False> (default).


=head2 RedshiftDatasetDefinition => L<Paws::SageMaker::RedshiftDatasetDefinition>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

