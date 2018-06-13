
package Paws::WAFRegional::UpdateByteMatchSet;
  use Moose;
  has ByteMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::ByteMatchSetUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateByteMatchSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::UpdateByteMatchSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::UpdateByteMatchSet - Arguments for method UpdateByteMatchSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateByteMatchSet on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method UpdateByteMatchSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateByteMatchSet.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    # To update a byte match set
    # The following example deletes a ByteMatchTuple object (filters) in an byte
    # match set with the ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
    my $UpdateByteMatchSetResponse = $waf -regional->UpdateByteMatchSet(
      {
        'Updates' => [

          {
            'ByteMatchTuple' => {
              'TargetString' => 'badrefer1',
              'FieldToMatch' => {
                'Type' => 'HEADER',
                'Data' => 'referer'
              },
              'PositionalConstraint' => 'CONTAINS',
              'TextTransformation'   => 'NONE'
            },
            'Action' => 'DELETE'
          }
        ],
        'ChangeToken'    => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f',
        'ByteMatchSetId' => 'exampleIDs3t-46da-4fdb-b8d5-abc321j569j5'
      }
    );

    # Results:
    my $ChangeToken = $UpdateByteMatchSetResponse->ChangeToken;

    # Returns a L<Paws::WAFRegional::UpdateByteMatchSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/UpdateByteMatchSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ByteMatchSetId => Str

The C<ByteMatchSetId> of the ByteMatchSet that you want to update.
C<ByteMatchSetId> is returned by CreateByteMatchSet and by
ListByteMatchSets.



=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::WAFRegional::ByteMatchSetUpdate>]

An array of C<ByteMatchSetUpdate> objects that you want to insert into
or delete from a ByteMatchSet. For more information, see the applicable
data types:

=over

=item *

ByteMatchSetUpdate: Contains C<Action> and C<ByteMatchTuple>

=item *

ByteMatchTuple: Contains C<FieldToMatch>, C<PositionalConstraint>,
C<TargetString>, and C<TextTransformation>

=item *

FieldToMatch: Contains C<Data> and C<Type>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateByteMatchSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

