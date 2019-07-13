
package Paws::ApiGatewayV2::UpdateIntegration;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId');
  has ConnectionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionType');
  has ContentHandlingStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentHandlingStrategy');
  has CredentialsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'credentialsArn');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IntegrationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'integrationId', required => 1);
  has IntegrationMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationMethod');
  has IntegrationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationType');
  has IntegrationUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationUri');
  has PassthroughBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'passthroughBehavior');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::IntegrationParameters', traits => ['NameInRequest'], request_name => 'requestParameters');
  has RequestTemplates => (is => 'ro', isa => 'Paws::ApiGatewayV2::TemplateMap', traits => ['NameInRequest'], request_name => 'requestTemplates');
  has TemplateSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateSelectionExpression');
  has TimeoutInMillis => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutInMillis');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/integrations/{integrationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::UpdateIntegrationResponseShape');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateIntegration - Arguments for method UpdateIntegration on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIntegration on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method UpdateIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIntegration.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $UpdateIntegrationResponseShape = $apigateway->UpdateIntegration(
      ApiId                   => 'My__string',
      IntegrationId           => 'My__string',
      ConnectionId            => 'MyStringWithLengthBetween1And1024', # OPTIONAL
      ConnectionType          => 'INTERNET',                          # OPTIONAL
      ContentHandlingStrategy => 'CONVERT_TO_BINARY',                 # OPTIONAL
      CredentialsArn          => 'MyArn',                             # OPTIONAL
      Description             => 'MyStringWithLengthBetween0And1024', # OPTIONAL
      IntegrationMethod       => 'MyStringWithLengthBetween1And64',   # OPTIONAL
      IntegrationType         => 'AWS',                               # OPTIONAL
      IntegrationUri          => 'MyUriWithLengthBetween1And2048',    # OPTIONAL
      PassthroughBehavior     => 'WHEN_NO_MATCH',                     # OPTIONAL
      RequestParameters =>
        { 'My__string' => 'MyStringWithLengthBetween1And512', },      # OPTIONAL
      RequestTemplates =>
        { 'My__string' => 'MyStringWithLengthBetween0And32K', },      # OPTIONAL
      TemplateSelectionExpression => 'MySelectionExpression',         # OPTIONAL
      TimeoutInMillis             => 1,                               # OPTIONAL
    );

    # Results:
    my $ConnectionId   = $UpdateIntegrationResponseShape->ConnectionId;
    my $ConnectionType = $UpdateIntegrationResponseShape->ConnectionType;
    my $ContentHandlingStrategy =
      $UpdateIntegrationResponseShape->ContentHandlingStrategy;
    my $CredentialsArn    = $UpdateIntegrationResponseShape->CredentialsArn;
    my $Description       = $UpdateIntegrationResponseShape->Description;
    my $IntegrationId     = $UpdateIntegrationResponseShape->IntegrationId;
    my $IntegrationMethod = $UpdateIntegrationResponseShape->IntegrationMethod;
    my $IntegrationResponseSelectionExpression =
      $UpdateIntegrationResponseShape->IntegrationResponseSelectionExpression;
    my $IntegrationType = $UpdateIntegrationResponseShape->IntegrationType;
    my $IntegrationUri  = $UpdateIntegrationResponseShape->IntegrationUri;
    my $PassthroughBehavior =
      $UpdateIntegrationResponseShape->PassthroughBehavior;
    my $RequestParameters = $UpdateIntegrationResponseShape->RequestParameters;
    my $RequestTemplates  = $UpdateIntegrationResponseShape->RequestTemplates;
    my $TemplateSelectionExpression =
      $UpdateIntegrationResponseShape->TemplateSelectionExpression;
    my $TimeoutInMillis = $UpdateIntegrationResponseShape->TimeoutInMillis;

    # Returns a L<Paws::ApiGatewayV2::UpdateIntegrationResponseShape> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 ConnectionId => Str

The connection ID.



=head2 ConnectionType => Str

