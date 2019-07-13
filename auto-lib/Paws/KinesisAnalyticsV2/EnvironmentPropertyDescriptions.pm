package Paws::KinesisAnalyticsV2::EnvironmentPropertyDescriptions;
  use Moose;
  has PropertyGroupDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::PropertyGroup]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::EnvironmentPropertyDescriptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::EnvironmentPropertyDescriptions object:

  $service_obj->Method(Att1 => { PropertyGroupDescriptions => $value, ..., PropertyGroupDescriptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::EnvironmentPropertyDescriptions object:

  $result = $service_obj->Method(...);
  $result->Att1->PropertyGroupDescriptions

=head1 DESCRIPTION

Describes the execution properties for a Java-based Amazon Kinesis Data
Analytics application.

=head1 ATTRIBUTES


=head2 PropertyGroupDescriptions => ArrayRef[L<Paws::KinesisAnalyticsV2::PropertyGroup>]

  Describes the execution property groups.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

