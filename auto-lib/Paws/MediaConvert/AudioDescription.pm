package Paws::MediaConvert::AudioDescription;
  use Moose;
  has AudioNormalizationSettings => (is => 'ro', isa => 'Paws::MediaConvert::AudioNormalizationSettings', request_name => 'audioNormalizationSettings', traits => ['NameInRequest']);
  has AudioSourceName => (is => 'ro', isa => 'Str', request_name => 'audioSourceName', traits => ['NameInRequest']);
  has AudioType => (is => 'ro', isa => 'Int', request_name => 'audioType', traits => ['NameInRequest']);
  has AudioTypeControl => (is => 'ro', isa => 'Str', request_name => 'audioTypeControl', traits => ['NameInRequest']);
  has CodecSettings => (is => 'ro', isa => 'Paws::MediaConvert::AudioCodecSettings', request_name => 'codecSettings', traits => ['NameInRequest']);
  has CustomLanguageCode => (is => 'ro', isa => 'Str', request_name => 'customLanguageCode', traits => ['NameInRequest']);
  has LanguageCode => (is => 'ro', isa => 'Str', request_name => 'languageCode', traits => ['NameInRequest']);
  has LanguageCodeControl => (is => 'ro', isa => 'Str', request_name => 'languageCodeControl', traits => ['NameInRequest']);
  has RemixSettings => (is => 'ro', isa => 'Paws::MediaConvert::RemixSettings', request_name => 'remixSettings', traits => ['NameInRequest']);
  has StreamName => (is => 'ro', isa => 'Str', request_name => 'streamName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::AudioDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::AudioDescription object:

  $service_obj->Method(Att1 => { AudioNormalizationSettings => $value, ..., StreamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AudioDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioNormalizationSettings

=head1 DESCRIPTION

Description of audio output

=head1 ATTRIBUTES


=head2 AudioNormalizationSettings => L<Paws::MediaConvert::AudioNormalizationSettings>

  Advanced audio normalization settings. Ignore these settings unless you
need to comply with a loudness standard.


=head2 AudioSourceName => Str

  Specifies which audio data to use from each input. In the simplest
case, specify an "Audio Selector":#inputs-audio_selector by name based
on its order within each input. For example if you specify "Audio
Selector 3", then the third audio selector will be used from each
input. If an input does not have an "Audio Selector 3", then the audio
selector marked as "default" in that input will be used. If there is no
audio selector marked as "default", silence will be inserted for the
duration of that input. Alternatively, an "Audio Selector
Group":#inputs-audio_selector_group name may be specified, with similar
default/silence behavior. If no audio_source_name is specified, then
"Audio Selector 1" will be chosen automatically.


=head2 AudioType => Int

  Applies only if Follow Input Audio Type is unchecked (false). A number
between 0 and 255. The following are defined in ISO-IEC 13818-1: 0 =
Undefined, 1 = Clean Effects, 2 = Hearing Impaired, 3 = Visually
Impaired Commentary, 4-255 = Reserved.


=head2 AudioTypeControl => Str

  When set to FOLLOW_INPUT, if the input contains an ISO 639 audio_type,
then that value is passed through to the output. If the input contains
no ISO 639 audio_type, the value in Audio Type is included in the
output. Otherwise the value in Audio Type is included in the output.
Note that this field and audioType are both ignored if
audioDescriptionBroadcasterMix is set to BROADCASTER_MIXED_AD.


=head2 CodecSettings => L<Paws::MediaConvert::AudioCodecSettings>

  Audio codec settings (CodecSettings) under (AudioDescriptions) contains
the group of settings related to audio encoding. The settings in this
group vary depending on the value that you choose for Audio codec
(Codec). For each codec enum that you choose, define the corresponding
settings object. The following lists the codec enum, settings object
pairs. * AAC, AacSettings * MP2, Mp2Settings * MP3, Mp3Settings * WAV,
WavSettings * AIFF, AiffSettings * AC3, Ac3Settings * EAC3,
Eac3Settings * EAC3_ATMOS, Eac3AtmosSettings


=head2 CustomLanguageCode => Str

  Specify the language for this audio output track. The service puts this
language code into your output audio track when you set Language code
control (AudioLanguageCodeControl) to Use configured (USE_CONFIGURED).
The service also uses your specified custom language code when you set
Language code control (AudioLanguageCodeControl) to Follow input
(FOLLOW_INPUT), but your input file doesn't specify a language code.
For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For
streaming outputs, you can also use any other code in the full RFC-5646
specification. Streaming outputs are those that are in one of the
following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth
Streaming.


=head2 LanguageCode => Str

  Indicates the language of the audio output track. The ISO 639 language
specified in the 'Language Code' drop down will be used when 'Follow
Input Language Code' is not selected or when 'Follow Input Language
Code' is selected but there is no ISO 639 language code specified by
the input.


=head2 LanguageCodeControl => Str

  Specify which source for language code takes precedence for this audio
track. When you choose Follow input (FOLLOW_INPUT), the service uses
the language code from the input track if it's present. If there's no
languge code on the input track, the service uses the code that you
specify in the setting Language code (languageCode or
customLanguageCode). When you choose Use configured (USE_CONFIGURED),
the service uses the language code that you specify.


=head2 RemixSettings => L<Paws::MediaConvert::RemixSettings>

  Advanced audio remixing settings.


=head2 StreamName => Str

  Specify a label for this output audio stream. For example, "English",
"Director commentary", or "track_2". For streaming outputs,
MediaConvert passes this information into destination manifests for
display on the end-viewer's player device. For outputs in other output
groups, the service ignores this setting.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

