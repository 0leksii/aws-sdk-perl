
package Paws::Transfer::CreateServer;
  use Moose;
  has EndpointDetails => (is => 'ro', isa => 'Paws::Transfer::EndpointDetails');
  has EndpointType => (is => 'ro', isa => 'Str');
  has HostKey => (is => 'ro', isa => 'Str');
  has IdentityProviderDetails => (is => 'ro', isa => 'Paws::Transfer::IdentityProviderDetails');
  has IdentityProviderType => (is => 'ro', isa => 'Str');
  has LoggingRole => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::CreateServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateServer - Arguments for method CreateServer on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServer on the
L<AWS Transfer for SFTP|Paws::Transfer> service. Use the attributes of this class
as arguments to method CreateServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServer.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $CreateServerResponse = $transfer->CreateServer(
      EndpointDetails => {
        VpcEndpointId => 'MyVpcEndpointId',    # OPTIONAL
      },    # OPTIONAL
      EndpointType            => 'PUBLIC',       # OPTIONAL
      HostKey                 => 'MyHostKey',    # OPTIONAL
      IdentityProviderDetails => {
        InvocationRole => 'MyRole',              # OPTIONAL
        Url            => 'MyUrl',               # OPTIONAL
      },    # OPTIONAL
      IdentityProviderType => 'SERVICE_MANAGED',    # OPTIONAL
      LoggingRole          => 'MyRole',             # OPTIONAL
      Tags                 => [
        {
          Key   => 'MyTagKey',
          Value => 'MyTagValue',

        },
        ...
      ],                                            # OPTIONAL
    );

    # Results:
    my $ServerId = $CreateServerResponse->ServerId;

    # Returns a L<Paws::Transfer::CreateServerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/CreateServer>

=head1 ATTRIBUTES


=head2 EndpointDetails => L<Paws::Transfer::EndpointDetails>

The virtual private cloud (VPC) endpoint settings that you want to
configure for your SFTP server.



=head2 EndpointType => Str

The type of VPC endpoint that you want your SFTP server connect to. If
you connect to a VPC endpoint, your SFTP server isn't accessible over
the public internet.

Valid values are: C<"PUBLIC">, C<"VPC_ENDPOINT">

=head2 HostKey => Str

The RSA private key as generated by C<ssh-keygen -N "" -f
my-new-server-key> command.

If you aren't planning to migrate existing users from an existing SFTP
server to a new AWS SFTP server, don't update the host key.
Accidentally changing a server's host key can be disruptive. For more
information, see change-host-key in the I<AWS SFTP User Guide.>



=head2 IdentityProviderDetails => L<Paws::Transfer::IdentityProviderDetails>

An array containing all of the information required to call a
customer-supplied authentication API. This parameter is not required
when the C<IdentityProviderType> value of server that is created uses
the C<SERVICE_MANAGED> authentication method.



=head2 IdentityProviderType => Str

The mode of authentication enabled for this service. The default value
is C<SERVICE_MANAGED>, which allows you to store and access SFTP user
credentials within the service. An C<IdentityProviderType> value of
C<API_GATEWAY> indicates that user authentication requires a call to an
API Gateway endpoint URL provided by you to integrate an identity
provider of your choice.

Valid values are: C<"SERVICE_MANAGED">, C<"API_GATEWAY">

=head2 LoggingRole => Str

A value that allows the service to write your SFTP users' activity to
your Amazon CloudWatch logs for monitoring and auditing purposes.



=head2 Tags => ArrayRef[L<Paws::Transfer::Tag>]

Key-value pairs that can be used to group and search for servers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServer in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

