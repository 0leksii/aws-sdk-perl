
package Paws::KMS::CreateAlias;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', required => 1);
  has TargetKeyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateAlias - Arguments for method CreateAlias on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAlias on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method CreateAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAlias.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
  # To create an alias
  # The following example creates an alias for the specified customer master key
  # (CMK).
    $kms->CreateAlias(
      'AliasName'   => 'alias/ExampleAlias',
      'TargetKeyId' => '1234abcd-12ab-34cd-56ef-1234567890ab'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/CreateAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasName => Str

Specifies the alias name. This value must begin with C<alias/> followed
by a name, such as C<alias/ExampleAlias>. The alias name cannot begin
with C<alias/aws/>. The C<alias/aws/> prefix is reserved for AWS
managed CMKs.



=head2 B<REQUIRED> TargetKeyId => Str

Identifies the CMK to which the alias refers. Specify the key ID or the
Amazon Resource Name (ARN) of the CMK. You cannot specify another
alias. For help finding the key ID and ARN, see Finding the Key ID and
ARN
(https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html#find-cmk-id-arn)
in the I<AWS Key Management Service Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAlias in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

