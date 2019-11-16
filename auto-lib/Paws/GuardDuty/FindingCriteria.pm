package Paws::GuardDuty::FindingCriteria;
  use Moose;
  has Criterion => (is => 'ro', isa => 'Paws::GuardDuty::Criterion', request_name => 'criterion', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::FindingCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::FindingCriteria object:

  $service_obj->Method(Att1 => { Criterion => $value, ..., Criterion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::FindingCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->Criterion

=head1 DESCRIPTION

Contains information about the criteria used for querying findings.

=head1 ATTRIBUTES


=head2 Criterion => L<Paws::GuardDuty::Criterion>

  Represents a map of finding properties that match specified conditions
and values when querying findings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

