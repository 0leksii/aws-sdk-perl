# Generated by default/object.tt
package Paws::FraudDetector::RuleResult;
  use Moose;
  has Outcomes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'outcomes', traits => ['NameInRequest']);
  has RuleId => (is => 'ro', isa => 'Str', request_name => 'ruleId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::RuleResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::RuleResult object:

  $service_obj->Method(Att1 => { Outcomes => $value, ..., RuleId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::RuleResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Outcomes

=head1 DESCRIPTION

The rule results.

=head1 ATTRIBUTES


=head2 Outcomes => ArrayRef[Str|Undef]

The outcomes of the matched rule, based on the rule execution mode.


=head2 RuleId => Str

The rule ID that was matched, based on the rule execution mode.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

