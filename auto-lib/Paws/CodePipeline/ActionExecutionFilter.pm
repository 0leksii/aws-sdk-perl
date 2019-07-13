package Paws::CodePipeline::ActionExecutionFilter;
  use Moose;
  has PipelineExecutionId => (is => 'ro', isa => 'Str', request_name => 'pipelineExecutionId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionExecutionFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionExecutionFilter object:

  $service_obj->Method(Att1 => { PipelineExecutionId => $value, ..., PipelineExecutionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionExecutionFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->PipelineExecutionId

=head1 DESCRIPTION

Filter values for the action execution.

=head1 ATTRIBUTES


=head2 PipelineExecutionId => Str

  The pipeline execution ID used to filter action execution history.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

