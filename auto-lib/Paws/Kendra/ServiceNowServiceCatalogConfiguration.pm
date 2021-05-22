# Generated by default/object.tt
package Paws::Kendra::ServiceNowServiceCatalogConfiguration;
  use Moose;
  has CrawlAttachments => (is => 'ro', isa => 'Bool');
  has DocumentDataFieldName => (is => 'ro', isa => 'Str', required => 1);
  has DocumentTitleFieldName => (is => 'ro', isa => 'Str');
  has ExcludeAttachmentFilePatterns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has FieldMappings => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DataSourceToIndexFieldMapping]');
  has IncludeAttachmentFilePatterns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ServiceNowServiceCatalogConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::ServiceNowServiceCatalogConfiguration object:

  $service_obj->Method(Att1 => { CrawlAttachments => $value, ..., IncludeAttachmentFilePatterns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::ServiceNowServiceCatalogConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CrawlAttachments

=head1 DESCRIPTION

Provides configuration information for crawling service catalog items
in the ServiceNow site

=head1 ATTRIBUTES


=head2 CrawlAttachments => Bool

Indicates whether Amazon Kendra should crawl attachments to the service
catalog items.


=head2 B<REQUIRED> DocumentDataFieldName => Str

The name of the ServiceNow field that is mapped to the index document
contents field in the Amazon Kendra index.


=head2 DocumentTitleFieldName => Str

The name of the ServiceNow field that is mapped to the index document
title field.


=head2 ExcludeAttachmentFilePatterns => ArrayRef[Str|Undef]

A list of regular expression patterns. Documents that match the
patterns are excluded from the index. Documents that don't match the
patterns are included in the index. If a document matches both an
exclusion pattern and an inclusion pattern, the document is not
included in the index.

The regex is applied to the file name of the attachment.


=head2 FieldMappings => ArrayRef[L<Paws::Kendra::DataSourceToIndexFieldMapping>]

Mapping between ServiceNow fields and Amazon Kendra index fields. You
must create the index field before you map the field.


=head2 IncludeAttachmentFilePatterns => ArrayRef[Str|Undef]

A list of regular expression patterns. Documents that match the
patterns are included in the index. Documents that don't match the
patterns are excluded from the index. If a document matches both an
exclusion pattern and an inclusion pattern, the document is not
included in the index.

The regex is applied to the file name of the attachment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

