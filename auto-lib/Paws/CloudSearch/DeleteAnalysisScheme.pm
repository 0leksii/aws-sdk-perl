
package Paws::CloudSearch::DeleteAnalysisScheme;
  use Moose;
  has AnalysisSchemeName => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAnalysisScheme');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearch::DeleteAnalysisSchemeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAnalysisSchemeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DeleteAnalysisScheme - Arguments for method DeleteAnalysisScheme on L<Paws::CloudSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAnalysisScheme on the
L<Amazon CloudSearch|Paws::CloudSearch> service. Use the attributes of this class
as arguments to method DeleteAnalysisScheme.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAnalysisScheme.

=head1 SYNOPSIS

    my $cloudsearch = Paws->service('CloudSearch');
    my $DeleteAnalysisSchemeResponse = $cloudsearch->DeleteAnalysisScheme(
      AnalysisSchemeName => 'MyStandardName',
      DomainName         => 'MyDomainName',

    );

    # Results:
    my $AnalysisScheme = $DeleteAnalysisSchemeResponse->AnalysisScheme;

    # Returns a L<Paws::CloudSearch::DeleteAnalysisSchemeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisSchemeName => Str

The name of the analysis scheme you want to delete.



=head2 B<REQUIRED> DomainName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAnalysisScheme in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

