
package Paws::Config::PutDeliveryChannel;
  use Moose;
  has DeliveryChannel => (is => 'ro', isa => 'Paws::Config::DeliveryChannel', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDeliveryChannel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutDeliveryChannel - Arguments for method PutDeliveryChannel on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDeliveryChannel on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutDeliveryChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDeliveryChannel.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    $config->PutDeliveryChannel(
      DeliveryChannel => {
        configSnapshotDeliveryProperties => {
          deliveryFrequency => 'One_Hour'
          , # values: One_Hour, Three_Hours, Six_Hours, Twelve_Hours, TwentyFour_Hours; OPTIONAL
        },    # OPTIONAL
        snsTopicARN  => 'MyString',         # OPTIONAL
        s3KeyPrefix  => 'MyString',         # OPTIONAL
        name         => 'MyChannelName',    # min: 1, max: 256; OPTIONAL
        s3BucketName => 'MyString',         # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutDeliveryChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryChannel => L<Paws::Config::DeliveryChannel>

The configuration delivery channel object that delivers the
configuration information to an Amazon S3 bucket and to an Amazon SNS
topic.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDeliveryChannel in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

