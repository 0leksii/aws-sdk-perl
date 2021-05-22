# Generated by default/object.tt
package Paws::Kendra::DatabaseConfiguration;
  use Moose;
  has AclConfiguration => (is => 'ro', isa => 'Paws::Kendra::AclConfiguration');
  has ColumnConfiguration => (is => 'ro', isa => 'Paws::Kendra::ColumnConfiguration', required => 1);
  has ConnectionConfiguration => (is => 'ro', isa => 'Paws::Kendra::ConnectionConfiguration', required => 1);
  has DatabaseEngineType => (is => 'ro', isa => 'Str', required => 1);
  has SqlConfiguration => (is => 'ro', isa => 'Paws::Kendra::SqlConfiguration');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::Kendra::DataSourceVpcConfiguration');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DatabaseConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::DatabaseConfiguration object:

  $service_obj->Method(Att1 => { AclConfiguration => $value, ..., VpcConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::DatabaseConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AclConfiguration

=head1 DESCRIPTION

Provides the information necessary to connect a database to an index.

=head1 ATTRIBUTES


=head2 AclConfiguration => L<Paws::Kendra::AclConfiguration>

Information about the database column that provides information for
user context filtering.


=head2 B<REQUIRED> ColumnConfiguration => L<Paws::Kendra::ColumnConfiguration>

Information about where the index should get the document information
from the database.


=head2 B<REQUIRED> ConnectionConfiguration => L<Paws::Kendra::ConnectionConfiguration>

The information necessary to connect to a database.


=head2 B<REQUIRED> DatabaseEngineType => Str

The type of database engine that runs the database.


=head2 SqlConfiguration => L<Paws::Kendra::SqlConfiguration>

Provides information about how Amazon Kendra uses quote marks around
SQL identifiers when querying a database data source.


=head2 VpcConfiguration => L<Paws::Kendra::DataSourceVpcConfiguration>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

