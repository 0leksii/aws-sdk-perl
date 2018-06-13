
package Paws::Pinpoint::UpdateSegment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has SegmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'segment-id', required => 1);
  has WriteSegmentRequest => (is => 'ro', isa => 'Paws::Pinpoint::WriteSegmentRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'WriteSegmentRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSegment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/segments/{segment-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateSegmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateSegment - Arguments for method UpdateSegment on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSegment on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateSegment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSegment.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateSegmentResponse = $pinpoint->UpdateSegment(
      ApplicationId       => 'My__string',
      SegmentId           => 'My__string',
      WriteSegmentRequest => {
        Dimensions => {
          UserAttributes => {
            'My__string' => {
              Values => [ 'My__string', ... ],    # OPTIONAL
              AttributeType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },
          },    # OPTIONAL
          Behavior => {
            Recency => {
              RecencyType => 'ACTIVE',    # values: ACTIVE, INACTIVE; OPTIONAL
              Duration =>
                'HR_24',    # values: HR_24, DAY_7, DAY_14, DAY_30; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Demographic => {
            Platform => {
              Values => [ 'My__string', ... ],    # OPTIONAL
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
            DeviceType => {
              Values => [ 'My__string', ... ],    # OPTIONAL
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
            AppVersion => {
              Values => [ 'My__string', ... ],    # OPTIONAL
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
            Make => {
              Values => [ 'My__string', ... ],    # OPTIONAL
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
            Model => {
              Values => [ 'My__string', ... ],    # OPTIONAL
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
            Channel => {
              Values => [ 'My__string', ... ],    # OPTIONAL
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Location => {
            Country => {
              Values => [ 'My__string', ... ],    # OPTIONAL
              DimensionType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Attributes => {
            'My__string' => {
              Values => [ 'My__string', ... ],    # OPTIONAL
              AttributeType =>
                'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
            },
          },    # OPTIONAL
        },    # OPTIONAL
        Name => 'My__string',
      },

    );

    # Results:
    my $SegmentResponse = $UpdateSegmentResponse->SegmentResponse;

    # Returns a L<Paws::Pinpoint::UpdateSegmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str





=head2 B<REQUIRED> SegmentId => Str





=head2 B<REQUIRED> WriteSegmentRequest => L<Paws::Pinpoint::WriteSegmentRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSegment in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

