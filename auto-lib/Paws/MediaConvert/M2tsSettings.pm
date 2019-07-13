package Paws::MediaConvert::M2tsSettings;
  use Moose;
  has AudioBufferModel => (is => 'ro', isa => 'Str', request_name => 'audioBufferModel', traits => ['NameInRequest']);
  has AudioFramesPerPes => (is => 'ro', isa => 'Int', request_name => 'audioFramesPerPes', traits => ['NameInRequest']);
  has AudioPids => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'audioPids', traits => ['NameInRequest']);
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has BufferModel => (is => 'ro', isa => 'Str', request_name => 'bufferModel', traits => ['NameInRequest']);
  has DvbNitSettings => (is => 'ro', isa => 'Paws::MediaConvert::DvbNitSettings', request_name => 'dvbNitSettings', traits => ['NameInRequest']);
  has DvbSdtSettings => (is => 'ro', isa => 'Paws::MediaConvert::DvbSdtSettings', request_name => 'dvbSdtSettings', traits => ['NameInRequest']);
  has DvbSubPids => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'dvbSubPids', traits => ['NameInRequest']);
  has DvbTdtSettings => (is => 'ro', isa => 'Paws::MediaConvert::DvbTdtSettings', request_name => 'dvbTdtSettings', traits => ['NameInRequest']);
  has DvbTeletextPid => (is => 'ro', isa => 'Int', request_name => 'dvbTeletextPid', traits => ['NameInRequest']);
  has EbpAudioInterval => (is => 'ro', isa => 'Str', request_name => 'ebpAudioInterval', traits => ['NameInRequest']);
  has EbpPlacement => (is => 'ro', isa => 'Str', request_name => 'ebpPlacement', traits => ['NameInRequest']);
  has EsRateInPes => (is => 'ro', isa => 'Str', request_name => 'esRateInPes', traits => ['NameInRequest']);
  has ForceTsVideoEbpOrder => (is => 'ro', isa => 'Str', request_name => 'forceTsVideoEbpOrder', traits => ['NameInRequest']);
  has FragmentTime => (is => 'ro', isa => 'Num', request_name => 'fragmentTime', traits => ['NameInRequest']);
  has MaxPcrInterval => (is => 'ro', isa => 'Int', request_name => 'maxPcrInterval', traits => ['NameInRequest']);
  has MinEbpInterval => (is => 'ro', isa => 'Int', request_name => 'minEbpInterval', traits => ['NameInRequest']);
  has NielsenId3 => (is => 'ro', isa => 'Str', request_name => 'nielsenId3', traits => ['NameInRequest']);
  has NullPacketBitrate => (is => 'ro', isa => 'Num', request_name => 'nullPacketBitrate', traits => ['NameInRequest']);
  has PatInterval => (is => 'ro', isa => 'Int', request_name => 'patInterval', traits => ['NameInRequest']);
  has PcrControl => (is => 'ro', isa => 'Str', request_name => 'pcrControl', traits => ['NameInRequest']);
  has PcrPid => (is => 'ro', isa => 'Int', request_name => 'pcrPid', traits => ['NameInRequest']);
  has PmtInterval => (is => 'ro', isa => 'Int', request_name => 'pmtInterval', traits => ['NameInRequest']);
  has PmtPid => (is => 'ro', isa => 'Int', request_name => 'pmtPid', traits => ['NameInRequest']);
  has PrivateMetadataPid => (is => 'ro', isa => 'Int', request_name => 'privateMetadataPid', traits => ['NameInRequest']);
  has ProgramNumber => (is => 'ro', isa => 'Int', request_name => 'programNumber', traits => ['NameInRequest']);
  has RateMode => (is => 'ro', isa => 'Str', request_name => 'rateMode', traits => ['NameInRequest']);
  has Scte35Esam => (is => 'ro', isa => 'Paws::MediaConvert::M2tsScte35Esam', request_name => 'scte35Esam', traits => ['NameInRequest']);
  has Scte35Pid => (is => 'ro', isa => 'Int', request_name => 'scte35Pid', traits => ['NameInRequest']);
  has Scte35Source => (is => 'ro', isa => 'Str', request_name => 'scte35Source', traits => ['NameInRequest']);
  has SegmentationMarkers => (is => 'ro', isa => 'Str', request_name => 'segmentationMarkers', traits => ['NameInRequest']);
  has SegmentationStyle => (is => 'ro', isa => 'Str', request_name => 'segmentationStyle', traits => ['NameInRequest']);
  has SegmentationTime => (is => 'ro', isa => 'Num', request_name => 'segmentationTime', traits => ['NameInRequest']);
  has TimedMetadataPid => (is => 'ro', isa => 'Int', request_name => 'timedMetadataPid', traits => ['NameInRequest']);
  has TransportStreamId => (is => 'ro', isa => 'Int', request_name => 'transportStreamId', traits => ['NameInRequest']);
  has VideoPid => (is => 'ro', isa => 'Int', request_name => 'videoPid', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::M2tsSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::M2tsSettings object:

  $service_obj->Method(Att1 => { AudioBufferModel => $value, ..., VideoPid => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::M2tsSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioBufferModel

=head1 DESCRIPTION

MPEG-2 TS container settings. These apply to outputs in a File output
group when the output's container (ContainerType) is MPEG-2 Transport
Stream (M2TS). In these assets, data is organized by the program map
table (PMT). Each transport stream program contains subsets of data,
including audio, video, and metadata. Each of these subsets of data has
a numerical label called a packet identifier (PID). Each transport
stream program corresponds to one MediaConvert output. The PMT lists
the types of data in a program along with their PID. Downstream systems
and players use the program map table to look up the PID for each type
of data it accesses and then uses the PIDs to locate specific data
within the asset.

=head1 ATTRIBUTES


=head2 AudioBufferModel => Str

  Selects between the DVB and ATSC buffer models for Dolby Digital audio.


=head2 AudioFramesPerPes => Int

  The number of audio frames to insert for each PES packet.


=head2 AudioPids => ArrayRef[Int]

  Specify the packet identifiers (PIDs) for any elementary audio streams
you include in this output. Specify multiple PIDs as a JSON array.
Default is the range 482-492.


=head2 Bitrate => Int

  Specify the output bitrate of the transport stream in bits per second.
Setting to 0 lets the muxer automatically determine the appropriate
bitrate. Other common values are 3750000, 7500000, and 15000000.


=head2 BufferModel => Str

  Controls what buffer model to use for accurate interleaving. If set to
MULTIPLEX, use multiplex buffer model. If set to NONE, this can lead to
lower latency, but low-memory devices may not be able to play back the
stream without interruptions.


=head2 DvbNitSettings => L<Paws::MediaConvert::DvbNitSettings>

  Inserts DVB Network Information Table (NIT) at the specified table
repetition interval.


=head2 DvbSdtSettings => L<Paws::MediaConvert::DvbSdtSettings>

  Inserts DVB Service Description Table (NIT) at the specified table
repetition interval.


=head2 DvbSubPids => ArrayRef[Int]

  Specify the packet identifiers (PIDs) for DVB subtitle data included in
this output. Specify multiple PIDs as a JSON array. Default is the
range 460-479.


=head2 DvbTdtSettings => L<Paws::MediaConvert::DvbTdtSettings>

  Inserts DVB Time and Date Table (TDT) at the specified table repetition
interval.


=head2 DvbTeletextPid => Int

  Specify the packet identifier (PID) for DVB teletext data you include
in this output. Default is 499.


=head2 EbpAudioInterval => Str

  When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added
to partitions 3 and 4. The interval between these additional markers
will be fixed, and will be slightly shorter than the video EBP marker
interval. When set to VIDEO_INTERVAL, these additional markers will not
be inserted. Only applicable when EBP segmentation markers are is
selected (segmentationMarkers is EBP or EBP_LEGACY).


=head2 EbpPlacement => Str

  Selects which PIDs to place EBP markers on. They can either be placed
only on the video PID, or on both the video PID and all audio PIDs.
Only applicable when EBP segmentation markers are is selected
(segmentationMarkers is EBP or EBP_LEGACY).


=head2 EsRateInPes => Str

  Controls whether to include the ES Rate field in the PES header.


=head2 ForceTsVideoEbpOrder => Str

  Keep the default value (DEFAULT) unless you know that your audio EBP
markers are incorrectly appearing before your video EBP markers. To
correct this problem, set this value to Force (FORCE).


=head2 FragmentTime => Num

  The length, in seconds, of each fragment. Only used with EBP markers.


=head2 MaxPcrInterval => Int

  Specify the maximum time, in milliseconds, between Program Clock
References (PCRs) inserted into the transport stream.


=head2 MinEbpInterval => Int

  When set, enforces that Encoder Boundary Points do not come within the
specified time interval of each other by looking ahead at input video.
If another EBP is going to come in within the specified time interval,
the current EBP is not emitted, and the segment is "stretched" to the
next marker. The lookahead value does not add latency to the system.
The Live Event must be configured elsewhere to create sufficient
latency to make the lookahead accurate.


=head2 NielsenId3 => Str

  If INSERT, Nielsen inaudible tones for media tracking will be detected
in the input audio and an equivalent ID3 tag will be inserted in the
output.


=head2 NullPacketBitrate => Num

  Value in bits per second of extra null packets to insert into the
transport stream. This can be used if a downstream encryption system
requires periodic null packets.


=head2 PatInterval => Int

  The number of milliseconds between instances of this table in the
output transport stream.


=head2 PcrControl => Str

  When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is
inserted for every Packetized Elementary Stream (PES) header. This is
effective only when the PCR PID is the same as the video or audio
elementary stream.


=head2 PcrPid => Int

  Specify the packet identifier (PID) for the program clock reference
(PCR) in this output. If you do not specify a value, the service will
use the value for Video PID (VideoPid).


=head2 PmtInterval => Int

  Specify the number of milliseconds between instances of the program map
table (PMT) in the output transport stream.


=head2 PmtPid => Int

  Specify the packet identifier (PID) for the program map table (PMT)
itself. Default is 480.


=head2 PrivateMetadataPid => Int

  Specify the packet identifier (PID) of the private metadata stream.
Default is 503.


=head2 ProgramNumber => Int

  Use Program number (programNumber) to specify the program number used
in the program map table (PMT) for this output. Default is 1. Program
numbers and program map tables are parts of MPEG-2 transport stream
containers, used for organizing data.


=head2 RateMode => Str

  When set to CBR, inserts null packets into transport stream to fill
specified bitrate. When set to VBR, the bitrate setting acts as the
maximum bitrate, but the output will not be padded up to that bitrate.


=head2 Scte35Esam => L<Paws::MediaConvert::M2tsScte35Esam>

  Include this in your job settings to put SCTE-35 markers in your HLS
and transport stream outputs at the insertion points that you specify
in an ESAM XML document. Provide the document in the setting SCC XML
(sccXml).


=head2 Scte35Pid => Int

  Specify the packet identifier (PID) of the SCTE-35 stream in the
transport stream.


=head2 Scte35Source => Str

  Enables SCTE-35 passthrough (scte35Source) to pass any SCTE-35 signals
from input to output.


=head2 SegmentationMarkers => Str

  Inserts segmentation markers at each segmentation_time period.
rai_segstart sets the Random Access Indicator bit in the adaptation
field. rai_adapt sets the RAI bit and adds the current timecode in the
private data bytes. psi_segstart inserts PAT and PMT tables at the
start of segments. ebp adds Encoder Boundary Point information to the
adaptation field as per OpenCable specification OC-SP-EBP-I01-130118.
ebp_legacy adds Encoder Boundary Point information to the adaptation
field using a legacy proprietary format.


=head2 SegmentationStyle => Str

  The segmentation style parameter controls how segmentation markers are
inserted into the transport stream. With avails, it is possible that
segments may be truncated, which can influence where future
segmentation markers are inserted. When a segmentation style of
"reset_cadence" is selected and a segment is truncated due to an avail,
we will reset the segmentation cadence. This means the subsequent
segment will have a duration of of $segmentation_time seconds. When a
segmentation style of "maintain_cadence" is selected and a segment is
truncated due to an avail, we will not reset the segmentation cadence.
This means the subsequent segment will likely be truncated as well.
However, all segments after that will have a duration of
$segmentation_time seconds. Note that EBP lookahead is a slight
exception to this rule.


=head2 SegmentationTime => Num

  Specify the length, in seconds, of each segment. Required unless
markers is set to _none_.


=head2 TimedMetadataPid => Int

  Specify the packet identifier (PID) for timed metadata in this output.
Default is 502.


=head2 TransportStreamId => Int

  Specify the ID for the transport stream itself in the program map table
for this output. Transport stream IDs and program map tables are parts
of MPEG-2 transport stream containers, used for organizing data.


=head2 VideoPid => Int

  Specify the packet identifier (PID) of the elementary video stream in
the transport stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

