Æ
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718��
�
online_cnn_vad/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP*,
shared_nameonline_cnn_vad/dense/kernel
�
/online_cnn_vad/dense/kernel/Read/ReadVariableOpReadVariableOponline_cnn_vad/dense/kernel*
_output_shapes

:PP*
dtype0
�
online_cnn_vad/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P**
shared_nameonline_cnn_vad/dense/bias
�
-online_cnn_vad/dense/bias/Read/ReadVariableOpReadVariableOponline_cnn_vad/dense/bias*
_output_shapes
:P*
dtype0
�
online_cnn_vad/conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:PP*-
shared_nameonline_cnn_vad/conv1d/kernel
�
0online_cnn_vad/conv1d/kernel/Read/ReadVariableOpReadVariableOponline_cnn_vad/conv1d/kernel*"
_output_shapes
:PP*
dtype0
�
online_cnn_vad/conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*+
shared_nameonline_cnn_vad/conv1d/bias
�
.online_cnn_vad/conv1d/bias/Read/ReadVariableOpReadVariableOponline_cnn_vad/conv1d/bias*
_output_shapes
:P*
dtype0
�
online_cnn_vad/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP*.
shared_nameonline_cnn_vad/dense_1/kernel
�
1online_cnn_vad/dense_1/kernel/Read/ReadVariableOpReadVariableOponline_cnn_vad/dense_1/kernel*
_output_shapes

:PP*
dtype0
�
online_cnn_vad/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*,
shared_nameonline_cnn_vad/dense_1/bias
�
/online_cnn_vad/dense_1/bias/Read/ReadVariableOpReadVariableOponline_cnn_vad/dense_1/bias*
_output_shapes
:P*
dtype0
�
online_cnn_vad/conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:PP*/
shared_name online_cnn_vad/conv1d_1/kernel
�
2online_cnn_vad/conv1d_1/kernel/Read/ReadVariableOpReadVariableOponline_cnn_vad/conv1d_1/kernel*"
_output_shapes
:PP*
dtype0
�
online_cnn_vad/conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*-
shared_nameonline_cnn_vad/conv1d_1/bias
�
0online_cnn_vad/conv1d_1/bias/Read/ReadVariableOpReadVariableOponline_cnn_vad/conv1d_1/bias*
_output_shapes
:P*
dtype0
�
online_cnn_vad/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP*.
shared_nameonline_cnn_vad/dense_2/kernel
�
1online_cnn_vad/dense_2/kernel/Read/ReadVariableOpReadVariableOponline_cnn_vad/dense_2/kernel*
_output_shapes

:PP*
dtype0
�
online_cnn_vad/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*,
shared_nameonline_cnn_vad/dense_2/bias
�
/online_cnn_vad/dense_2/bias/Read/ReadVariableOpReadVariableOponline_cnn_vad/dense_2/bias*
_output_shapes
:P*
dtype0
�
online_cnn_vad/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP*.
shared_nameonline_cnn_vad/dense_3/kernel
�
1online_cnn_vad/dense_3/kernel/Read/ReadVariableOpReadVariableOponline_cnn_vad/dense_3/kernel*
_output_shapes

:PP*
dtype0
�
online_cnn_vad/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*,
shared_nameonline_cnn_vad/dense_3/bias
�
/online_cnn_vad/dense_3/bias/Read/ReadVariableOpReadVariableOponline_cnn_vad/dense_3/bias*
_output_shapes
:P*
dtype0
�
(online_cnn_vad/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*9
shared_name*(online_cnn_vad/layer_normalization/gamma
�
<online_cnn_vad/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp(online_cnn_vad/layer_normalization/gamma*
_output_shapes
:P*
dtype0
�
'online_cnn_vad/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*8
shared_name)'online_cnn_vad/layer_normalization/beta
�
;online_cnn_vad/layer_normalization/beta/Read/ReadVariableOpReadVariableOp'online_cnn_vad/layer_normalization/beta*
_output_shapes
:P*
dtype0
�
online_cnn_vad/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*.
shared_nameonline_cnn_vad/dense_4/kernel
�
1online_cnn_vad/dense_4/kernel/Read/ReadVariableOpReadVariableOponline_cnn_vad/dense_4/kernel*
_output_shapes

:P*
dtype0
�
online_cnn_vad/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameonline_cnn_vad/dense_4/bias
�
/online_cnn_vad/dense_4/bias/Read/ReadVariableOpReadVariableOponline_cnn_vad/dense_4/bias*
_output_shapes
:*
dtype0
�
&online_cnn_vad/audio_voice_mask/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP*7
shared_name(&online_cnn_vad/audio_voice_mask/kernel
�
:online_cnn_vad/audio_voice_mask/kernel/Read/ReadVariableOpReadVariableOp&online_cnn_vad/audio_voice_mask/kernel*
_output_shapes

:PP*
dtype0
�
$online_cnn_vad/audio_voice_mask/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*5
shared_name&$online_cnn_vad/audio_voice_mask/bias
�
8online_cnn_vad/audio_voice_mask/bias/Read/ReadVariableOpReadVariableOp$online_cnn_vad/audio_voice_mask/bias*
_output_shapes
:P*
dtype0

NoOpNoOp
�*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�)
value�)B�) B�)
�
	embed
cnn1

dense1
cnn2

dense2

dense3
ln
fc
	fc3

trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
 	keras_api
h

!kernel
"bias
#trainable_variables
$regularization_losses
%	variables
&	keras_api
h

'kernel
(bias
)trainable_variables
*regularization_losses
+	variables
,	keras_api
h

-kernel
.bias
/trainable_variables
0regularization_losses
1	variables
2	keras_api
q
3axis
	4gamma
5beta
6trainable_variables
7regularization_losses
8	variables
9	keras_api
h

:kernel
;bias
<trainable_variables
=regularization_losses
>	variables
?	keras_api
h

