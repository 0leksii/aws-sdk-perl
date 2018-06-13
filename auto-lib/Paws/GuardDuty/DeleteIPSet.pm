
package Paws::GuardDuty::DeleteIPSet;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has IpSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ipSetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIPSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/ipset/{ipSetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::DeleteIPSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DeleteIPSet - Arguments for method DeleteIPSet on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIPSet on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method DeleteIPSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIPSet.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $DeleteIPSetResponse = $guardduty->DeleteIPSet(
      DetectorId => 'My__string',
      IpSetId    => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The detectorID that specifies the GuardDuty service whose IPSet you
want to delete.



=head2 B<REQUIRED> IpSetId => Str

The unique ID that specifies the IPSet that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIPSet in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

