
package Paws::OpsWorks::CreateDeployment;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str');
  has Command => (is => 'ro', isa => 'Paws::OpsWorks::DeploymentCommand', required => 1);
  has Comment => (is => 'ro', isa => 'Str');
  has CustomJson => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::CreateDeploymentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateDeployment - Arguments for method CreateDeployment on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeployment on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method CreateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeployment.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $CreateDeploymentResult = $opsworks->CreateDeployment(
      Command => {
        Name => 'install_dependencies'
        , # values: install_dependencies, update_dependencies, update_custom_cookbooks, execute_recipes, configure, setup, deploy, rollback, start, stop, restart, undeploy
        Args => { 'MyString' => [ 'MyString', ... ], },    # OPTIONAL
      },
      StackId     => 'MyString',
      AppId       => 'MyString',             # OPTIONAL
      Comment     => 'MyString',             # OPTIONAL
      CustomJson  => 'MyString',             # OPTIONAL
      InstanceIds => [ 'MyString', ... ],    # OPTIONAL
      LayerIds    => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $DeploymentId = $CreateDeploymentResult->DeploymentId;

    # Returns a L<Paws::OpsWorks::CreateDeploymentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/CreateDeployment>

=head1 ATTRIBUTES


=head2 AppId => Str

The app ID. This parameter is required for app deployments, but not for
other deployment commands.



=head2 B<REQUIRED> Command => L<Paws::OpsWorks::DeploymentCommand>

A C<DeploymentCommand> object that specifies the deployment command and
any associated arguments.



=head2 Comment => Str

A user-defined comment.



=head2 CustomJson => Str

A string that contains user-defined, custom JSON. You can use this
parameter to override some corresponding default stack configuration
JSON values. The string should be in the following format:

C<"{\"key1\": \"value1\", \"key2\": \"value2\",...}">

For more information about custom JSON, see Use Custom JSON to Modify
the Stack Configuration Attributes
(https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html)
and Overriding Attributes With Custom JSON
(https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html).



=head2 InstanceIds => ArrayRef[Str|Undef]

The instance IDs for the deployment targets.



=head2 LayerIds => ArrayRef[Str|Undef]

The layer IDs for the deployment targets.



=head2 B<REQUIRED> StackId => Str

The stack ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeployment in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