@kernel
Abias
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
�
0
1
2
3
4
5
!6
"7
'8
(9
-10
.11
412
513
:14
;15
@16
A17
 
�
0
1
2
3
4
5
!6
"7
'8
(9
-10
.11
412
513
:14
;15
@16
A17
�

trainable_variables
Flayer_regularization_losses
regularization_losses
Glayer_metrics
	variables
Hnon_trainable_variables

Ilayers
Jmetrics
 
XV
VARIABLE_VALUEonline_cnn_vad/dense/kernel'embed/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEonline_cnn_vad/dense/bias%embed/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
trainable_variables
Klayer_regularization_losses
regularization_losses
Llayer_metrics
	variables
Mnon_trainable_variables

Nlayers
Ometrics
XV
VARIABLE_VALUEonline_cnn_vad/conv1d/kernel&cnn1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEonline_cnn_vad/conv1d/bias$cnn1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
trainable_variables
Player_regularization_losses
regularization_losses
Qlayer_metrics
	variables
Rnon_trainable_variables

Slayers
Tmetrics
[Y
VARIABLE_VALUEonline_cnn_vad/dense_1/kernel(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEonline_cnn_vad/dense_1/bias&dense1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
trainable_variables
Ulayer_regularization_losses
regularization_losses
Vlayer_metrics
	variables
Wnon_trainable_variables

Xlayers
Ymetrics
ZX
VARIABLE_VALUEonline_cnn_vad/conv1d_1/kernel&cnn2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEonline_cnn_vad/conv1d_1/bias$cnn2/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1
 

!0
"1
�
#trainable_variables
Zlayer_regularization_losses
$regularization_losses
[layer_metrics
%	variables
\non_trainable_variables

]layers
^metrics
[Y
VARIABLE_VALUEonline_cnn_vad/dense_2/kernel(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEonline_cnn_vad/dense_2/bias&dense2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1
 

'0
(1
�
)trainable_variables
_layer_regularization_losses
*regularization_losses
`layer_metrics
+	variables
anon_trainable_variables

blayers
cmetrics
[Y
VARIABLE_VALUEonline_cnn_vad/dense_3/kernel(dense3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEonline_cnn_vad/dense_3/bias&dense3/bias/.ATTRIBUTES/VARIABLE_VALUE

-0
.1
 

-0
.1
�
/trainable_variables
dlayer_regularization_losses
0regularization_losses
elayer_metrics
1	variables
fnon_trainable_variables

glayers
hmetrics
 
a_
VARIABLE_VALUE(online_cnn_vad/layer_normalization/gamma#ln/gamma/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE'online_cnn_vad/layer_normalization/beta"ln/beta/.ATTRIBUTES/VARIABLE_VALUE

40
51
 

40
51
�
6trainable_variables
ilayer_regularization_losses
7regularization_losses
jlayer_metrics
8	variables
knon_trainable_variables

llayers
mmetrics
WU
VARIABLE_VALUEonline_cnn_vad/dense_4/kernel$fc/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEonline_cnn_vad/dense_4/bias"fc/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1
 

:0
;1
�
<trainable_variables
nlayer_regularization_losses
=regularization_losses
olayer_metrics
>	variables
pnon_trainable_variables

qlayers
rmetrics
a_
VARIABLE_VALUE&online_cnn_vad/audio_voice_mask/kernel%fc3/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE$online_cnn_vad/audio_voice_mask/bias#fc3/bias/.ATTRIBUTES/VARIABLE_VALUE

@0
A1
 

@0
A1
�
Btrainable_variables
slayer_regularization_losses
Cregularization_losses
tlayer_metrics
D	variables
unon_trainable_variables

vlayers
wmetrics
 
 
 
?
0
1
2
3
4
5
6
7
	8
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
�
serving_default_inputsPlaceholder*4
_output_shapes"
 :������������������P*
dtype0*)
shape :������������������P
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputsonline_cnn_vad/dense/kernelonline_cnn_vad/dense/biasonline_cnn_vad/dense_1/kernelonline_cnn_vad/dense_1/biasonline_cnn_vad/conv1d/kernelonline_cnn_vad/conv1d/biasonline_cnn_vad/dense_2/kernelonline_cnn_vad/dense_2/bias(online_cnn_vad/layer_normalization/gamma'online_cnn_vad/layer_normalization/betaonline_cnn_vad/conv1d_1/kernelonline_cnn_vad/conv1d_1/biasonline_cnn_vad/dense_3/kernelonline_cnn_vad/dense_3/biasonline_cnn_vad/dense_4/kernelonline_cnn_vad/dense_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*2
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU (2J 8� **
f%R#
!__inference_signature_wrapper_523
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/online_cnn_vad/dense/kernel/Read/ReadVariableOp-online_cnn_vad/dense/bias/Read/ReadVariableOp0online_cnn_vad/conv1d/kernel/Read/ReadVariableOp.online_cnn_vad/conv1d/bias/Read/ReadVariableOp1online_cnn_vad/dense_1/kernel/Read/ReadVariableOp/online_cnn_vad/dense_1/bias/Read/ReadVariableOp2online_cnn_vad/conv1d_1/kernel/Read/ReadVariableOp0online_cnn_vad/conv1d_1/bias/Read/ReadVariableOp1online_cnn_vad/dense_2/kernel/Read/ReadVariableOp/online_cnn_vad/dense_2/bias/Read/ReadVariableOp1online_cnn_vad/dense_3/kernel/Read/ReadVariableOp/online_cnn_vad/dense_3/bias/Read/ReadVariableOp<online_cnn_vad/layer_normalization/gamma/Read/ReadVariableOp;online_cnn_vad/layer_normalization/beta/Read/ReadVariableOp1online_cnn_vad/dense_4/kernel/Read/ReadVariableOp/online_cnn_vad/dense_4/bias/Read/ReadVariableOp:online_cnn_vad/audio_voice_mask/kernel/Read/ReadVariableOp8online_cnn_vad/audio_voice_mask/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8� *&
f!R
__inference__traced_save_3284
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameonline_cnn_vad/dense/kernelonline_cnn_vad/dense/biasonline_cnn_vad/conv1d/kernelonline_cnn_vad/conv1d/biasonline_cnn_vad/dense_1/kernelonline_cnn_vad/dense_1/biasonline_cnn_vad/conv1d_1/kernelonline_cnn_vad/conv1d_1/biasonline_cnn_vad/dense_2/kernelonline_cnn_vad/dense_2/biasonline_cnn_vad/dense_3/kernelonline_cnn_vad/dense_3/bias(online_cnn_vad/layer_normalization/gamma'online_cnn_vad/layer_normalization/betaonline_cnn_vad/dense_4/kernelonline_cnn_vad/dense_4/bias&online_cnn_vad/audio_voice_mask/kernel$online_cnn_vad/audio_voice_mask/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8� *)
f$R"
 __inference__traced_restore_3348ԙ
Й
�
__inference_inference_2856

inputs9
'dense_tensordot_readvariableop_resource:PP3
%dense_biasadd_readvariableop_resource:P;
)dense_1_tensordot_readvariableop_resource:PP5
'dense_1_biasadd_readvariableop_resource:PH
2conv1d_conv1d_expanddims_1_readvariableop_resource:PP4
&conv1d_biasadd_readvariableop_resource:P;
)dense_2_tensordot_readvariableop_resource:PP5
'dense_2_biasadd_readvariableop_resource:P?
1layer_normalization_mul_3_readvariableop_resource:P=
/layer_normalization_add_readvariableop_resource:PJ
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:PP6
(conv1d_1_biasadd_readvariableop_resource:P;
)dense_3_tensordot_readvariableop_resource:PP5
'dense_3_biasadd_readvariableop_resource:P;
)dense_4_tensordot_readvariableop_resource:P5
'dense_4_biasadd_readvariableop_resource:
identity��conv1d/BiasAdd/ReadVariableOp�)conv1d/conv1d/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp� dense_3/Tensordot/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�&layer_normalization/add/ReadVariableOp�(layer_normalization/mul_3/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freed
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense/Tensordot/Shape�
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis�
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2�
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis�
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const�
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1�
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis�
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack�
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������P2
dense/Tensordot/transpose�
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense/Tensordot/Reshape�
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense/Tensordot/MatMul|
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense/Tensordot/Const_2�
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis�
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������P2
dense/Tensordot�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
dense/BiasAdd�
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes�
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freex
dense_1/Tensordot/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape�
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis�
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2�
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis�
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const�
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod�
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1�
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1�
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis�
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack�
dense_1/Tensordot/transpose	Transposedense/BiasAdd:output:0!dense_1/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_1/Tensordot/transpose�
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_1/Tensordot/Reshape�
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_1/Tensordot/MatMul�
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_1/Tensordot/Const_2�
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis�
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_1/Tensordot�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
dense_1/BiasAdd}
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_1/Relu�
conv1d/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d/Pad/paddings�

conv1d/PadPaddense_1/Relu:activations:0conv1d/Pad/paddings:output:0*
T0*4
_output_shapes"
 :������������������P2

conv1d/Pad�
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/conv1d/ExpandDims/dim�
conv1d/conv1d/ExpandDims
ExpandDimsconv1d/Pad:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"������������������P2
conv1d/conv1d/ExpandDims�
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOp�
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim�
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d/conv1d/ExpandDims_1�
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"������������������P*
paddingVALID*
strides
2
conv1d/conv1d�
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*4
_output_shapes"
 :������������������P*
squeeze_dims

���������2
conv1d/conv1d/Squeeze�
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
conv1d/BiasAdd/ReadVariableOp�
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
conv1d/BiasAddz
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������P2
conv1d/Relu�
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_2/Tensordot/ReadVariableOpz
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_2/Tensordot/axes�
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_2/Tensordot/free{
dense_2/Tensordot/ShapeShapeconv1d/Relu:activations:0*
T0*
_output_shapes
:2
dense_2/Tensordot/Shape�
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/GatherV2/axis�
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2�
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_2/Tensordot/GatherV2_1/axis�
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2_1|
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const�
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod�
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const_1�
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod_1�
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_2/Tensordot/concat/axis�
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/stack�
dense_2/Tensordot/transpose	Transposeconv1d/Relu:activations:0!dense_2/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_2/Tensordot/transpose�
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_2/Tensordot/Reshape�
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_2/Tensordot/MatMul�
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_2/Tensordot/Const_2�
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/concat_1/axis�
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat_1�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_2/Tensordot�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
dense_2/BiasAdd}
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_2/Relu�
layer_normalization/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:2
layer_normalization/Shape�
'layer_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'layer_normalization/strided_slice/stack�
)layer_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice/stack_1�
)layer_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice/stack_2�
!layer_normalization/strided_sliceStridedSlice"layer_normalization/Shape:output:00layer_normalization/strided_slice/stack:output:02layer_normalization/strided_slice/stack_1:output:02layer_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!layer_normalization/strided_slicex
layer_normalization/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization/mul/x�
layer_normalization/mulMul"layer_normalization/mul/x:output:0*layer_normalization/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul�
)layer_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice_1/stack�
+layer_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_1/stack_1�
+layer_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_1/stack_2�
#layer_normalization/strided_slice_1StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_1/stack:output:04layer_normalization/strided_slice_1/stack_1:output:04layer_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization/strided_slice_1�
layer_normalization/mul_1Mullayer_normalization/mul:z:0,layer_normalization/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul_1�
)layer_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice_2/stack�
+layer_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_2/stack_1�
+layer_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_2/stack_2�
#layer_normalization/strided_slice_2StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_2/stack:output:04layer_normalization/strided_slice_2/stack_1:output:04layer_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization/strided_slice_2|
layer_normalization/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization/mul_2/x�
layer_normalization/mul_2Mul$layer_normalization/mul_2/x:output:0,layer_normalization/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul_2�
#layer_normalization/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2%
#layer_normalization/Reshape/shape/0�
#layer_normalization/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#layer_normalization/Reshape/shape/3�
!layer_normalization/Reshape/shapePack,layer_normalization/Reshape/shape/0:output:0layer_normalization/mul_1:z:0layer_normalization/mul_2:z:0,layer_normalization/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2#
!layer_normalization/Reshape/shape�
layer_normalization/ReshapeReshapedense_2/Relu:activations:0*layer_normalization/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2
layer_normalization/Reshape�
layer_normalization/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2!
layer_normalization/ones/Less/y�
layer_normalization/ones/LessLesslayer_normalization/mul_1:z:0(layer_normalization/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_normalization/ones/Less�
layer_normalization/ones/packedPacklayer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:2!
layer_normalization/ones/packed�
layer_normalization/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2 
layer_normalization/ones/Const�
layer_normalization/onesFill(layer_normalization/ones/packed:output:0'layer_normalization/ones/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization/ones�
 layer_normalization/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2"
 layer_normalization/zeros/Less/y�
layer_normalization/zeros/LessLesslayer_normalization/mul_1:z:0)layer_normalization/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
layer_normalization/zeros/Less�
 layer_normalization/zeros/packedPacklayer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization/zeros/packed�
layer_normalization/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
layer_normalization/zeros/Const�
layer_normalization/zerosFill)layer_normalization/zeros/packed:output:0(layer_normalization/zeros/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization/zerosy
layer_normalization/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization/Const}
layer_normalization/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization/Const_1�
$layer_normalization/FusedBatchNormV3FusedBatchNormV3$layer_normalization/Reshape:output:0!layer_normalization/ones:output:0"layer_normalization/zeros:output:0"layer_normalization/Const:output:0$layer_normalization/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2&
$layer_normalization/FusedBatchNormV3�
layer_normalization/Reshape_1Reshape(layer_normalization/FusedBatchNormV3:y:0"layer_normalization/Shape:output:0*
T0*4
_output_shapes"
 :������������������P2
layer_normalization/Reshape_1�
(layer_normalization/mul_3/ReadVariableOpReadVariableOp1layer_normalization_mul_3_readvariableop_resource*
_output_shapes
:P*
dtype02*
(layer_normalization/mul_3/ReadVariableOp�
layer_normalization/mul_3Mul&layer_normalization/Reshape_1:output:00layer_normalization/mul_3/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
layer_normalization/mul_3�
&layer_normalization/add/ReadVariableOpReadVariableOp/layer_normalization_add_readvariableop_resource*
_output_shapes
:P*
dtype02(
&layer_normalization/add/ReadVariableOp�
layer_normalization/addAddV2layer_normalization/mul_3:z:0.layer_normalization/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
layer_normalization/add�
conv1d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_1/Pad/paddings�
conv1d_1/PadPadlayer_normalization/add:z:0conv1d_1/Pad/paddings:output:0*
T0*4
_output_shapes"
 :������������������P2
conv1d_1/Pad�
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_1/conv1d/ExpandDims/dim�
conv1d_1/conv1d/ExpandDims
ExpandDimsconv1d_1/Pad:output:0'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"������������������P2
conv1d_1/conv1d/ExpandDims�
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dim�
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d_1/conv1d/ExpandDims_1�
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"������������������P*
paddingVALID*
strides
2
conv1d_1/conv1d�
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*4
_output_shapes"
 :������������������P*
squeeze_dims

���������2
conv1d_1/conv1d/Squeeze�
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02!
conv1d_1/BiasAdd/ReadVariableOp�
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
conv1d_1/BiasAdd�
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������P2
conv1d_1/Relu�
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_3/Tensordot/ReadVariableOpz
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_3/Tensordot/axes�
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_3/Tensordot/free}
dense_3/Tensordot/ShapeShapeconv1d_1/Relu:activations:0*
T0*
_output_shapes
:2
dense_3/Tensordot/Shape�
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/GatherV2/axis�
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2�
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_3/Tensordot/GatherV2_1/axis�
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2_1|
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const�
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod�
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const_1�
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod_1�
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_3/Tensordot/concat/axis�
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat�
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/stack�
dense_3/Tensordot/transpose	Transposeconv1d_1/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_3/Tensordot/transpose�
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_3/Tensordot/Reshape�
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_3/Tensordot/MatMul�
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_3/Tensordot/Const_2�
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/concat_1/axis�
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat_1�
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_3/Tensordot�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
dense_3/BiasAdd}
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_3/Relu�
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes

:P*
dtype02"
 dense_4/Tensordot/ReadVariableOpz
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/axes�
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_4/Tensordot/free|
dense_4/Tensordot/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:2
dense_4/Tensordot/Shape�
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/GatherV2/axis�
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2�
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_4/Tensordot/GatherV2_1/axis�
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2_1|
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const�
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod�
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const_1�
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod_1�
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_4/Tensordot/concat/axis�
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/stack�
dense_4/Tensordot/transpose	Transposedense_3/Relu:activations:0!dense_4/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_4/Tensordot/transpose�
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_4/Tensordot/Reshape�
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_4/Tensordot/MatMul�
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/Const_2�
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/concat_1/axis�
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat_1�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������2
dense_4/Tensordot�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������2
dense_4/BiasAdd�
IdentityIdentitydense_4/BiasAdd:output:0^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp'^layer_normalization/add/ReadVariableOp)^layer_normalization/mul_3/ReadVariableOp*
T0*4
_output_shapes"
 :������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:������������������P: : : : : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2P
&layer_normalization/add/ReadVariableOp&layer_normalization/add/ReadVariableOp2T
(layer_normalization/mul_3/ReadVariableOp(layer_normalization/mul_3/ReadVariableOp:\ X
4
_output_shapes"
 :������������������P
 
_user_specified_nameinputs
�
�
&__inference_dense_3_layer_call_fn_3038

inputs
unknown:PP
	unknown_0:P
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_10182
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
� 
�
A__inference_dense_4_layer_call_and_return_conditional_losses_1054

inputs3
!tensordot_readvariableop_resource:P-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:P*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
� 
�
@__inference_dense_2_layer_call_and_return_conditional_losses_900

inputs3
!tensordot_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�0
�	
__inference__traced_save_3284
file_prefix:
6savev2_online_cnn_vad_dense_kernel_read_readvariableop8
4savev2_online_cnn_vad_dense_bias_read_readvariableop;
7savev2_online_cnn_vad_conv1d_kernel_read_readvariableop9
5savev2_online_cnn_vad_conv1d_bias_read_readvariableop<
8savev2_online_cnn_vad_dense_1_kernel_read_readvariableop:
6savev2_online_cnn_vad_dense_1_bias_read_readvariableop=
9savev2_online_cnn_vad_conv1d_1_kernel_read_readvariableop;
7savev2_online_cnn_vad_conv1d_1_bias_read_readvariableop<
8savev2_online_cnn_vad_dense_2_kernel_read_readvariableop:
6savev2_online_cnn_vad_dense_2_bias_read_readvariableop<
8savev2_online_cnn_vad_dense_3_kernel_read_readvariableop:
6savev2_online_cnn_vad_dense_3_bias_read_readvariableopG
Csavev2_online_cnn_vad_layer_normalization_gamma_read_readvariableopF
Bsavev2_online_cnn_vad_layer_normalization_beta_read_readvariableop<
8savev2_online_cnn_vad_dense_4_kernel_read_readvariableop:
6savev2_online_cnn_vad_dense_4_bias_read_readvariableopE
Asavev2_online_cnn_vad_audio_voice_mask_kernel_read_readvariableopC
?savev2_online_cnn_vad_audio_voice_mask_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B'embed/kernel/.ATTRIBUTES/VARIABLE_VALUEB%embed/bias/.ATTRIBUTES/VARIABLE_VALUEB&cnn1/kernel/.ATTRIBUTES/VARIABLE_VALUEB$cnn1/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB&cnn2/kernel/.ATTRIBUTES/VARIABLE_VALUEB$cnn2/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense3/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense3/bias/.ATTRIBUTES/VARIABLE_VALUEB#ln/gamma/.ATTRIBUTES/VARIABLE_VALUEB"ln/beta/.ATTRIBUTES/VARIABLE_VALUEB$fc/kernel/.ATTRIBUTES/VARIABLE_VALUEB"fc/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc3/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_online_cnn_vad_dense_kernel_read_readvariableop4savev2_online_cnn_vad_dense_bias_read_readvariableop7savev2_online_cnn_vad_conv1d_kernel_read_readvariableop5savev2_online_cnn_vad_conv1d_bias_read_readvariableop8savev2_online_cnn_vad_dense_1_kernel_read_readvariableop6savev2_online_cnn_vad_dense_1_bias_read_readvariableop9savev2_online_cnn_vad_conv1d_1_kernel_read_readvariableop7savev2_online_cnn_vad_conv1d_1_bias_read_readvariableop8savev2_online_cnn_vad_dense_2_kernel_read_readvariableop6savev2_online_cnn_vad_dense_2_bias_read_readvariableop8savev2_online_cnn_vad_dense_3_kernel_read_readvariableop6savev2_online_cnn_vad_dense_3_bias_read_readvariableopCsavev2_online_cnn_vad_layer_normalization_gamma_read_readvariableopBsavev2_online_cnn_vad_layer_normalization_beta_read_readvariableop8savev2_online_cnn_vad_dense_4_kernel_read_readvariableop6savev2_online_cnn_vad_dense_4_bias_read_readvariableopAsavev2_online_cnn_vad_audio_voice_mask_kernel_read_readvariableop?savev2_online_cnn_vad_audio_voice_mask_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *!
dtypes
22
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :PP:P:PP:P:PP:P:PP:P:PP:P:PP:P:P:P:P::PP:P: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:PP: 

_output_shapes
:P:($
"
_output_shapes
:PP: 

_output_shapes
:P:$ 

_output_shapes

:PP: 

_output_shapes
:P:($
"
_output_shapes
:PP: 

_output_shapes
:P:$	 

_output_shapes

:PP: 


_output_shapes
:P:$ 

_output_shapes

:PP: 

_output_shapes
:P: 

_output_shapes
:P: 

_output_shapes
:P:$ 

_output_shapes

:P: 

_output_shapes
::$ 

_output_shapes

:PP: 

_output_shapes
:P:

_output_shapes
: 
�6
�
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_1326

inputs

dense_1278:PP

dense_1280:P
dense_1_1283:PP
dense_1_1285:P!
conv1d_1288:PP
conv1d_1290:P
dense_2_1293:PP
dense_2_1295:P&
layer_normalization_1298:P&
layer_normalization_1300:P#
conv1d_1_1303:PP
conv1d_1_1305:P
dense_3_1308:PP
dense_3_1310:P
dense_4_1313:P
dense_4_1315:'
audio_voice_mask_1318:PP#
audio_voice_mask_1320:P
identity

identity_1��(audio_voice_mask/StatefulPartitionedCall�conv1d/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�+layer_normalization/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinputs
dense_1278
dense_1280*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_8022
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1283dense_1_1285*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_8392!
dense_1/StatefulPartitionedCall�
conv1d/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0conv1d_1288conv1d_1290*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *H
fCRA
?__inference_conv1d_layer_call_and_return_conditional_losses_8632 
conv1d/StatefulPartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0dense_2_1293dense_2_1295*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_9002!
dense_2/StatefulPartitionedCall�
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0layer_normalization_1298layer_normalization_1300*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *U
fPRN
L__inference_layer_normalization_layer_call_and_return_conditional_losses_9572-
+layer_normalization/StatefulPartitionedCall�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0conv1d_1_1303conv1d_1_1305*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *J
fERC
A__inference_conv1d_1_layer_call_and_return_conditional_losses_9812"
 conv1d_1/StatefulPartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0dense_3_1308dense_3_1310*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_10182!
dense_3/StatefulPartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_1313dense_4_1315*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_10542!
dense_4/StatefulPartitionedCall�
(audio_voice_mask/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0audio_voice_mask_1318audio_voice_mask_1320*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *S
fNRL
J__inference_audio_voice_mask_layer_call_and_return_conditional_losses_10902*
(audio_voice_mask/StatefulPartitionedCall�
mulMulinputs1audio_voice_mask/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:���������dP2
mul�
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0)^audio_voice_mask/StatefulPartitionedCall^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall*
T0*+
_output_shapes
:���������d2

Identity�

Identity_1Identitymul:z:0)^audio_voice_mask/StatefulPartitionedCall^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������dP: : : : : : : : : : : : : : : : : : 2T
(audio_voice_mask/StatefulPartitionedCall(audio_voice_mask/StatefulPartitionedCall2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
� 
�
A__inference_dense_1_layer_call_and_return_conditional_losses_2962

inputs3
!tensordot_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
-__inference_online_cnn_vad_layer_call_fn_1684
input_1
unknown:PP
	unknown_0:P
	unknown_1:PP
	unknown_2:P
	unknown_3:PP
	unknown_4:P
	unknown_5:PP
	unknown_6:P
	unknown_7:P
	unknown_8:P
	unknown_9:PP

unknown_10:P

unknown_11:PP

unknown_12:P

unknown_13:P

unknown_14:

unknown_15:PP

unknown_16:P
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:���������d:���������dP*4
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU (2J 8� *Q
fLRJ
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_13262
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������d2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������dP: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������dP
!
_user_specified_name	input_1
� 
�
?__inference_dense_layer_call_and_return_conditional_losses_2895

inputs3
!tensordot_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
&__inference_dense_4_layer_call_fn_3138

inputs
unknown:P
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_10542
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�P
�
 __inference__traced_restore_3348
file_prefix>
,assignvariableop_online_cnn_vad_dense_kernel:PP:
,assignvariableop_1_online_cnn_vad_dense_bias:PE
/assignvariableop_2_online_cnn_vad_conv1d_kernel:PP;
-assignvariableop_3_online_cnn_vad_conv1d_bias:PB
0assignvariableop_4_online_cnn_vad_dense_1_kernel:PP<
.assignvariableop_5_online_cnn_vad_dense_1_bias:PG
1assignvariableop_6_online_cnn_vad_conv1d_1_kernel:PP=
/assignvariableop_7_online_cnn_vad_conv1d_1_bias:PB
0assignvariableop_8_online_cnn_vad_dense_2_kernel:PP<
.assignvariableop_9_online_cnn_vad_dense_2_bias:PC
1assignvariableop_10_online_cnn_vad_dense_3_kernel:PP=
/assignvariableop_11_online_cnn_vad_dense_3_bias:PJ
<assignvariableop_12_online_cnn_vad_layer_normalization_gamma:PI
;assignvariableop_13_online_cnn_vad_layer_normalization_beta:PC
1assignvariableop_14_online_cnn_vad_dense_4_kernel:P=
/assignvariableop_15_online_cnn_vad_dense_4_bias:L
:assignvariableop_16_online_cnn_vad_audio_voice_mask_kernel:PPF
8assignvariableop_17_online_cnn_vad_audio_voice_mask_bias:P
identity_19��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B'embed/kernel/.ATTRIBUTES/VARIABLE_VALUEB%embed/bias/.ATTRIBUTES/VARIABLE_VALUEB&cnn1/kernel/.ATTRIBUTES/VARIABLE_VALUEB$cnn1/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB&cnn2/kernel/.ATTRIBUTES/VARIABLE_VALUEB$cnn2/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense3/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense3/bias/.ATTRIBUTES/VARIABLE_VALUEB#ln/gamma/.ATTRIBUTES/VARIABLE_VALUEB"ln/beta/.ATTRIBUTES/VARIABLE_VALUEB$fc/kernel/.ATTRIBUTES/VARIABLE_VALUEB"fc/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc3/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp,assignvariableop_online_cnn_vad_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp,assignvariableop_1_online_cnn_vad_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_online_cnn_vad_conv1d_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp-assignvariableop_3_online_cnn_vad_conv1d_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp0assignvariableop_4_online_cnn_vad_dense_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp.assignvariableop_5_online_cnn_vad_dense_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp1assignvariableop_6_online_cnn_vad_conv1d_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp/assignvariableop_7_online_cnn_vad_conv1d_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp0assignvariableop_8_online_cnn_vad_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_online_cnn_vad_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_online_cnn_vad_dense_3_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp/assignvariableop_11_online_cnn_vad_dense_3_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp<assignvariableop_12_online_cnn_vad_layer_normalization_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp;assignvariableop_13_online_cnn_vad_layer_normalization_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp1assignvariableop_14_online_cnn_vad_dense_4_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_online_cnn_vad_dense_4_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp:assignvariableop_16_online_cnn_vad_audio_voice_mask_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp8assignvariableop_17_online_cnn_vad_audio_voice_mask_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_179
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_18�
Identity_19IdentityIdentity_18:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_19"#
identity_19Identity_19:output:0*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
� 
�
>__inference_dense_layer_call_and_return_conditional_losses_802

inputs3
!tensordot_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
&__inference_dense_1_layer_call_fn_2931

inputs
unknown:PP
	unknown_0:P
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_8392
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
��
�
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_2644
input_19
'dense_tensordot_readvariableop_resource:PP3
%dense_biasadd_readvariableop_resource:P;
)dense_1_tensordot_readvariableop_resource:PP5
'dense_1_biasadd_readvariableop_resource:PH
2conv1d_conv1d_expanddims_1_readvariableop_resource:PP4
&conv1d_biasadd_readvariableop_resource:P;
)dense_2_tensordot_readvariableop_resource:PP5
'dense_2_biasadd_readvariableop_resource:P?
1layer_normalization_mul_3_readvariableop_resource:P=
/layer_normalization_add_readvariableop_resource:PJ
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:PP6
(conv1d_1_biasadd_readvariableop_resource:P;
)dense_3_tensordot_readvariableop_resource:PP5
'dense_3_biasadd_readvariableop_resource:P;
)dense_4_tensordot_readvariableop_resource:P5
'dense_4_biasadd_readvariableop_resource:D
2audio_voice_mask_tensordot_readvariableop_resource:PP>
0audio_voice_mask_biasadd_readvariableop_resource:P
identity

identity_1��'audio_voice_mask/BiasAdd/ReadVariableOp�)audio_voice_mask/Tensordot/ReadVariableOp�conv1d/BiasAdd/ReadVariableOp�)conv1d/conv1d/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp� dense_3/Tensordot/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�&layer_normalization/add/ReadVariableOp�(layer_normalization/mul_3/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freee
dense/Tensordot/ShapeShapeinput_1*
T0*
_output_shapes
:2
dense/Tensordot/Shape�
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis�
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2�
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis�
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const�
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1�
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis�
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack�
dense/Tensordot/transpose	Transposeinput_1dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense/Tensordot/transpose�
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense/Tensordot/Reshape�
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense/Tensordot/MatMul|
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense/Tensordot/Const_2�
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis�
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense/Tensordot�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense/BiasAdd�
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes�
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freex
dense_1/Tensordot/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape�
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis�
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2�
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis�
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const�
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod�
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1�
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1�
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis�
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack�
dense_1/Tensordot/transpose	Transposedense/BiasAdd:output:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_1/Tensordot/transpose�
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_1/Tensordot/Reshape�
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_1/Tensordot/MatMul�
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_1/Tensordot/Const_2�
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis�
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense_1/Tensordot�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense_1/BiasAddt
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
dense_1/Relu�
conv1d/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d/Pad/paddings�

conv1d/PadPaddense_1/Relu:activations:0conv1d/Pad/paddings:output:0*
T0*+
_output_shapes
:���������hP2

conv1d/Pad�
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/conv1d/ExpandDims/dim�
conv1d/conv1d/ExpandDims
ExpandDimsconv1d/Pad:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2
conv1d/conv1d/ExpandDims�
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOp�
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim�
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d/conv1d/ExpandDims_1�
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2
conv1d/conv1d�
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2
conv1d/conv1d/Squeeze�
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
conv1d/BiasAdd/ReadVariableOp�
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
conv1d/BiasAddq
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
conv1d/Relu�
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_2/Tensordot/ReadVariableOpz
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_2/Tensordot/axes�
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_2/Tensordot/free{
dense_2/Tensordot/ShapeShapeconv1d/Relu:activations:0*
T0*
_output_shapes
:2
dense_2/Tensordot/Shape�
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/GatherV2/axis�
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2�
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_2/Tensordot/GatherV2_1/axis�
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2_1|
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const�
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod�
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const_1�
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod_1�
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_2/Tensordot/concat/axis�
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/stack�
dense_2/Tensordot/transpose	Transposeconv1d/Relu:activations:0!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_2/Tensordot/transpose�
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_2/Tensordot/Reshape�
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_2/Tensordot/MatMul�
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_2/Tensordot/Const_2�
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/concat_1/axis�
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat_1�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense_2/Tensordot�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense_2/BiasAddt
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
dense_2/Relu�
layer_normalization/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:2
layer_normalization/Shape�
'layer_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'layer_normalization/strided_slice/stack�
)layer_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice/stack_1�
)layer_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice/stack_2�
!layer_normalization/strided_sliceStridedSlice"layer_normalization/Shape:output:00layer_normalization/strided_slice/stack:output:02layer_normalization/strided_slice/stack_1:output:02layer_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!layer_normalization/strided_slicex
layer_normalization/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization/mul/x�
layer_normalization/mulMul"layer_normalization/mul/x:output:0*layer_normalization/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul�
)layer_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice_1/stack�
+layer_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_1/stack_1�
+layer_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_1/stack_2�
#layer_normalization/strided_slice_1StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_1/stack:output:04layer_normalization/strided_slice_1/stack_1:output:04layer_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization/strided_slice_1�
layer_normalization/mul_1Mullayer_normalization/mul:z:0,layer_normalization/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul_1�
)layer_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice_2/stack�
+layer_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_2/stack_1�
+layer_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_2/stack_2�
#layer_normalization/strided_slice_2StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_2/stack:output:04layer_normalization/strided_slice_2/stack_1:output:04layer_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization/strided_slice_2|
layer_normalization/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization/mul_2/x�
layer_normalization/mul_2Mul$layer_normalization/mul_2/x:output:0,layer_normalization/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul_2�
#layer_normalization/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2%
#layer_normalization/Reshape/shape/0�
#layer_normalization/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#layer_normalization/Reshape/shape/3�
!layer_normalization/Reshape/shapePack,layer_normalization/Reshape/shape/0:output:0layer_normalization/mul_1:z:0layer_normalization/mul_2:z:0,layer_normalization/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2#
!layer_normalization/Reshape/shape�
layer_normalization/ReshapeReshapedense_2/Relu:activations:0*layer_normalization/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2
layer_normalization/Reshape�
layer_normalization/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2!
layer_normalization/ones/Less/y�
layer_normalization/ones/LessLesslayer_normalization/mul_1:z:0(layer_normalization/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_normalization/ones/Less�
layer_normalization/ones/packedPacklayer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:2!
layer_normalization/ones/packed�
layer_normalization/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2 
layer_normalization/ones/Const�
layer_normalization/onesFill(layer_normalization/ones/packed:output:0'layer_normalization/ones/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization/ones�
 layer_normalization/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2"
 layer_normalization/zeros/Less/y�
layer_normalization/zeros/LessLesslayer_normalization/mul_1:z:0)layer_normalization/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
layer_normalization/zeros/Less�
 layer_normalization/zeros/packedPacklayer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization/zeros/packed�
layer_normalization/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
layer_normalization/zeros/Const�
layer_normalization/zerosFill)layer_normalization/zeros/packed:output:0(layer_normalization/zeros/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization/zerosy
layer_normalization/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization/Const}
layer_normalization/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization/Const_1�
$layer_normalization/FusedBatchNormV3FusedBatchNormV3$layer_normalization/Reshape:output:0!layer_normalization/ones:output:0"layer_normalization/zeros:output:0"layer_normalization/Const:output:0$layer_normalization/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2&
$layer_normalization/FusedBatchNormV3�
layer_normalization/Reshape_1Reshape(layer_normalization/FusedBatchNormV3:y:0"layer_normalization/Shape:output:0*
T0*+
_output_shapes
:���������dP2
layer_normalization/Reshape_1�
(layer_normalization/mul_3/ReadVariableOpReadVariableOp1layer_normalization_mul_3_readvariableop_resource*
_output_shapes
:P*
dtype02*
(layer_normalization/mul_3/ReadVariableOp�
layer_normalization/mul_3Mul&layer_normalization/Reshape_1:output:00layer_normalization/mul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
layer_normalization/mul_3�
&layer_normalization/add/ReadVariableOpReadVariableOp/layer_normalization_add_readvariableop_resource*
_output_shapes
:P*
dtype02(
&layer_normalization/add/ReadVariableOp�
layer_normalization/addAddV2layer_normalization/mul_3:z:0.layer_normalization/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
layer_normalization/add�
conv1d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_1/Pad/paddings�
conv1d_1/PadPadlayer_normalization/add:z:0conv1d_1/Pad/paddings:output:0*
T0*+
_output_shapes
:���������hP2
conv1d_1/Pad�
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_1/conv1d/ExpandDims/dim�
conv1d_1/conv1d/ExpandDims
ExpandDimsconv1d_1/Pad:output:0'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2
conv1d_1/conv1d/ExpandDims�
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dim�
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d_1/conv1d/ExpandDims_1�
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2
conv1d_1/conv1d�
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2
conv1d_1/conv1d/Squeeze�
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02!
conv1d_1/BiasAdd/ReadVariableOp�
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
conv1d_1/BiasAddw
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
conv1d_1/Relu�
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_3/Tensordot/ReadVariableOpz
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_3/Tensordot/axes�
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_3/Tensordot/free}
dense_3/Tensordot/ShapeShapeconv1d_1/Relu:activations:0*
T0*
_output_shapes
:2
dense_3/Tensordot/Shape�
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/GatherV2/axis�
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2�
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_3/Tensordot/GatherV2_1/axis�
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2_1|
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const�
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod�
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const_1�
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod_1�
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_3/Tensordot/concat/axis�
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat�
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/stack�
dense_3/Tensordot/transpose	Transposeconv1d_1/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_3/Tensordot/transpose�
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_3/Tensordot/Reshape�
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_3/Tensordot/MatMul�
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_3/Tensordot/Const_2�
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/concat_1/axis�
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat_1�
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense_3/Tensordot�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense_3/BiasAddt
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
dense_3/Relu�
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes

:P*
dtype02"
 dense_4/Tensordot/ReadVariableOpz
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/axes�
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_4/Tensordot/free|
dense_4/Tensordot/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:2
dense_4/Tensordot/Shape�
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/GatherV2/axis�
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2�
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_4/Tensordot/GatherV2_1/axis�
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2_1|
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const�
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod�
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const_1�
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod_1�
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_4/Tensordot/concat/axis�
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/stack�
dense_4/Tensordot/transpose	Transposedense_3/Relu:activations:0!dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_4/Tensordot/transpose�
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_4/Tensordot/Reshape�
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_4/Tensordot/MatMul�
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/Const_2�
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/concat_1/axis�
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat_1�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d2
dense_4/Tensordot�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d2
dense_4/BiasAdd�
)audio_voice_mask/Tensordot/ReadVariableOpReadVariableOp2audio_voice_mask_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02+
)audio_voice_mask/Tensordot/ReadVariableOp�
audio_voice_mask/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
audio_voice_mask/Tensordot/axes�
audio_voice_mask/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
audio_voice_mask/Tensordot/free�
 audio_voice_mask/Tensordot/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:2"
 audio_voice_mask/Tensordot/Shape�
(audio_voice_mask/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(audio_voice_mask/Tensordot/GatherV2/axis�
#audio_voice_mask/Tensordot/GatherV2GatherV2)audio_voice_mask/Tensordot/Shape:output:0(audio_voice_mask/Tensordot/free:output:01audio_voice_mask/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#audio_voice_mask/Tensordot/GatherV2�
*audio_voice_mask/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*audio_voice_mask/Tensordot/GatherV2_1/axis�
%audio_voice_mask/Tensordot/GatherV2_1GatherV2)audio_voice_mask/Tensordot/Shape:output:0(audio_voice_mask/Tensordot/axes:output:03audio_voice_mask/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%audio_voice_mask/Tensordot/GatherV2_1�
 audio_voice_mask/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 audio_voice_mask/Tensordot/Const�
audio_voice_mask/Tensordot/ProdProd,audio_voice_mask/Tensordot/GatherV2:output:0)audio_voice_mask/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
audio_voice_mask/Tensordot/Prod�
"audio_voice_mask/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"audio_voice_mask/Tensordot/Const_1�
!audio_voice_mask/Tensordot/Prod_1Prod.audio_voice_mask/Tensordot/GatherV2_1:output:0+audio_voice_mask/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!audio_voice_mask/Tensordot/Prod_1�
&audio_voice_mask/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&audio_voice_mask/Tensordot/concat/axis�
!audio_voice_mask/Tensordot/concatConcatV2(audio_voice_mask/Tensordot/free:output:0(audio_voice_mask/Tensordot/axes:output:0/audio_voice_mask/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!audio_voice_mask/Tensordot/concat�
 audio_voice_mask/Tensordot/stackPack(audio_voice_mask/Tensordot/Prod:output:0*audio_voice_mask/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 audio_voice_mask/Tensordot/stack�
$audio_voice_mask/Tensordot/transpose	Transposedense_3/Relu:activations:0*audio_voice_mask/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2&
$audio_voice_mask/Tensordot/transpose�
"audio_voice_mask/Tensordot/ReshapeReshape(audio_voice_mask/Tensordot/transpose:y:0)audio_voice_mask/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2$
"audio_voice_mask/Tensordot/Reshape�
!audio_voice_mask/Tensordot/MatMulMatMul+audio_voice_mask/Tensordot/Reshape:output:01audio_voice_mask/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2#
!audio_voice_mask/Tensordot/MatMul�
"audio_voice_mask/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2$
"audio_voice_mask/Tensordot/Const_2�
(audio_voice_mask/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(audio_voice_mask/Tensordot/concat_1/axis�
#audio_voice_mask/Tensordot/concat_1ConcatV2,audio_voice_mask/Tensordot/GatherV2:output:0+audio_voice_mask/Tensordot/Const_2:output:01audio_voice_mask/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#audio_voice_mask/Tensordot/concat_1�
audio_voice_mask/TensordotReshape+audio_voice_mask/Tensordot/MatMul:product:0,audio_voice_mask/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
audio_voice_mask/Tensordot�
'audio_voice_mask/BiasAdd/ReadVariableOpReadVariableOp0audio_voice_mask_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02)
'audio_voice_mask/BiasAdd/ReadVariableOp�
audio_voice_mask/BiasAddBiasAdd#audio_voice_mask/Tensordot:output:0/audio_voice_mask/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
audio_voice_mask/BiasAdds
mulMulinput_1!audio_voice_mask/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
mul�
IdentityIdentitydense_4/BiasAdd:output:0(^audio_voice_mask/BiasAdd/ReadVariableOp*^audio_voice_mask/Tensordot/ReadVariableOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp'^layer_normalization/add/ReadVariableOp)^layer_normalization/mul_3/ReadVariableOp*
T0*+
_output_shapes
:���������d2

Identity�

Identity_1Identitymul:z:0(^audio_voice_mask/BiasAdd/ReadVariableOp*^audio_voice_mask/Tensordot/ReadVariableOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp'^layer_normalization/add/ReadVariableOp)^layer_normalization/mul_3/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������dP: : : : : : : : : : : : : : : : : : 2R
'audio_voice_mask/BiasAdd/ReadVariableOp'audio_voice_mask/BiasAdd/ReadVariableOp2V
)audio_voice_mask/Tensordot/ReadVariableOp)audio_voice_mask/Tensordot/ReadVariableOp2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2P
&layer_normalization/add/ReadVariableOp&layer_normalization/add/ReadVariableOp2T
(layer_normalization/mul_3/ReadVariableOp(layer_normalization/mul_3/ReadVariableOp:T P
+
_output_shapes
:���������dP
!
_user_specified_name	input_1
�
�
@__inference_conv1d_layer_call_and_return_conditional_losses_2922

inputsA
+conv1d_expanddims_1_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
Pad/paddingsf
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:���������hP2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
-__inference_online_cnn_vad_layer_call_fn_1598

inputs
unknown:PP
	unknown_0:P
	unknown_1:PP
	unknown_2:P
	unknown_3:PP
	unknown_4:P
	unknown_5:PP
	unknown_6:P
	unknown_7:P
	unknown_8:P
	unknown_9:PP

unknown_10:P

unknown_11:PP

unknown_12:P

unknown_13:P

unknown_14:

unknown_15:PP

unknown_16:P
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:���������d:���������dP*4
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU (2J 8� *Q
fLRJ
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_10992
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������d2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������dP: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
'__inference_conv1d_1_layer_call_fn_2971

inputs
unknown:PP
	unknown_0:P
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *J
fERC
A__inference_conv1d_1_layer_call_and_return_conditional_losses_9812
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
!__inference_signature_wrapper_523

inputs
unknown:PP
	unknown_0:P
	unknown_1:PP
	unknown_2:P
	unknown_3:PP
	unknown_4:P
	unknown_5:PP
	unknown_6:P
	unknown_7:P
	unknown_8:P
	unknown_9:PP

unknown_10:P

unknown_11:PP

unknown_12:P

unknown_13:P

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*2
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU (2J 8� *"
fR
__inference_inference_4812
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:������������������P: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������P
 
_user_specified_nameinputs
�
�
-__inference_online_cnn_vad_layer_call_fn_1555
input_1
unknown:PP
	unknown_0:P
	unknown_1:PP
	unknown_2:P
	unknown_3:PP
	unknown_4:P
	unknown_5:PP
	unknown_6:P
	unknown_7:P
	unknown_8:P
	unknown_9:PP

unknown_10:P

unknown_11:PP

unknown_12:P

unknown_13:P

unknown_14:

unknown_15:PP

unknown_16:P
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:���������d:���������dP*4
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU (2J 8� *Q
fLRJ
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_10992
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������d2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������dP: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������dP
!
_user_specified_name	input_1
ϙ
�
__inference_inference_481

inputs9
'dense_tensordot_readvariableop_resource:PP3
%dense_biasadd_readvariableop_resource:P;
)dense_1_tensordot_readvariableop_resource:PP5
'dense_1_biasadd_readvariableop_resource:PH
2conv1d_conv1d_expanddims_1_readvariableop_resource:PP4
&conv1d_biasadd_readvariableop_resource:P;
)dense_2_tensordot_readvariableop_resource:PP5
'dense_2_biasadd_readvariableop_resource:P?
1layer_normalization_mul_3_readvariableop_resource:P=
/layer_normalization_add_readvariableop_resource:PJ
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:PP6
(conv1d_1_biasadd_readvariableop_resource:P;
)dense_3_tensordot_readvariableop_resource:PP5
'dense_3_biasadd_readvariableop_resource:P;
)dense_4_tensordot_readvariableop_resource:P5
'dense_4_biasadd_readvariableop_resource:
identity��conv1d/BiasAdd/ReadVariableOp�)conv1d/conv1d/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp� dense_3/Tensordot/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�&layer_normalization/add/ReadVariableOp�(layer_normalization/mul_3/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freed
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense/Tensordot/Shape�
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis�
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2�
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis�
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const�
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1�
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis�
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack�
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������P2
dense/Tensordot/transpose�
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense/Tensordot/Reshape�
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense/Tensordot/MatMul|
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense/Tensordot/Const_2�
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis�
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������P2
dense/Tensordot�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
dense/BiasAdd�
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes�
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freex
dense_1/Tensordot/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape�
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis�
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2�
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis�
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const�
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod�
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1�
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1�
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis�
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack�
dense_1/Tensordot/transpose	Transposedense/BiasAdd:output:0!dense_1/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_1/Tensordot/transpose�
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_1/Tensordot/Reshape�
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_1/Tensordot/MatMul�
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_1/Tensordot/Const_2�
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis�
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_1/Tensordot�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
dense_1/BiasAdd}
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_1/Relu�
conv1d/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d/Pad/paddings�

conv1d/PadPaddense_1/Relu:activations:0conv1d/Pad/paddings:output:0*
T0*4
_output_shapes"
 :������������������P2

conv1d/Pad�
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/conv1d/ExpandDims/dim�
conv1d/conv1d/ExpandDims
ExpandDimsconv1d/Pad:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"������������������P2
conv1d/conv1d/ExpandDims�
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOp�
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim�
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d/conv1d/ExpandDims_1�
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"������������������P*
paddingVALID*
strides
2
conv1d/conv1d�
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*4
_output_shapes"
 :������������������P*
squeeze_dims

���������2
conv1d/conv1d/Squeeze�
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
conv1d/BiasAdd/ReadVariableOp�
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
conv1d/BiasAddz
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������P2
conv1d/Relu�
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_2/Tensordot/ReadVariableOpz
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_2/Tensordot/axes�
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_2/Tensordot/free{
dense_2/Tensordot/ShapeShapeconv1d/Relu:activations:0*
T0*
_output_shapes
:2
dense_2/Tensordot/Shape�
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/GatherV2/axis�
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2�
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_2/Tensordot/GatherV2_1/axis�
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2_1|
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const�
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod�
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const_1�
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod_1�
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_2/Tensordot/concat/axis�
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/stack�
dense_2/Tensordot/transpose	Transposeconv1d/Relu:activations:0!dense_2/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_2/Tensordot/transpose�
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_2/Tensordot/Reshape�
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_2/Tensordot/MatMul�
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_2/Tensordot/Const_2�
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/concat_1/axis�
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat_1�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_2/Tensordot�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
dense_2/BiasAdd}
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_2/Relu�
layer_normalization/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:2
layer_normalization/Shape�
'layer_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'layer_normalization/strided_slice/stack�
)layer_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice/stack_1�
)layer_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice/stack_2�
!layer_normalization/strided_sliceStridedSlice"layer_normalization/Shape:output:00layer_normalization/strided_slice/stack:output:02layer_normalization/strided_slice/stack_1:output:02layer_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!layer_normalization/strided_slicex
layer_normalization/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization/mul/x�
layer_normalization/mulMul"layer_normalization/mul/x:output:0*layer_normalization/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul�
)layer_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice_1/stack�
+layer_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_1/stack_1�
+layer_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_1/stack_2�
#layer_normalization/strided_slice_1StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_1/stack:output:04layer_normalization/strided_slice_1/stack_1:output:04layer_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization/strided_slice_1�
layer_normalization/mul_1Mullayer_normalization/mul:z:0,layer_normalization/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul_1�
)layer_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice_2/stack�
+layer_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_2/stack_1�
+layer_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_2/stack_2�
#layer_normalization/strided_slice_2StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_2/stack:output:04layer_normalization/strided_slice_2/stack_1:output:04layer_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization/strided_slice_2|
layer_normalization/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization/mul_2/x�
layer_normalization/mul_2Mul$layer_normalization/mul_2/x:output:0,layer_normalization/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul_2�
#layer_normalization/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2%
#layer_normalization/Reshape/shape/0�
#layer_normalization/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#layer_normalization/Reshape/shape/3�
!layer_normalization/Reshape/shapePack,layer_normalization/Reshape/shape/0:output:0layer_normalization/mul_1:z:0layer_normalization/mul_2:z:0,layer_normalization/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2#
!layer_normalization/Reshape/shape�
layer_normalization/ReshapeReshapedense_2/Relu:activations:0*layer_normalization/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2
layer_normalization/Reshape�
layer_normalization/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2!
layer_normalization/ones/Less/y�
layer_normalization/ones/LessLesslayer_normalization/mul_1:z:0(layer_normalization/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_normalization/ones/Less�
layer_normalization/ones/packedPacklayer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:2!
layer_normalization/ones/packed�
layer_normalization/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2 
layer_normalization/ones/Const�
layer_normalization/onesFill(layer_normalization/ones/packed:output:0'layer_normalization/ones/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization/ones�
 layer_normalization/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2"
 layer_normalization/zeros/Less/y�
layer_normalization/zeros/LessLesslayer_normalization/mul_1:z:0)layer_normalization/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
layer_normalization/zeros/Less�
 layer_normalization/zeros/packedPacklayer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization/zeros/packed�
layer_normalization/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
layer_normalization/zeros/Const�
layer_normalization/zerosFill)layer_normalization/zeros/packed:output:0(layer_normalization/zeros/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization/zerosy
layer_normalization/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization/Const}
layer_normalization/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization/Const_1�
$layer_normalization/FusedBatchNormV3FusedBatchNormV3$layer_normalization/Reshape:output:0!layer_normalization/ones:output:0"layer_normalization/zeros:output:0"layer_normalization/Const:output:0$layer_normalization/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2&
$layer_normalization/FusedBatchNormV3�
layer_normalization/Reshape_1Reshape(layer_normalization/FusedBatchNormV3:y:0"layer_normalization/Shape:output:0*
T0*4
_output_shapes"
 :������������������P2
layer_normalization/Reshape_1�
(layer_normalization/mul_3/ReadVariableOpReadVariableOp1layer_normalization_mul_3_readvariableop_resource*
_output_shapes
:P*
dtype02*
(layer_normalization/mul_3/ReadVariableOp�
layer_normalization/mul_3Mul&layer_normalization/Reshape_1:output:00layer_normalization/mul_3/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
layer_normalization/mul_3�
&layer_normalization/add/ReadVariableOpReadVariableOp/layer_normalization_add_readvariableop_resource*
_output_shapes
:P*
dtype02(
&layer_normalization/add/ReadVariableOp�
layer_normalization/addAddV2layer_normalization/mul_3:z:0.layer_normalization/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
layer_normalization/add�
conv1d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_1/Pad/paddings�
conv1d_1/PadPadlayer_normalization/add:z:0conv1d_1/Pad/paddings:output:0*
T0*4
_output_shapes"
 :������������������P2
conv1d_1/Pad�
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_1/conv1d/ExpandDims/dim�
conv1d_1/conv1d/ExpandDims
ExpandDimsconv1d_1/Pad:output:0'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"������������������P2
conv1d_1/conv1d/ExpandDims�
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dim�
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d_1/conv1d/ExpandDims_1�
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"������������������P*
paddingVALID*
strides
2
conv1d_1/conv1d�
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*4
_output_shapes"
 :������������������P*
squeeze_dims

���������2
conv1d_1/conv1d/Squeeze�
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02!
conv1d_1/BiasAdd/ReadVariableOp�
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
conv1d_1/BiasAdd�
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������P2
conv1d_1/Relu�
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_3/Tensordot/ReadVariableOpz
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_3/Tensordot/axes�
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_3/Tensordot/free}
dense_3/Tensordot/ShapeShapeconv1d_1/Relu:activations:0*
T0*
_output_shapes
:2
dense_3/Tensordot/Shape�
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/GatherV2/axis�
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2�
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_3/Tensordot/GatherV2_1/axis�
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2_1|
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const�
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod�
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const_1�
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod_1�
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_3/Tensordot/concat/axis�
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat�
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/stack�
dense_3/Tensordot/transpose	Transposeconv1d_1/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_3/Tensordot/transpose�
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_3/Tensordot/Reshape�
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_3/Tensordot/MatMul�
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_3/Tensordot/Const_2�
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/concat_1/axis�
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat_1�
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_3/Tensordot�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������P2
dense_3/BiasAdd}
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_3/Relu�
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes

:P*
dtype02"
 dense_4/Tensordot/ReadVariableOpz
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/axes�
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_4/Tensordot/free|
dense_4/Tensordot/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:2
dense_4/Tensordot/Shape�
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/GatherV2/axis�
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2�
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_4/Tensordot/GatherV2_1/axis�
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2_1|
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const�
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod�
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const_1�
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod_1�
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_4/Tensordot/concat/axis�
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/stack�
dense_4/Tensordot/transpose	Transposedense_3/Relu:activations:0!dense_4/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :������������������P2
dense_4/Tensordot/transpose�
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_4/Tensordot/Reshape�
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_4/Tensordot/MatMul�
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/Const_2�
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/concat_1/axis�
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat_1�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������2
dense_4/Tensordot�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������2
dense_4/BiasAdd�
IdentityIdentitydense_4/BiasAdd:output:0^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp'^layer_normalization/add/ReadVariableOp)^layer_normalization/mul_3/ReadVariableOp*
T0*4
_output_shapes"
 :������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:������������������P: : : : : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2P
&layer_normalization/add/ReadVariableOp&layer_normalization/add/ReadVariableOp2T
(layer_normalization/mul_3/ReadVariableOp(layer_normalization/mul_3/ReadVariableOp:\ X
4
_output_shapes"
 :������������������P
 
_user_specified_nameinputs
�,
�
L__inference_layer_normalization_layer_call_and_return_conditional_losses_957

inputs+
mul_3_readvariableop_resource:P)
add_readvariableop_resource:P
identity��add/ReadVariableOp�mul_3/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Y
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2T
mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_2/xb
mul_2Mulmul_2/x:output:0strided_slice_2:output:0*
T0*
_output_shapes
: 2
mul_2d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0	mul_1:z:0	mul_2:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
Reshape]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
ones/Less/y`
	ones/LessLess	mul_1:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/Less[
ones/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2

ones/Constm
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:���������2
ones_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yc

zeros/LessLess	mul_1:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Less]
zeros/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constq
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:���������2
zerosQ
ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ConstU
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_1�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3}
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*+
_output_shapes
:���������dP2
	Reshape_1�
mul_3/ReadVariableOpReadVariableOpmul_3_readvariableop_resource*
_output_shapes
:P*
dtype02
mul_3/ReadVariableOp}
mul_3MulReshape_1:output:0mul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
mul_3�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:P*
dtype02
add/ReadVariableOpp
addAddV2	mul_3:z:0add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_3/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_3/ReadVariableOpmul_3/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�,
�
M__inference_layer_normalization_layer_call_and_return_conditional_losses_3129

inputs+
mul_3_readvariableop_resource:P)
add_readvariableop_resource:P
identity��add/ReadVariableOp�mul_3/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Y
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2T
mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_2/xb
mul_2Mulmul_2/x:output:0strided_slice_2:output:0*
T0*
_output_shapes
: 2
mul_2d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3�
Reshape/shapePackReshape/shape/0:output:0	mul_1:z:0	mul_2:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape�
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2	
Reshape]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
ones/Less/y`
	ones/LessLess	mul_1:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/Less[
ones/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2

ones/Constm
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:���������2
ones_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yc

zeros/LessLess	mul_1:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Less]
zeros/packedPack	mul_1:z:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constq
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:���������2
zerosQ
ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ConstU
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_1�
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2
FusedBatchNormV3}
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*+
_output_shapes
:���������dP2
	Reshape_1�
mul_3/ReadVariableOpReadVariableOpmul_3_readvariableop_resource*
_output_shapes
:P*
dtype02
mul_3/ReadVariableOp}
mul_3MulReshape_1:output:0mul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
mul_3�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:P*
dtype02
add/ReadVariableOpp
addAddV2	mul_3:z:0add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
add�
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_3/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_3/ReadVariableOpmul_3/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
� 
�
A__inference_dense_3_layer_call_and_return_conditional_losses_1018

inputs3
!tensordot_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
� 
�
J__inference_audio_voice_mask_layer_call_and_return_conditional_losses_3207

inputs3
!tensordot_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
?__inference_conv1d_layer_call_and_return_conditional_losses_863

inputsA
+conv1d_expanddims_1_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
Pad/paddingsf
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:���������hP2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�6
�
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_1099

inputs
	dense_803:PP
	dense_805:P
dense_1_840:PP
dense_1_842:P 

conv1d_864:PP

conv1d_866:P
dense_2_901:PP
dense_2_903:P%
layer_normalization_958:P%
layer_normalization_960:P"
conv1d_1_982:PP
conv1d_1_984:P
dense_3_1019:PP
dense_3_1021:P
dense_4_1055:P
dense_4_1057:'
audio_voice_mask_1091:PP#
audio_voice_mask_1093:P
identity

identity_1��(audio_voice_mask/StatefulPartitionedCall�conv1d/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�+layer_normalization/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinputs	dense_803	dense_805*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_8022
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_840dense_1_842*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_8392!
dense_1/StatefulPartitionedCall�
conv1d/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0
conv1d_864
conv1d_866*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *H
fCRA
?__inference_conv1d_layer_call_and_return_conditional_losses_8632 
conv1d/StatefulPartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0dense_2_901dense_2_903*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_9002!
dense_2/StatefulPartitionedCall�
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0layer_normalization_958layer_normalization_960*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *U
fPRN
L__inference_layer_normalization_layer_call_and_return_conditional_losses_9572-
+layer_normalization/StatefulPartitionedCall�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0conv1d_1_982conv1d_1_984*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *J
fERC
A__inference_conv1d_1_layer_call_and_return_conditional_losses_9812"
 conv1d_1/StatefulPartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0dense_3_1019dense_3_1021*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_10182!
dense_3/StatefulPartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_1055dense_4_1057*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_10542!
dense_4/StatefulPartitionedCall�
(audio_voice_mask/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0audio_voice_mask_1091audio_voice_mask_1093*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *S
fNRL
J__inference_audio_voice_mask_layer_call_and_return_conditional_losses_10902*
(audio_voice_mask/StatefulPartitionedCall�
mulMulinputs1audio_voice_mask/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:���������dP2
mul�
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0)^audio_voice_mask/StatefulPartitionedCall^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall*
T0*+
_output_shapes
:���������d2

Identity�

Identity_1Identitymul:z:0)^audio_voice_mask/StatefulPartitionedCall^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������dP: : : : : : : : : : : : : : : : : : 2T
(audio_voice_mask/StatefulPartitionedCall(audio_voice_mask/StatefulPartitionedCall2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
� 
�
@__inference_dense_1_layer_call_and_return_conditional_losses_839

inputs3
!tensordot_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
A__inference_conv1d_1_layer_call_and_return_conditional_losses_981

inputsA
+conv1d_expanddims_1_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
Pad/paddingsf
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:���������hP2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
-__inference_online_cnn_vad_layer_call_fn_1641

inputs
unknown:PP
	unknown_0:P
	unknown_1:PP
	unknown_2:P
	unknown_3:PP
	unknown_4:P
	unknown_5:PP
	unknown_6:P
	unknown_7:P
	unknown_8:P
	unknown_9:PP

unknown_10:P

unknown_11:PP

unknown_12:P

unknown_13:P

unknown_14:

unknown_15:PP

unknown_16:P
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:���������d:���������dP*4
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU (2J 8� *Q
fLRJ
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_13262
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������d2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������dP: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
/__inference_audio_voice_mask_layer_call_fn_3177

inputs
unknown:PP
	unknown_0:P
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *S
fNRL
J__inference_audio_voice_mask_layer_call_and_return_conditional_losses_10902
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
��
�
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_1924

inputs9
'dense_tensordot_readvariableop_resource:PP3
%dense_biasadd_readvariableop_resource:P;
)dense_1_tensordot_readvariableop_resource:PP5
'dense_1_biasadd_readvariableop_resource:PH
2conv1d_conv1d_expanddims_1_readvariableop_resource:PP4
&conv1d_biasadd_readvariableop_resource:P;
)dense_2_tensordot_readvariableop_resource:PP5
'dense_2_biasadd_readvariableop_resource:P?
1layer_normalization_mul_3_readvariableop_resource:P=
/layer_normalization_add_readvariableop_resource:PJ
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:PP6
(conv1d_1_biasadd_readvariableop_resource:P;
)dense_3_tensordot_readvariableop_resource:PP5
'dense_3_biasadd_readvariableop_resource:P;
)dense_4_tensordot_readvariableop_resource:P5
'dense_4_biasadd_readvariableop_resource:D
2audio_voice_mask_tensordot_readvariableop_resource:PP>
0audio_voice_mask_biasadd_readvariableop_resource:P
identity

identity_1��'audio_voice_mask/BiasAdd/ReadVariableOp�)audio_voice_mask/Tensordot/ReadVariableOp�conv1d/BiasAdd/ReadVariableOp�)conv1d/conv1d/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp� dense_3/Tensordot/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�&layer_normalization/add/ReadVariableOp�(layer_normalization/mul_3/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freed
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense/Tensordot/Shape�
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis�
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2�
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis�
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const�
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1�
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis�
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack�
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense/Tensordot/transpose�
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense/Tensordot/Reshape�
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense/Tensordot/MatMul|
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense/Tensordot/Const_2�
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis�
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense/Tensordot�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense/BiasAdd�
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes�
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freex
dense_1/Tensordot/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape�
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis�
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2�
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis�
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const�
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod�
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1�
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1�
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis�
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack�
dense_1/Tensordot/transpose	Transposedense/BiasAdd:output:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_1/Tensordot/transpose�
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_1/Tensordot/Reshape�
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_1/Tensordot/MatMul�
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_1/Tensordot/Const_2�
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis�
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense_1/Tensordot�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense_1/BiasAddt
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
dense_1/Relu�
conv1d/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d/Pad/paddings�

conv1d/PadPaddense_1/Relu:activations:0conv1d/Pad/paddings:output:0*
T0*+
_output_shapes
:���������hP2

conv1d/Pad�
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/conv1d/ExpandDims/dim�
conv1d/conv1d/ExpandDims
ExpandDimsconv1d/Pad:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2
conv1d/conv1d/ExpandDims�
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOp�
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim�
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d/conv1d/ExpandDims_1�
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2
conv1d/conv1d�
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2
conv1d/conv1d/Squeeze�
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
conv1d/BiasAdd/ReadVariableOp�
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
conv1d/BiasAddq
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
conv1d/Relu�
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_2/Tensordot/ReadVariableOpz
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_2/Tensordot/axes�
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_2/Tensordot/free{
dense_2/Tensordot/ShapeShapeconv1d/Relu:activations:0*
T0*
_output_shapes
:2
dense_2/Tensordot/Shape�
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/GatherV2/axis�
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2�
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_2/Tensordot/GatherV2_1/axis�
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2_1|
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const�
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod�
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const_1�
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod_1�
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_2/Tensordot/concat/axis�
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/stack�
dense_2/Tensordot/transpose	Transposeconv1d/Relu:activations:0!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_2/Tensordot/transpose�
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_2/Tensordot/Reshape�
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_2/Tensordot/MatMul�
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_2/Tensordot/Const_2�
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/concat_1/axis�
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat_1�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense_2/Tensordot�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense_2/BiasAddt
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
dense_2/Relu�
layer_normalization/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:2
layer_normalization/Shape�
'layer_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'layer_normalization/strided_slice/stack�
)layer_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice/stack_1�
)layer_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice/stack_2�
!layer_normalization/strided_sliceStridedSlice"layer_normalization/Shape:output:00layer_normalization/strided_slice/stack:output:02layer_normalization/strided_slice/stack_1:output:02layer_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!layer_normalization/strided_slicex
layer_normalization/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization/mul/x�
layer_normalization/mulMul"layer_normalization/mul/x:output:0*layer_normalization/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul�
)layer_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice_1/stack�
+layer_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_1/stack_1�
+layer_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_1/stack_2�
#layer_normalization/strided_slice_1StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_1/stack:output:04layer_normalization/strided_slice_1/stack_1:output:04layer_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization/strided_slice_1�
layer_normalization/mul_1Mullayer_normalization/mul:z:0,layer_normalization/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul_1�
)layer_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice_2/stack�
+layer_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_2/stack_1�
+layer_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_2/stack_2�
#layer_normalization/strided_slice_2StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_2/stack:output:04layer_normalization/strided_slice_2/stack_1:output:04layer_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization/strided_slice_2|
layer_normalization/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization/mul_2/x�
layer_normalization/mul_2Mul$layer_normalization/mul_2/x:output:0,layer_normalization/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul_2�
#layer_normalization/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2%
#layer_normalization/Reshape/shape/0�
#layer_normalization/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#layer_normalization/Reshape/shape/3�
!layer_normalization/Reshape/shapePack,layer_normalization/Reshape/shape/0:output:0layer_normalization/mul_1:z:0layer_normalization/mul_2:z:0,layer_normalization/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2#
!layer_normalization/Reshape/shape�
layer_normalization/ReshapeReshapedense_2/Relu:activations:0*layer_normalization/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2
layer_normalization/Reshape�
layer_normalization/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2!
layer_normalization/ones/Less/y�
layer_normalization/ones/LessLesslayer_normalization/mul_1:z:0(layer_normalization/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_normalization/ones/Less�
layer_normalization/ones/packedPacklayer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:2!
layer_normalization/ones/packed�
layer_normalization/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2 
layer_normalization/ones/Const�
layer_normalization/onesFill(layer_normalization/ones/packed:output:0'layer_normalization/ones/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization/ones�
 layer_normalization/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2"
 layer_normalization/zeros/Less/y�
layer_normalization/zeros/LessLesslayer_normalization/mul_1:z:0)layer_normalization/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
layer_normalization/zeros/Less�
 layer_normalization/zeros/packedPacklayer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization/zeros/packed�
layer_normalization/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
layer_normalization/zeros/Const�
layer_normalization/zerosFill)layer_normalization/zeros/packed:output:0(layer_normalization/zeros/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization/zerosy
layer_normalization/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization/Const}
layer_normalization/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization/Const_1�
$layer_normalization/FusedBatchNormV3FusedBatchNormV3$layer_normalization/Reshape:output:0!layer_normalization/ones:output:0"layer_normalization/zeros:output:0"layer_normalization/Const:output:0$layer_normalization/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2&
$layer_normalization/FusedBatchNormV3�
layer_normalization/Reshape_1Reshape(layer_normalization/FusedBatchNormV3:y:0"layer_normalization/Shape:output:0*
T0*+
_output_shapes
:���������dP2
layer_normalization/Reshape_1�
(layer_normalization/mul_3/ReadVariableOpReadVariableOp1layer_normalization_mul_3_readvariableop_resource*
_output_shapes
:P*
dtype02*
(layer_normalization/mul_3/ReadVariableOp�
layer_normalization/mul_3Mul&layer_normalization/Reshape_1:output:00layer_normalization/mul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
layer_normalization/mul_3�
&layer_normalization/add/ReadVariableOpReadVariableOp/layer_normalization_add_readvariableop_resource*
_output_shapes
:P*
dtype02(
&layer_normalization/add/ReadVariableOp�
layer_normalization/addAddV2layer_normalization/mul_3:z:0.layer_normalization/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
layer_normalization/add�
conv1d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_1/Pad/paddings�
conv1d_1/PadPadlayer_normalization/add:z:0conv1d_1/Pad/paddings:output:0*
T0*+
_output_shapes
:���������hP2
conv1d_1/Pad�
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_1/conv1d/ExpandDims/dim�
conv1d_1/conv1d/ExpandDims
ExpandDimsconv1d_1/Pad:output:0'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2
conv1d_1/conv1d/ExpandDims�
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dim�
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d_1/conv1d/ExpandDims_1�
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2
conv1d_1/conv1d�
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2
conv1d_1/conv1d/Squeeze�
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02!
conv1d_1/BiasAdd/ReadVariableOp�
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
conv1d_1/BiasAddw
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
conv1d_1/Relu�
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_3/Tensordot/ReadVariableOpz
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_3/Tensordot/axes�
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_3/Tensordot/free}
dense_3/Tensordot/ShapeShapeconv1d_1/Relu:activations:0*
T0*
_output_shapes
:2
dense_3/Tensordot/Shape�
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/GatherV2/axis�
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2�
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_3/Tensordot/GatherV2_1/axis�
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2_1|
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const�
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod�
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const_1�
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod_1�
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_3/Tensordot/concat/axis�
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat�
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/stack�
dense_3/Tensordot/transpose	Transposeconv1d_1/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_3/Tensordot/transpose�
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_3/Tensordot/Reshape�
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_3/Tensordot/MatMul�
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_3/Tensordot/Const_2�
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/concat_1/axis�
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat_1�
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense_3/Tensordot�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense_3/BiasAddt
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
dense_3/Relu�
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes

:P*
dtype02"
 dense_4/Tensordot/ReadVariableOpz
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/axes�
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_4/Tensordot/free|
dense_4/Tensordot/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:2
dense_4/Tensordot/Shape�
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/GatherV2/axis�
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2�
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_4/Tensordot/GatherV2_1/axis�
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2_1|
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const�
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod�
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const_1�
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod_1�
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_4/Tensordot/concat/axis�
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/stack�
dense_4/Tensordot/transpose	Transposedense_3/Relu:activations:0!dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_4/Tensordot/transpose�
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_4/Tensordot/Reshape�
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_4/Tensordot/MatMul�
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/Const_2�
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/concat_1/axis�
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat_1�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d2
dense_4/Tensordot�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d2
dense_4/BiasAdd�
)audio_voice_mask/Tensordot/ReadVariableOpReadVariableOp2audio_voice_mask_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02+
)audio_voice_mask/Tensordot/ReadVariableOp�
audio_voice_mask/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
audio_voice_mask/Tensordot/axes�
audio_voice_mask/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
audio_voice_mask/Tensordot/free�
 audio_voice_mask/Tensordot/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:2"
 audio_voice_mask/Tensordot/Shape�
(audio_voice_mask/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(audio_voice_mask/Tensordot/GatherV2/axis�
#audio_voice_mask/Tensordot/GatherV2GatherV2)audio_voice_mask/Tensordot/Shape:output:0(audio_voice_mask/Tensordot/free:output:01audio_voice_mask/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#audio_voice_mask/Tensordot/GatherV2�
*audio_voice_mask/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*audio_voice_mask/Tensordot/GatherV2_1/axis�
%audio_voice_mask/Tensordot/GatherV2_1GatherV2)audio_voice_mask/Tensordot/Shape:output:0(audio_voice_mask/Tensordot/axes:output:03audio_voice_mask/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%audio_voice_mask/Tensordot/GatherV2_1�
 audio_voice_mask/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 audio_voice_mask/Tensordot/Const�
audio_voice_mask/Tensordot/ProdProd,audio_voice_mask/Tensordot/GatherV2:output:0)audio_voice_mask/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
audio_voice_mask/Tensordot/Prod�
"audio_voice_mask/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"audio_voice_mask/Tensordot/Const_1�
!audio_voice_mask/Tensordot/Prod_1Prod.audio_voice_mask/Tensordot/GatherV2_1:output:0+audio_voice_mask/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!audio_voice_mask/Tensordot/Prod_1�
&audio_voice_mask/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&audio_voice_mask/Tensordot/concat/axis�
!audio_voice_mask/Tensordot/concatConcatV2(audio_voice_mask/Tensordot/free:output:0(audio_voice_mask/Tensordot/axes:output:0/audio_voice_mask/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!audio_voice_mask/Tensordot/concat�
 audio_voice_mask/Tensordot/stackPack(audio_voice_mask/Tensordot/Prod:output:0*audio_voice_mask/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 audio_voice_mask/Tensordot/stack�
$audio_voice_mask/Tensordot/transpose	Transposedense_3/Relu:activations:0*audio_voice_mask/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2&
$audio_voice_mask/Tensordot/transpose�
"audio_voice_mask/Tensordot/ReshapeReshape(audio_voice_mask/Tensordot/transpose:y:0)audio_voice_mask/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2$
"audio_voice_mask/Tensordot/Reshape�
!audio_voice_mask/Tensordot/MatMulMatMul+audio_voice_mask/Tensordot/Reshape:output:01audio_voice_mask/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2#
!audio_voice_mask/Tensordot/MatMul�
"audio_voice_mask/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2$
"audio_voice_mask/Tensordot/Const_2�
(audio_voice_mask/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(audio_voice_mask/Tensordot/concat_1/axis�
#audio_voice_mask/Tensordot/concat_1ConcatV2,audio_voice_mask/Tensordot/GatherV2:output:0+audio_voice_mask/Tensordot/Const_2:output:01audio_voice_mask/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#audio_voice_mask/Tensordot/concat_1�
audio_voice_mask/TensordotReshape+audio_voice_mask/Tensordot/MatMul:product:0,audio_voice_mask/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
audio_voice_mask/Tensordot�
'audio_voice_mask/BiasAdd/ReadVariableOpReadVariableOp0audio_voice_mask_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02)
'audio_voice_mask/BiasAdd/ReadVariableOp�
audio_voice_mask/BiasAddBiasAdd#audio_voice_mask/Tensordot:output:0/audio_voice_mask/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
audio_voice_mask/BiasAddr
mulMulinputs!audio_voice_mask/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
mul�
IdentityIdentitydense_4/BiasAdd:output:0(^audio_voice_mask/BiasAdd/ReadVariableOp*^audio_voice_mask/Tensordot/ReadVariableOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp'^layer_normalization/add/ReadVariableOp)^layer_normalization/mul_3/ReadVariableOp*
T0*+
_output_shapes
:���������d2

Identity�

Identity_1Identitymul:z:0(^audio_voice_mask/BiasAdd/ReadVariableOp*^audio_voice_mask/Tensordot/ReadVariableOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp'^layer_normalization/add/ReadVariableOp)^layer_normalization/mul_3/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������dP: : : : : : : : : : : : : : : : : : 2R
'audio_voice_mask/BiasAdd/ReadVariableOp'audio_voice_mask/BiasAdd/ReadVariableOp2V
)audio_voice_mask/Tensordot/ReadVariableOp)audio_voice_mask/Tensordot/ReadVariableOp2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2P
&layer_normalization/add/ReadVariableOp&layer_normalization/add/ReadVariableOp2T
(layer_normalization/mul_3/ReadVariableOp(layer_normalization/mul_3/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
B__inference_conv1d_1_layer_call_and_return_conditional_losses_2989

inputsA
+conv1d_expanddims_1_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
Pad/paddingsf
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:���������hP2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
� 
�
A__inference_dense_3_layer_call_and_return_conditional_losses_3069

inputs3
!tensordot_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
��
�
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_2404
input_19
'dense_tensordot_readvariableop_resource:PP3
%dense_biasadd_readvariableop_resource:P;
)dense_1_tensordot_readvariableop_resource:PP5
'dense_1_biasadd_readvariableop_resource:PH
2conv1d_conv1d_expanddims_1_readvariableop_resource:PP4
&conv1d_biasadd_readvariableop_resource:P;
)dense_2_tensordot_readvariableop_resource:PP5
'dense_2_biasadd_readvariableop_resource:P?
1layer_normalization_mul_3_readvariableop_resource:P=
/layer_normalization_add_readvariableop_resource:PJ
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:PP6
(conv1d_1_biasadd_readvariableop_resource:P;
)dense_3_tensordot_readvariableop_resource:PP5
'dense_3_biasadd_readvariableop_resource:P;
)dense_4_tensordot_readvariableop_resource:P5
'dense_4_biasadd_readvariableop_resource:D
2audio_voice_mask_tensordot_readvariableop_resource:PP>
0audio_voice_mask_biasadd_readvariableop_resource:P
identity

identity_1��'audio_voice_mask/BiasAdd/ReadVariableOp�)audio_voice_mask/Tensordot/ReadVariableOp�conv1d/BiasAdd/ReadVariableOp�)conv1d/conv1d/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp� dense_3/Tensordot/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�&layer_normalization/add/ReadVariableOp�(layer_normalization/mul_3/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freee
dense/Tensordot/ShapeShapeinput_1*
T0*
_output_shapes
:2
dense/Tensordot/Shape�
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis�
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2�
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis�
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const�
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1�
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis�
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack�
dense/Tensordot/transpose	Transposeinput_1dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense/Tensordot/transpose�
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense/Tensordot/Reshape�
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense/Tensordot/MatMul|
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense/Tensordot/Const_2�
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis�
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense/Tensordot�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense/BiasAdd�
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes�
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freex
dense_1/Tensordot/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape�
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis�
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2�
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis�
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const�
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod�
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1�
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1�
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis�
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack�
dense_1/Tensordot/transpose	Transposedense/BiasAdd:output:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_1/Tensordot/transpose�
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_1/Tensordot/Reshape�
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_1/Tensordot/MatMul�
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_1/Tensordot/Const_2�
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis�
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense_1/Tensordot�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense_1/BiasAddt
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
dense_1/Relu�
conv1d/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d/Pad/paddings�

conv1d/PadPaddense_1/Relu:activations:0conv1d/Pad/paddings:output:0*
T0*+
_output_shapes
:���������hP2

conv1d/Pad�
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/conv1d/ExpandDims/dim�
conv1d/conv1d/ExpandDims
ExpandDimsconv1d/Pad:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2
conv1d/conv1d/ExpandDims�
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOp�
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim�
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d/conv1d/ExpandDims_1�
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2
conv1d/conv1d�
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2
conv1d/conv1d/Squeeze�
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
conv1d/BiasAdd/ReadVariableOp�
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
conv1d/BiasAddq
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
conv1d/Relu�
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_2/Tensordot/ReadVariableOpz
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_2/Tensordot/axes�
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_2/Tensordot/free{
dense_2/Tensordot/ShapeShapeconv1d/Relu:activations:0*
T0*
_output_shapes
:2
dense_2/Tensordot/Shape�
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/GatherV2/axis�
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2�
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_2/Tensordot/GatherV2_1/axis�
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2_1|
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const�
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod�
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const_1�
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod_1�
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_2/Tensordot/concat/axis�
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/stack�
dense_2/Tensordot/transpose	Transposeconv1d/Relu:activations:0!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_2/Tensordot/transpose�
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_2/Tensordot/Reshape�
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_2/Tensordot/MatMul�
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_2/Tensordot/Const_2�
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/concat_1/axis�
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat_1�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense_2/Tensordot�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense_2/BiasAddt
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
dense_2/Relu�
layer_normalization/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:2
layer_normalization/Shape�
'layer_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'layer_normalization/strided_slice/stack�
)layer_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice/stack_1�
)layer_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice/stack_2�
!layer_normalization/strided_sliceStridedSlice"layer_normalization/Shape:output:00layer_normalization/strided_slice/stack:output:02layer_normalization/strided_slice/stack_1:output:02layer_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!layer_normalization/strided_slicex
layer_normalization/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization/mul/x�
layer_normalization/mulMul"layer_normalization/mul/x:output:0*layer_normalization/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul�
)layer_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice_1/stack�
+layer_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_1/stack_1�
+layer_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_1/stack_2�
#layer_normalization/strided_slice_1StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_1/stack:output:04layer_normalization/strided_slice_1/stack_1:output:04layer_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization/strided_slice_1�
layer_normalization/mul_1Mullayer_normalization/mul:z:0,layer_normalization/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul_1�
)layer_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice_2/stack�
+layer_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_2/stack_1�
+layer_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_2/stack_2�
#layer_normalization/strided_slice_2StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_2/stack:output:04layer_normalization/strided_slice_2/stack_1:output:04layer_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization/strided_slice_2|
layer_normalization/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization/mul_2/x�
layer_normalization/mul_2Mul$layer_normalization/mul_2/x:output:0,layer_normalization/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul_2�
#layer_normalization/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2%
#layer_normalization/Reshape/shape/0�
#layer_normalization/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#layer_normalization/Reshape/shape/3�
!layer_normalization/Reshape/shapePack,layer_normalization/Reshape/shape/0:output:0layer_normalization/mul_1:z:0layer_normalization/mul_2:z:0,layer_normalization/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2#
!layer_normalization/Reshape/shape�
layer_normalization/ReshapeReshapedense_2/Relu:activations:0*layer_normalization/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2
layer_normalization/Reshape�
layer_normalization/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2!
layer_normalization/ones/Less/y�
layer_normalization/ones/LessLesslayer_normalization/mul_1:z:0(layer_normalization/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_normalization/ones/Less�
layer_normalization/ones/packedPacklayer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:2!
layer_normalization/ones/packed�
layer_normalization/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2 
layer_normalization/ones/Const�
layer_normalization/onesFill(layer_normalization/ones/packed:output:0'layer_normalization/ones/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization/ones�
 layer_normalization/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2"
 layer_normalization/zeros/Less/y�
layer_normalization/zeros/LessLesslayer_normalization/mul_1:z:0)layer_normalization/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
layer_normalization/zeros/Less�
 layer_normalization/zeros/packedPacklayer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization/zeros/packed�
layer_normalization/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
layer_normalization/zeros/Const�
layer_normalization/zerosFill)layer_normalization/zeros/packed:output:0(layer_normalization/zeros/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization/zerosy
layer_normalization/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization/Const}
layer_normalization/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization/Const_1�
$layer_normalization/FusedBatchNormV3FusedBatchNormV3$layer_normalization/Reshape:output:0!layer_normalization/ones:output:0"layer_normalization/zeros:output:0"layer_normalization/Const:output:0$layer_normalization/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2&
$layer_normalization/FusedBatchNormV3�
layer_normalization/Reshape_1Reshape(layer_normalization/FusedBatchNormV3:y:0"layer_normalization/Shape:output:0*
T0*+
_output_shapes
:���������dP2
layer_normalization/Reshape_1�
(layer_normalization/mul_3/ReadVariableOpReadVariableOp1layer_normalization_mul_3_readvariableop_resource*
_output_shapes
:P*
dtype02*
(layer_normalization/mul_3/ReadVariableOp�
layer_normalization/mul_3Mul&layer_normalization/Reshape_1:output:00layer_normalization/mul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
layer_normalization/mul_3�
&layer_normalization/add/ReadVariableOpReadVariableOp/layer_normalization_add_readvariableop_resource*
_output_shapes
:P*
dtype02(
&layer_normalization/add/ReadVariableOp�
layer_normalization/addAddV2layer_normalization/mul_3:z:0.layer_normalization/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
layer_normalization/add�
conv1d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_1/Pad/paddings�
conv1d_1/PadPadlayer_normalization/add:z:0conv1d_1/Pad/paddings:output:0*
T0*+
_output_shapes
:���������hP2
conv1d_1/Pad�
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_1/conv1d/ExpandDims/dim�
conv1d_1/conv1d/ExpandDims
ExpandDimsconv1d_1/Pad:output:0'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2
conv1d_1/conv1d/ExpandDims�
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dim�
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d_1/conv1d/ExpandDims_1�
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2
conv1d_1/conv1d�
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2
conv1d_1/conv1d/Squeeze�
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02!
conv1d_1/BiasAdd/ReadVariableOp�
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
conv1d_1/BiasAddw
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
conv1d_1/Relu�
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_3/Tensordot/ReadVariableOpz
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_3/Tensordot/axes�
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_3/Tensordot/free}
dense_3/Tensordot/ShapeShapeconv1d_1/Relu:activations:0*
T0*
_output_shapes
:2
dense_3/Tensordot/Shape�
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/GatherV2/axis�
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2�
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_3/Tensordot/GatherV2_1/axis�
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2_1|
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const�
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod�
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const_1�
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod_1�
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_3/Tensordot/concat/axis�
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat�
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/stack�
dense_3/Tensordot/transpose	Transposeconv1d_1/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_3/Tensordot/transpose�
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_3/Tensordot/Reshape�
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_3/Tensordot/MatMul�
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_3/Tensordot/Const_2�
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/concat_1/axis�
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat_1�
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense_3/Tensordot�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense_3/BiasAddt
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
dense_3/Relu�
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes

:P*
dtype02"
 dense_4/Tensordot/ReadVariableOpz
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/axes�
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_4/Tensordot/free|
dense_4/Tensordot/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:2
dense_4/Tensordot/Shape�
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/GatherV2/axis�
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2�
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_4/Tensordot/GatherV2_1/axis�
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2_1|
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const�
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod�
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const_1�
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod_1�
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_4/Tensordot/concat/axis�
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/stack�
dense_4/Tensordot/transpose	Transposedense_3/Relu:activations:0!dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_4/Tensordot/transpose�
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_4/Tensordot/Reshape�
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_4/Tensordot/MatMul�
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/Const_2�
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/concat_1/axis�
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat_1�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d2
dense_4/Tensordot�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d2
dense_4/BiasAdd�
)audio_voice_mask/Tensordot/ReadVariableOpReadVariableOp2audio_voice_mask_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02+
)audio_voice_mask/Tensordot/ReadVariableOp�
audio_voice_mask/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
audio_voice_mask/Tensordot/axes�
audio_voice_mask/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
audio_voice_mask/Tensordot/free�
 audio_voice_mask/Tensordot/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:2"
 audio_voice_mask/Tensordot/Shape�
(audio_voice_mask/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(audio_voice_mask/Tensordot/GatherV2/axis�
#audio_voice_mask/Tensordot/GatherV2GatherV2)audio_voice_mask/Tensordot/Shape:output:0(audio_voice_mask/Tensordot/free:output:01audio_voice_mask/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#audio_voice_mask/Tensordot/GatherV2�
*audio_voice_mask/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*audio_voice_mask/Tensordot/GatherV2_1/axis�
%audio_voice_mask/Tensordot/GatherV2_1GatherV2)audio_voice_mask/Tensordot/Shape:output:0(audio_voice_mask/Tensordot/axes:output:03audio_voice_mask/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%audio_voice_mask/Tensordot/GatherV2_1�
 audio_voice_mask/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 audio_voice_mask/Tensordot/Const�
audio_voice_mask/Tensordot/ProdProd,audio_voice_mask/Tensordot/GatherV2:output:0)audio_voice_mask/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
audio_voice_mask/Tensordot/Prod�
"audio_voice_mask/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"audio_voice_mask/Tensordot/Const_1�
!audio_voice_mask/Tensordot/Prod_1Prod.audio_voice_mask/Tensordot/GatherV2_1:output:0+audio_voice_mask/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!audio_voice_mask/Tensordot/Prod_1�
&audio_voice_mask/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&audio_voice_mask/Tensordot/concat/axis�
!audio_voice_mask/Tensordot/concatConcatV2(audio_voice_mask/Tensordot/free:output:0(audio_voice_mask/Tensordot/axes:output:0/audio_voice_mask/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!audio_voice_mask/Tensordot/concat�
 audio_voice_mask/Tensordot/stackPack(audio_voice_mask/Tensordot/Prod:output:0*audio_voice_mask/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 audio_voice_mask/Tensordot/stack�
$audio_voice_mask/Tensordot/transpose	Transposedense_3/Relu:activations:0*audio_voice_mask/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2&
$audio_voice_mask/Tensordot/transpose�
"audio_voice_mask/Tensordot/ReshapeReshape(audio_voice_mask/Tensordot/transpose:y:0)audio_voice_mask/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2$
"audio_voice_mask/Tensordot/Reshape�
!audio_voice_mask/Tensordot/MatMulMatMul+audio_voice_mask/Tensordot/Reshape:output:01audio_voice_mask/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2#
!audio_voice_mask/Tensordot/MatMul�
"audio_voice_mask/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2$
"audio_voice_mask/Tensordot/Const_2�
(audio_voice_mask/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(audio_voice_mask/Tensordot/concat_1/axis�
#audio_voice_mask/Tensordot/concat_1ConcatV2,audio_voice_mask/Tensordot/GatherV2:output:0+audio_voice_mask/Tensordot/Const_2:output:01audio_voice_mask/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#audio_voice_mask/Tensordot/concat_1�
audio_voice_mask/TensordotReshape+audio_voice_mask/Tensordot/MatMul:product:0,audio_voice_mask/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
audio_voice_mask/Tensordot�
'audio_voice_mask/BiasAdd/ReadVariableOpReadVariableOp0audio_voice_mask_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02)
'audio_voice_mask/BiasAdd/ReadVariableOp�
audio_voice_mask/BiasAddBiasAdd#audio_voice_mask/Tensordot:output:0/audio_voice_mask/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
audio_voice_mask/BiasAdds
mulMulinput_1!audio_voice_mask/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
mul�
IdentityIdentitydense_4/BiasAdd:output:0(^audio_voice_mask/BiasAdd/ReadVariableOp*^audio_voice_mask/Tensordot/ReadVariableOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp'^layer_normalization/add/ReadVariableOp)^layer_normalization/mul_3/ReadVariableOp*
T0*+
_output_shapes
:���������d2

Identity�

Identity_1Identitymul:z:0(^audio_voice_mask/BiasAdd/ReadVariableOp*^audio_voice_mask/Tensordot/ReadVariableOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp'^layer_normalization/add/ReadVariableOp)^layer_normalization/mul_3/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������dP: : : : : : : : : : : : : : : : : : 2R
'audio_voice_mask/BiasAdd/ReadVariableOp'audio_voice_mask/BiasAdd/ReadVariableOp2V
)audio_voice_mask/Tensordot/ReadVariableOp)audio_voice_mask/Tensordot/ReadVariableOp2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2P
&layer_normalization/add/ReadVariableOp&layer_normalization/add/ReadVariableOp2T
(layer_normalization/mul_3/ReadVariableOp(layer_normalization/mul_3/ReadVariableOp:T P
+
_output_shapes
:���������dP
!
_user_specified_name	input_1
��
�
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_2164

inputs9
'dense_tensordot_readvariableop_resource:PP3
%dense_biasadd_readvariableop_resource:P;
)dense_1_tensordot_readvariableop_resource:PP5
'dense_1_biasadd_readvariableop_resource:PH
2conv1d_conv1d_expanddims_1_readvariableop_resource:PP4
&conv1d_biasadd_readvariableop_resource:P;
)dense_2_tensordot_readvariableop_resource:PP5
'dense_2_biasadd_readvariableop_resource:P?
1layer_normalization_mul_3_readvariableop_resource:P=
/layer_normalization_add_readvariableop_resource:PJ
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:PP6
(conv1d_1_biasadd_readvariableop_resource:P;
)dense_3_tensordot_readvariableop_resource:PP5
'dense_3_biasadd_readvariableop_resource:P;
)dense_4_tensordot_readvariableop_resource:P5
'dense_4_biasadd_readvariableop_resource:D
2audio_voice_mask_tensordot_readvariableop_resource:PP>
0audio_voice_mask_biasadd_readvariableop_resource:P
identity

identity_1��'audio_voice_mask/BiasAdd/ReadVariableOp�)audio_voice_mask/Tensordot/ReadVariableOp�conv1d/BiasAdd/ReadVariableOp�)conv1d/conv1d/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp� dense_3/Tensordot/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�&layer_normalization/add/ReadVariableOp�(layer_normalization/mul_3/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freed
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense/Tensordot/Shape�
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis�
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2�
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis�
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const�
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1�
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis�
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack�
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense/Tensordot/transpose�
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense/Tensordot/Reshape�
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense/Tensordot/MatMul|
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense/Tensordot/Const_2�
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis�
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense/Tensordot�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense/BiasAdd�
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes�
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freex
dense_1/Tensordot/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape�
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis�
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2�
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis�
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const�
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod�
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1�
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1�
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis�
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack�
dense_1/Tensordot/transpose	Transposedense/BiasAdd:output:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_1/Tensordot/transpose�
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_1/Tensordot/Reshape�
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_1/Tensordot/MatMul�
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_1/Tensordot/Const_2�
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis�
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense_1/Tensordot�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense_1/BiasAddt
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
dense_1/Relu�
conv1d/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d/Pad/paddings�

conv1d/PadPaddense_1/Relu:activations:0conv1d/Pad/paddings:output:0*
T0*+
_output_shapes
:���������hP2

conv1d/Pad�
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/conv1d/ExpandDims/dim�
conv1d/conv1d/ExpandDims
ExpandDimsconv1d/Pad:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2
conv1d/conv1d/ExpandDims�
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOp�
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim�
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d/conv1d/ExpandDims_1�
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2
conv1d/conv1d�
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2
conv1d/conv1d/Squeeze�
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
conv1d/BiasAdd/ReadVariableOp�
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
conv1d/BiasAddq
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
conv1d/Relu�
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_2/Tensordot/ReadVariableOpz
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_2/Tensordot/axes�
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_2/Tensordot/free{
dense_2/Tensordot/ShapeShapeconv1d/Relu:activations:0*
T0*
_output_shapes
:2
dense_2/Tensordot/Shape�
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/GatherV2/axis�
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2�
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_2/Tensordot/GatherV2_1/axis�
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2_1|
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const�
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod�
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const_1�
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod_1�
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_2/Tensordot/concat/axis�
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/stack�
dense_2/Tensordot/transpose	Transposeconv1d/Relu:activations:0!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_2/Tensordot/transpose�
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_2/Tensordot/Reshape�
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_2/Tensordot/MatMul�
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_2/Tensordot/Const_2�
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/concat_1/axis�
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat_1�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense_2/Tensordot�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense_2/BiasAddt
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
dense_2/Relu�
layer_normalization/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:2
layer_normalization/Shape�
'layer_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'layer_normalization/strided_slice/stack�
)layer_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice/stack_1�
)layer_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice/stack_2�
!layer_normalization/strided_sliceStridedSlice"layer_normalization/Shape:output:00layer_normalization/strided_slice/stack:output:02layer_normalization/strided_slice/stack_1:output:02layer_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!layer_normalization/strided_slicex
layer_normalization/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization/mul/x�
layer_normalization/mulMul"layer_normalization/mul/x:output:0*layer_normalization/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul�
)layer_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice_1/stack�
+layer_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_1/stack_1�
+layer_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_1/stack_2�
#layer_normalization/strided_slice_1StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_1/stack:output:04layer_normalization/strided_slice_1/stack_1:output:04layer_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization/strided_slice_1�
layer_normalization/mul_1Mullayer_normalization/mul:z:0,layer_normalization/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul_1�
)layer_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)layer_normalization/strided_slice_2/stack�
+layer_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_2/stack_1�
+layer_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization/strided_slice_2/stack_2�
#layer_normalization/strided_slice_2StridedSlice"layer_normalization/Shape:output:02layer_normalization/strided_slice_2/stack:output:04layer_normalization/strided_slice_2/stack_1:output:04layer_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization/strided_slice_2|
layer_normalization/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization/mul_2/x�
layer_normalization/mul_2Mul$layer_normalization/mul_2/x:output:0,layer_normalization/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_normalization/mul_2�
#layer_normalization/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2%
#layer_normalization/Reshape/shape/0�
#layer_normalization/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#layer_normalization/Reshape/shape/3�
!layer_normalization/Reshape/shapePack,layer_normalization/Reshape/shape/0:output:0layer_normalization/mul_1:z:0layer_normalization/mul_2:z:0,layer_normalization/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2#
!layer_normalization/Reshape/shape�
layer_normalization/ReshapeReshapedense_2/Relu:activations:0*layer_normalization/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2
layer_normalization/Reshape�
layer_normalization/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2!
layer_normalization/ones/Less/y�
layer_normalization/ones/LessLesslayer_normalization/mul_1:z:0(layer_normalization/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_normalization/ones/Less�
layer_normalization/ones/packedPacklayer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:2!
layer_normalization/ones/packed�
layer_normalization/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2 
layer_normalization/ones/Const�
layer_normalization/onesFill(layer_normalization/ones/packed:output:0'layer_normalization/ones/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization/ones�
 layer_normalization/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2"
 layer_normalization/zeros/Less/y�
layer_normalization/zeros/LessLesslayer_normalization/mul_1:z:0)layer_normalization/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
layer_normalization/zeros/Less�
 layer_normalization/zeros/packedPacklayer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:2"
 layer_normalization/zeros/packed�
layer_normalization/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
layer_normalization/zeros/Const�
layer_normalization/zerosFill)layer_normalization/zeros/packed:output:0(layer_normalization/zeros/Const:output:0*
T0*#
_output_shapes
:���������2
layer_normalization/zerosy
layer_normalization/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization/Const}
layer_normalization/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization/Const_1�
$layer_normalization/FusedBatchNormV3FusedBatchNormV3$layer_normalization/Reshape:output:0!layer_normalization/ones:output:0"layer_normalization/zeros:output:0"layer_normalization/Const:output:0$layer_normalization/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:2&
$layer_normalization/FusedBatchNormV3�
layer_normalization/Reshape_1Reshape(layer_normalization/FusedBatchNormV3:y:0"layer_normalization/Shape:output:0*
T0*+
_output_shapes
:���������dP2
layer_normalization/Reshape_1�
(layer_normalization/mul_3/ReadVariableOpReadVariableOp1layer_normalization_mul_3_readvariableop_resource*
_output_shapes
:P*
dtype02*
(layer_normalization/mul_3/ReadVariableOp�
layer_normalization/mul_3Mul&layer_normalization/Reshape_1:output:00layer_normalization/mul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
layer_normalization/mul_3�
&layer_normalization/add/ReadVariableOpReadVariableOp/layer_normalization_add_readvariableop_resource*
_output_shapes
:P*
dtype02(
&layer_normalization/add/ReadVariableOp�
layer_normalization/addAddV2layer_normalization/mul_3:z:0.layer_normalization/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
layer_normalization/add�
conv1d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_1/Pad/paddings�
conv1d_1/PadPadlayer_normalization/add:z:0conv1d_1/Pad/paddings:output:0*
T0*+
_output_shapes
:���������hP2
conv1d_1/Pad�
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_1/conv1d/ExpandDims/dim�
conv1d_1/conv1d/ExpandDims
ExpandDimsconv1d_1/Pad:output:0'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2
conv1d_1/conv1d/ExpandDims�
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dim�
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2
conv1d_1/conv1d/ExpandDims_1�
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2
conv1d_1/conv1d�
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2
conv1d_1/conv1d/Squeeze�
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02!
conv1d_1/BiasAdd/ReadVariableOp�
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
conv1d_1/BiasAddw
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
conv1d_1/Relu�
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02"
 dense_3/Tensordot/ReadVariableOpz
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_3/Tensordot/axes�
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_3/Tensordot/free}
dense_3/Tensordot/ShapeShapeconv1d_1/Relu:activations:0*
T0*
_output_shapes
:2
dense_3/Tensordot/Shape�
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/GatherV2/axis�
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2�
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_3/Tensordot/GatherV2_1/axis�
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2_1|
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const�
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod�
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const_1�
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod_1�
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_3/Tensordot/concat/axis�
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat�
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/stack�
dense_3/Tensordot/transpose	Transposeconv1d_1/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_3/Tensordot/transpose�
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_3/Tensordot/Reshape�
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
dense_3/Tensordot/MatMul�
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
dense_3/Tensordot/Const_2�
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/concat_1/axis�
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat_1�
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
dense_3/Tensordot�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
dense_3/BiasAddt
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
dense_3/Relu�
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes

:P*
dtype02"
 dense_4/Tensordot/ReadVariableOpz
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/axes�
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_4/Tensordot/free|
dense_4/Tensordot/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:2
dense_4/Tensordot/Shape�
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/GatherV2/axis�
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2�
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_4/Tensordot/GatherV2_1/axis�
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2_1|
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const�
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod�
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const_1�
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod_1�
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_4/Tensordot/concat/axis�
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/stack�
dense_4/Tensordot/transpose	Transposedense_3/Relu:activations:0!dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
dense_4/Tensordot/transpose�
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_4/Tensordot/Reshape�
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_4/Tensordot/MatMul�
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/Const_2�
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/concat_1/axis�
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat_1�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d2
dense_4/Tensordot�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d2
dense_4/BiasAdd�
)audio_voice_mask/Tensordot/ReadVariableOpReadVariableOp2audio_voice_mask_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02+
)audio_voice_mask/Tensordot/ReadVariableOp�
audio_voice_mask/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
audio_voice_mask/Tensordot/axes�
audio_voice_mask/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
audio_voice_mask/Tensordot/free�
 audio_voice_mask/Tensordot/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:2"
 audio_voice_mask/Tensordot/Shape�
(audio_voice_mask/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(audio_voice_mask/Tensordot/GatherV2/axis�
#audio_voice_mask/Tensordot/GatherV2GatherV2)audio_voice_mask/Tensordot/Shape:output:0(audio_voice_mask/Tensordot/free:output:01audio_voice_mask/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#audio_voice_mask/Tensordot/GatherV2�
*audio_voice_mask/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*audio_voice_mask/Tensordot/GatherV2_1/axis�
%audio_voice_mask/Tensordot/GatherV2_1GatherV2)audio_voice_mask/Tensordot/Shape:output:0(audio_voice_mask/Tensordot/axes:output:03audio_voice_mask/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%audio_voice_mask/Tensordot/GatherV2_1�
 audio_voice_mask/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 audio_voice_mask/Tensordot/Const�
audio_voice_mask/Tensordot/ProdProd,audio_voice_mask/Tensordot/GatherV2:output:0)audio_voice_mask/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
audio_voice_mask/Tensordot/Prod�
"audio_voice_mask/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"audio_voice_mask/Tensordot/Const_1�
!audio_voice_mask/Tensordot/Prod_1Prod.audio_voice_mask/Tensordot/GatherV2_1:output:0+audio_voice_mask/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!audio_voice_mask/Tensordot/Prod_1�
&audio_voice_mask/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&audio_voice_mask/Tensordot/concat/axis�
!audio_voice_mask/Tensordot/concatConcatV2(audio_voice_mask/Tensordot/free:output:0(audio_voice_mask/Tensordot/axes:output:0/audio_voice_mask/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!audio_voice_mask/Tensordot/concat�
 audio_voice_mask/Tensordot/stackPack(audio_voice_mask/Tensordot/Prod:output:0*audio_voice_mask/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 audio_voice_mask/Tensordot/stack�
$audio_voice_mask/Tensordot/transpose	Transposedense_3/Relu:activations:0*audio_voice_mask/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2&
$audio_voice_mask/Tensordot/transpose�
"audio_voice_mask/Tensordot/ReshapeReshape(audio_voice_mask/Tensordot/transpose:y:0)audio_voice_mask/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2$
"audio_voice_mask/Tensordot/Reshape�
!audio_voice_mask/Tensordot/MatMulMatMul+audio_voice_mask/Tensordot/Reshape:output:01audio_voice_mask/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2#
!audio_voice_mask/Tensordot/MatMul�
"audio_voice_mask/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2$
"audio_voice_mask/Tensordot/Const_2�
(audio_voice_mask/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(audio_voice_mask/Tensordot/concat_1/axis�
#audio_voice_mask/Tensordot/concat_1ConcatV2,audio_voice_mask/Tensordot/GatherV2:output:0+audio_voice_mask/Tensordot/Const_2:output:01audio_voice_mask/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#audio_voice_mask/Tensordot/concat_1�
audio_voice_mask/TensordotReshape+audio_voice_mask/Tensordot/MatMul:product:0,audio_voice_mask/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
audio_voice_mask/Tensordot�
'audio_voice_mask/BiasAdd/ReadVariableOpReadVariableOp0audio_voice_mask_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02)
'audio_voice_mask/BiasAdd/ReadVariableOp�
audio_voice_mask/BiasAddBiasAdd#audio_voice_mask/Tensordot:output:0/audio_voice_mask/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
audio_voice_mask/BiasAddr
mulMulinputs!audio_voice_mask/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
mul�
IdentityIdentitydense_4/BiasAdd:output:0(^audio_voice_mask/BiasAdd/ReadVariableOp*^audio_voice_mask/Tensordot/ReadVariableOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp'^layer_normalization/add/ReadVariableOp)^layer_normalization/mul_3/ReadVariableOp*
T0*+
_output_shapes
:���������d2

Identity�

Identity_1Identitymul:z:0(^audio_voice_mask/BiasAdd/ReadVariableOp*^audio_voice_mask/Tensordot/ReadVariableOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp'^layer_normalization/add/ReadVariableOp)^layer_normalization/mul_3/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������dP: : : : : : : : : : : : : : : : : : 2R
'audio_voice_mask/BiasAdd/ReadVariableOp'audio_voice_mask/BiasAdd/ReadVariableOp2V
)audio_voice_mask/Tensordot/ReadVariableOp)audio_voice_mask/Tensordot/ReadVariableOp2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2P
&layer_normalization/add/ReadVariableOp&layer_normalization/add/ReadVariableOp2T
(layer_normalization/mul_3/ReadVariableOp(layer_normalization/mul_3/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
� 
�
A__inference_dense_2_layer_call_and_return_conditional_losses_3029

inputs3
!tensordot_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
� 
�
A__inference_dense_4_layer_call_and_return_conditional_losses_3168

inputs3
!tensordot_readvariableop_resource:P-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:P*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
%__inference_conv1d_layer_call_fn_2904

inputs
unknown:PP
	unknown_0:P
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *H
fCRA
?__inference_conv1d_layer_call_and_return_conditional_losses_8632
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
� 
�
J__inference_audio_voice_mask_layer_call_and_return_conditional_losses_1090

inputs3
!tensordot_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
2__inference_layer_normalization_layer_call_fn_3078

inputs
unknown:P
	unknown_0:P
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *U
fPRN
L__inference_layer_normalization_layer_call_and_return_conditional_losses_9572
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
&__inference_dense_2_layer_call_fn_2998

inputs
unknown:PP
	unknown_0:P
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_9002
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
$__inference_dense_layer_call_fn_2865

inputs
unknown:PP
	unknown_0:P
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_8022
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������dP2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dP: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
��
�
__inference__wrapped_model_764
input_1H
6online_cnn_vad_dense_tensordot_readvariableop_resource:PPB
4online_cnn_vad_dense_biasadd_readvariableop_resource:PJ
8online_cnn_vad_dense_1_tensordot_readvariableop_resource:PPD
6online_cnn_vad_dense_1_biasadd_readvariableop_resource:PW
Aonline_cnn_vad_conv1d_conv1d_expanddims_1_readvariableop_resource:PPC
5online_cnn_vad_conv1d_biasadd_readvariableop_resource:PJ
8online_cnn_vad_dense_2_tensordot_readvariableop_resource:PPD
6online_cnn_vad_dense_2_biasadd_readvariableop_resource:PN
@online_cnn_vad_layer_normalization_mul_3_readvariableop_resource:PL
>online_cnn_vad_layer_normalization_add_readvariableop_resource:PY
Conline_cnn_vad_conv1d_1_conv1d_expanddims_1_readvariableop_resource:PPE
7online_cnn_vad_conv1d_1_biasadd_readvariableop_resource:PJ
8online_cnn_vad_dense_3_tensordot_readvariableop_resource:PPD
6online_cnn_vad_dense_3_biasadd_readvariableop_resource:PJ
8online_cnn_vad_dense_4_tensordot_readvariableop_resource:PD
6online_cnn_vad_dense_4_biasadd_readvariableop_resource:S
Aonline_cnn_vad_audio_voice_mask_tensordot_readvariableop_resource:PPM
?online_cnn_vad_audio_voice_mask_biasadd_readvariableop_resource:P
identity

identity_1��6online_cnn_vad/audio_voice_mask/BiasAdd/ReadVariableOp�8online_cnn_vad/audio_voice_mask/Tensordot/ReadVariableOp�,online_cnn_vad/conv1d/BiasAdd/ReadVariableOp�8online_cnn_vad/conv1d/conv1d/ExpandDims_1/ReadVariableOp�.online_cnn_vad/conv1d_1/BiasAdd/ReadVariableOp�:online_cnn_vad/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�+online_cnn_vad/dense/BiasAdd/ReadVariableOp�-online_cnn_vad/dense/Tensordot/ReadVariableOp�-online_cnn_vad/dense_1/BiasAdd/ReadVariableOp�/online_cnn_vad/dense_1/Tensordot/ReadVariableOp�-online_cnn_vad/dense_2/BiasAdd/ReadVariableOp�/online_cnn_vad/dense_2/Tensordot/ReadVariableOp�-online_cnn_vad/dense_3/BiasAdd/ReadVariableOp�/online_cnn_vad/dense_3/Tensordot/ReadVariableOp�-online_cnn_vad/dense_4/BiasAdd/ReadVariableOp�/online_cnn_vad/dense_4/Tensordot/ReadVariableOp�5online_cnn_vad/layer_normalization/add/ReadVariableOp�7online_cnn_vad/layer_normalization/mul_3/ReadVariableOp�
-online_cnn_vad/dense/Tensordot/ReadVariableOpReadVariableOp6online_cnn_vad_dense_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02/
-online_cnn_vad/dense/Tensordot/ReadVariableOp�
#online_cnn_vad/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#online_cnn_vad/dense/Tensordot/axes�
#online_cnn_vad/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#online_cnn_vad/dense/Tensordot/free�
$online_cnn_vad/dense/Tensordot/ShapeShapeinput_1*
T0*
_output_shapes
:2&
$online_cnn_vad/dense/Tensordot/Shape�
,online_cnn_vad/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,online_cnn_vad/dense/Tensordot/GatherV2/axis�
'online_cnn_vad/dense/Tensordot/GatherV2GatherV2-online_cnn_vad/dense/Tensordot/Shape:output:0,online_cnn_vad/dense/Tensordot/free:output:05online_cnn_vad/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'online_cnn_vad/dense/Tensordot/GatherV2�
.online_cnn_vad/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.online_cnn_vad/dense/Tensordot/GatherV2_1/axis�
)online_cnn_vad/dense/Tensordot/GatherV2_1GatherV2-online_cnn_vad/dense/Tensordot/Shape:output:0,online_cnn_vad/dense/Tensordot/axes:output:07online_cnn_vad/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)online_cnn_vad/dense/Tensordot/GatherV2_1�
$online_cnn_vad/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$online_cnn_vad/dense/Tensordot/Const�
#online_cnn_vad/dense/Tensordot/ProdProd0online_cnn_vad/dense/Tensordot/GatherV2:output:0-online_cnn_vad/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#online_cnn_vad/dense/Tensordot/Prod�
&online_cnn_vad/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&online_cnn_vad/dense/Tensordot/Const_1�
%online_cnn_vad/dense/Tensordot/Prod_1Prod2online_cnn_vad/dense/Tensordot/GatherV2_1:output:0/online_cnn_vad/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%online_cnn_vad/dense/Tensordot/Prod_1�
*online_cnn_vad/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*online_cnn_vad/dense/Tensordot/concat/axis�
%online_cnn_vad/dense/Tensordot/concatConcatV2,online_cnn_vad/dense/Tensordot/free:output:0,online_cnn_vad/dense/Tensordot/axes:output:03online_cnn_vad/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%online_cnn_vad/dense/Tensordot/concat�
$online_cnn_vad/dense/Tensordot/stackPack,online_cnn_vad/dense/Tensordot/Prod:output:0.online_cnn_vad/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$online_cnn_vad/dense/Tensordot/stack�
(online_cnn_vad/dense/Tensordot/transpose	Transposeinput_1.online_cnn_vad/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2*
(online_cnn_vad/dense/Tensordot/transpose�
&online_cnn_vad/dense/Tensordot/ReshapeReshape,online_cnn_vad/dense/Tensordot/transpose:y:0-online_cnn_vad/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2(
&online_cnn_vad/dense/Tensordot/Reshape�
%online_cnn_vad/dense/Tensordot/MatMulMatMul/online_cnn_vad/dense/Tensordot/Reshape:output:05online_cnn_vad/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2'
%online_cnn_vad/dense/Tensordot/MatMul�
&online_cnn_vad/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2(
&online_cnn_vad/dense/Tensordot/Const_2�
,online_cnn_vad/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,online_cnn_vad/dense/Tensordot/concat_1/axis�
'online_cnn_vad/dense/Tensordot/concat_1ConcatV20online_cnn_vad/dense/Tensordot/GatherV2:output:0/online_cnn_vad/dense/Tensordot/Const_2:output:05online_cnn_vad/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'online_cnn_vad/dense/Tensordot/concat_1�
online_cnn_vad/dense/TensordotReshape/online_cnn_vad/dense/Tensordot/MatMul:product:00online_cnn_vad/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2 
online_cnn_vad/dense/Tensordot�
+online_cnn_vad/dense/BiasAdd/ReadVariableOpReadVariableOp4online_cnn_vad_dense_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02-
+online_cnn_vad/dense/BiasAdd/ReadVariableOp�
online_cnn_vad/dense/BiasAddBiasAdd'online_cnn_vad/dense/Tensordot:output:03online_cnn_vad/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
online_cnn_vad/dense/BiasAdd�
/online_cnn_vad/dense_1/Tensordot/ReadVariableOpReadVariableOp8online_cnn_vad_dense_1_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype021
/online_cnn_vad/dense_1/Tensordot/ReadVariableOp�
%online_cnn_vad/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%online_cnn_vad/dense_1/Tensordot/axes�
%online_cnn_vad/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2'
%online_cnn_vad/dense_1/Tensordot/free�
&online_cnn_vad/dense_1/Tensordot/ShapeShape%online_cnn_vad/dense/BiasAdd:output:0*
T0*
_output_shapes
:2(
&online_cnn_vad/dense_1/Tensordot/Shape�
.online_cnn_vad/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.online_cnn_vad/dense_1/Tensordot/GatherV2/axis�
)online_cnn_vad/dense_1/Tensordot/GatherV2GatherV2/online_cnn_vad/dense_1/Tensordot/Shape:output:0.online_cnn_vad/dense_1/Tensordot/free:output:07online_cnn_vad/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)online_cnn_vad/dense_1/Tensordot/GatherV2�
0online_cnn_vad/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0online_cnn_vad/dense_1/Tensordot/GatherV2_1/axis�
+online_cnn_vad/dense_1/Tensordot/GatherV2_1GatherV2/online_cnn_vad/dense_1/Tensordot/Shape:output:0.online_cnn_vad/dense_1/Tensordot/axes:output:09online_cnn_vad/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+online_cnn_vad/dense_1/Tensordot/GatherV2_1�
&online_cnn_vad/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&online_cnn_vad/dense_1/Tensordot/Const�
%online_cnn_vad/dense_1/Tensordot/ProdProd2online_cnn_vad/dense_1/Tensordot/GatherV2:output:0/online_cnn_vad/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%online_cnn_vad/dense_1/Tensordot/Prod�
(online_cnn_vad/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(online_cnn_vad/dense_1/Tensordot/Const_1�
'online_cnn_vad/dense_1/Tensordot/Prod_1Prod4online_cnn_vad/dense_1/Tensordot/GatherV2_1:output:01online_cnn_vad/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'online_cnn_vad/dense_1/Tensordot/Prod_1�
,online_cnn_vad/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,online_cnn_vad/dense_1/Tensordot/concat/axis�
'online_cnn_vad/dense_1/Tensordot/concatConcatV2.online_cnn_vad/dense_1/Tensordot/free:output:0.online_cnn_vad/dense_1/Tensordot/axes:output:05online_cnn_vad/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'online_cnn_vad/dense_1/Tensordot/concat�
&online_cnn_vad/dense_1/Tensordot/stackPack.online_cnn_vad/dense_1/Tensordot/Prod:output:00online_cnn_vad/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&online_cnn_vad/dense_1/Tensordot/stack�
*online_cnn_vad/dense_1/Tensordot/transpose	Transpose%online_cnn_vad/dense/BiasAdd:output:00online_cnn_vad/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2,
*online_cnn_vad/dense_1/Tensordot/transpose�
(online_cnn_vad/dense_1/Tensordot/ReshapeReshape.online_cnn_vad/dense_1/Tensordot/transpose:y:0/online_cnn_vad/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2*
(online_cnn_vad/dense_1/Tensordot/Reshape�
'online_cnn_vad/dense_1/Tensordot/MatMulMatMul1online_cnn_vad/dense_1/Tensordot/Reshape:output:07online_cnn_vad/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2)
'online_cnn_vad/dense_1/Tensordot/MatMul�
(online_cnn_vad/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2*
(online_cnn_vad/dense_1/Tensordot/Const_2�
.online_cnn_vad/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.online_cnn_vad/dense_1/Tensordot/concat_1/axis�
)online_cnn_vad/dense_1/Tensordot/concat_1ConcatV22online_cnn_vad/dense_1/Tensordot/GatherV2:output:01online_cnn_vad/dense_1/Tensordot/Const_2:output:07online_cnn_vad/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)online_cnn_vad/dense_1/Tensordot/concat_1�
 online_cnn_vad/dense_1/TensordotReshape1online_cnn_vad/dense_1/Tensordot/MatMul:product:02online_cnn_vad/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2"
 online_cnn_vad/dense_1/Tensordot�
-online_cnn_vad/dense_1/BiasAdd/ReadVariableOpReadVariableOp6online_cnn_vad_dense_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02/
-online_cnn_vad/dense_1/BiasAdd/ReadVariableOp�
online_cnn_vad/dense_1/BiasAddBiasAdd)online_cnn_vad/dense_1/Tensordot:output:05online_cnn_vad/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2 
online_cnn_vad/dense_1/BiasAdd�
online_cnn_vad/dense_1/ReluRelu'online_cnn_vad/dense_1/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
online_cnn_vad/dense_1/Relu�
"online_cnn_vad/conv1d/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2$
"online_cnn_vad/conv1d/Pad/paddings�
online_cnn_vad/conv1d/PadPad)online_cnn_vad/dense_1/Relu:activations:0+online_cnn_vad/conv1d/Pad/paddings:output:0*
T0*+
_output_shapes
:���������hP2
online_cnn_vad/conv1d/Pad�
+online_cnn_vad/conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2-
+online_cnn_vad/conv1d/conv1d/ExpandDims/dim�
'online_cnn_vad/conv1d/conv1d/ExpandDims
ExpandDims"online_cnn_vad/conv1d/Pad:output:04online_cnn_vad/conv1d/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2)
'online_cnn_vad/conv1d/conv1d/ExpandDims�
8online_cnn_vad/conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAonline_cnn_vad_conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02:
8online_cnn_vad/conv1d/conv1d/ExpandDims_1/ReadVariableOp�
-online_cnn_vad/conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-online_cnn_vad/conv1d/conv1d/ExpandDims_1/dim�
)online_cnn_vad/conv1d/conv1d/ExpandDims_1
ExpandDims@online_cnn_vad/conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:06online_cnn_vad/conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2+
)online_cnn_vad/conv1d/conv1d/ExpandDims_1�
online_cnn_vad/conv1d/conv1dConv2D0online_cnn_vad/conv1d/conv1d/ExpandDims:output:02online_cnn_vad/conv1d/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2
online_cnn_vad/conv1d/conv1d�
$online_cnn_vad/conv1d/conv1d/SqueezeSqueeze%online_cnn_vad/conv1d/conv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2&
$online_cnn_vad/conv1d/conv1d/Squeeze�
,online_cnn_vad/conv1d/BiasAdd/ReadVariableOpReadVariableOp5online_cnn_vad_conv1d_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02.
,online_cnn_vad/conv1d/BiasAdd/ReadVariableOp�
online_cnn_vad/conv1d/BiasAddBiasAdd-online_cnn_vad/conv1d/conv1d/Squeeze:output:04online_cnn_vad/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2
online_cnn_vad/conv1d/BiasAdd�
online_cnn_vad/conv1d/ReluRelu&online_cnn_vad/conv1d/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
online_cnn_vad/conv1d/Relu�
/online_cnn_vad/dense_2/Tensordot/ReadVariableOpReadVariableOp8online_cnn_vad_dense_2_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype021
/online_cnn_vad/dense_2/Tensordot/ReadVariableOp�
%online_cnn_vad/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%online_cnn_vad/dense_2/Tensordot/axes�
%online_cnn_vad/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2'
%online_cnn_vad/dense_2/Tensordot/free�
&online_cnn_vad/dense_2/Tensordot/ShapeShape(online_cnn_vad/conv1d/Relu:activations:0*
T0*
_output_shapes
:2(
&online_cnn_vad/dense_2/Tensordot/Shape�
.online_cnn_vad/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.online_cnn_vad/dense_2/Tensordot/GatherV2/axis�
)online_cnn_vad/dense_2/Tensordot/GatherV2GatherV2/online_cnn_vad/dense_2/Tensordot/Shape:output:0.online_cnn_vad/dense_2/Tensordot/free:output:07online_cnn_vad/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)online_cnn_vad/dense_2/Tensordot/GatherV2�
0online_cnn_vad/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0online_cnn_vad/dense_2/Tensordot/GatherV2_1/axis�
+online_cnn_vad/dense_2/Tensordot/GatherV2_1GatherV2/online_cnn_vad/dense_2/Tensordot/Shape:output:0.online_cnn_vad/dense_2/Tensordot/axes:output:09online_cnn_vad/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+online_cnn_vad/dense_2/Tensordot/GatherV2_1�
&online_cnn_vad/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&online_cnn_vad/dense_2/Tensordot/Const�
%online_cnn_vad/dense_2/Tensordot/ProdProd2online_cnn_vad/dense_2/Tensordot/GatherV2:output:0/online_cnn_vad/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%online_cnn_vad/dense_2/Tensordot/Prod�
(online_cnn_vad/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(online_cnn_vad/dense_2/Tensordot/Const_1�
'online_cnn_vad/dense_2/Tensordot/Prod_1Prod4online_cnn_vad/dense_2/Tensordot/GatherV2_1:output:01online_cnn_vad/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'online_cnn_vad/dense_2/Tensordot/Prod_1�
,online_cnn_vad/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,online_cnn_vad/dense_2/Tensordot/concat/axis�
'online_cnn_vad/dense_2/Tensordot/concatConcatV2.online_cnn_vad/dense_2/Tensordot/free:output:0.online_cnn_vad/dense_2/Tensordot/axes:output:05online_cnn_vad/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'online_cnn_vad/dense_2/Tensordot/concat�
&online_cnn_vad/dense_2/Tensordot/stackPack.online_cnn_vad/dense_2/Tensordot/Prod:output:00online_cnn_vad/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&online_cnn_vad/dense_2/Tensordot/stack�
*online_cnn_vad/dense_2/Tensordot/transpose	Transpose(online_cnn_vad/conv1d/Relu:activations:00online_cnn_vad/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2,
*online_cnn_vad/dense_2/Tensordot/transpose�
(online_cnn_vad/dense_2/Tensordot/ReshapeReshape.online_cnn_vad/dense_2/Tensordot/transpose:y:0/online_cnn_vad/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2*
(online_cnn_vad/dense_2/Tensordot/Reshape�
'online_cnn_vad/dense_2/Tensordot/MatMulMatMul1online_cnn_vad/dense_2/Tensordot/Reshape:output:07online_cnn_vad/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2)
'online_cnn_vad/dense_2/Tensordot/MatMul�
(online_cnn_vad/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2*
(online_cnn_vad/dense_2/Tensordot/Const_2�
.online_cnn_vad/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.online_cnn_vad/dense_2/Tensordot/concat_1/axis�
)online_cnn_vad/dense_2/Tensordot/concat_1ConcatV22online_cnn_vad/dense_2/Tensordot/GatherV2:output:01online_cnn_vad/dense_2/Tensordot/Const_2:output:07online_cnn_vad/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)online_cnn_vad/dense_2/Tensordot/concat_1�
 online_cnn_vad/dense_2/TensordotReshape1online_cnn_vad/dense_2/Tensordot/MatMul:product:02online_cnn_vad/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2"
 online_cnn_vad/dense_2/Tensordot�
-online_cnn_vad/dense_2/BiasAdd/ReadVariableOpReadVariableOp6online_cnn_vad_dense_2_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02/
-online_cnn_vad/dense_2/BiasAdd/ReadVariableOp�
online_cnn_vad/dense_2/BiasAddBiasAdd)online_cnn_vad/dense_2/Tensordot:output:05online_cnn_vad/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2 
online_cnn_vad/dense_2/BiasAdd�
online_cnn_vad/dense_2/ReluRelu'online_cnn_vad/dense_2/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
online_cnn_vad/dense_2/Relu�
(online_cnn_vad/layer_normalization/ShapeShape)online_cnn_vad/dense_2/Relu:activations:0*
T0*
_output_shapes
:2*
(online_cnn_vad/layer_normalization/Shape�
6online_cnn_vad/layer_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6online_cnn_vad/layer_normalization/strided_slice/stack�
8online_cnn_vad/layer_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8online_cnn_vad/layer_normalization/strided_slice/stack_1�
8online_cnn_vad/layer_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8online_cnn_vad/layer_normalization/strided_slice/stack_2�
0online_cnn_vad/layer_normalization/strided_sliceStridedSlice1online_cnn_vad/layer_normalization/Shape:output:0?online_cnn_vad/layer_normalization/strided_slice/stack:output:0Aonline_cnn_vad/layer_normalization/strided_slice/stack_1:output:0Aonline_cnn_vad/layer_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0online_cnn_vad/layer_normalization/strided_slice�
(online_cnn_vad/layer_normalization/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2*
(online_cnn_vad/layer_normalization/mul/x�
&online_cnn_vad/layer_normalization/mulMul1online_cnn_vad/layer_normalization/mul/x:output:09online_cnn_vad/layer_normalization/strided_slice:output:0*
T0*
_output_shapes
: 2(
&online_cnn_vad/layer_normalization/mul�
8online_cnn_vad/layer_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8online_cnn_vad/layer_normalization/strided_slice_1/stack�
:online_cnn_vad/layer_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:online_cnn_vad/layer_normalization/strided_slice_1/stack_1�
:online_cnn_vad/layer_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:online_cnn_vad/layer_normalization/strided_slice_1/stack_2�
2online_cnn_vad/layer_normalization/strided_slice_1StridedSlice1online_cnn_vad/layer_normalization/Shape:output:0Aonline_cnn_vad/layer_normalization/strided_slice_1/stack:output:0Conline_cnn_vad/layer_normalization/strided_slice_1/stack_1:output:0Conline_cnn_vad/layer_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2online_cnn_vad/layer_normalization/strided_slice_1�
(online_cnn_vad/layer_normalization/mul_1Mul*online_cnn_vad/layer_normalization/mul:z:0;online_cnn_vad/layer_normalization/strided_slice_1:output:0*
T0*
_output_shapes
: 2*
(online_cnn_vad/layer_normalization/mul_1�
8online_cnn_vad/layer_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8online_cnn_vad/layer_normalization/strided_slice_2/stack�
:online_cnn_vad/layer_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:online_cnn_vad/layer_normalization/strided_slice_2/stack_1�
:online_cnn_vad/layer_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:online_cnn_vad/layer_normalization/strided_slice_2/stack_2�
2online_cnn_vad/layer_normalization/strided_slice_2StridedSlice1online_cnn_vad/layer_normalization/Shape:output:0Aonline_cnn_vad/layer_normalization/strided_slice_2/stack:output:0Conline_cnn_vad/layer_normalization/strided_slice_2/stack_1:output:0Conline_cnn_vad/layer_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2online_cnn_vad/layer_normalization/strided_slice_2�
*online_cnn_vad/layer_normalization/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :2,
*online_cnn_vad/layer_normalization/mul_2/x�
(online_cnn_vad/layer_normalization/mul_2Mul3online_cnn_vad/layer_normalization/mul_2/x:output:0;online_cnn_vad/layer_normalization/strided_slice_2:output:0*
T0*
_output_shapes
: 2*
(online_cnn_vad/layer_normalization/mul_2�
2online_cnn_vad/layer_normalization/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :24
2online_cnn_vad/layer_normalization/Reshape/shape/0�
2online_cnn_vad/layer_normalization/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :24
2online_cnn_vad/layer_normalization/Reshape/shape/3�
0online_cnn_vad/layer_normalization/Reshape/shapePack;online_cnn_vad/layer_normalization/Reshape/shape/0:output:0,online_cnn_vad/layer_normalization/mul_1:z:0,online_cnn_vad/layer_normalization/mul_2:z:0;online_cnn_vad/layer_normalization/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:22
0online_cnn_vad/layer_normalization/Reshape/shape�
*online_cnn_vad/layer_normalization/ReshapeReshape)online_cnn_vad/dense_2/Relu:activations:09online_cnn_vad/layer_normalization/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������2,
*online_cnn_vad/layer_normalization/Reshape�
.online_cnn_vad/layer_normalization/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�20
.online_cnn_vad/layer_normalization/ones/Less/y�
,online_cnn_vad/layer_normalization/ones/LessLess,online_cnn_vad/layer_normalization/mul_1:z:07online_cnn_vad/layer_normalization/ones/Less/y:output:0*
T0*
_output_shapes
: 2.
,online_cnn_vad/layer_normalization/ones/Less�
.online_cnn_vad/layer_normalization/ones/packedPack,online_cnn_vad/layer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:20
.online_cnn_vad/layer_normalization/ones/packed�
-online_cnn_vad/layer_normalization/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2/
-online_cnn_vad/layer_normalization/ones/Const�
'online_cnn_vad/layer_normalization/onesFill7online_cnn_vad/layer_normalization/ones/packed:output:06online_cnn_vad/layer_normalization/ones/Const:output:0*
T0*#
_output_shapes
:���������2)
'online_cnn_vad/layer_normalization/ones�
/online_cnn_vad/layer_normalization/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�21
/online_cnn_vad/layer_normalization/zeros/Less/y�
-online_cnn_vad/layer_normalization/zeros/LessLess,online_cnn_vad/layer_normalization/mul_1:z:08online_cnn_vad/layer_normalization/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-online_cnn_vad/layer_normalization/zeros/Less�
/online_cnn_vad/layer_normalization/zeros/packedPack,online_cnn_vad/layer_normalization/mul_1:z:0*
N*
T0*
_output_shapes
:21
/online_cnn_vad/layer_normalization/zeros/packed�
.online_cnn_vad/layer_normalization/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.online_cnn_vad/layer_normalization/zeros/Const�
(online_cnn_vad/layer_normalization/zerosFill8online_cnn_vad/layer_normalization/zeros/packed:output:07online_cnn_vad/layer_normalization/zeros/Const:output:0*
T0*#
_output_shapes
:���������2*
(online_cnn_vad/layer_normalization/zeros�
(online_cnn_vad/layer_normalization/ConstConst*
_output_shapes
: *
dtype0*
valueB 2*
(online_cnn_vad/layer_normalization/Const�
*online_cnn_vad/layer_normalization/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2,
*online_cnn_vad/layer_normalization/Const_1�
3online_cnn_vad/layer_normalization/FusedBatchNormV3FusedBatchNormV33online_cnn_vad/layer_normalization/Reshape:output:00online_cnn_vad/layer_normalization/ones:output:01online_cnn_vad/layer_normalization/zeros:output:01online_cnn_vad/layer_normalization/Const:output:03online_cnn_vad/layer_normalization/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"������������������:���������:���������:���������:���������:*
data_formatNCHW*
epsilon%o�:25
3online_cnn_vad/layer_normalization/FusedBatchNormV3�
,online_cnn_vad/layer_normalization/Reshape_1Reshape7online_cnn_vad/layer_normalization/FusedBatchNormV3:y:01online_cnn_vad/layer_normalization/Shape:output:0*
T0*+
_output_shapes
:���������dP2.
,online_cnn_vad/layer_normalization/Reshape_1�
7online_cnn_vad/layer_normalization/mul_3/ReadVariableOpReadVariableOp@online_cnn_vad_layer_normalization_mul_3_readvariableop_resource*
_output_shapes
:P*
dtype029
7online_cnn_vad/layer_normalization/mul_3/ReadVariableOp�
(online_cnn_vad/layer_normalization/mul_3Mul5online_cnn_vad/layer_normalization/Reshape_1:output:0?online_cnn_vad/layer_normalization/mul_3/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2*
(online_cnn_vad/layer_normalization/mul_3�
5online_cnn_vad/layer_normalization/add/ReadVariableOpReadVariableOp>online_cnn_vad_layer_normalization_add_readvariableop_resource*
_output_shapes
:P*
dtype027
5online_cnn_vad/layer_normalization/add/ReadVariableOp�
&online_cnn_vad/layer_normalization/addAddV2,online_cnn_vad/layer_normalization/mul_3:z:0=online_cnn_vad/layer_normalization/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2(
&online_cnn_vad/layer_normalization/add�
$online_cnn_vad/conv1d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2&
$online_cnn_vad/conv1d_1/Pad/paddings�
online_cnn_vad/conv1d_1/PadPad*online_cnn_vad/layer_normalization/add:z:0-online_cnn_vad/conv1d_1/Pad/paddings:output:0*
T0*+
_output_shapes
:���������hP2
online_cnn_vad/conv1d_1/Pad�
-online_cnn_vad/conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2/
-online_cnn_vad/conv1d_1/conv1d/ExpandDims/dim�
)online_cnn_vad/conv1d_1/conv1d/ExpandDims
ExpandDims$online_cnn_vad/conv1d_1/Pad:output:06online_cnn_vad/conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������hP2+
)online_cnn_vad/conv1d_1/conv1d/ExpandDims�
:online_cnn_vad/conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpConline_cnn_vad_conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:PP*
dtype02<
:online_cnn_vad/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp�
/online_cnn_vad/conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 21
/online_cnn_vad/conv1d_1/conv1d/ExpandDims_1/dim�
+online_cnn_vad/conv1d_1/conv1d/ExpandDims_1
ExpandDimsBonline_cnn_vad/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:08online_cnn_vad/conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:PP2-
+online_cnn_vad/conv1d_1/conv1d/ExpandDims_1�
online_cnn_vad/conv1d_1/conv1dConv2D2online_cnn_vad/conv1d_1/conv1d/ExpandDims:output:04online_cnn_vad/conv1d_1/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������dP*
paddingVALID*
strides
2 
online_cnn_vad/conv1d_1/conv1d�
&online_cnn_vad/conv1d_1/conv1d/SqueezeSqueeze'online_cnn_vad/conv1d_1/conv1d:output:0*
T0*+
_output_shapes
:���������dP*
squeeze_dims

���������2(
&online_cnn_vad/conv1d_1/conv1d/Squeeze�
.online_cnn_vad/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp7online_cnn_vad_conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype020
.online_cnn_vad/conv1d_1/BiasAdd/ReadVariableOp�
online_cnn_vad/conv1d_1/BiasAddBiasAdd/online_cnn_vad/conv1d_1/conv1d/Squeeze:output:06online_cnn_vad/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2!
online_cnn_vad/conv1d_1/BiasAdd�
online_cnn_vad/conv1d_1/ReluRelu(online_cnn_vad/conv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
online_cnn_vad/conv1d_1/Relu�
/online_cnn_vad/dense_3/Tensordot/ReadVariableOpReadVariableOp8online_cnn_vad_dense_3_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype021
/online_cnn_vad/dense_3/Tensordot/ReadVariableOp�
%online_cnn_vad/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%online_cnn_vad/dense_3/Tensordot/axes�
%online_cnn_vad/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2'
%online_cnn_vad/dense_3/Tensordot/free�
&online_cnn_vad/dense_3/Tensordot/ShapeShape*online_cnn_vad/conv1d_1/Relu:activations:0*
T0*
_output_shapes
:2(
&online_cnn_vad/dense_3/Tensordot/Shape�
.online_cnn_vad/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.online_cnn_vad/dense_3/Tensordot/GatherV2/axis�
)online_cnn_vad/dense_3/Tensordot/GatherV2GatherV2/online_cnn_vad/dense_3/Tensordot/Shape:output:0.online_cnn_vad/dense_3/Tensordot/free:output:07online_cnn_vad/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)online_cnn_vad/dense_3/Tensordot/GatherV2�
0online_cnn_vad/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0online_cnn_vad/dense_3/Tensordot/GatherV2_1/axis�
+online_cnn_vad/dense_3/Tensordot/GatherV2_1GatherV2/online_cnn_vad/dense_3/Tensordot/Shape:output:0.online_cnn_vad/dense_3/Tensordot/axes:output:09online_cnn_vad/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+online_cnn_vad/dense_3/Tensordot/GatherV2_1�
&online_cnn_vad/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&online_cnn_vad/dense_3/Tensordot/Const�
%online_cnn_vad/dense_3/Tensordot/ProdProd2online_cnn_vad/dense_3/Tensordot/GatherV2:output:0/online_cnn_vad/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%online_cnn_vad/dense_3/Tensordot/Prod�
(online_cnn_vad/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(online_cnn_vad/dense_3/Tensordot/Const_1�
'online_cnn_vad/dense_3/Tensordot/Prod_1Prod4online_cnn_vad/dense_3/Tensordot/GatherV2_1:output:01online_cnn_vad/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'online_cnn_vad/dense_3/Tensordot/Prod_1�
,online_cnn_vad/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,online_cnn_vad/dense_3/Tensordot/concat/axis�
'online_cnn_vad/dense_3/Tensordot/concatConcatV2.online_cnn_vad/dense_3/Tensordot/free:output:0.online_cnn_vad/dense_3/Tensordot/axes:output:05online_cnn_vad/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'online_cnn_vad/dense_3/Tensordot/concat�
&online_cnn_vad/dense_3/Tensordot/stackPack.online_cnn_vad/dense_3/Tensordot/Prod:output:00online_cnn_vad/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&online_cnn_vad/dense_3/Tensordot/stack�
*online_cnn_vad/dense_3/Tensordot/transpose	Transpose*online_cnn_vad/conv1d_1/Relu:activations:00online_cnn_vad/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2,
*online_cnn_vad/dense_3/Tensordot/transpose�
(online_cnn_vad/dense_3/Tensordot/ReshapeReshape.online_cnn_vad/dense_3/Tensordot/transpose:y:0/online_cnn_vad/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2*
(online_cnn_vad/dense_3/Tensordot/Reshape�
'online_cnn_vad/dense_3/Tensordot/MatMulMatMul1online_cnn_vad/dense_3/Tensordot/Reshape:output:07online_cnn_vad/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P2)
'online_cnn_vad/dense_3/Tensordot/MatMul�
(online_cnn_vad/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P2*
(online_cnn_vad/dense_3/Tensordot/Const_2�
.online_cnn_vad/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.online_cnn_vad/dense_3/Tensordot/concat_1/axis�
)online_cnn_vad/dense_3/Tensordot/concat_1ConcatV22online_cnn_vad/dense_3/Tensordot/GatherV2:output:01online_cnn_vad/dense_3/Tensordot/Const_2:output:07online_cnn_vad/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)online_cnn_vad/dense_3/Tensordot/concat_1�
 online_cnn_vad/dense_3/TensordotReshape1online_cnn_vad/dense_3/Tensordot/MatMul:product:02online_cnn_vad/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2"
 online_cnn_vad/dense_3/Tensordot�
-online_cnn_vad/dense_3/BiasAdd/ReadVariableOpReadVariableOp6online_cnn_vad_dense_3_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02/
-online_cnn_vad/dense_3/BiasAdd/ReadVariableOp�
online_cnn_vad/dense_3/BiasAddBiasAdd)online_cnn_vad/dense_3/Tensordot:output:05online_cnn_vad/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2 
online_cnn_vad/dense_3/BiasAdd�
online_cnn_vad/dense_3/ReluRelu'online_cnn_vad/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
online_cnn_vad/dense_3/Relu�
/online_cnn_vad/dense_4/Tensordot/ReadVariableOpReadVariableOp8online_cnn_vad_dense_4_tensordot_readvariableop_resource*
_output_shapes

:P*
dtype021
/online_cnn_vad/dense_4/Tensordot/ReadVariableOp�
%online_cnn_vad/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%online_cnn_vad/dense_4/Tensordot/axes�
%online_cnn_vad/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2'
%online_cnn_vad/dense_4/Tensordot/free�
&online_cnn_vad/dense_4/Tensordot/ShapeShape)online_cnn_vad/dense_3/Relu:activations:0*
T0*
_output_shapes
:2(
&online_cnn_vad/dense_4/Tensordot/Shape�
.online_cnn_vad/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.online_cnn_vad/dense_4/Tensordot/GatherV2/axis�
)online_cnn_vad/dense_4/Tensordot/GatherV2GatherV2/online_cnn_vad/dense_4/Tensordot/Shape:output:0.online_cnn_vad/dense_4/Tensordot/free:output:07online_cnn_vad/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)online_cnn_vad/dense_4/Tensordot/GatherV2�
0online_cnn_vad/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0online_cnn_vad/dense_4/Tensordot/GatherV2_1/axis�
+online_cnn_vad/dense_4/Tensordot/GatherV2_1GatherV2/online_cnn_vad/dense_4/Tensordot/Shape:output:0.online_cnn_vad/dense_4/Tensordot/axes:output:09online_cnn_vad/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+online_cnn_vad/dense_4/Tensordot/GatherV2_1�
&online_cnn_vad/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&online_cnn_vad/dense_4/Tensordot/Const�
%online_cnn_vad/dense_4/Tensordot/ProdProd2online_cnn_vad/dense_4/Tensordot/GatherV2:output:0/online_cnn_vad/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%online_cnn_vad/dense_4/Tensordot/Prod�
(online_cnn_vad/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(online_cnn_vad/dense_4/Tensordot/Const_1�
'online_cnn_vad/dense_4/Tensordot/Prod_1Prod4online_cnn_vad/dense_4/Tensordot/GatherV2_1:output:01online_cnn_vad/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'online_cnn_vad/dense_4/Tensordot/Prod_1�
,online_cnn_vad/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,online_cnn_vad/dense_4/Tensordot/concat/axis�
'online_cnn_vad/dense_4/Tensordot/concatConcatV2.online_cnn_vad/dense_4/Tensordot/free:output:0.online_cnn_vad/dense_4/Tensordot/axes:output:05online_cnn_vad/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'online_cnn_vad/dense_4/Tensordot/concat�
&online_cnn_vad/dense_4/Tensordot/stackPack.online_cnn_vad/dense_4/Tensordot/Prod:output:00online_cnn_vad/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&online_cnn_vad/dense_4/Tensordot/stack�
*online_cnn_vad/dense_4/Tensordot/transpose	Transpose)online_cnn_vad/dense_3/Relu:activations:00online_cnn_vad/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP2,
*online_cnn_vad/dense_4/Tensordot/transpose�
(online_cnn_vad/dense_4/Tensordot/ReshapeReshape.online_cnn_vad/dense_4/Tensordot/transpose:y:0/online_cnn_vad/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2*
(online_cnn_vad/dense_4/Tensordot/Reshape�
'online_cnn_vad/dense_4/Tensordot/MatMulMatMul1online_cnn_vad/dense_4/Tensordot/Reshape:output:07online_cnn_vad/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2)
'online_cnn_vad/dense_4/Tensordot/MatMul�
(online_cnn_vad/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(online_cnn_vad/dense_4/Tensordot/Const_2�
.online_cnn_vad/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.online_cnn_vad/dense_4/Tensordot/concat_1/axis�
)online_cnn_vad/dense_4/Tensordot/concat_1ConcatV22online_cnn_vad/dense_4/Tensordot/GatherV2:output:01online_cnn_vad/dense_4/Tensordot/Const_2:output:07online_cnn_vad/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)online_cnn_vad/dense_4/Tensordot/concat_1�
 online_cnn_vad/dense_4/TensordotReshape1online_cnn_vad/dense_4/Tensordot/MatMul:product:02online_cnn_vad/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d2"
 online_cnn_vad/dense_4/Tensordot�
-online_cnn_vad/dense_4/BiasAdd/ReadVariableOpReadVariableOp6online_cnn_vad_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-online_cnn_vad/dense_4/BiasAdd/ReadVariableOp�
online_cnn_vad/dense_4/BiasAddBiasAdd)online_cnn_vad/dense_4/Tensordot:output:05online_cnn_vad/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������d2 
online_cnn_vad/dense_4/BiasAdd�
8online_cnn_vad/audio_voice_mask/Tensordot/ReadVariableOpReadVariableOpAonline_cnn_vad_audio_voice_mask_tensordot_readvariableop_resource*
_output_shapes

:PP*
dtype02:
8online_cnn_vad/audio_voice_mask/Tensordot/ReadVariableOp�
.online_cnn_vad/audio_voice_mask/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:20
.online_cnn_vad/audio_voice_mask/Tensordot/axes�
.online_cnn_vad/audio_voice_mask/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       20
.online_cnn_vad/audio_voice_mask/Tensordot/free�
/online_cnn_vad/audio_voice_mask/Tensordot/ShapeShape)online_cnn_vad/dense_3/Relu:activations:0*
T0*
_output_shapes
:21
/online_cnn_vad/audio_voice_mask/Tensordot/Shape�
7online_cnn_vad/audio_voice_mask/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7online_cnn_vad/audio_voice_mask/Tensordot/GatherV2/axis�
2online_cnn_vad/audio_voice_mask/Tensordot/GatherV2GatherV28online_cnn_vad/audio_voice_mask/Tensordot/Shape:output:07online_cnn_vad/audio_voice_mask/Tensordot/free:output:0@online_cnn_vad/audio_voice_mask/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:24
2online_cnn_vad/audio_voice_mask/Tensordot/GatherV2�
9online_cnn_vad/audio_voice_mask/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9online_cnn_vad/audio_voice_mask/Tensordot/GatherV2_1/axis�
4online_cnn_vad/audio_voice_mask/Tensordot/GatherV2_1GatherV28online_cnn_vad/audio_voice_mask/Tensordot/Shape:output:07online_cnn_vad/audio_voice_mask/Tensordot/axes:output:0Bonline_cnn_vad/audio_voice_mask/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:26
4online_cnn_vad/audio_voice_mask/Tensordot/GatherV2_1�
/online_cnn_vad/audio_voice_mask/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/online_cnn_vad/audio_voice_mask/Tensordot/Const�
.online_cnn_vad/audio_voice_mask/Tensordot/ProdProd;online_cnn_vad/audio_voice_mask/Tensordot/GatherV2:output:08online_cnn_vad/audio_voice_mask/Tensordot/Const:output:0*
T0*
_output_shapes
: 20
.online_cnn_vad/audio_voice_mask/Tensordot/Prod�
1online_cnn_vad/audio_voice_mask/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 23
1online_cnn_vad/audio_voice_mask/Tensordot/Const_1�
0online_cnn_vad/audio_voice_mask/Tensordot/Prod_1Prod=online_cnn_vad/audio_voice_mask/Tensordot/GatherV2_1:output:0:online_cnn_vad/audio_voice_mask/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 22
0online_cnn_vad/audio_voice_mask/Tensordot/Prod_1�
5online_cnn_vad/audio_voice_mask/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5online_cnn_vad/audio_voice_mask/Tensordot/concat/axis�
0online_cnn_vad/audio_voice_mask/Tensordot/concatConcatV27online_cnn_vad/audio_voice_mask/Tensordot/free:output:07online_cnn_vad/audio_voice_mask/Tensordot/axes:output:0>online_cnn_vad/audio_voice_mask/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:22
0online_cnn_vad/audio_voice_mask/Tensordot/concat�
/online_cnn_vad/audio_voice_mask/Tensordot/stackPack7online_cnn_vad/audio_voice_mask/Tensordot/Prod:output:09online_cnn_vad/audio_voice_mask/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:21
/online_cnn_vad/audio_voice_mask/Tensordot/stack�
3online_cnn_vad/audio_voice_mask/Tensordot/transpose	Transpose)online_cnn_vad/dense_3/Relu:activations:09online_cnn_vad/audio_voice_mask/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������dP25
3online_cnn_vad/audio_voice_mask/Tensordot/transpose�
1online_cnn_vad/audio_voice_mask/Tensordot/ReshapeReshape7online_cnn_vad/audio_voice_mask/Tensordot/transpose:y:08online_cnn_vad/audio_voice_mask/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������23
1online_cnn_vad/audio_voice_mask/Tensordot/Reshape�
0online_cnn_vad/audio_voice_mask/Tensordot/MatMulMatMul:online_cnn_vad/audio_voice_mask/Tensordot/Reshape:output:0@online_cnn_vad/audio_voice_mask/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P22
0online_cnn_vad/audio_voice_mask/Tensordot/MatMul�
1online_cnn_vad/audio_voice_mask/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:P23
1online_cnn_vad/audio_voice_mask/Tensordot/Const_2�
7online_cnn_vad/audio_voice_mask/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7online_cnn_vad/audio_voice_mask/Tensordot/concat_1/axis�
2online_cnn_vad/audio_voice_mask/Tensordot/concat_1ConcatV2;online_cnn_vad/audio_voice_mask/Tensordot/GatherV2:output:0:online_cnn_vad/audio_voice_mask/Tensordot/Const_2:output:0@online_cnn_vad/audio_voice_mask/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:24
2online_cnn_vad/audio_voice_mask/Tensordot/concat_1�
)online_cnn_vad/audio_voice_mask/TensordotReshape:online_cnn_vad/audio_voice_mask/Tensordot/MatMul:product:0;online_cnn_vad/audio_voice_mask/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dP2+
)online_cnn_vad/audio_voice_mask/Tensordot�
6online_cnn_vad/audio_voice_mask/BiasAdd/ReadVariableOpReadVariableOp?online_cnn_vad_audio_voice_mask_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype028
6online_cnn_vad/audio_voice_mask/BiasAdd/ReadVariableOp�
'online_cnn_vad/audio_voice_mask/BiasAddBiasAdd2online_cnn_vad/audio_voice_mask/Tensordot:output:0>online_cnn_vad/audio_voice_mask/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dP2)
'online_cnn_vad/audio_voice_mask/BiasAdd�
online_cnn_vad/mulMulinput_10online_cnn_vad/audio_voice_mask/BiasAdd:output:0*
T0*+
_output_shapes
:���������dP2
online_cnn_vad/mul�
IdentityIdentity'online_cnn_vad/dense_4/BiasAdd:output:07^online_cnn_vad/audio_voice_mask/BiasAdd/ReadVariableOp9^online_cnn_vad/audio_voice_mask/Tensordot/ReadVariableOp-^online_cnn_vad/conv1d/BiasAdd/ReadVariableOp9^online_cnn_vad/conv1d/conv1d/ExpandDims_1/ReadVariableOp/^online_cnn_vad/conv1d_1/BiasAdd/ReadVariableOp;^online_cnn_vad/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp,^online_cnn_vad/dense/BiasAdd/ReadVariableOp.^online_cnn_vad/dense/Tensordot/ReadVariableOp.^online_cnn_vad/dense_1/BiasAdd/ReadVariableOp0^online_cnn_vad/dense_1/Tensordot/ReadVariableOp.^online_cnn_vad/dense_2/BiasAdd/ReadVariableOp0^online_cnn_vad/dense_2/Tensordot/ReadVariableOp.^online_cnn_vad/dense_3/BiasAdd/ReadVariableOp0^online_cnn_vad/dense_3/Tensordot/ReadVariableOp.^online_cnn_vad/dense_4/BiasAdd/ReadVariableOp0^online_cnn_vad/dense_4/Tensordot/ReadVariableOp6^online_cnn_vad/layer_normalization/add/ReadVariableOp8^online_cnn_vad/layer_normalization/mul_3/ReadVariableOp*
T0*+
_output_shapes
:���������d2

Identity�

Identity_1Identityonline_cnn_vad/mul:z:07^online_cnn_vad/audio_voice_mask/BiasAdd/ReadVariableOp9^online_cnn_vad/audio_voice_mask/Tensordot/ReadVariableOp-^online_cnn_vad/conv1d/BiasAdd/ReadVariableOp9^online_cnn_vad/conv1d/conv1d/ExpandDims_1/ReadVariableOp/^online_cnn_vad/conv1d_1/BiasAdd/ReadVariableOp;^online_cnn_vad/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp,^online_cnn_vad/dense/BiasAdd/ReadVariableOp.^online_cnn_vad/dense/Tensordot/ReadVariableOp.^online_cnn_vad/dense_1/BiasAdd/ReadVariableOp0^online_cnn_vad/dense_1/Tensordot/ReadVariableOp.^online_cnn_vad/dense_2/BiasAdd/ReadVariableOp0^online_cnn_vad/dense_2/Tensordot/ReadVariableOp.^online_cnn_vad/dense_3/BiasAdd/ReadVariableOp0^online_cnn_vad/dense_3/Tensordot/ReadVariableOp.^online_cnn_vad/dense_4/BiasAdd/ReadVariableOp0^online_cnn_vad/dense_4/Tensordot/ReadVariableOp6^online_cnn_vad/layer_normalization/add/ReadVariableOp8^online_cnn_vad/layer_normalization/mul_3/ReadVariableOp*
T0*+
_output_shapes
:���������dP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������dP: : : : : : : : : : : : : : : : : : 2p
6online_cnn_vad/audio_voice_mask/BiasAdd/ReadVariableOp6online_cnn_vad/audio_voice_mask/BiasAdd/ReadVariableOp2t
8online_cnn_vad/audio_voice_mask/Tensordot/ReadVariableOp8online_cnn_vad/audio_voice_mask/Tensordot/ReadVariableOp2\
,online_cnn_vad/conv1d/BiasAdd/ReadVariableOp,online_cnn_vad/conv1d/BiasAdd/ReadVariableOp2t
8online_cnn_vad/conv1d/conv1d/ExpandDims_1/ReadVariableOp8online_cnn_vad/conv1d/conv1d/ExpandDims_1/ReadVariableOp2`
.online_cnn_vad/conv1d_1/BiasAdd/ReadVariableOp.online_cnn_vad/conv1d_1/BiasAdd/ReadVariableOp2x
:online_cnn_vad/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:online_cnn_vad/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2Z
+online_cnn_vad/dense/BiasAdd/ReadVariableOp+online_cnn_vad/dense/BiasAdd/ReadVariableOp2^
-online_cnn_vad/dense/Tensordot/ReadVariableOp-online_cnn_vad/dense/Tensordot/ReadVariableOp2^
-online_cnn_vad/dense_1/BiasAdd/ReadVariableOp-online_cnn_vad/dense_1/BiasAdd/ReadVariableOp2b
/online_cnn_vad/dense_1/Tensordot/ReadVariableOp/online_cnn_vad/dense_1/Tensordot/ReadVariableOp2^
-online_cnn_vad/dense_2/BiasAdd/ReadVariableOp-online_cnn_vad/dense_2/BiasAdd/ReadVariableOp2b
/online_cnn_vad/dense_2/Tensordot/ReadVariableOp/online_cnn_vad/dense_2/Tensordot/ReadVariableOp2^
-online_cnn_vad/dense_3/BiasAdd/ReadVariableOp-online_cnn_vad/dense_3/BiasAdd/ReadVariableOp2b
/online_cnn_vad/dense_3/Tensordot/ReadVariableOp/online_cnn_vad/dense_3/Tensordot/ReadVariableOp2^
-online_cnn_vad/dense_4/BiasAdd/ReadVariableOp-online_cnn_vad/dense_4/BiasAdd/ReadVariableOp2b
/online_cnn_vad/dense_4/Tensordot/ReadVariableOp/online_cnn_vad/dense_4/Tensordot/ReadVariableOp2n
5online_cnn_vad/layer_normalization/add/ReadVariableOp5online_cnn_vad/layer_normalization/add/ReadVariableOp2r
7online_cnn_vad/layer_normalization/mul_3/ReadVariableOp7online_cnn_vad/layer_normalization/mul_3/ReadVariableOp:T P
+
_output_shapes
:���������dP
!
_user_specified_name	input_1"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
F
inputs<
serving_default_inputs:0������������������PI
output_0=
StatefulPartitionedCall:0������������������tensorflow/serving/predict:��
�
	embed
cnn1

dense1
cnn2

dense2

dense3
ln
fc
	fc3

trainable_variables
regularization_losses
	variables
	keras_api

signatures
x__call__
*y&call_and_return_all_conditional_losses
z_default_save_signature
{	inference"�
_tf_keras_model�{"name": "online_cnn_vad", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "CNN_VAD", "config": {"layer was saved without config": true}, "is_graph_network": false, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [1, 100, 80]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "CNN_VAD"}}
�

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
|__call__
*}&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 80, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 80}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 100, 80]}}
�	

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
~__call__
*&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "conv1d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 80, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 80}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 100, 80]}}
�

