
package Paws::EMR::ListSteps {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has StepStates => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSteps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::ListStepsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;