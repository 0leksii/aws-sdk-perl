
package Paws::EC2::DescribeDhcpOptions;
  use Moose;
  has DhcpOptionsIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'DhcpOptionsId' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDhcpOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeDhcpOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeDhcpOptions - Arguments for method DescribeDhcpOptions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDhcpOptions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeDhcpOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDhcpOptions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe a DHCP options set
    # This example describes the specified DHCP options set.
    my $DescribeDhcpOptionsResult = $ec2->DescribeDhcpOptions(
      {
        'DhcpOptionsIds' => ['dopt-d9070ebb']
      }
    );

    # Results:
    my $DhcpOptions = $DescribeDhcpOptionsResult->DhcpOptions;

    # Returns a L<Paws::EC2::DescribeDhcpOptionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeDhcpOptions>

=head1 ATTRIBUTES


=head2 DhcpOptionsIds => ArrayRef[Str|Undef]

The IDs of one or more DHCP options sets.

Default: Describes all your DHCP options sets.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<dhcp-options-id> - The ID of a set of DHCP options.

=item *

C<key> - The key for one of the options (for example, C<domain-name>).

=item *

C<value> - The value for one of the options.

=item *

C<tag>:I<key>=I<value> - The key/value combination of a tag assigned to
the resource. Specify the key of the tag in the filter name and the
value of the tag in the filter value. For example, for the tag
Purpose=X, specify C<tag:Purpose> for the filter name and C<X> for the
filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. This filter is
independent of the C<tag-value> filter. For example, if you use both
the filter "tag-key=Purpose" and the filter "tag-value=X", you get any
resources assigned both the tag key Purpose (regardless of what the
tag's value is), and the tag value X (regardless of what the tag's key
is). If you want to list only resources where Purpose is X, see the
C<tag>:I<key>=I<value> filter.

=item *

C<tag-value> - The value of a tag assigned to the resource. This filter
is independent of the C<tag-key> filter.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDhcpOptions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

