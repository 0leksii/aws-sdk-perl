
package Paws::Route53Domains::GetDomainDetail;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDomainDetail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::GetDomainDetailResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::GetDomainDetail - Arguments for method GetDomainDetail on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDomainDetail on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method GetDomainDetail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDomainDetail.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $GetDomainDetailResponse = $route53domains->GetDomainDetail(
      DomainName => 'MyDomainName',

    );

    # Results:
    my $CreationDate      = $GetDomainDetailResponse->CreationDate;
    my $AdminPrivacy      = $GetDomainDetailResponse->AdminPrivacy;
    my $DomainName        = $GetDomainDetailResponse->DomainName;
    my $TechContact       = $GetDomainDetailResponse->TechContact;
    my $RegistrarUrl      = $GetDomainDetailResponse->RegistrarUrl;
    my $RegistrarName     = $GetDomainDetailResponse->RegistrarName;
    my $ExpirationDate    = $GetDomainDetailResponse->ExpirationDate;
    my $AbuseContactPhone = $GetDomainDetailResponse->AbuseContactPhone;
    my $AdminContact      = $GetDomainDetailResponse->AdminContact;
    my $RegistrantContact = $GetDomainDetailResponse->RegistrantContact;
    my $RegistryDomainId  = $GetDomainDetailResponse->RegistryDomainId;
    my $Nameservers       = $GetDomainDetailResponse->Nameservers;
    my $DnsSec            = $GetDomainDetailResponse->DnsSec;
    my $StatusList        = $GetDomainDetailResponse->StatusList;
    my $TechPrivacy       = $GetDomainDetailResponse->TechPrivacy;
    my $AbuseContactEmail = $GetDomainDetailResponse->AbuseContactEmail;
    my $RegistrantPrivacy = $GetDomainDetailResponse->RegistrantPrivacy;
    my $UpdatedDate       = $GetDomainDetailResponse->UpdatedDate;
    my $WhoIsServer       = $GetDomainDetailResponse->WhoIsServer;
    my $Reseller          = $GetDomainDetailResponse->Reseller;
    my $AutoRenew         = $GetDomainDetailResponse->AutoRenew;

    # Returns a L<Paws::Route53Domains::GetDomainDetailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/GetDomainDetail>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the domain that you want to get detailed information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDomainDetail in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

