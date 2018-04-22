
package Paws::Config::DescribeConfigurationAggregatorSourcesStatus;
  use Moose;
  has ConfigurationAggregatorName => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has UpdateStatus => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationAggregatorSourcesStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeConfigurationAggregatorSourcesStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigurationAggregatorSourcesStatus - Arguments for method DescribeConfigurationAggregatorSourcesStatus on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConfigurationAggregatorSourcesStatus on the 
AWS Config service. Use the attributes of this class
as arguments to method DescribeConfigurationAggregatorSourcesStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConfigurationAggregatorSourcesStatus.

As an example:

  $service_obj->DescribeConfigurationAggregatorSourcesStatus(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationAggregatorName => Str

The name of the configuration aggregator.



=head2 Limit => Int

The maximum number of AggregatorSourceStatus returned on each page. The
default is maximum. If you specify 0, AWS Config uses the default.



=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.



=head2 UpdateStatus => ArrayRef[Str|Undef]

Filters the status type.

=over

=item *

Valid value FAILED indicates errors while moving data.

=item *

Valid value SUCCEEDED indicates the data was successfully moved.

=item *

Valid value OUTDATED indicates the data is not the most recent.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConfigurationAggregatorSourcesStatus in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
