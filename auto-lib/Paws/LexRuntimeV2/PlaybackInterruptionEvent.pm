# Generated by default/object.tt
package Paws::LexRuntimeV2::PlaybackInterruptionEvent;
  use Moose;
  has CausedByEventId => (is => 'ro', isa => 'Str', request_name => 'causedByEventId', traits => ['NameInRequest']);
  has EventId => (is => 'ro', isa => 'Str', request_name => 'eventId', traits => ['NameInRequest']);
  has EventReason => (is => 'ro', isa => 'Str', request_name => 'eventReason', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::PlaybackInterruptionEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexRuntimeV2::PlaybackInterruptionEvent object:

  $service_obj->Method(Att1 => { CausedByEventId => $value, ..., EventReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexRuntimeV2::PlaybackInterruptionEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->CausedByEventId

=head1 DESCRIPTION

Event sent from Amazon Lex to indicate to the client application should
stop playback of audio. For example, if the client is playing a prompt
that asks for the user's telephone number, the user might start to say
the phone number before the prompt is complete. Amazon Lex sends this
event to the client application to indicate that the user is responding
and that Amazon Lex is processing their input.

=head1 ATTRIBUTES


=head2 CausedByEventId => Str

The identifier of the event that contained the audio, DTMF, or text
that caused the interruption.


=head2 EventId => Str

A unique identifier of the event sent by Amazon Lex. The identifier is
in the form C<RESPONSE-N>, where N is a number starting with one and
incremented for each event sent by Amazon Lex in the current session.


=head2 EventReason => Str

Indicates the type of user input that Amazon Lex detected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexRuntimeV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

