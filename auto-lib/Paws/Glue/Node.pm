package Paws::Glue::Node;
  use Moose;
  has CrawlerDetails => (is => 'ro', isa => 'Paws::Glue::CrawlerNodeDetails');
  has JobDetails => (is => 'ro', isa => 'Paws::Glue::JobNodeDetails');
  has Name => (is => 'ro', isa => 'Str');
  has TriggerDetails => (is => 'ro', isa => 'Paws::Glue::TriggerNodeDetails');
  has Type => (is => 'ro', isa => 'Str');
  has UniqueId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Node

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Node object:

  $service_obj->Method(Att1 => { CrawlerDetails => $value, ..., UniqueId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Node object:

  $result = $service_obj->Method(...);
  $result->Att1->CrawlerDetails

=head1 DESCRIPTION

A node represents an AWS Glue component like Trigger, Job etc. which is
part of a workflow.

=head1 ATTRIBUTES


=head2 CrawlerDetails => L<Paws::Glue::CrawlerNodeDetails>

  Details of the crawler when the node represents a crawler.


=head2 JobDetails => L<Paws::Glue::JobNodeDetails>

  Details of the Job when the node represents a Job.


=head2 Name => Str

  The name of the AWS Glue component represented by the node.


=head2 TriggerDetails => L<Paws::Glue::TriggerNodeDetails>

  Details of the Trigger when the node represents a Trigger.


=head2 Type => Str

  The type of AWS Glue component represented by the node.


=head2 UniqueId => Str

  The unique Id assigned to the node within the workflow.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

