package Paws::ApplicationInsights::ConfigurationEvent;
  use Moose;
  has EventDetail => (is => 'ro', isa => 'Str');
  has EventResourceName => (is => 'ro', isa => 'Str');
  has EventResourceType => (is => 'ro', isa => 'Str');
  has EventStatus => (is => 'ro', isa => 'Str');
  has EventTime => (is => 'ro', isa => 'Str');
  has MonitoredResourceARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ConfigurationEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationInsights::ConfigurationEvent object:

  $service_obj->Method(Att1 => { EventDetail => $value, ..., MonitoredResourceARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationInsights::ConfigurationEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->EventDetail

=head1 DESCRIPTION

The event information.

=head1 ATTRIBUTES


=head2 EventDetail => Str

  The details of the event in plain text.


=head2 EventResourceName => Str

  The name of the resource Application Insights attempted to configure.


=head2 EventResourceType => Str

  The resource type that Application Insights attempted to configure, for
example, CLOUDWATCH_ALARM.


=head2 EventStatus => Str

  The status of the configuration update event. Possible values include
INFO, WARN, and ERROR.


=head2 EventTime => Str

  The timestamp of the event.


=head2 MonitoredResourceARN => Str

  The resource monitored by Application Insights.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

