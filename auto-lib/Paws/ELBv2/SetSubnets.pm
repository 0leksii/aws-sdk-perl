
package Paws::ELBv2::SetSubnets;
  use Moose;
  has IpAddressType => (is => 'ro', isa => 'Str');
  has LoadBalancerArn => (is => 'ro', isa => 'Str', required => 1);
  has SubnetMappings => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::SubnetMapping]');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetSubnets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::SetSubnetsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetSubnetsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetSubnets - Arguments for method SetSubnets on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetSubnets on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method SetSubnets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetSubnets.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To enable Availability Zones for a load balancer
    # This example enables the Availability Zones for the specified subnets for
    # the specified load balancer.
    my $SetSubnetsOutput = $elasticloadbalancing->SetSubnets(
      'LoadBalancerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188',
      'Subnets' => [ 'subnet-8360a9e7', 'subnet-b7d581c0' ]
    );

    # Results:
    my $AvailabilityZones = $SetSubnetsOutput->AvailabilityZones;

    # Returns a L<Paws::ELBv2::SetSubnetsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/SetSubnets>

=head1 ATTRIBUTES


=head2 IpAddressType => Str

[Network Load Balancers] The type of IP addresses used by the subnets
for your load balancer. The possible values are C<ipv4> (for IPv4
addresses) and C<dualstack> (for IPv4 and IPv6 addresses). You
canE<rsquo>t specify C<dualstack> for a load balancer with a UDP or
TCP_UDP listener. Internal load balancers must use C<ipv4>.

Valid values are: C<"ipv4">, C<"dualstack">

=head2 B<REQUIRED> LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.



=head2 SubnetMappings => ArrayRef[L<Paws::ELBv2::SubnetMapping>]

The IDs of the public subnets. You can specify only one subnet per
Availability Zone. You must specify either subnets or subnet mappings.

[Application Load Balancers] You must specify subnets from at least two
Availability Zones. You cannot specify Elastic IP addresses for your
subnets.

[Application Load Balancers on Outposts] You must specify one Outpost
subnet.

[Application Load Balancers on Local Zones] You can specify subnets
from one or more Local Zones.

[Network Load Balancers] You can specify subnets from one or more
Availability Zones. You can specify one Elastic IP address per subnet
if you need static IP addresses for your internet-facing load balancer.
For internal load balancers, you can specify one private IP address per
subnet from the IPv4 range of the subnet. For internet-facing load
balancer, you can specify one IPv6 address per subnet.



=head2 Subnets => ArrayRef[Str|Undef]

The IDs of the public subnets. You can specify only one subnet per
Availability Zone. You must specify either subnets or subnet mappings.

[Application Load Balancers] You must specify subnets from at least two
Availability Zones.

[Application Load Balancers on Outposts] You must specify one Outpost
subnet.

[Application Load Balancers on Local Zones] You can specify subnets
from one or more Local Zones.

[Network Load Balancers] You can specify subnets from one or more
Availability Zones.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetSubnets in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

