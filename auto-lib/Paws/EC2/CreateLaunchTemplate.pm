
package Paws::EC2::CreateLaunchTemplate;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has LaunchTemplateData => (is => 'ro', isa => 'Paws::EC2::RequestLaunchTemplateData', required => 1);
  has LaunchTemplateName => (is => 'ro', isa => 'Str', required => 1);
  has VersionDescription => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLaunchTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateLaunchTemplateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateLaunchTemplate - Arguments for method CreateLaunchTemplate on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLaunchTemplate on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateLaunchTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLaunchTemplate.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateLaunchTemplateResult = $ec2->CreateLaunchTemplate(
      LaunchTemplateData => {
        Monitoring => {
          Enabled => 1,    # OPTIONAL
        },    # OPTIONAL
        SecurityGroups => [
          'MyString', ...    # OPTIONAL
        ],                   # OPTIONAL
        KernelId              => 'MyString',    # OPTIONAL
        InstanceMarketOptions => {
          SpotOptions => {
            SpotInstanceType =>
              'one-time',    # values: one-time, persistent; OPTIONAL
            BlockDurationMinutes => 1,                        # OPTIONAL
            ValidUntil           => '1970-01-01T01:00:00',    # OPTIONAL
            MaxPrice             => 'MyString',               # OPTIONAL
            InstanceInterruptionBehavior =>
              'hibernate',    # values: hibernate, stop, terminate; OPTIONAL
          },    # OPTIONAL
          MarketType => 'spot',    # values: spot; OPTIONAL
        },    # OPTIONAL
        IamInstanceProfile => {
          Arn  => 'MyString',    # OPTIONAL
          Name => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        UserData            => 'MyString',    # OPTIONAL
        KeyName             => 'MyString',    # OPTIONAL
        CreditSpecification => {
          CpuCredits => 'MyString',           # OPTIONAL

        },    # OPTIONAL
        RamDiskId                => 'MyString',    # OPTIONAL
        ImageId                  => 'MyString',    # OPTIONAL
        ElasticGpuSpecifications => [
          {
            Type => 'MyString',                    # OPTIONAL

          },
          ...
        ],                                         # OPTIONAL
        NetworkInterfaces => [
          {
            Groups => [
              'MyString', ...                      # OPTIONAL
            ],                                     # OPTIONAL
            DeviceIndex         => 1,              # OPTIONAL
            SubnetId            => 'MyString',     # OPTIONAL
            DeleteOnTermination => 1,              # OPTIONAL
            PrivateIpAddresses  => [
              {
                PrivateIpAddress => 'MyString',    # OPTIONAL
                Primary          => 1,             # OPTIONAL
              },
              ...
            ],                                     # OPTIONAL
            Description   => 'MyString',           # OPTIONAL
            Ipv6Addresses => [
              {
                Ipv6Address => 'MyString',         # OPTIONAL
              },
              ...
            ],                                     # OPTIONAL
            NetworkInterfaceId             => 'MyString',    # OPTIONAL
            SecondaryPrivateIpAddressCount => 1,             # OPTIONAL
            PrivateIpAddress               => 'MyString',    # OPTIONAL
            Ipv6AddressCount               => 1,             # OPTIONAL
            AssociatePublicIpAddress       => 1,             # OPTIONAL
          },
          ...
        ],                                                   # OPTIONAL
        DisableApiTermination => 1,                          # OPTIONAL
        SecurityGroupIds      => [
          'MyString', ...                                    # OPTIONAL
        ],                                                   # OPTIONAL
        BlockDeviceMappings => [
          {
            VirtualName => 'MyString',                       # OPTIONAL
            DeviceName  => 'MyString',                       # OPTIONAL
            NoDevice    => 'MyString',                       # OPTIONAL
            Ebs         => {
              DeleteOnTermination => 1,                      # OPTIONAL
              VolumeSize          => 1,                      # OPTIONAL
              VolumeType =>
                'standard',    # values: standard, io1, gp2, sc1, st1; OPTIONAL
              Iops       => 1,             # OPTIONAL
              SnapshotId => 'MyString',    # OPTIONAL
              KmsKeyId   => 'MyString',    # OPTIONAL
              Encrypted  => 1,             # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],        # OPTIONAL
        TagSpecifications => [
          {
            Tags => [
              {
                Value => 'MyString',    # OPTIONAL
                Key   => 'MyString',    # OPTIONAL
              },
              ...
            ],                          # OPTIONAL
            ResourceType => 'customer-gateway'
            , # values: customer-gateway, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        InstanceInitiatedShutdownBehavior =>
          'stop',    # values: stop, terminate; OPTIONAL
        EbsOptimized => 1,           # OPTIONAL
        InstanceType => 't1.micro'
        , # values: t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, x1e.xlarge, x1e.2xlarge, x1e.4xlarge, x1e.8xlarge, x1e.16xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, i3.metal, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.18xlarge, c5d.large, c5d.xlarge, c5d.2xlarge, c5d.4xlarge, c5d.9xlarge, c5d.18xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, p3.2xlarge, p3.8xlarge, p3.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.12xlarge, m5.24xlarge, m5d.large, m5d.xlarge, m5d.2xlarge, m5d.4xlarge, m5d.12xlarge, m5d.24xlarge, h1.2xlarge, h1.4xlarge, h1.8xlarge, h1.16xlarge; OPTIONAL
        Placement => {
          HostId    => 'MyString',  # OPTIONAL
          GroupName => 'MyString',  # OPTIONAL
          Tenancy   => 'default',   # values: default, dedicated, host; OPTIONAL
          AvailabilityZone => 'MyString',    # OPTIONAL
          Affinity         => 'MyString',    # OPTIONAL
          SpreadDomain     => 'MyString',    # OPTIONAL
        },    # OPTIONAL
      },
      LaunchTemplateName => 'MyLaunchTemplateName',
      ClientToken        => 'MyString',                # OPTIONAL
      DryRun             => 1,                         # OPTIONAL
      VersionDescription => 'MyVersionDescription',    # OPTIONAL
    );

    # Results:
    my $LaunchTemplate = $CreateLaunchTemplateResult->LaunchTemplate;

    # Returns a L<Paws::EC2::CreateLaunchTemplateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateLaunchTemplate>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see Ensuring Idempotency
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> LaunchTemplateData => L<Paws::EC2::RequestLaunchTemplateData>

The information for the launch template.



=head2 B<REQUIRED> LaunchTemplateName => Str

A name for the launch template.



=head2 VersionDescription => Str

A description for the first version of the launch template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLaunchTemplate in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

