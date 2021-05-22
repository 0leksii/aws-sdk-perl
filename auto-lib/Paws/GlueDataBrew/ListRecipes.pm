
package Paws::GlueDataBrew::ListRecipes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has RecipeVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'recipeVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecipes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recipes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::ListRecipesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::ListRecipes - Arguments for method ListRecipes on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecipes on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method ListRecipes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecipes.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $ListRecipesResponse = $databrew->ListRecipes(
      MaxResults    => 1,                    # OPTIONAL
      NextToken     => 'MyNextToken',        # OPTIONAL
      RecipeVersion => 'MyRecipeVersion',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListRecipesResponse->NextToken;
    my $Recipes   = $ListRecipesResponse->Recipes;

    # Returns a L<Paws::GlueDataBrew::ListRecipesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/ListRecipes>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in this request.



=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.



=head2 RecipeVersion => Str

Return only those recipes with a version identifier of
C<LATEST_WORKING> or C<LATEST_PUBLISHED>. If C<RecipeVersion> is
omitted, C<ListRecipes> returns all of the C<LATEST_PUBLISHED> recipe
versions.

Valid values: C<LATEST_WORKING> | C<LATEST_PUBLISHED>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecipes in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

