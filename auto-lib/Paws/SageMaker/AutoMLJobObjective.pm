# Generated by default/object.tt
package Paws::SageMaker::AutoMLJobObjective;
  use Moose;
  has MetricName => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AutoMLJobObjective

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AutoMLJobObjective object:

  $service_obj->Method(Att1 => { MetricName => $value, ..., MetricName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AutoMLJobObjective object:

  $result = $service_obj->Method(...);
  $result->Att1->MetricName

=head1 DESCRIPTION

Specifies a metric to minimize or maximize as the objective of a job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricName => Str

The name of the objective metric used to measure the predictive quality
of a machine learning system. This metric is optimized during training
to provide the best estimate for model parameter values from data.

Here are the options:

=over

=item *

C<MSE>: The mean squared error (MSE) is the average of the squared
differences between the predicted and actual values. It is used for
regression. MSE values are always positive: the better a model is at
predicting the actual values, the smaller the MSE value. When the data
contains outliers, they tend to dominate the MSE, which might cause
subpar prediction performance.

=item *

C<Accuracy>: The ratio of the number of correctly classified items to
the total number of (correctly and incorrectly) classified items. It is
used for binary and multiclass classification. It measures how close
the predicted class values are to the actual values. Accuracy values
vary between zero and one: one indicates perfect accuracy and zero
indicates perfect inaccuracy.

=item *

C<F1>: The F1 score is the harmonic mean of the precision and recall.
It is used for binary classification into classes traditionally
referred to as positive and negative. Predictions are said to be true
when they match their actual (correct) class and false when they do
not. Precision is the ratio of the true positive predictions to all
positive predictions (including the false positives) in a data set and
measures the quality of the prediction when it predicts the positive
class. Recall (or sensitivity) is the ratio of the true positive
predictions to all actual positive instances and measures how
completely a model predicts the actual class members in a data set. The
standard F1 score weighs precision and recall equally. But which metric
is paramount typically depends on specific aspects of a problem. F1
scores vary between zero and one: one indicates the best possible
performance and zero the worst.

=item *

C<AUC>: The area under the curve (AUC) metric is used to compare and
evaluate binary classification by algorithms such as logistic
regression that return probabilities. A threshold is needed to map the
probabilities into classifications. The relevant curve is the receiver
operating characteristic curve that plots the true positive rate (TPR)
of predictions (or recall) against the false positive rate (FPR) as a
function of the threshold value, above which a prediction is considered
positive. Increasing the threshold results in fewer false positives but
more false negatives. AUC is the area under this receiver operating
characteristic curve and so provides an aggregated measure of the model
performance across all possible classification thresholds. The AUC
score can also be interpreted as the probability that a randomly
selected positive data point is more likely to be predicted positive
than a randomly selected negative example. AUC scores vary between zero
and one: a score of one indicates perfect accuracy and a score of one
half indicates that the prediction is not better than a random
classifier. Values under one half predict less accurately than a random
predictor. But such consistently bad predictors can simply be inverted
to obtain better than random predictors.

=item *

C<F1macro>: The F1macro score applies F1 scoring to multiclass
classification. In this context, you have multiple classes to predict.
You just calculate the precision and recall for each class as you did
for the positive class in binary classification. Then, use these values
to calculate the F1 score for each class and average them to obtain the
F1macro score. F1macro scores vary between zero and one: one indicates
the best possible performance and zero the worst.

=back

If you do not specify a metric explicitly, the default behavior is to
automatically use:

=over

=item *

C<MSE>: for regression.

=item *

C<F1>: for binary classification

=item *

C<Accuracy>: for multiclass classification.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

