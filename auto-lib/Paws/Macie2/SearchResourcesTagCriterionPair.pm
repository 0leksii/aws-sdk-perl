# Generated by default/object.tt
package Paws::Macie2::SearchResourcesTagCriterionPair;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::SearchResourcesTagCriterionPair

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::SearchResourcesTagCriterionPair object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::SearchResourcesTagCriterionPair object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Specifies a tag key, a tag value, or a tag key and value (as a pair) to
use in a tag-based filter condition for a query. Tag keys and values
are case sensitive. Also, Amazon Macie doesn't support use of partial
values or wildcard characters in tag-based filter conditions.

=head1 ATTRIBUTES


=head2 Key => Str

The value for the tag key to use in the condition.


=head2 Value => Str

The tag value to use in the condition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

