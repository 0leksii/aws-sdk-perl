# Generated by default/object.tt
package Paws::Macie2::FindingCriteria;
  use Moose;
  has Criterion => (is => 'ro', isa => 'Paws::Macie2::Criterion', request_name => 'criterion', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::FindingCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::FindingCriteria object:

  $service_obj->Method(Att1 => { Criterion => $value, ..., Criterion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::FindingCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->Criterion

=head1 DESCRIPTION

Specifies, as a map, one or more property-based conditions that filter
the results of a query for findings.

=head1 ATTRIBUTES


=head2 Criterion => L<Paws::Macie2::Criterion>

A condition that specifies the property, operator, and one or more
values to use to filter the results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

