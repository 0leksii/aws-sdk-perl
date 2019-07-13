
package Paws::MediaLive::UpdateInputSecurityGroup;
  use Moose;
  has InputSecurityGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'inputSecurityGroupId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has WhitelistRules => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputWhitelistRuleCidr]', traits => ['NameInRequest'], request_name => 'whitelistRules');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInputSecurityGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputSecurityGroups/{inputSecurityGroupId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::UpdateInputSecurityGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateInputSecurityGroup - Arguments for method UpdateInputSecurityGroup on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInputSecurityGroup on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method UpdateInputSecurityGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInputSecurityGroup.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $UpdateInputSecurityGroupResponse = $medialive->UpdateInputSecurityGroup(
      InputSecurityGroupId => 'My__string',
      Tags                 => { 'My__string' => 'My__string', },     # OPTIONAL
      WhitelistRules       => [ { Cidr => 'My__string', }, ... ],    # OPTIONAL
    );

    # Results:
    my $SecurityGroup = $UpdateInputSecurityGroupResponse->SecurityGroup;

    # Returns a L<Paws::MediaLive::UpdateInputSecurityGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/UpdateInputSecurityGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputSecurityGroupId => Str

The id of the Input Security Group to update.



=head2 Tags => L<Paws::MediaLive::Tags>

A collection of key-value pairs.



=head2 WhitelistRules => ArrayRef[L<Paws::MediaLive::InputWhitelistRuleCidr>]

List of IPv4 CIDR addresses to whitelist




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInputSecurityGroup in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

