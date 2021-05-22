# Generated by default/object.tt
package Paws::Kendra::ConfluencePageToIndexFieldMapping;
  use Moose;
  has DataSourceFieldName => (is => 'ro', isa => 'Str');
  has DateFieldFormat => (is => 'ro', isa => 'Str');
  has IndexFieldName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ConfluencePageToIndexFieldMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::ConfluencePageToIndexFieldMapping object:

  $service_obj->Method(Att1 => { DataSourceFieldName => $value, ..., IndexFieldName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::ConfluencePageToIndexFieldMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->DataSourceFieldName

=head1 DESCRIPTION

Defines the mapping between a field in the Confluence data source to a
Amazon Kendra index field.

You must first create the index field using the C<UpdateIndex>
operation.

=head1 ATTRIBUTES


=head2 DataSourceFieldName => Str

The name of the field in the data source.


=head2 DateFieldFormat => Str

The format for date fields in the data source. If the field specified
in C<DataSourceFieldName> is a date field you must specify the date
format. If the field is not a date field, an exception is thrown.


=head2 IndexFieldName => Str

The name of the index field to map to the Confluence data source field.
The index field type must match the Confluence field type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

