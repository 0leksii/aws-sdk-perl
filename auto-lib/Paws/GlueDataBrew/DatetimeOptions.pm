# Generated by default/object.tt
package Paws::GlueDataBrew::DatetimeOptions;
  use Moose;
  has Format => (is => 'ro', isa => 'Str', required => 1);
  has LocaleCode => (is => 'ro', isa => 'Str');
  has TimezoneOffset => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DatetimeOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GlueDataBrew::DatetimeOptions object:

  $service_obj->Method(Att1 => { Format => $value, ..., TimezoneOffset => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GlueDataBrew::DatetimeOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->Format

=head1 DESCRIPTION

Represents additional options for correct interpretation of datetime
parameters used in the S3 path of a dataset.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Format => Str

Required option, that defines the datetime format used for a date
parameter in the S3 path. Should use only supported datetime specifiers
and separation characters, all litera a-z or A-Z character should be
escaped with single quotes. E.g. "MM.dd.yyyy-'at'-HH:mm".


=head2 LocaleCode => Str

Optional value for a non-US locale code, needed for correct
interpretation of some date formats.


=head2 TimezoneOffset => Str

Optional value for a timezone offset of the datetime parameter value in
the S3 path. Shouldn't be used if Format for this parameter includes
timezone fields. If no offset specified, UTC is assumed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