The type of the network connection to the integration endpoint.
Currently the only valid value is INTERNET, for connections through the
public routable internet.

Valid values are: C<"INTERNET">, C<"VPC_LINK">

=head2 ContentHandlingStrategy => Str

Specifies how to handle response payload content type conversions.
Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the
following behaviors:

CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded
string to the corresponding binary blob.

CONVERT_TO_TEXT: Converts a response payload from a binary blob to a
Base64-encoded string.

If this property is not defined, the response payload will be passed
through from the integration response to the route response or method
response without modification.

Valid values are: C<"CONVERT_TO_BINARY">, C<"CONVERT_TO_TEXT">

=head2 CredentialsArn => Str

Specifies the credentials required for the integration, if any. For AWS
integrations, three options are available. To specify an IAM Role for
API Gateway to assume, use the role's Amazon Resource Name (ARN). To
require that the caller's identity be passed through from the request,
specify the string arn:aws:iam::*:user/*. To use resource-based
permissions on supported AWS services, specify null.



=head2 Description => Str

The description of the integration



=head2 B<REQUIRED> IntegrationId => Str

The integration ID.



=head2 IntegrationMethod => Str

Specifies the integration's HTTP method type.



=head2 IntegrationType => Str

The integration type of an integration. One of the following:

AWS: for integrating the route or method request with an AWS service
action, including the Lambda function-invoking action. With the Lambda
function-invoking action, this is referred to as the Lambda custom
integration. With any other AWS service action, this is known as AWS
integration.

AWS_PROXY: for integrating the route or method request with the Lambda
function-invoking action with the client request passed through as-is.
This integration is also referred to as Lambda proxy integration.

HTTP: for integrating the route or method request with an HTTP
endpoint. This integration is also referred to as the HTTP custom
integration.

HTTP_PROXY: for integrating route or method request with an HTTP
endpoint, with the client request passed through as-is. This is also
referred to as HTTP proxy integration.

MOCK: for integrating the route or method request with API Gateway as a
"loopback" endpoint without invoking any backend.

Valid values are: C<"AWS">, C<"HTTP">, C<"MOCK">, C<"HTTP_PROXY">, C<"AWS_PROXY">

=head2 IntegrationUri => Str

For a Lambda proxy integration, this is the URI of the Lambda function.



=head2 PassthroughBehavior => Str

Specifies the pass-through behavior for incoming requests based on the
Content-Type header in the request, and the available mapping templates
specified as the requestTemplates property on the Integration resource.
There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and
NEVER.

WHEN_NO_MATCH passes the request body for unmapped content types
through to the integration backend without transformation.

NEVER rejects unmapped content types with an HTTP 415 Unsupported Media
Type response.

WHEN_NO_TEMPLATES allows pass-through when the integration has no
content types mapped to templates. However, if there is at least one
content type defined, unmapped content types will be rejected with the
same HTTP 415 Unsupported Media Type response.

Valid values are: C<"WHEN_NO_MATCH">, C<"NEVER">, C<"WHEN_NO_TEMPLATES">

=head2 RequestParameters => L<Paws::ApiGatewayV2::IntegrationParameters>

A key-value map specifying request parameters that are passed from the
method request to the backend. The key is an integration request
parameter name and the associated value is a method request parameter
value or static value that must be enclosed within single quotes and
pre-encoded as required by the backend. The method request parameter
value must match the pattern of method.request.{location}.{name} ,
where {location} is querystring, path, or header; and {name} must be a
valid and unique method request parameter name.



=head2 RequestTemplates => L<Paws::ApiGatewayV2::TemplateMap>

Represents a map of Velocity templates that are applied on the request
payload based on the value of the Content-Type header sent by the
client. The content type value is the key in this map, and the template
(as a String) is the value.



=head2 TemplateSelectionExpression => Str

The template selection expression for the integration.



=head2 TimeoutInMillis => Int

Custom timeout between 50 and 29,000 milliseconds. The default value is
29,000 milliseconds or 29 seconds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIntegration in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

