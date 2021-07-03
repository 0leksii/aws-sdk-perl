
package Paws::EC2::DisableVgwRoutePropagation;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GatewayId => (is => 'ro', isa => 'Str', required => 1);
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableVgwRoutePropagation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisableVgwRoutePropagation - Arguments for method DisableVgwRoutePropagation on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableVgwRoutePropagation on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DisableVgwRoutePropagation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableVgwRoutePropagation.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
  # To disable route propagation
  # This example disables the specified virtual private gateway from propagating
  # static routes to the specified route table.
    $ec2->DisableVgwRoutePropagation(
      'GatewayId'    => 'vgw-9a4cacf3',
      'RouteTableId' => 'rtb-22574640'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DisableVgwRoutePropagation>

=head1 ATTRIBUTES


=head2 DryRun => Bool





=head2 B<REQUIRED> GatewayId => Str

The ID of the virtual private gateway.



=head2 B<REQUIRED> RouteTableId => Str

The ID of the route table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableVgwRoutePropagation in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

