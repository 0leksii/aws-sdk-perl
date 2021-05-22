# Generated by default/object.tt
package Paws::SageMaker::InputConfig;
  use Moose;
  has DataInputConfig => (is => 'ro', isa => 'Str', required => 1);
  has Framework => (is => 'ro', isa => 'Str', required => 1);
  has FrameworkVersion => (is => 'ro', isa => 'Str');
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::InputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::InputConfig object:

  $service_obj->Method(Att1 => { DataInputConfig => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::InputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->DataInputConfig

=head1 DESCRIPTION

Contains information about the location of input model artifacts, the
name and shape of the expected data inputs, and the framework in which
the model was trained.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataInputConfig => Str

Specifies the name and shape of the expected data inputs for your
trained model with a JSON dictionary form. The data inputs are
InputConfig$Framework specific.

=over

=item *

C<TensorFlow>: You must specify the name and shape (NHWC format) of the
expected data inputs using a dictionary format for your trained model.
The dictionary formats required for the console and CLI are different.

=over

=item *

Examples for one input:

=over

=item *

If using the console, C<{"input":[1,1024,1024,3]}>

=item *

If using the CLI, C<{\"input\":[1,1024,1024,3]}>

=back

=item *

Examples for two inputs:

=over

=item *

If using the console, C<{"data1": [1,28,28,1], "data2":[1,28,28,1]}>

=item *

If using the CLI, C<{\"data1\": [1,28,28,1], \"data2\":[1,28,28,1]}>

=back

=back

=item *

C<KERAS>: You must specify the name and shape (NCHW format) of expected
data inputs using a dictionary format for your trained model. Note that
while Keras model artifacts should be uploaded in NHWC (channel-last)
format, C<DataInputConfig> should be specified in NCHW (channel-first)
format. The dictionary formats required for the console and CLI are
different.

=over

=item *

Examples for one input:

=over

=item *

If using the console, C<{"input_1":[1,3,224,224]}>

=item *

If using the CLI, C<{\"input_1\":[1,3,224,224]}>

=back

=item *

Examples for two inputs:

=over

=item *

If using the console, C<{"input_1": [1,3,224,224],
"input_2":[1,3,224,224]}>

=item *

If using the CLI, C<{\"input_1\": [1,3,224,224],
\"input_2\":[1,3,224,224]}>

=back

=back

=item *

C<MXNET/ONNX/DARKNET>: You must specify the name and shape (NCHW
format) of the expected data inputs in order using a dictionary format
for your trained model. The dictionary formats required for the console
and CLI are different.

=over

=item *

Examples for one input:

=over

=item *

If using the console, C<{"data":[1,3,1024,1024]}>

=item *

If using the CLI, C<{\"data\":[1,3,1024,1024]}>

=back

=item *

Examples for two inputs:

=over

=item *

If using the console, C<{"var1": [1,1,28,28], "var2":[1,1,28,28]}>

=item *

If using the CLI, C<{\"var1\": [1,1,28,28], \"var2\":[1,1,28,28]}>

=back

=back

=item *

C<PyTorch>: You can either specify the name and shape (NCHW format) of
expected data inputs in order using a dictionary format for your
trained model or you can specify the shape only using a list format.
The dictionary formats required for the console and CLI are different.
The list formats for the console and CLI are the same.

=over

=item *

Examples for one input in dictionary format:

=over

=item *

If using the console, C<{"input0":[1,3,224,224]}>

=item *

If using the CLI, C<{\"input0\":[1,3,224,224]}>

=back

=item *

Example for one input in list format: C<[[1,3,224,224]]>

=item *

Examples for two inputs in dictionary format:

=over

=item *

If using the console, C<{"input0":[1,3,224,224],
"input1":[1,3,224,224]}>

=item *

If using the CLI, C<{\"input0\":[1,3,224,224],
\"input1\":[1,3,224,224]}>

=back

=item *

Example for two inputs in list format: C<[[1,3,224,224],
[1,3,224,224]]>

=back

=item *

C<XGBOOST>: input data name and shape are not needed.

=back

C<DataInputConfig> supports the following parameters for C<CoreML>
OutputConfig$TargetDevice (ML Model format):

=over

=item *

C<shape>: Input shape, for example C<{"input_1": {"shape":
[1,224,224,3]}}>. In addition to static input shapes, CoreML converter
supports Flexible input shapes:

=over

=item *

Range Dimension. You can use the Range Dimension feature if you know
the input shape will be within some specific interval in that
dimension, for example: C<{"input_1": {"shape": ["1..10", 224, 224,
3]}}>

=item *

Enumerated shapes. Sometimes, the models are trained to work only on a
select set of inputs. You can enumerate all supported input shapes, for
example: C<{"input_1": {"shape": [[1, 224, 224, 3], [1, 160, 160,
3]]}}>

=back

=item *

C<default_shape>: Default input shape. You can set a default shape
during conversion for both Range Dimension and Enumerated Shapes. For
example C<{"input_1": {"shape": ["1..10", 224, 224, 3],
"default_shape": [1, 224, 224, 3]}}>

=item *

C<type>: Input type. Allowed values: C<Image> and C<Tensor>. By
default, the converter generates an ML Model with inputs of type Tensor
(MultiArray). User can set input type to be Image. Image input type
requires additional input parameters such as C<bias> and C<scale>.

=item *

C<bias>: If the input type is an Image, you need to provide the bias
vector.

=item *

C<scale>: If the input type is an Image, you need to provide a scale
factor.

=back

CoreML C<ClassifierConfig> parameters can be specified using
OutputConfig$CompilerOptions. CoreML converter supports Tensorflow and
PyTorch models. CoreML conversion examples:

=over

=item *

Tensor type input:

=over

=item *

C<"DataInputConfig": {"input_1": {"shape": [[1,224,224,3],
[1,160,160,3]], "default_shape": [1,224,224,3]}}>

=back

=item *

Tensor type input without input name (PyTorch):

=over

=item *

C<"DataInputConfig": [{"shape": [[1,3,224,224], [1,3,160,160]],
"default_shape": [1,3,224,224]}]>

=back

=item *

Image type input:

=over

=item *

C<"DataInputConfig": {"input_1": {"shape": [[1,224,224,3],
[1,160,160,3]], "default_shape": [1,224,224,3], "type": "Image",
"bias": [-1,-1,-1], "scale": 0.007843137255}}>

=item *

C<"CompilerOptions": {"class_labels": "imagenet_labels_1000.txt"}>

=back

=item *

Image type input without input name (PyTorch):

=over

=item *

C<"DataInputConfig": [{"shape": [[1,3,224,224], [1,3,160,160]],
"default_shape": [1,3,224,224], "type": "Image", "bias": [-1,-1,-1],
"scale": 0.007843137255}]>

=item *

C<"CompilerOptions": {"class_labels": "imagenet_labels_1000.txt"}>

=back

=back

Depending on the model format, C<DataInputConfig> requires the
following parameters for C<ml_eia2> OutputConfig:TargetDevice
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_OutputConfig.html#sagemaker-Type-OutputConfig-TargetDevice).

=over

=item *

For TensorFlow models saved in the SavedModel format, specify the input
names from C<signature_def_key> and the input model shapes for
C<DataInputConfig>. Specify the C<signature_def_key> in
C<OutputConfig:CompilerOptions>
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_OutputConfig.html#sagemaker-Type-OutputConfig-CompilerOptions)
if the model does not use TensorFlow's default signature def key. For
example:

=over

=item *

C<"DataInputConfig": {"inputs": [1, 224, 224, 3]}>

=item *

C<"CompilerOptions": {"signature_def_key": "serving_custom"}>

=back

=item *

For TensorFlow models saved as a frozen graph, specify the input tensor
names and shapes in C<DataInputConfig> and the output tensor names for
C<output_names> in C<OutputConfig:CompilerOptions>
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_OutputConfig.html#sagemaker-Type-OutputConfig-CompilerOptions).
For example:

=over

=item *

C<"DataInputConfig": {"input_tensor:0": [1, 224, 224, 3]}>

=item *

C<"CompilerOptions": {"output_names": ["output_tensor:0"]}>

=back

=back



=head2 B<REQUIRED> Framework => Str

Identifies the framework in which the model was trained. For example:
TENSORFLOW.


=head2 FrameworkVersion => Str

Specifies the framework version to use.

This API field is only supported for PyTorch framework versions C<1.4>,
C<1.5>, and C<1.6> for cloud instance target devices: C<ml_c4>,
C<ml_c5>, C<ml_m4>, C<ml_m5>, C<ml_p2>, C<ml_p3>, and C<ml_g4dn>.


=head2 B<REQUIRED> S3Uri => Str

The S3 path where the model artifacts, which result from model
training, are stored. This path must point to a single gzip compressed
tar archive (.tar.gz suffix).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

