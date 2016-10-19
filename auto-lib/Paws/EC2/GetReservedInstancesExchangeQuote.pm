
package Paws::EC2::GetReservedInstancesExchangeQuote;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has ReservedInstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ReservedInstanceId' , required => 1);
  has TargetConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TargetConfigurationRequest]', traits => ['NameInRequest'], request_name => 'TargetConfiguration' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReservedInstancesExchangeQuote');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetReservedInstancesExchangeQuoteResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetReservedInstancesExchangeQuote - Arguments for method GetReservedInstancesExchangeQuote on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReservedInstancesExchangeQuote on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method GetReservedInstancesExchangeQuote.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReservedInstancesExchangeQuote.

As an example:

  $service_obj->GetReservedInstancesExchangeQuote(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> ReservedInstanceIds => ArrayRef[Str|Undef]

The ID/s of the Convertible Reserved Instances you want to exchange.



=head2 TargetConfigurations => ArrayRef[L<Paws::EC2::TargetConfigurationRequest>]

The configuration requirements of the Convertible Reserved Instances
you want in exchange for your current Convertible Reserved Instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReservedInstancesExchangeQuote in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
