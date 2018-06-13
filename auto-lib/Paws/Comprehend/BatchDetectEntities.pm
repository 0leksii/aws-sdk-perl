
package Paws::Comprehend::BatchDetectEntities;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TextList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDetectEntities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::BatchDetectEntitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::BatchDetectEntities - Arguments for method BatchDetectEntities on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDetectEntities on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method BatchDetectEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDetectEntities.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $BatchDetectEntitiesResponse = $comprehend->BatchDetectEntities(
      LanguageCode => 'MyString',
      TextList     => [
        'MyString', ...    # min: 1,
      ],

    );

    # Results:
    my $ResultList = $BatchDetectEntitiesResponse->ResultList;
    my $ErrorList  = $BatchDetectEntitiesResponse->ErrorList;

    # Returns a L<Paws::Comprehend::BatchDetectEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/BatchDetectEntities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents. All documents must be in the same
language.



=head2 B<REQUIRED> TextList => ArrayRef[Str|Undef]

A list containing the text of the input documents. The list can contain
a maximum of 25 documents. Each document must contain fewer than 5,000
bytes of UTF-8 encoded characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDetectEntities in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

