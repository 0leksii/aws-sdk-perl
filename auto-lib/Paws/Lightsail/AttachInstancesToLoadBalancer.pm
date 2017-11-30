
package Paws::Lightsail::AttachInstancesToLoadBalancer;
  use Moose;
  has InstanceNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceNames' , required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loadBalancerName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachInstancesToLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::AttachInstancesToLoadBalancerResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AttachInstancesToLoadBalancer - Arguments for method AttachInstancesToLoadBalancer on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachInstancesToLoadBalancer on the 
Amazon Lightsail service. Use the attributes of this class
as arguments to method AttachInstancesToLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachInstancesToLoadBalancer.

As an example:

  $service_obj->AttachInstancesToLoadBalancer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceNames => ArrayRef[Str|Undef]

An array of strings representing the instance name(s) you want to
attach to your load balancer.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachInstancesToLoadBalancer in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
