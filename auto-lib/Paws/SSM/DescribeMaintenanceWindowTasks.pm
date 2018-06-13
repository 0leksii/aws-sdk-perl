
package Paws::SSM::DescribeMaintenanceWindowTasks;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::MaintenanceWindowFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has WindowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMaintenanceWindowTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeMaintenanceWindowTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowTasks - Arguments for method DescribeMaintenanceWindowTasks on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMaintenanceWindowTasks on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeMaintenanceWindowTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMaintenanceWindowTasks.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeMaintenanceWindowTasksResult =
      $ssm->DescribeMaintenanceWindowTasks(
      WindowId => 'MyMaintenanceWindowId',
      Filters  => [
        {
          Values => [
            'MyMaintenanceWindowFilterValue', ...    # min: 1, max: 256
          ],                                         # OPTIONAL
          Key => 'MyMaintenanceWindowFilterKey',    # min: 1, max: 128; OPTIONAL
        },
        ...
      ],                                            # OPTIONAL
      MaxResults => 1,                              # OPTIONAL
      NextToken  => 'MyNextToken',                  # OPTIONAL
      );

    # Results:
    my $Tasks     = $DescribeMaintenanceWindowTasksResult->Tasks;
    my $NextToken = $DescribeMaintenanceWindowTasksResult->NextToken;

    # Returns a L<Paws::SSM::DescribeMaintenanceWindowTasksResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeMaintenanceWindowTasks>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::MaintenanceWindowFilter>]

Optional filters used to narrow down the scope of the returned tasks.
The supported filter keys are WindowTaskId, TaskArn, Priority, and
TaskType.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 B<REQUIRED> WindowId => Str

The ID of the Maintenance Window whose tasks should be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMaintenanceWindowTasks in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

