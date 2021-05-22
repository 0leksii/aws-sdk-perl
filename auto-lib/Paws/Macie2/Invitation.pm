# Generated by default/object.tt
package Paws::Macie2::Invitation;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has InvitationId => (is => 'ro', isa => 'Str', request_name => 'invitationId', traits => ['NameInRequest']);
  has InvitedAt => (is => 'ro', isa => 'Str', request_name => 'invitedAt', traits => ['NameInRequest']);
  has RelationshipStatus => (is => 'ro', isa => 'Str', request_name => 'relationshipStatus', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::Invitation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::Invitation object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., RelationshipStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::Invitation object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Provides information about an Amazon Macie membership invitation that
was received by an account.

=head1 ATTRIBUTES


=head2 AccountId => Str

The AWS account ID for the account that sent the invitation.


=head2 InvitationId => Str

The unique identifier for the invitation. Amazon Macie uses this
identifier to validate the inviter account with the invitee account.


=head2 InvitedAt => Str

The date and time, in UTC and extended ISO 8601 format, when the
invitation was sent.


=head2 RelationshipStatus => Str

The status of the relationship between the account that sent the
invitation (I<inviter account>) and the account that received the
invitation (I<invitee account>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