kernel
bias
trainable_variables
regularization_losses
	variables
 	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 80, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 80}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 100, 80]}}
�	

!kernel
"bias
#trainable_variables
$regularization_losses
%	variables
&	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "conv1d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d_1", "trainable": true, "dtype": "float32", "filters": 80, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 80}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 100, 80]}}
�

'kernel
(bias
)trainable_variables
*regularization_losses
+	variables
,	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 80, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 80}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 100, 80]}}
�

-kernel
.bias
/trainable_variables
0regularization_losses
1	variables
2	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 80, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 80}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 100, 80]}}
�
3axis
	4gamma
5beta
6trainable_variables
7regularization_losses
8	variables
9	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "layer_normalization", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LayerNormalization", "config": {"name": "layer_normalization", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 100, 80]}}
�

:kernel
;bias
<trainable_variables
=regularization_losses
>	variables
?	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 80}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 100, 80]}}
�

@kernel
Abias
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "audio_voice_mask", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "audio_voice_mask", "trainable": true, "dtype": "float32", "units": 80, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 80}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 100, 80]}}
�
0
1
2
3
4
5
!6
"7
'8
(9
-10
.11
412
513
:14
;15
@16
A17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
4
5
!6
"7
'8
(9
-10
.11
412
513
:14
;15
@16
A17"
trackable_list_wrapper
�

trainable_variables
Flayer_regularization_losses
regularization_losses
Glayer_metrics
	variables
Hnon_trainable_variables

Ilayers
Jmetrics
x__call__
z_default_save_signature
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
-:+PP2online_cnn_vad/dense/kernel
':%P2online_cnn_vad/dense/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trainable_variables
Klayer_regularization_losses
regularization_losses
Llayer_metrics
	variables
Mnon_trainable_variables

Nlayers
Ometrics
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
2:0PP2online_cnn_vad/conv1d/kernel
(:&P2online_cnn_vad/conv1d/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trainable_variables
Player_regularization_losses
regularization_losses
Qlayer_metrics
	variables
Rnon_trainable_variables

Slayers
Tmetrics
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
/:-PP2online_cnn_vad/dense_1/kernel
):'P2online_cnn_vad/dense_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trainable_variables
Ulayer_regularization_losses
regularization_losses
Vlayer_metrics
	variables
Wnon_trainable_variables

Xlayers
Ymetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
4:2PP2online_cnn_vad/conv1d_1/kernel
*:(P2online_cnn_vad/conv1d_1/bias
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
�
#trainable_variables
Zlayer_regularization_losses
$regularization_losses
[layer_metrics
%	variables
\non_trainable_variables

]layers
^metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
/:-PP2online_cnn_vad/dense_2/kernel
):'P2online_cnn_vad/dense_2/bias
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
�
)trainable_variables
_layer_regularization_losses
*regularization_losses
`layer_metrics
+	variables
anon_trainable_variables

blayers
cmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
/:-PP2online_cnn_vad/dense_3/kernel
):'P2online_cnn_vad/dense_3/bias
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
�
/trainable_variables
dlayer_regularization_losses
0regularization_losses
elayer_metrics
1	variables
fnon_trainable_variables

glayers
hmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
6:4P2(online_cnn_vad/layer_normalization/gamma
5:3P2'online_cnn_vad/layer_normalization/beta
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
�
6trainable_variables
ilayer_regularization_losses
7regularization_losses
jlayer_metrics
8	variables
knon_trainable_variables

llayers
mmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
/:-P2online_cnn_vad/dense_4/kernel
):'2online_cnn_vad/dense_4/bias
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
�
<trainable_variables
nlayer_regularization_losses
=regularization_losses
olayer_metrics
>	variables
pnon_trainable_variables

qlayers
rmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
8:6PP2&online_cnn_vad/audio_voice_mask/kernel
2:0P2$online_cnn_vad/audio_voice_mask/bias
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
�
Btrainable_variables
slayer_regularization_losses
Cregularization_losses
tlayer_metrics
D	variables
unon_trainable_variables

vlayers
wmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�2�
-__inference_online_cnn_vad_layer_call_fn_1555
-__inference_online_cnn_vad_layer_call_fn_1598
-__inference_online_cnn_vad_layer_call_fn_1641
-__inference_online_cnn_vad_layer_call_fn_1684�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_1924
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_2164
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_2404
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_2644�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
__inference__wrapped_model_764�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� **�'
%�"
input_1���������dP
�2�
__inference_inference_2856�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� **�'
%�"������������������P
�2�
$__inference_dense_layer_call_fn_2865�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
?__inference_dense_layer_call_and_return_conditional_losses_2895�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
%__inference_conv1d_layer_call_fn_2904�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
@__inference_conv1d_layer_call_and_return_conditional_losses_2922�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_1_layer_call_fn_2931�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_1_layer_call_and_return_conditional_losses_2962�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv1d_1_layer_call_fn_2971�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv1d_1_layer_call_and_return_conditional_losses_2989�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_2_layer_call_fn_2998�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_2_layer_call_and_return_conditional_losses_3029�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_3_layer_call_fn_3038�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_3_layer_call_and_return_conditional_losses_3069�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
2__inference_layer_normalization_layer_call_fn_3078�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
M__inference_layer_normalization_layer_call_and_return_conditional_losses_3129�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_4_layer_call_fn_3138�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_4_layer_call_and_return_conditional_losses_3168�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_audio_voice_mask_layer_call_fn_3177�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_audio_voice_mask_layer_call_and_return_conditional_losses_3207�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
!__inference_signature_wrapper_523inputs"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
__inference__wrapped_model_764�'(45!"-.:;@A4�1
*�'
%�"
input_1���������dP
� "k�h
2
output_1&�#
output_1���������d
2
output_2&�#
output_2���������dP�
J__inference_audio_voice_mask_layer_call_and_return_conditional_losses_3207d@A3�0
)�&
$�!
inputs���������dP
� ")�&
�
0���������dP
� �
/__inference_audio_voice_mask_layer_call_fn_3177W@A3�0
)�&
$�!
inputs���������dP
� "����������dP�
B__inference_conv1d_1_layer_call_and_return_conditional_losses_2989d!"3�0
)�&
$�!
inputs���������dP
� ")�&
�
0���������dP
� �
'__inference_conv1d_1_layer_call_fn_2971W!"3�0
)�&
$�!
inputs���������dP
� "����������dP�
@__inference_conv1d_layer_call_and_return_conditional_losses_2922d3�0
)�&
$�!
inputs���������dP
� ")�&
�
0���������dP
� �
%__inference_conv1d_layer_call_fn_2904W3�0
)�&
$�!
inputs���������dP
� "����������dP�
A__inference_dense_1_layer_call_and_return_conditional_losses_2962d3�0
)�&
$�!
inputs���������dP
� ")�&
�
0���������dP
� �
&__inference_dense_1_layer_call_fn_2931W3�0
)�&
$�!
inputs���������dP
� "����������dP�
A__inference_dense_2_layer_call_and_return_conditional_losses_3029d'(3�0
)�&
$�!
inputs���������dP
� ")�&
�
0���������dP
� �
&__inference_dense_2_layer_call_fn_2998W'(3�0
)�&
$�!
inputs���������dP
� "����������dP�
A__inference_dense_3_layer_call_and_return_conditional_losses_3069d-.3�0
)�&
$�!
inputs���������dP
� ")�&
�
0���������dP
� �
&__inference_dense_3_layer_call_fn_3038W-.3�0
)�&
$�!
inputs���������dP
� "����������dP�
A__inference_dense_4_layer_call_and_return_conditional_losses_3168d:;3�0
)�&
$�!
inputs���������dP
� ")�&
�
0���������d
� �
&__inference_dense_4_layer_call_fn_3138W:;3�0
)�&
$�!
inputs���������dP
� "����������d�
?__inference_dense_layer_call_and_return_conditional_losses_2895d3�0
)�&
$�!
inputs���������dP
� ")�&
�
0���������dP
� 
$__inference_dense_layer_call_fn_2865W3�0
)�&
$�!
inputs���������dP
� "����������dP�
__inference_inference_2856w'(45!"-.:;<�9
2�/
-�*
inputs������������������P
� "%�"�������������������
M__inference_layer_normalization_layer_call_and_return_conditional_losses_3129d453�0
)�&
$�!
inputs���������dP
� ")�&
�
0���������dP
� �
2__inference_layer_normalization_layer_call_fn_3078W453�0
)�&
$�!
inputs���������dP
� "����������dP�
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_1924�'(45!"-.:;@A7�4
-�*
$�!
inputs���������dP
p 
� "S�P
I�F
!�
0/0���������d
!�
0/1���������dP
� �
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_2164�'(45!"-.:;@A7�4
-�*
$�!
inputs���������dP
p
� "S�P
I�F
!�
0/0���������d
!�
0/1���������dP
� �
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_2404�'(45!"-.:;@A8�5
.�+
%�"
input_1���������dP
p 
� "S�P
I�F
!�
0/0���������d
!�
0/1���������dP
� �
H__inference_online_cnn_vad_layer_call_and_return_conditional_losses_2644�'(45!"-.:;@A8�5
.�+
%�"
input_1���������dP
p
� "S�P
I�F
!�
0/0���������d
!�
0/1���������dP
� �
-__inference_online_cnn_vad_layer_call_fn_1555�'(45!"-.:;@A8�5
.�+
%�"
input_1���������dP
p 
� "E�B
�
0���������d
�
1���������dP�
-__inference_online_cnn_vad_layer_call_fn_1598�'(45!"-.:;@A7�4
-�*
$�!
inputs���������dP
p 
� "E�B
�
0���������d
�
1���������dP�
-__inference_online_cnn_vad_layer_call_fn_1641�'(45!"-.:;@A7�4
-�*
$�!
inputs���������dP
p
� "E�B
�
0���������d
�
1���������dP�
-__inference_online_cnn_vad_layer_call_fn_1684�'(45!"-.:;@A8�5
.�+
%�"
input_1���������dP
p
� "E�B
�
0���������d
�
1���������dP�
!__inference_signature_wrapper_523�'(45!"-.:;F�C
� 
<�9
7
inputs-�*
inputs������������������P"@�=
;
output_0/�,
output_0������������������