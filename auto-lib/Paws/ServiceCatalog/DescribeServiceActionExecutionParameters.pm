
package Paws::ServiceCatalog::DescribeServiceActionExecutionParameters;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has ProvisionedProductId => (is => 'ro', isa => 'Str', required => 1);
  has ServiceActionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceActionExecutionParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DescribeServiceActionExecutionParametersOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeServiceActionExecutionParameters - Arguments for method DescribeServiceActionExecutionParameters on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeServiceActionExecutionParameters on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method DescribeServiceActionExecutionParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeServiceActionExecutionParameters.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $DescribeServiceActionExecutionParametersOutput =
      $servicecatalog->DescribeServiceActionExecutionParameters(
      ProvisionedProductId => 'MyId',
      ServiceActionId      => 'MyId',
      AcceptLanguage       => 'MyAcceptLanguage',    # OPTIONAL
      );

    # Results:
    my $ServiceActionParameters =
      $DescribeServiceActionExecutionParametersOutput->ServiceActionParameters;

# Returns a L<Paws::ServiceCatalog::DescribeServiceActionExecutionParametersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/DescribeServiceActionExecutionParameters>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str





=head2 B<REQUIRED> ProvisionedProductId => Str





=head2 B<REQUIRED> ServiceActionId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeServiceActionExecutionParameters in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

