
package Paws::DMS::CreateEventSubscription;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnsTopicArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::CreateEventSubscriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateEventSubscription - Arguments for method CreateEventSubscription on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventSubscription on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method CreateEventSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventSubscription.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $CreateEventSubscriptionResponse = $dms->CreateEventSubscription(
      SnsTopicArn      => 'MyString',
      SubscriptionName => 'MyString',
      Enabled          => 1,                      # OPTIONAL
      EventCategories  => [ 'MyString', ... ],    # OPTIONAL
      SourceIds        => [ 'MyString', ... ],    # OPTIONAL
      SourceType       => 'MyString',             # OPTIONAL
      Tags             => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                          # OPTIONAL
    );

    # Results:
    my $EventSubscription = $CreateEventSubscriptionResponse->EventSubscription;

    # Returns a L<Paws::DMS::CreateEventSubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/CreateEventSubscription>

=head1 ATTRIBUTES


=head2 Enabled => Bool

A Boolean value; set to B<true> to activate the subscription, or set to
B<false> to create the subscription but not activate it.



=head2 EventCategories => ArrayRef[Str|Undef]

A list of event categories for a source type that you want to subscribe
to. You can see a list of the categories for a given source type by
calling the B<DescribeEventCategories> action or in the topic Working
with Events and Notifications
(http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in
the AWS Database Migration Service User Guide.



=head2 B<REQUIRED> SnsTopicArn => Str

The Amazon Resource Name (ARN) of the Amazon SNS topic created for
event notification. The ARN is created by Amazon SNS when you create a
topic and subscribe to it.



=head2 SourceIds => ArrayRef[Str|Undef]

The list of identifiers of the event sources for which events will be
returned. If not specified, then all sources are included in the
response. An identifier must begin with a letter and must contain only
ASCII letters, digits, and hyphens; it cannot end with a hyphen or
contain two consecutive hyphens.



=head2 SourceType => Str

The type of AWS DMS resource that generates the events. For example, if
you want to be notified of events generated by a replication instance,
you set this parameter to C<replication-instance>. If this value is not
specified, all events are returned.

Valid values: replication-instance | migration-task



=head2 B<REQUIRED> SubscriptionName => Str

The name of the AWS DMS event notification subscription.

Constraints: The name must be less than 255 characters.



=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

A tag to be attached to the event subscription.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventSubscription in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

