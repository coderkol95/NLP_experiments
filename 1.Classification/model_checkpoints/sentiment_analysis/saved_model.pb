??/
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
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
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
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
executor_typestring ??
?
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02unknown8??.
?
embedding_layer/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?C2*+
shared_nameembedding_layer/embeddings
?
.embedding_layer/embeddings/Read/ReadVariableOpReadVariableOpembedding_layer/embeddings*
_output_shapes
:	?C2*
dtype0
?
dense_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(2*#
shared_namedense_layer/kernel
y
&dense_layer/kernel/Read/ReadVariableOpReadVariableOpdense_layer/kernel*
_output_shapes

:(2*
dtype0
x
dense_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*!
shared_namedense_layer/bias
q
$dense_layer/bias/Read/ReadVariableOpReadVariableOpdense_layer/bias*
_output_shapes
:2*
dtype0
?
output_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*$
shared_nameoutput_layer/kernel
{
'output_layer/kernel/Read/ReadVariableOpReadVariableOpoutput_layer/kernel*
_output_shapes

:2*
dtype0
z
output_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameoutput_layer/bias
s
%output_layer/bias/Read/ReadVariableOpReadVariableOpoutput_layer/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm_layer/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*.
shared_namelstm_layer/lstm_cell_1/kernel
?
1lstm_layer/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_layer/lstm_cell_1/kernel*
_output_shapes
:	2?*
dtype0
?
'lstm_layer/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	(?*8
shared_name)'lstm_layer/lstm_cell_1/recurrent_kernel
?
;lstm_layer/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_layer/lstm_cell_1/recurrent_kernel*
_output_shapes
:	(?*
dtype0
?
lstm_layer/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_layer/lstm_cell_1/bias
?
/lstm_layer/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_layer/lstm_cell_1/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
!Adam/embedding_layer/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?C2*2
shared_name#!Adam/embedding_layer/embeddings/m
?
5Adam/embedding_layer/embeddings/m/Read/ReadVariableOpReadVariableOp!Adam/embedding_layer/embeddings/m*
_output_shapes
:	?C2*
dtype0
?
Adam/dense_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(2**
shared_nameAdam/dense_layer/kernel/m
?
-Adam/dense_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer/kernel/m*
_output_shapes

:(2*
dtype0
?
Adam/dense_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*(
shared_nameAdam/dense_layer/bias/m

+Adam/dense_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer/bias/m*
_output_shapes
:2*
dtype0
?
Adam/output_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*+
shared_nameAdam/output_layer/kernel/m
?
.Adam/output_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output_layer/kernel/m*
_output_shapes

:2*
dtype0
?
Adam/output_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/output_layer/bias/m
?
,Adam/output_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/output_layer/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_layer/lstm_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*5
shared_name&$Adam/lstm_layer/lstm_cell_1/kernel/m
?
8Adam/lstm_layer/lstm_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_layer/lstm_cell_1/kernel/m*
_output_shapes
:	2?*
dtype0
?
.Adam/lstm_layer/lstm_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	(?*?
shared_name0.Adam/lstm_layer/lstm_cell_1/recurrent_kernel/m
?
BAdam/lstm_layer/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_layer/lstm_cell_1/recurrent_kernel/m*
_output_shapes
:	(?*
dtype0
?
"Adam/lstm_layer/lstm_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_layer/lstm_cell_1/bias/m
?
6Adam/lstm_layer/lstm_cell_1/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_layer/lstm_cell_1/bias/m*
_output_shapes	
:?*
dtype0
?
!Adam/embedding_layer/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?C2*2
shared_name#!Adam/embedding_layer/embeddings/v
?
5Adam/embedding_layer/embeddings/v/Read/ReadVariableOpReadVariableOp!Adam/embedding_layer/embeddings/v*
_output_shapes
:	?C2*
dtype0
?
Adam/dense_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(2**
shared_nameAdam/dense_layer/kernel/v
?
-Adam/dense_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer/kernel/v*
_output_shapes

:(2*
dtype0
?
Adam/dense_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*(
shared_nameAdam/dense_layer/bias/v

+Adam/dense_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer/bias/v*
_output_shapes
:2*
dtype0
?
Adam/output_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*+
shared_nameAdam/output_layer/kernel/v
?
.Adam/output_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output_layer/kernel/v*
_output_shapes

:2*
dtype0
?
Adam/output_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/output_layer/bias/v
?
,Adam/output_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/output_layer/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_layer/lstm_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*5
shared_name&$Adam/lstm_layer/lstm_cell_1/kernel/v
?
8Adam/lstm_layer/lstm_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_layer/lstm_cell_1/kernel/v*
_output_shapes
:	2?*
dtype0
?
.Adam/lstm_layer/lstm_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	(?*?
shared_name0.Adam/lstm_layer/lstm_cell_1/recurrent_kernel/v
?
BAdam/lstm_layer/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_layer/lstm_cell_1/recurrent_kernel/v*
_output_shapes
:	(?*
dtype0
?
"Adam/lstm_layer/lstm_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_layer/lstm_cell_1/bias/v
?
6Adam/lstm_layer/lstm_cell_1/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_layer/lstm_cell_1/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?2
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?1
value?1B?1 B?1
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
?
"iter

#beta_1

$beta_2
	%decay
&learning_ratemYmZm[m\m]'m^(m_)m`vavbvcvdve'vf(vg)vh
8
0
'1
(2
)3
4
5
6
7
8
0
'1
(2
)3
4
5
6
7
 
?
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
 
jh
VARIABLE_VALUEembedding_layer/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses
?
4
state_size

'kernel
(recurrent_kernel
)bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
 

'0
(1
)2

'0
(1
)2
 
?

9states
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
^\
VARIABLE_VALUEdense_layer/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEdense_layer/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
_]
VARIABLE_VALUEoutput_layer/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEoutput_layer/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
 regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_layer/lstm_cell_1/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_layer/lstm_cell_1/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_layer/lstm_cell_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

I0
J1
 
 
 
 
 
 
 
 

'0
(1
)2

'0
(1
)2
 
?
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
5	variables
6trainable_variables
7regularization_losses
 
 

0
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
4
	Ptotal
	Qcount
R	variables
S	keras_api
D
	Ttotal
	Ucount
V
_fn_kwargs
W	variables
X	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

P0
Q1

R	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

T0
U1

W	variables
??
VARIABLE_VALUE!Adam/embedding_layer/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/dense_layer/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_layer/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/output_layer/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/output_layer/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_layer/lstm_cell_1/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_layer/lstm_cell_1/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_layer/lstm_cell_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/embedding_layer/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/dense_layer/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_layer/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/output_layer/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/output_layer/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_layer/lstm_cell_1/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_layer/lstm_cell_1/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_layer/lstm_cell_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
%serving_default_embedding_layer_inputPlaceholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????
?
StatefulPartitionedCallStatefulPartitionedCall%serving_default_embedding_layer_inputembedding_layer/embeddingslstm_layer/lstm_cell_1/kernel'lstm_layer/lstm_cell_1/recurrent_kernellstm_layer/lstm_cell_1/biasdense_layer/kerneldense_layer/biasoutput_layer/kerneloutput_layer/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_72217
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename.embedding_layer/embeddings/Read/ReadVariableOp&dense_layer/kernel/Read/ReadVariableOp$dense_layer/bias/Read/ReadVariableOp'output_layer/kernel/Read/ReadVariableOp%output_layer/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_layer/lstm_cell_1/kernel/Read/ReadVariableOp;lstm_layer/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp/lstm_layer/lstm_cell_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp5Adam/embedding_layer/embeddings/m/Read/ReadVariableOp-Adam/dense_layer/kernel/m/Read/ReadVariableOp+Adam/dense_layer/bias/m/Read/ReadVariableOp.Adam/output_layer/kernel/m/Read/ReadVariableOp,Adam/output_layer/bias/m/Read/ReadVariableOp8Adam/lstm_layer/lstm_cell_1/kernel/m/Read/ReadVariableOpBAdam/lstm_layer/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_layer/lstm_cell_1/bias/m/Read/ReadVariableOp5Adam/embedding_layer/embeddings/v/Read/ReadVariableOp-Adam/dense_layer/kernel/v/Read/ReadVariableOp+Adam/dense_layer/bias/v/Read/ReadVariableOp.Adam/output_layer/kernel/v/Read/ReadVariableOp,Adam/output_layer/bias/v/Read/ReadVariableOp8Adam/lstm_layer/lstm_cell_1/kernel/v/Read/ReadVariableOpBAdam/lstm_layer/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_layer/lstm_cell_1/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_75132
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_layer/embeddingsdense_layer/kerneldense_layer/biasoutput_layer/kerneloutput_layer/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_layer/lstm_cell_1/kernel'lstm_layer/lstm_cell_1/recurrent_kernellstm_layer/lstm_cell_1/biastotalcounttotal_1count_1!Adam/embedding_layer/embeddings/mAdam/dense_layer/kernel/mAdam/dense_layer/bias/mAdam/output_layer/kernel/mAdam/output_layer/bias/m$Adam/lstm_layer/lstm_cell_1/kernel/m.Adam/lstm_layer/lstm_cell_1/recurrent_kernel/m"Adam/lstm_layer/lstm_cell_1/bias/m!Adam/embedding_layer/embeddings/vAdam/dense_layer/kernel/vAdam/dense_layer/bias/vAdam/output_layer/kernel/vAdam/output_layer/bias/v$Adam/lstm_layer/lstm_cell_1/kernel/v.Adam/lstm_layer/lstm_cell_1/recurrent_kernel/v"Adam/lstm_layer/lstm_cell_1/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_75241??-
??
?
9__inference___backward_gpu_lstm_with_fallback_70864_71040
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????(m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????(`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????(`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????(O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????(*
shrink_axis_mask?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????(q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????(c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????2:?????????(:?????????(:?s?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:(i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:(?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:(?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:(m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:((h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:(h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:(?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:??
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2??
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	(?\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2?h

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	(?d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????(:??????????????????(:?????????(:?????????(: :??????????????????(::?????????(:?????????(::??????????????????2:?????????(:?????????(:?s::?????????(:?????????(: ::::::::: : : : *=
api_implements+)lstm_0efa8162-8c75-42f4-87e1-bdf23c1ddf90*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_71039*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????(::6
4
_output_shapes"
 :??????????????????(:-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????(: 

_output_shapes
::1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????2:1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:!

_output_shapes	
:?s: 

_output_shapes
::-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
while_cond_70237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_70237___redundant_placeholder03
/while_while_cond_70237___redundant_placeholder13
/while_while_cond_70237___redundant_placeholder23
/while_while_cond_70237___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????(:?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?	
?
while_cond_69784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_69784___redundant_placeholder03
/while_while_cond_69784___redundant_placeholder13
/while_while_cond_69784___redundant_placeholder23
/while_while_cond_69784___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????(:?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?	
?
while_cond_73306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_73306___redundant_placeholder03
/while_while_cond_73306___redundant_placeholder13
/while_while_cond_73306___redundant_placeholder23
/while_while_cond_73306___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????(:?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
??
?
9__inference___backward_gpu_lstm_with_fallback_71328_71504
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????(m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????(`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????(`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????(O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????(*
shrink_axis_mask?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????(q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????(c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????2:?????????(:?????????(:?s?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:(i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:(?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:(?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:(m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:((h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:(h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:(?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:??
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2??
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	(?\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2?h

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	(?d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????(:??????????????????(:?????????(:?????????(: :??????????????????(::?????????(:?????????(::??????????????????2:?????????(:?????????(:?s::?????????(:?????????(: ::::::::: : : : *=
api_implements+)lstm_add013dd-2953-484c-8813-4f0d7571a6fe*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_71503*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????(::6
4
_output_shapes"
 :??????????????????(:-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????(: 

_output_shapes
::1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????2:1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:!

_output_shapes	
:?s: 

_output_shapes
::-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?:
?
__inference_standard_lstm_72427

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????(S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????(N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????(U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????(T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????(K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????(Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_72342*
condR
while_cond_72341*b
output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?*
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????([
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????(X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????(X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_e858a5d1-4e58-45a5-81ce-b8185d6b8fb5*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?
?
/__inference_embedding_layer_layer_call_fn_73176

inputs
unknown:	?C2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_embedding_layer_layer_call_and_return_conditional_losses_71068|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?	
?
while_cond_72341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_72341___redundant_placeholder03
/while_while_cond_72341___redundant_placeholder13
/while_while_cond_72341___redundant_placeholder23
/while_while_cond_72341___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????(:?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
??
?
9__inference___backward_gpu_lstm_with_fallback_70418_70594
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????(m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????(`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????(`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????(O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????(*
shrink_axis_mask?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????(q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????(c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????2:?????????(:?????????(:?s?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:(i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:(?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:(?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:(m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:((h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:(h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:(?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:??
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2??
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	(?\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2?h

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	(?d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????(:??????????????????(:?????????(:?????????(: :??????????????????(::?????????(:?????????(::??????????????????2:?????????(:?????????(:?s::?????????(:?????????(: ::::::::: : : : *=
api_implements+)lstm_cb34be3b-bdf1-4ccf-a711-a0251c75d857*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_70593*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????(::6
4
_output_shapes"
 :??????????????????(:-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????(: 

_output_shapes
::1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????2:1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:!

_output_shapes	
:?s: 

_output_shapes
::-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?L
?
&__forward_gpu_lstm_with_fallback_73662

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_c97236c5-3c50-4cb0-aa5c-a1f10ef8397c*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_73487_73663*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?	
?
while_cond_70683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_70683___redundant_placeholder03
/while_while_cond_70683___redundant_placeholder13
/while_while_cond_70683___redundant_placeholder23
/while_while_cond_70683___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????(:?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?(
?
while_body_72797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:???????????
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????(l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????(Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????(g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????(f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????(W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????(k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????(?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????(_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????("*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2?:%	!

_output_shapes
:	(?:!


_output_shapes	
:?
?(
?
while_body_73307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:???????????
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????(l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????(Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????(g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????(f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????(W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????(k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????(?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????(_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????("*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2?:%	!

_output_shapes
:	(?:!


_output_shapes	
:?
?:
?
__inference_standard_lstm_74262

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????(S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????(N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????(U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????(T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????(K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????(Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_74177*
condR
while_cond_74176*b
output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?*
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????([
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????(X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????(X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_3cef0124-4fc5-4737-a33a-417bb62b3e09*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?@
?
(__inference_gpu_lstm_with_fallback_73921

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?s?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_e9e58b59-b94f-4ef5-834e-05f223d20beb*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?(
?
while_body_69785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:???????????
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????(l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????(Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????(g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????(f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????(W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????(k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????(?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????(_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????("*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2?:%	!

_output_shapes
:	(?:!


_output_shapes	
:?
?(
?
while_body_73742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:???????????
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????(l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????(Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????(g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????(f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????(W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????(k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????(?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????(_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????("*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2?:%	!

_output_shapes
:	(?:!


_output_shapes	
:?
?
?
*__inference_lstm_layer_layer_call_fn_73197
inputs_0
unknown:	2?
	unknown_0:	(?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lstm_layer_layer_call_and_return_conditional_losses_70596o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?N
?
 __inference__wrapped_model_70157
embedding_layer_inputF
3sequential_1_embedding_layer_embedding_lookup_69706:	?C2G
4sequential_1_lstm_layer_read_readvariableop_resource:	2?I
6sequential_1_lstm_layer_read_1_readvariableop_resource:	(?E
6sequential_1_lstm_layer_read_2_readvariableop_resource:	?I
7sequential_1_dense_layer_matmul_readvariableop_resource:(2F
8sequential_1_dense_layer_biasadd_readvariableop_resource:2J
8sequential_1_output_layer_matmul_readvariableop_resource:2G
9sequential_1_output_layer_biasadd_readvariableop_resource:
identity??/sequential_1/dense_layer/BiasAdd/ReadVariableOp?.sequential_1/dense_layer/MatMul/ReadVariableOp?-sequential_1/embedding_layer/embedding_lookup?+sequential_1/lstm_layer/Read/ReadVariableOp?-sequential_1/lstm_layer/Read_1/ReadVariableOp?-sequential_1/lstm_layer/Read_2/ReadVariableOp?0sequential_1/output_layer/BiasAdd/ReadVariableOp?/sequential_1/output_layer/MatMul/ReadVariableOp?
!sequential_1/embedding_layer/CastCastembedding_layer_input*

DstT0*

SrcT0*0
_output_shapes
:???????????????????
-sequential_1/embedding_layer/embedding_lookupResourceGather3sequential_1_embedding_layer_embedding_lookup_69706%sequential_1/embedding_layer/Cast:y:0*
Tindices0*F
_class<
:8loc:@sequential_1/embedding_layer/embedding_lookup/69706*4
_output_shapes"
 :??????????????????2*
dtype0?
6sequential_1/embedding_layer/embedding_lookup/IdentityIdentity6sequential_1/embedding_layer/embedding_lookup:output:0*
T0*F
_class<
:8loc:@sequential_1/embedding_layer/embedding_lookup/69706*4
_output_shapes"
 :??????????????????2?
8sequential_1/embedding_layer/embedding_lookup/Identity_1Identity?sequential_1/embedding_layer/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2?
sequential_1/lstm_layer/ShapeShapeAsequential_1/embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:u
+sequential_1/lstm_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_1/lstm_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_1/lstm_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_1/lstm_layer/strided_sliceStridedSlice&sequential_1/lstm_layer/Shape:output:04sequential_1/lstm_layer/strided_slice/stack:output:06sequential_1/lstm_layer/strided_slice/stack_1:output:06sequential_1/lstm_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_1/lstm_layer/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(?
!sequential_1/lstm_layer/zeros/mulMul.sequential_1/lstm_layer/strided_slice:output:0,sequential_1/lstm_layer/zeros/mul/y:output:0*
T0*
_output_shapes
: g
$sequential_1/lstm_layer/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :??
"sequential_1/lstm_layer/zeros/LessLess%sequential_1/lstm_layer/zeros/mul:z:0-sequential_1/lstm_layer/zeros/Less/y:output:0*
T0*
_output_shapes
: h
&sequential_1/lstm_layer/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(?
$sequential_1/lstm_layer/zeros/packedPack.sequential_1/lstm_layer/strided_slice:output:0/sequential_1/lstm_layer/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_1/lstm_layer/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_1/lstm_layer/zerosFill-sequential_1/lstm_layer/zeros/packed:output:0,sequential_1/lstm_layer/zeros/Const:output:0*
T0*'
_output_shapes
:?????????(g
%sequential_1/lstm_layer/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(?
#sequential_1/lstm_layer/zeros_1/mulMul.sequential_1/lstm_layer/strided_slice:output:0.sequential_1/lstm_layer/zeros_1/mul/y:output:0*
T0*
_output_shapes
: i
&sequential_1/lstm_layer/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :??
$sequential_1/lstm_layer/zeros_1/LessLess'sequential_1/lstm_layer/zeros_1/mul:z:0/sequential_1/lstm_layer/zeros_1/Less/y:output:0*
T0*
_output_shapes
: j
(sequential_1/lstm_layer/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(?
&sequential_1/lstm_layer/zeros_1/packedPack.sequential_1/lstm_layer/strided_slice:output:01sequential_1/lstm_layer/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_1/lstm_layer/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_1/lstm_layer/zeros_1Fill/sequential_1/lstm_layer/zeros_1/packed:output:0.sequential_1/lstm_layer/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????(?
+sequential_1/lstm_layer/Read/ReadVariableOpReadVariableOp4sequential_1_lstm_layer_read_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
 sequential_1/lstm_layer/IdentityIdentity3sequential_1/lstm_layer/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	2??
-sequential_1/lstm_layer/Read_1/ReadVariableOpReadVariableOp6sequential_1_lstm_layer_read_1_readvariableop_resource*
_output_shapes
:	(?*
dtype0?
"sequential_1/lstm_layer/Identity_1Identity5sequential_1/lstm_layer/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	(??
-sequential_1/lstm_layer/Read_2/ReadVariableOpReadVariableOp6sequential_1_lstm_layer_read_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
"sequential_1/lstm_layer/Identity_2Identity5sequential_1/lstm_layer/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
'sequential_1/lstm_layer/PartitionedCallPartitionedCallAsequential_1/embedding_layer/embedding_lookup/Identity_1:output:0&sequential_1/lstm_layer/zeros:output:0(sequential_1/lstm_layer/zeros_1:output:0)sequential_1/lstm_layer/Identity:output:0+sequential_1/lstm_layer/Identity_1:output:0+sequential_1/lstm_layer/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????(:??????????????????(:?????????(:?????????(: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_lstm_69870?
.sequential_1/dense_layer/MatMul/ReadVariableOpReadVariableOp7sequential_1_dense_layer_matmul_readvariableop_resource*
_output_shapes

:(2*
dtype0?
sequential_1/dense_layer/MatMulMatMul0sequential_1/lstm_layer/PartitionedCall:output:06sequential_1/dense_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
/sequential_1/dense_layer/BiasAdd/ReadVariableOpReadVariableOp8sequential_1_dense_layer_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
 sequential_1/dense_layer/BiasAddBiasAdd)sequential_1/dense_layer/MatMul:product:07sequential_1/dense_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
"sequential_1/dense_layer/LeakyRelu	LeakyRelu)sequential_1/dense_layer/BiasAdd:output:0*'
_output_shapes
:?????????2?
/sequential_1/output_layer/MatMul/ReadVariableOpReadVariableOp8sequential_1_output_layer_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
 sequential_1/output_layer/MatMulMatMul0sequential_1/dense_layer/LeakyRelu:activations:07sequential_1/output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
0sequential_1/output_layer/BiasAdd/ReadVariableOpReadVariableOp9sequential_1_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
!sequential_1/output_layer/BiasAddBiasAdd*sequential_1/output_layer/MatMul:product:08sequential_1/output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!sequential_1/output_layer/SigmoidSigmoid*sequential_1/output_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????t
IdentityIdentity%sequential_1/output_layer/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_1/dense_layer/BiasAdd/ReadVariableOp/^sequential_1/dense_layer/MatMul/ReadVariableOp.^sequential_1/embedding_layer/embedding_lookup,^sequential_1/lstm_layer/Read/ReadVariableOp.^sequential_1/lstm_layer/Read_1/ReadVariableOp.^sequential_1/lstm_layer/Read_2/ReadVariableOp1^sequential_1/output_layer/BiasAdd/ReadVariableOp0^sequential_1/output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2b
/sequential_1/dense_layer/BiasAdd/ReadVariableOp/sequential_1/dense_layer/BiasAdd/ReadVariableOp2`
.sequential_1/dense_layer/MatMul/ReadVariableOp.sequential_1/dense_layer/MatMul/ReadVariableOp2^
-sequential_1/embedding_layer/embedding_lookup-sequential_1/embedding_layer/embedding_lookup2Z
+sequential_1/lstm_layer/Read/ReadVariableOp+sequential_1/lstm_layer/Read/ReadVariableOp2^
-sequential_1/lstm_layer/Read_1/ReadVariableOp-sequential_1/lstm_layer/Read_1/ReadVariableOp2^
-sequential_1/lstm_layer/Read_2/ReadVariableOp-sequential_1/lstm_layer/Read_2/ReadVariableOp2d
0sequential_1/output_layer/BiasAdd/ReadVariableOp0sequential_1/output_layer/BiasAdd/ReadVariableOp2b
/sequential_1/output_layer/MatMul/ReadVariableOp/sequential_1/output_layer/MatMul/ReadVariableOp:g c
0
_output_shapes
:??????????????????
/
_user_specified_nameembedding_layer_input
?L
?
&__forward_gpu_lstm_with_fallback_74532

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_3cef0124-4fc5-4737-a33a-417bb62b3e09*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_74357_74533*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?	
?
,__inference_sequential_1_layer_call_fn_72238

inputs
unknown:	?C2
	unknown_0:	2?
	unknown_1:	(?
	unknown_2:	?
	unknown_3:(2
	unknown_4:2
	unknown_5:2
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_71549o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?

?
,__inference_sequential_1_layer_call_fn_71568
embedding_layer_input
unknown:	?C2
	unknown_0:	2?
	unknown_1:	(?
	unknown_2:	?
	unknown_3:(2
	unknown_4:2
	unknown_5:2
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_71549o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:??????????????????
/
_user_specified_nameembedding_layer_input
?(
?
while_body_70684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:???????????
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????(l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????(Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????(g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????(f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????(W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????(k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????(?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????(_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????("*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2?:%	!

_output_shapes
:	(?:!


_output_shapes	
:?
?@
?
(__inference_gpu_lstm_with_fallback_72976

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?s?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_16108790-766e-49d9-aa48-4dc15a260a37*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?	
?
J__inference_embedding_layer_layer_call_and_return_conditional_losses_73186

inputs)
embedding_lookup_73180:	?C2
identity??embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:???????????????????
embedding_lookupResourceGatherembedding_lookup_73180Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/73180*4
_output_shapes"
 :??????????????????2*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/73180*4
_output_shapes"
 :??????????????????2?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
E__inference_lstm_layer_layer_call_and_return_conditional_losses_71506

inputs/
read_readvariableop_resource:	2?1
read_1_readvariableop_resource:	(?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????(q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2?*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2?u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	(?*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	(?q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????(:??????????????????(:?????????(:?????????(: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_lstm_71233i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?@
?
(__inference_gpu_lstm_with_fallback_71327

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?s?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_add013dd-2953-484c-8813-4f0d7571a6fe*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
? 
?
E__inference_lstm_layer_layer_call_and_return_conditional_losses_73665
inputs_0/
read_readvariableop_resource:	2?1
read_1_readvariableop_resource:	(?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????(q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2?*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2?u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	(?*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	(?q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????(:??????????????????(:?????????(:?????????(: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_lstm_73392i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?L
?
&__forward_gpu_lstm_with_fallback_70593

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_cb34be3b-bdf1-4ccf-a711-a0251c75d857*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_70418_70594*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?

?
,__inference_sequential_1_layer_call_fn_72140
embedding_layer_input
unknown:	?C2
	unknown_0:	2?
	unknown_1:	(?
	unknown_2:	?
	unknown_3:(2
	unknown_4:2
	unknown_5:2
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_72100o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:??????????????????
/
_user_specified_nameembedding_layer_input
??
?
9__inference___backward_gpu_lstm_with_fallback_72977_73153
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????(m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????(`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????(`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????(O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????(*
shrink_axis_mask?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????(q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????(c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????2:?????????(:?????????(:?s?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:(i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:(?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:(?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:(m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:((h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:(h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:(?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:??
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2??
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	(?\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2?h

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	(?d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????(:??????????????????(:?????????(:?????????(: :??????????????????(::?????????(:?????????(::??????????????????2:?????????(:?????????(:?s::?????????(:?????????(: ::::::::: : : : *=
api_implements+)lstm_16108790-766e-49d9-aa48-4dc15a260a37*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_73152*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????(::6
4
_output_shapes"
 :??????????????????(:-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????(: 

_output_shapes
::1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????2:1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:!

_output_shapes	
:?s: 

_output_shapes
::-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_lstm_layer_layer_call_fn_73230

inputs
unknown:	2?
	unknown_0:	(?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lstm_layer_layer_call_and_return_conditional_losses_72036o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?@
?
(__inference_gpu_lstm_with_fallback_69964

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?s?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_e6e343a0-14cf-47ef-bd2b-ef49225ac85c*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?:
?
__inference_standard_lstm_72882

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????(S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????(N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????(U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????(T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????(K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????(Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_72797*
condR
while_cond_72796*b
output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?*
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????([
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????(X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????(X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_16108790-766e-49d9-aa48-4dc15a260a37*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?

?
F__inference_dense_layer_layer_call_and_return_conditional_losses_74990

inputs0
matmul_readvariableop_resource:(2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2Q
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????2f
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?@
?
(__inference_gpu_lstm_with_fallback_70863

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?s?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_0efa8162-8c75-42f4-87e1-bdf23c1ddf90*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?
?
E__inference_lstm_layer_layer_call_and_return_conditional_losses_74970

inputs/
read_readvariableop_resource:	2?1
read_1_readvariableop_resource:	(?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????(q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2?*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2?u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	(?*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	(?q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????(:??????????????????(:?????????(:?????????(: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_lstm_74697i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?@
?
(__inference_gpu_lstm_with_fallback_71857

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?s?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_75ccb1f8-7748-4395-81f7-7c7fca61eeaf*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?
?
,__inference_output_layer_layer_call_fn_74999

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_output_layer_layer_call_and_return_conditional_losses_71542o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?(
?
while_body_71148
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:???????????
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????(l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????(Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????(g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????(f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????(W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????(k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????(?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????(_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????("*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2?:%	!

_output_shapes
:	(?:!


_output_shapes	
:?
?

?
F__inference_dense_layer_layer_call_and_return_conditional_losses_71525

inputs0
matmul_readvariableop_resource:(2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2Q
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????2f
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?L
?
&__forward_gpu_lstm_with_fallback_71503

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_add013dd-2953-484c-8813-4f0d7571a6fe*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_71328_71504*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
? 
?
E__inference_lstm_layer_layer_call_and_return_conditional_losses_74100
inputs_0/
read_readvariableop_resource:	2?1
read_1_readvariableop_resource:	(?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????(q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2?*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2?u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	(?*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	(?q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????(:??????????????????(:?????????(:?????????(: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_lstm_73827i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?L
?
&__forward_gpu_lstm_with_fallback_71039

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_0efa8162-8c75-42f4-87e1-bdf23c1ddf90*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_70864_71040*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?@
?
(__inference_gpu_lstm_with_fallback_74356

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?s?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_3cef0124-4fc5-4737-a33a-417bb62b3e09*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
??
?
9__inference___backward_gpu_lstm_with_fallback_74357_74533
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????(m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????(`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????(`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????(O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????(*
shrink_axis_mask?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????(q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????(c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????2:?????????(:?????????(:?s?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:(i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:(?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:(?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:(m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:((h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:(h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:(?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:??
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2??
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	(?\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2?h

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	(?d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????(:??????????????????(:?????????(:?????????(: :??????????????????(::?????????(:?????????(::??????????????????2:?????????(:?????????(:?s::?????????(:?????????(: ::::::::: : : : *=
api_implements+)lstm_3cef0124-4fc5-4737-a33a-417bb62b3e09*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_74532*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????(::6
4
_output_shapes"
 :??????????????????(:-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????(: 

_output_shapes
::1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????2:1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:!

_output_shapes	
:?s: 

_output_shapes
::-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?I
?
__inference__traced_save_75132
file_prefix9
5savev2_embedding_layer_embeddings_read_readvariableop1
-savev2_dense_layer_kernel_read_readvariableop/
+savev2_dense_layer_bias_read_readvariableop2
.savev2_output_layer_kernel_read_readvariableop0
,savev2_output_layer_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_layer_lstm_cell_1_kernel_read_readvariableopF
Bsavev2_lstm_layer_lstm_cell_1_recurrent_kernel_read_readvariableop:
6savev2_lstm_layer_lstm_cell_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop@
<savev2_adam_embedding_layer_embeddings_m_read_readvariableop8
4savev2_adam_dense_layer_kernel_m_read_readvariableop6
2savev2_adam_dense_layer_bias_m_read_readvariableop9
5savev2_adam_output_layer_kernel_m_read_readvariableop7
3savev2_adam_output_layer_bias_m_read_readvariableopC
?savev2_adam_lstm_layer_lstm_cell_1_kernel_m_read_readvariableopM
Isavev2_adam_lstm_layer_lstm_cell_1_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_layer_lstm_cell_1_bias_m_read_readvariableop@
<savev2_adam_embedding_layer_embeddings_v_read_readvariableop8
4savev2_adam_dense_layer_kernel_v_read_readvariableop6
2savev2_adam_dense_layer_bias_v_read_readvariableop9
5savev2_adam_output_layer_kernel_v_read_readvariableop7
3savev2_adam_output_layer_bias_v_read_readvariableopC
?savev2_adam_lstm_layer_lstm_cell_1_kernel_v_read_readvariableopM
Isavev2_adam_lstm_layer_lstm_cell_1_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_layer_lstm_cell_1_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:05savev2_embedding_layer_embeddings_read_readvariableop-savev2_dense_layer_kernel_read_readvariableop+savev2_dense_layer_bias_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_layer_lstm_cell_1_kernel_read_readvariableopBsavev2_lstm_layer_lstm_cell_1_recurrent_kernel_read_readvariableop6savev2_lstm_layer_lstm_cell_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop<savev2_adam_embedding_layer_embeddings_m_read_readvariableop4savev2_adam_dense_layer_kernel_m_read_readvariableop2savev2_adam_dense_layer_bias_m_read_readvariableop5savev2_adam_output_layer_kernel_m_read_readvariableop3savev2_adam_output_layer_bias_m_read_readvariableop?savev2_adam_lstm_layer_lstm_cell_1_kernel_m_read_readvariableopIsavev2_adam_lstm_layer_lstm_cell_1_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_layer_lstm_cell_1_bias_m_read_readvariableop<savev2_adam_embedding_layer_embeddings_v_read_readvariableop4savev2_adam_dense_layer_kernel_v_read_readvariableop2savev2_adam_dense_layer_bias_v_read_readvariableop5savev2_adam_output_layer_kernel_v_read_readvariableop3savev2_adam_output_layer_bias_v_read_readvariableop?savev2_adam_lstm_layer_lstm_cell_1_kernel_v_read_readvariableopIsavev2_adam_lstm_layer_lstm_cell_1_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_layer_lstm_cell_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?C2:(2:2:2:: : : : : :	2?:	(?:?: : : : :	?C2:(2:2:2::	2?:	(?:?:	?C2:(2:2:2::	2?:	(?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?C2:$ 

_output_shapes

:(2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :%!

_output_shapes
:	2?:%!

_output_shapes
:	(?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?C2:$ 

_output_shapes

:(2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	2?:%!

_output_shapes
:	(?:!

_output_shapes	
:?:%!

_output_shapes
:	?C2:$ 

_output_shapes

:(2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	2?:% !

_output_shapes
:	(?:!!

_output_shapes	
:?:"

_output_shapes
: 
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_72164
embedding_layer_input(
embedding_layer_72143:	?C2#
lstm_layer_72146:	2?#
lstm_layer_72148:	(?
lstm_layer_72150:	?#
dense_layer_72153:(2
dense_layer_72155:2$
output_layer_72158:2 
output_layer_72160:
identity??#dense_layer/StatefulPartitionedCall?'embedding_layer/StatefulPartitionedCall?"lstm_layer/StatefulPartitionedCall?$output_layer/StatefulPartitionedCall?
'embedding_layer/StatefulPartitionedCallStatefulPartitionedCallembedding_layer_inputembedding_layer_72143*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_embedding_layer_layer_call_and_return_conditional_losses_71068?
"lstm_layer/StatefulPartitionedCallStatefulPartitionedCall0embedding_layer/StatefulPartitionedCall:output:0lstm_layer_72146lstm_layer_72148lstm_layer_72150*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lstm_layer_layer_call_and_return_conditional_losses_71506?
#dense_layer/StatefulPartitionedCallStatefulPartitionedCall+lstm_layer/StatefulPartitionedCall:output:0dense_layer_72153dense_layer_72155*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_layer_layer_call_and_return_conditional_losses_71525?
$output_layer/StatefulPartitionedCallStatefulPartitionedCall,dense_layer/StatefulPartitionedCall:output:0output_layer_72158output_layer_72160*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_output_layer_layer_call_and_return_conditional_losses_71542|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^dense_layer/StatefulPartitionedCall(^embedding_layer/StatefulPartitionedCall#^lstm_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2J
#dense_layer/StatefulPartitionedCall#dense_layer/StatefulPartitionedCall2R
'embedding_layer/StatefulPartitionedCall'embedding_layer/StatefulPartitionedCall2H
"lstm_layer/StatefulPartitionedCall"lstm_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:g c
0
_output_shapes
:??????????????????
/
_user_specified_nameembedding_layer_input
?:
?
__inference_standard_lstm_71233

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????(S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????(N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????(U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????(T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????(K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????(Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_71148*
condR
while_cond_71147*b
output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?*
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????([
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????(X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????(X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_add013dd-2953-484c-8813-4f0d7571a6fe*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?@
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_73169

inputs9
&embedding_layer_embedding_lookup_72718:	?C2:
'lstm_layer_read_readvariableop_resource:	2?<
)lstm_layer_read_1_readvariableop_resource:	(?8
)lstm_layer_read_2_readvariableop_resource:	?<
*dense_layer_matmul_readvariableop_resource:(29
+dense_layer_biasadd_readvariableop_resource:2=
+output_layer_matmul_readvariableop_resource:2:
,output_layer_biasadd_readvariableop_resource:
identity??"dense_layer/BiasAdd/ReadVariableOp?!dense_layer/MatMul/ReadVariableOp? embedding_layer/embedding_lookup?lstm_layer/Read/ReadVariableOp? lstm_layer/Read_1/ReadVariableOp? lstm_layer/Read_2/ReadVariableOp?#output_layer/BiasAdd/ReadVariableOp?"output_layer/MatMul/ReadVariableOpn
embedding_layer/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:???????????????????
 embedding_layer/embedding_lookupResourceGather&embedding_layer_embedding_lookup_72718embedding_layer/Cast:y:0*
Tindices0*9
_class/
-+loc:@embedding_layer/embedding_lookup/72718*4
_output_shapes"
 :??????????????????2*
dtype0?
)embedding_layer/embedding_lookup/IdentityIdentity)embedding_layer/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_layer/embedding_lookup/72718*4
_output_shapes"
 :??????????????????2?
+embedding_layer/embedding_lookup/Identity_1Identity2embedding_layer/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2t
lstm_layer/ShapeShape4embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:h
lstm_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_layer/strided_sliceStridedSlicelstm_layer/Shape:output:0'lstm_layer/strided_slice/stack:output:0)lstm_layer/strided_slice/stack_1:output:0)lstm_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_layer/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(?
lstm_layer/zeros/mulMul!lstm_layer/strided_slice:output:0lstm_layer/zeros/mul/y:output:0*
T0*
_output_shapes
: Z
lstm_layer/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?z
lstm_layer/zeros/LessLesslstm_layer/zeros/mul:z:0 lstm_layer/zeros/Less/y:output:0*
T0*
_output_shapes
: [
lstm_layer/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(?
lstm_layer/zeros/packedPack!lstm_layer/strided_slice:output:0"lstm_layer/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_layer/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_layer/zerosFill lstm_layer/zeros/packed:output:0lstm_layer/zeros/Const:output:0*
T0*'
_output_shapes
:?????????(Z
lstm_layer/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(?
lstm_layer/zeros_1/mulMul!lstm_layer/strided_slice:output:0!lstm_layer/zeros_1/mul/y:output:0*
T0*
_output_shapes
: \
lstm_layer/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :??
lstm_layer/zeros_1/LessLesslstm_layer/zeros_1/mul:z:0"lstm_layer/zeros_1/Less/y:output:0*
T0*
_output_shapes
: ]
lstm_layer/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(?
lstm_layer/zeros_1/packedPack!lstm_layer/strided_slice:output:0$lstm_layer/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:]
lstm_layer/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_layer/zeros_1Fill"lstm_layer/zeros_1/packed:output:0!lstm_layer/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????(?
lstm_layer/Read/ReadVariableOpReadVariableOp'lstm_layer_read_readvariableop_resource*
_output_shapes
:	2?*
dtype0q
lstm_layer/IdentityIdentity&lstm_layer/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	2??
 lstm_layer/Read_1/ReadVariableOpReadVariableOp)lstm_layer_read_1_readvariableop_resource*
_output_shapes
:	(?*
dtype0u
lstm_layer/Identity_1Identity(lstm_layer/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	(??
 lstm_layer/Read_2/ReadVariableOpReadVariableOp)lstm_layer_read_2_readvariableop_resource*
_output_shapes	
:?*
dtype0q
lstm_layer/Identity_2Identity(lstm_layer/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
lstm_layer/PartitionedCallPartitionedCall4embedding_layer/embedding_lookup/Identity_1:output:0lstm_layer/zeros:output:0lstm_layer/zeros_1:output:0lstm_layer/Identity:output:0lstm_layer/Identity_1:output:0lstm_layer/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????(:??????????????????(:?????????(:?????????(: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_lstm_72882?
!dense_layer/MatMul/ReadVariableOpReadVariableOp*dense_layer_matmul_readvariableop_resource*
_output_shapes

:(2*
dtype0?
dense_layer/MatMulMatMul#lstm_layer/PartitionedCall:output:0)dense_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
"dense_layer/BiasAdd/ReadVariableOpReadVariableOp+dense_layer_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
dense_layer/BiasAddBiasAdddense_layer/MatMul:product:0*dense_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2i
dense_layer/LeakyRelu	LeakyReludense_layer/BiasAdd:output:0*'
_output_shapes
:?????????2?
"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
output_layer/MatMulMatMul#dense_layer/LeakyRelu:activations:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
output_layer/SigmoidSigmoidoutput_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????g
IdentityIdentityoutput_layer/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp!^embedding_layer/embedding_lookup^lstm_layer/Read/ReadVariableOp!^lstm_layer/Read_1/ReadVariableOp!^lstm_layer/Read_2/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2H
"dense_layer/BiasAdd/ReadVariableOp"dense_layer/BiasAdd/ReadVariableOp2F
!dense_layer/MatMul/ReadVariableOp!dense_layer/MatMul/ReadVariableOp2D
 embedding_layer/embedding_lookup embedding_layer/embedding_lookup2@
lstm_layer/Read/ReadVariableOplstm_layer/Read/ReadVariableOp2D
 lstm_layer/Read_1/ReadVariableOp lstm_layer/Read_1/ReadVariableOp2D
 lstm_layer/Read_2/ReadVariableOp lstm_layer/Read_2/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?	
?
while_cond_72796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_72796___redundant_placeholder03
/while_while_cond_72796___redundant_placeholder13
/while_while_cond_72796___redundant_placeholder23
/while_while_cond_72796___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????(:?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?
?
*__inference_lstm_layer_layer_call_fn_73208
inputs_0
unknown:	2?
	unknown_0:	(?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lstm_layer_layer_call_and_return_conditional_losses_71042o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?	
?
#__inference_signature_wrapper_72217
embedding_layer_input
unknown:	?C2
	unknown_0:	2?
	unknown_1:	(?
	unknown_2:	?
	unknown_3:(2
	unknown_4:2
	unknown_5:2
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_70157o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:??????????????????
/
_user_specified_nameembedding_layer_input
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_72188
embedding_layer_input(
embedding_layer_72167:	?C2#
lstm_layer_72170:	2?#
lstm_layer_72172:	(?
lstm_layer_72174:	?#
dense_layer_72177:(2
dense_layer_72179:2$
output_layer_72182:2 
output_layer_72184:
identity??#dense_layer/StatefulPartitionedCall?'embedding_layer/StatefulPartitionedCall?"lstm_layer/StatefulPartitionedCall?$output_layer/StatefulPartitionedCall?
'embedding_layer/StatefulPartitionedCallStatefulPartitionedCallembedding_layer_inputembedding_layer_72167*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_embedding_layer_layer_call_and_return_conditional_losses_71068?
"lstm_layer/StatefulPartitionedCallStatefulPartitionedCall0embedding_layer/StatefulPartitionedCall:output:0lstm_layer_72170lstm_layer_72172lstm_layer_72174*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lstm_layer_layer_call_and_return_conditional_losses_72036?
#dense_layer/StatefulPartitionedCallStatefulPartitionedCall+lstm_layer/StatefulPartitionedCall:output:0dense_layer_72177dense_layer_72179*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_layer_layer_call_and_return_conditional_losses_71525?
$output_layer/StatefulPartitionedCallStatefulPartitionedCall,dense_layer/StatefulPartitionedCall:output:0output_layer_72182output_layer_72184*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_output_layer_layer_call_and_return_conditional_losses_71542|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^dense_layer/StatefulPartitionedCall(^embedding_layer/StatefulPartitionedCall#^lstm_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2J
#dense_layer/StatefulPartitionedCall#dense_layer/StatefulPartitionedCall2R
'embedding_layer/StatefulPartitionedCall'embedding_layer/StatefulPartitionedCall2H
"lstm_layer/StatefulPartitionedCall"lstm_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:g c
0
_output_shapes
:??????????????????
/
_user_specified_nameembedding_layer_input
?(
?
while_body_74177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:???????????
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????(l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????(Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????(g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????(f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????(W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????(k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????(?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????(_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????("*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2?:%	!

_output_shapes
:	(?:!


_output_shapes	
:?
?:
?
__inference_standard_lstm_70323

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????(S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????(N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????(U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????(T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????(K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????(Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_70238*
condR
while_cond_70237*b
output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?*
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????([
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????(X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????(X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_cb34be3b-bdf1-4ccf-a711-a0251c75d857*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?	
?
while_cond_71677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_71677___redundant_placeholder03
/while_while_cond_71677___redundant_placeholder13
/while_while_cond_71677___redundant_placeholder23
/while_while_cond_71677___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????(:?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?	
?
J__inference_embedding_layer_layer_call_and_return_conditional_losses_71068

inputs)
embedding_lookup_71062:	?C2
identity??embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:???????????????????
embedding_lookupResourceGatherembedding_lookup_71062Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/71062*4
_output_shapes"
 :??????????????????2*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/71062*4
_output_shapes"
 :??????????????????2?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?@
?
(__inference_gpu_lstm_with_fallback_72521

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?s?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_e858a5d1-4e58-45a5-81ce-b8185d6b8fb5*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
??
?
9__inference___backward_gpu_lstm_with_fallback_74792_74968
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????(m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????(`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????(`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????(O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????(*
shrink_axis_mask?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????(q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????(c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????2:?????????(:?????????(:?s?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:(i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:(?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:(?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:(m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:((h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:(h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:(?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:??
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2??
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	(?\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2?h

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	(?d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????(:??????????????????(:?????????(:?????????(: :??????????????????(::?????????(:?????????(::??????????????????2:?????????(:?????????(:?s::?????????(:?????????(: ::::::::: : : : *=
api_implements+)lstm_8daf26e5-3457-42db-b61b-3cf69b473745*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_74967*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????(::6
4
_output_shapes"
 :??????????????????(:-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????(: 

_output_shapes
::1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????2:1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:!

_output_shapes	
:?s: 

_output_shapes
::-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_lstm_layer_layer_call_and_return_conditional_losses_70596

inputs/
read_readvariableop_resource:	2?1
read_1_readvariableop_resource:	(?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????(q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2?*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2?u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	(?*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	(?q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????(:??????????????????(:?????????(:?????????(: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_lstm_70323i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_71549

inputs(
embedding_layer_71069:	?C2#
lstm_layer_71507:	2?#
lstm_layer_71509:	(?
lstm_layer_71511:	?#
dense_layer_71526:(2
dense_layer_71528:2$
output_layer_71543:2 
output_layer_71545:
identity??#dense_layer/StatefulPartitionedCall?'embedding_layer/StatefulPartitionedCall?"lstm_layer/StatefulPartitionedCall?$output_layer/StatefulPartitionedCall?
'embedding_layer/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_layer_71069*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_embedding_layer_layer_call_and_return_conditional_losses_71068?
"lstm_layer/StatefulPartitionedCallStatefulPartitionedCall0embedding_layer/StatefulPartitionedCall:output:0lstm_layer_71507lstm_layer_71509lstm_layer_71511*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lstm_layer_layer_call_and_return_conditional_losses_71506?
#dense_layer/StatefulPartitionedCallStatefulPartitionedCall+lstm_layer/StatefulPartitionedCall:output:0dense_layer_71526dense_layer_71528*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_layer_layer_call_and_return_conditional_losses_71525?
$output_layer/StatefulPartitionedCallStatefulPartitionedCall,dense_layer/StatefulPartitionedCall:output:0output_layer_71543output_layer_71545*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_output_layer_layer_call_and_return_conditional_losses_71542|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^dense_layer/StatefulPartitionedCall(^embedding_layer/StatefulPartitionedCall#^lstm_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2J
#dense_layer/StatefulPartitionedCall#dense_layer/StatefulPartitionedCall2R
'embedding_layer/StatefulPartitionedCall'embedding_layer/StatefulPartitionedCall2H
"lstm_layer/StatefulPartitionedCall"lstm_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?@
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_72714

inputs9
&embedding_layer_embedding_lookup_72263:	?C2:
'lstm_layer_read_readvariableop_resource:	2?<
)lstm_layer_read_1_readvariableop_resource:	(?8
)lstm_layer_read_2_readvariableop_resource:	?<
*dense_layer_matmul_readvariableop_resource:(29
+dense_layer_biasadd_readvariableop_resource:2=
+output_layer_matmul_readvariableop_resource:2:
,output_layer_biasadd_readvariableop_resource:
identity??"dense_layer/BiasAdd/ReadVariableOp?!dense_layer/MatMul/ReadVariableOp? embedding_layer/embedding_lookup?lstm_layer/Read/ReadVariableOp? lstm_layer/Read_1/ReadVariableOp? lstm_layer/Read_2/ReadVariableOp?#output_layer/BiasAdd/ReadVariableOp?"output_layer/MatMul/ReadVariableOpn
embedding_layer/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:???????????????????
 embedding_layer/embedding_lookupResourceGather&embedding_layer_embedding_lookup_72263embedding_layer/Cast:y:0*
Tindices0*9
_class/
-+loc:@embedding_layer/embedding_lookup/72263*4
_output_shapes"
 :??????????????????2*
dtype0?
)embedding_layer/embedding_lookup/IdentityIdentity)embedding_layer/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_layer/embedding_lookup/72263*4
_output_shapes"
 :??????????????????2?
+embedding_layer/embedding_lookup/Identity_1Identity2embedding_layer/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2t
lstm_layer/ShapeShape4embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:h
lstm_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_layer/strided_sliceStridedSlicelstm_layer/Shape:output:0'lstm_layer/strided_slice/stack:output:0)lstm_layer/strided_slice/stack_1:output:0)lstm_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_layer/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(?
lstm_layer/zeros/mulMul!lstm_layer/strided_slice:output:0lstm_layer/zeros/mul/y:output:0*
T0*
_output_shapes
: Z
lstm_layer/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?z
lstm_layer/zeros/LessLesslstm_layer/zeros/mul:z:0 lstm_layer/zeros/Less/y:output:0*
T0*
_output_shapes
: [
lstm_layer/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(?
lstm_layer/zeros/packedPack!lstm_layer/strided_slice:output:0"lstm_layer/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_layer/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_layer/zerosFill lstm_layer/zeros/packed:output:0lstm_layer/zeros/Const:output:0*
T0*'
_output_shapes
:?????????(Z
lstm_layer/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(?
lstm_layer/zeros_1/mulMul!lstm_layer/strided_slice:output:0!lstm_layer/zeros_1/mul/y:output:0*
T0*
_output_shapes
: \
lstm_layer/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :??
lstm_layer/zeros_1/LessLesslstm_layer/zeros_1/mul:z:0"lstm_layer/zeros_1/Less/y:output:0*
T0*
_output_shapes
: ]
lstm_layer/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(?
lstm_layer/zeros_1/packedPack!lstm_layer/strided_slice:output:0$lstm_layer/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:]
lstm_layer/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_layer/zeros_1Fill"lstm_layer/zeros_1/packed:output:0!lstm_layer/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????(?
lstm_layer/Read/ReadVariableOpReadVariableOp'lstm_layer_read_readvariableop_resource*
_output_shapes
:	2?*
dtype0q
lstm_layer/IdentityIdentity&lstm_layer/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	2??
 lstm_layer/Read_1/ReadVariableOpReadVariableOp)lstm_layer_read_1_readvariableop_resource*
_output_shapes
:	(?*
dtype0u
lstm_layer/Identity_1Identity(lstm_layer/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	(??
 lstm_layer/Read_2/ReadVariableOpReadVariableOp)lstm_layer_read_2_readvariableop_resource*
_output_shapes	
:?*
dtype0q
lstm_layer/Identity_2Identity(lstm_layer/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
lstm_layer/PartitionedCallPartitionedCall4embedding_layer/embedding_lookup/Identity_1:output:0lstm_layer/zeros:output:0lstm_layer/zeros_1:output:0lstm_layer/Identity:output:0lstm_layer/Identity_1:output:0lstm_layer/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????(:??????????????????(:?????????(:?????????(: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_lstm_72427?
!dense_layer/MatMul/ReadVariableOpReadVariableOp*dense_layer_matmul_readvariableop_resource*
_output_shapes

:(2*
dtype0?
dense_layer/MatMulMatMul#lstm_layer/PartitionedCall:output:0)dense_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
"dense_layer/BiasAdd/ReadVariableOpReadVariableOp+dense_layer_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
dense_layer/BiasAddBiasAdddense_layer/MatMul:product:0*dense_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2i
dense_layer/LeakyRelu	LeakyReludense_layer/BiasAdd:output:0*'
_output_shapes
:?????????2?
"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
output_layer/MatMulMatMul#dense_layer/LeakyRelu:activations:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
output_layer/SigmoidSigmoidoutput_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????g
IdentityIdentityoutput_layer/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp!^embedding_layer/embedding_lookup^lstm_layer/Read/ReadVariableOp!^lstm_layer/Read_1/ReadVariableOp!^lstm_layer/Read_2/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2H
"dense_layer/BiasAdd/ReadVariableOp"dense_layer/BiasAdd/ReadVariableOp2F
!dense_layer/MatMul/ReadVariableOp!dense_layer/MatMul/ReadVariableOp2D
 embedding_layer/embedding_lookup embedding_layer/embedding_lookup2@
lstm_layer/Read/ReadVariableOplstm_layer/Read/ReadVariableOp2D
 lstm_layer/Read_1/ReadVariableOp lstm_layer/Read_1/ReadVariableOp2D
 lstm_layer/Read_2/ReadVariableOp lstm_layer/Read_2/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?L
?
&__forward_gpu_lstm_with_fallback_73152

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_16108790-766e-49d9-aa48-4dc15a260a37*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_72977_73153*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?@
?
(__inference_gpu_lstm_with_fallback_70417

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?s?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_cb34be3b-bdf1-4ccf-a711-a0251c75d857*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?(
?
while_body_70238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:???????????
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????(l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????(Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????(g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????(f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????(W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????(k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????(?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????(_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????("*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2?:%	!

_output_shapes
:	(?:!


_output_shapes	
:?
?:
?
__inference_standard_lstm_73827

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????(S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????(N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????(U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????(T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????(K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????(Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_73742*
condR
while_cond_73741*b
output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?*
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????([
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????(X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????(X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_e9e58b59-b94f-4ef5-834e-05f223d20beb*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?	
?
while_cond_73741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_73741___redundant_placeholder03
/while_while_cond_73741___redundant_placeholder13
/while_while_cond_73741___redundant_placeholder23
/while_while_cond_73741___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????(:?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?L
?
&__forward_gpu_lstm_with_fallback_74967

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_8daf26e5-3457-42db-b61b-3cf69b473745*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_74792_74968*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?	
?
while_cond_74611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_74611___redundant_placeholder03
/while_while_cond_74611___redundant_placeholder13
/while_while_cond_74611___redundant_placeholder23
/while_while_cond_74611___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????(:?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?@
?
(__inference_gpu_lstm_with_fallback_73486

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?s?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_c97236c5-3c50-4cb0-aa5c-a1f10ef8397c*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?L
?
&__forward_gpu_lstm_with_fallback_70140

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_e6e343a0-14cf-47ef-bd2b-ef49225ac85c*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_69965_70141*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?L
?
&__forward_gpu_lstm_with_fallback_74097

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_e9e58b59-b94f-4ef5-834e-05f223d20beb*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_73922_74098*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?:
?
__inference_standard_lstm_69870

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????(S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????(N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????(U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????(T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????(K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????(Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_69785*
condR
while_cond_69784*b
output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?*
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????([
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????(X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????(X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_e6e343a0-14cf-47ef-bd2b-ef49225ac85c*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
??
?
9__inference___backward_gpu_lstm_with_fallback_73922_74098
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????(m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????(`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????(`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????(O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????(*
shrink_axis_mask?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????(q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????(c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????2:?????????(:?????????(:?s?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:(i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:(?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:(?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:(m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:((h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:(h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:(?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:??
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2??
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	(?\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2?h

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	(?d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????(:??????????????????(:?????????(:?????????(: :??????????????????(::?????????(:?????????(::??????????????????2:?????????(:?????????(:?s::?????????(:?????????(: ::::::::: : : : *=
api_implements+)lstm_e9e58b59-b94f-4ef5-834e-05f223d20beb*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_74097*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????(::6
4
_output_shapes"
 :??????????????????(:-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????(: 

_output_shapes
::1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????2:1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:!

_output_shapes	
:?s: 

_output_shapes
::-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
G__inference_output_layer_layer_call_and_return_conditional_losses_75010

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
E__inference_lstm_layer_layer_call_and_return_conditional_losses_74535

inputs/
read_readvariableop_resource:	2?1
read_1_readvariableop_resource:	(?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????(q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2?*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2?u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	(?*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	(?q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????(:??????????????????(:?????????(:?????????(: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_lstm_74262i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_layer_layer_call_fn_73219

inputs
unknown:	2?
	unknown_0:	(?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lstm_layer_layer_call_and_return_conditional_losses_71506o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
??
?
!__inference__traced_restore_75241
file_prefix>
+assignvariableop_embedding_layer_embeddings:	?C27
%assignvariableop_1_dense_layer_kernel:(21
#assignvariableop_2_dense_layer_bias:28
&assignvariableop_3_output_layer_kernel:22
$assignvariableop_4_output_layer_bias:&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: D
1assignvariableop_10_lstm_layer_lstm_cell_1_kernel:	2?N
;assignvariableop_11_lstm_layer_lstm_cell_1_recurrent_kernel:	(?>
/assignvariableop_12_lstm_layer_lstm_cell_1_bias:	?#
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: H
5assignvariableop_17_adam_embedding_layer_embeddings_m:	?C2?
-assignvariableop_18_adam_dense_layer_kernel_m:(29
+assignvariableop_19_adam_dense_layer_bias_m:2@
.assignvariableop_20_adam_output_layer_kernel_m:2:
,assignvariableop_21_adam_output_layer_bias_m:K
8assignvariableop_22_adam_lstm_layer_lstm_cell_1_kernel_m:	2?U
Bassignvariableop_23_adam_lstm_layer_lstm_cell_1_recurrent_kernel_m:	(?E
6assignvariableop_24_adam_lstm_layer_lstm_cell_1_bias_m:	?H
5assignvariableop_25_adam_embedding_layer_embeddings_v:	?C2?
-assignvariableop_26_adam_dense_layer_kernel_v:(29
+assignvariableop_27_adam_dense_layer_bias_v:2@
.assignvariableop_28_adam_output_layer_kernel_v:2:
,assignvariableop_29_adam_output_layer_bias_v:K
8assignvariableop_30_adam_lstm_layer_lstm_cell_1_kernel_v:	2?U
Bassignvariableop_31_adam_lstm_layer_lstm_cell_1_recurrent_kernel_v:	(?E
6assignvariableop_32_adam_lstm_layer_lstm_cell_1_bias_v:	?
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp+assignvariableop_embedding_layer_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp%assignvariableop_1_dense_layer_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_layer_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp&assignvariableop_3_output_layer_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_output_layer_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_layer_lstm_cell_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_layer_lstm_cell_1_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_layer_lstm_cell_1_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp5assignvariableop_17_adam_embedding_layer_embeddings_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp-assignvariableop_18_adam_dense_layer_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_layer_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp.assignvariableop_20_adam_output_layer_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_output_layer_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp8assignvariableop_22_adam_lstm_layer_lstm_cell_1_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpBassignvariableop_23_adam_lstm_layer_lstm_cell_1_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_lstm_layer_lstm_cell_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp5assignvariableop_25_adam_embedding_layer_embeddings_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp-assignvariableop_26_adam_dense_layer_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_layer_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp.assignvariableop_28_adam_output_layer_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_output_layer_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp8assignvariableop_30_adam_lstm_layer_lstm_cell_1_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpBassignvariableop_31_adam_lstm_layer_lstm_cell_1_recurrent_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_lstm_layer_lstm_cell_1_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
?@
?
(__inference_gpu_lstm_with_fallback_74791

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?s?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_8daf26e5-3457-42db-b61b-3cf69b473745*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?:
?
__inference_standard_lstm_74697

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????(S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????(N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????(U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????(T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????(K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????(Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_74612*
condR
while_cond_74611*b
output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?*
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????([
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????(X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????(X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_8daf26e5-3457-42db-b61b-3cf69b473745*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?:
?
__inference_standard_lstm_73392

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????(S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????(N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????(U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????(T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????(K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????(Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_73307*
condR
while_cond_73306*b
output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?*
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????([
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????(X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????(X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_c97236c5-3c50-4cb0-aa5c-a1f10ef8397c*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?
?
+__inference_dense_layer_layer_call_fn_74979

inputs
unknown:(2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_layer_layer_call_and_return_conditional_losses_71525o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?(
?
while_body_71678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:???????????
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????(l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????(Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????(g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????(f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????(W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????(k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????(?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????(_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????("*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2?:%	!

_output_shapes
:	(?:!


_output_shapes	
:?
?L
?
&__forward_gpu_lstm_with_fallback_72033

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_75ccb1f8-7748-4395-81f7-7c7fca61eeaf*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_71858_72034*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?L
?
&__forward_gpu_lstm_with_fallback_72697

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:2(:2(:2(:2(*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:((:((:((:((*
	num_splitY

zeros_likeConst*
_output_shapes	
:?*
dtype0*
valueB?*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:?S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:(:(:(:(:(:(:(:(*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:(2Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:(2[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:?a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:(([
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:?[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:([
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:(\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:(\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:(\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:(\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:(\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:(\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:(O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????(:?????????(:?????????(:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????(p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????(*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????(Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????(\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_e858a5d1-4e58-45a5-81ce-b8185d6b8fb5*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_72522_72698*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?	
?
while_cond_74176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_74176___redundant_placeholder03
/while_while_cond_74176___redundant_placeholder13
/while_while_cond_74176___redundant_placeholder23
/while_while_cond_74176___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????(:?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
??
?
9__inference___backward_gpu_lstm_with_fallback_72522_72698
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????(m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????(`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????(`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????(O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????(*
shrink_axis_mask?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????(q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????(c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????2:?????????(:?????????(:?s?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:(i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:(?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:(?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:(m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:((h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:(h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:(?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:??
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2??
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	(?\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2?h

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	(?d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????(:??????????????????(:?????????(:?????????(: :??????????????????(::?????????(:?????????(::??????????????????2:?????????(:?????????(:?s::?????????(:?????????(: ::::::::: : : : *=
api_implements+)lstm_e858a5d1-4e58-45a5-81ce-b8185d6b8fb5*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_72697*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????(::6
4
_output_shapes"
 :??????????????????(:-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????(: 

_output_shapes
::1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????2:1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:!

_output_shapes	
:?s: 

_output_shapes
::-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?(
?
while_body_74612
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:???????????
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????(l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????(Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????(g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????(f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????(W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????(k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????(?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????(_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????("*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2?:%	!

_output_shapes
:	(?:!


_output_shapes	
:?
?:
?
__inference_standard_lstm_71763

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????(S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????(N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????(U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????(T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????(K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????(Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_71678*
condR
while_cond_71677*b
output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?*
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????([
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????(X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????(X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_75ccb1f8-7748-4395-81f7-7c7fca61eeaf*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
?:
?
__inference_standard_lstm_70769

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????(S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????(N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????(U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????(T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????(V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????(K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????(Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_70684*
condR
while_cond_70683*b
output_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?*
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????(   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????(*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????([
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????(f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????(X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????(X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????(I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:??????????????????2:?????????(:?????????(:	2?:	(?:?*=
api_implements+)lstm_0efa8162-8c75-42f4-87e1-bdf23c1ddf90*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????(
 
_user_specified_nameinit_c:GC

_output_shapes
:	2?
 
_user_specified_namekernel:QM

_output_shapes
:	(?
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:?

_user_specified_namebias
??
?
9__inference___backward_gpu_lstm_with_fallback_73487_73663
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????(m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????(`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????(`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????(O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????(*
shrink_axis_mask?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????(q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????(c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????2:?????????(:?????????(:?s?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:(i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:(?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:(?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:(m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:((h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:(h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:(?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:??
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2??
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	(?\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2?h

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	(?d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????(:??????????????????(:?????????(:?????????(: :??????????????????(::?????????(:?????????(::??????????????????2:?????????(:?????????(:?s::?????????(:?????????(: ::::::::: : : : *=
api_implements+)lstm_c97236c5-3c50-4cb0-aa5c-a1f10ef8397c*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_73662*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????(::6
4
_output_shapes"
 :??????????????????(:-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????(: 

_output_shapes
::1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????2:1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:!

_output_shapes	
:?s: 

_output_shapes
::-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
G__inference_output_layer_layer_call_and_return_conditional_losses_71542

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_72100

inputs(
embedding_layer_72079:	?C2#
lstm_layer_72082:	2?#
lstm_layer_72084:	(?
lstm_layer_72086:	?#
dense_layer_72089:(2
dense_layer_72091:2$
output_layer_72094:2 
output_layer_72096:
identity??#dense_layer/StatefulPartitionedCall?'embedding_layer/StatefulPartitionedCall?"lstm_layer/StatefulPartitionedCall?$output_layer/StatefulPartitionedCall?
'embedding_layer/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_layer_72079*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_embedding_layer_layer_call_and_return_conditional_losses_71068?
"lstm_layer/StatefulPartitionedCallStatefulPartitionedCall0embedding_layer/StatefulPartitionedCall:output:0lstm_layer_72082lstm_layer_72084lstm_layer_72086*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lstm_layer_layer_call_and_return_conditional_losses_72036?
#dense_layer/StatefulPartitionedCallStatefulPartitionedCall+lstm_layer/StatefulPartitionedCall:output:0dense_layer_72089dense_layer_72091*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_layer_layer_call_and_return_conditional_losses_71525?
$output_layer/StatefulPartitionedCallStatefulPartitionedCall,dense_layer/StatefulPartitionedCall:output:0output_layer_72094output_layer_72096*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_output_layer_layer_call_and_return_conditional_losses_71542|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^dense_layer/StatefulPartitionedCall(^embedding_layer/StatefulPartitionedCall#^lstm_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 2J
#dense_layer/StatefulPartitionedCall#dense_layer/StatefulPartitionedCall2R
'embedding_layer/StatefulPartitionedCall'embedding_layer/StatefulPartitionedCall2H
"lstm_layer/StatefulPartitionedCall"lstm_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
??
?
9__inference___backward_gpu_lstm_with_fallback_69965_70141
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????(m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????(`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????(`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????(O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????(*
shrink_axis_mask?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????(q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????(c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????2:?????????(:?????????(:?s?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:(i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:(?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:(?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:(m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:((h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:(h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:(?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:??
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2??
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	(?\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2?h

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	(?d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????(:??????????????????(:?????????(:?????????(: :??????????????????(::?????????(:?????????(::??????????????????2:?????????(:?????????(:?s::?????????(:?????????(: ::::::::: : : : *=
api_implements+)lstm_e6e343a0-14cf-47ef-bd2b-ef49225ac85c*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_70140*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????(::6
4
_output_shapes"
 :??????????????????(:-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????(: 

_output_shapes
::1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????2:1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:!

_output_shapes	
:?s: 

_output_shapes
::-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_lstm_layer_layer_call_and_return_conditional_losses_72036

inputs/
read_readvariableop_resource:	2?1
read_1_readvariableop_resource:	(?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????(q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2?*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2?u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	(?*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	(?q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????(:??????????????????(:?????????(:?????????(: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_lstm_71763i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?(
?
while_body_72342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:???????????
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:??????????p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:??????????W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????(:?????????(:?????????(:?????????(*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????(l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????(Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????(g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????(f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????(b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????(W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????(k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????(?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:???O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????(_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????("*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :?????????(:?????????(: : :	2?:	(?:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2?:%	!

_output_shapes
:	(?:!


_output_shapes	
:?
??
?
9__inference___backward_gpu_lstm_with_fallback_71858_72034
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????(m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????(`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????(`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????(O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????(*
shrink_axis_mask?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????(q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????(?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????(c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:??????????????????2:?????????(:?????????(:?s?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????(^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:(i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:(j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:(?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:(?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:(?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:(m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   2   ?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:(2o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:((o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"(   (   ?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:((h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:(h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:(i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:(?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2(?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:((?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:??
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	2??
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	(?\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:??
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????2t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????(f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	2?h

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	(?d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:?"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????(:??????????????????(:?????????(:?????????(: :??????????????????(::?????????(:?????????(::??????????????????2:?????????(:?????????(:?s::?????????(:?????????(: ::::::::: : : : *=
api_implements+)lstm_75ccb1f8-7748-4395-81f7-7c7fca61eeaf*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_72033*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????(::6
4
_output_shapes"
 :??????????????????(:-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????(: 

_output_shapes
::1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????2:1-
+
_output_shapes
:?????????(:1-
+
_output_shapes
:?????????(:!

_output_shapes	
:?s: 

_output_shapes
::-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
while_cond_71147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_71147___redundant_placeholder03
/while_while_cond_71147___redundant_placeholder13
/while_while_cond_71147___redundant_placeholder23
/while_while_cond_71147___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????(:?????????(: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????(:-)
'
_output_shapes
:?????????(:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?
?
E__inference_lstm_layer_layer_call_and_return_conditional_losses_71042

inputs/
read_readvariableop_resource:	2?1
read_1_readvariableop_resource:	(?-
read_2_readvariableop_resource:	?

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????(O
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :(c
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: Q
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?_
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????(q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	2?*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	2?u
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	(?*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	(?q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:?*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????(:??????????????????(:?????????(:?????????(: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_lstm_70769i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(?
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?	
?
,__inference_sequential_1_layer_call_fn_72259

inputs
unknown:	?C2
	unknown_0:	2?
	unknown_1:	(?
	unknown_2:	?
	unknown_3:(2
	unknown_4:2
	unknown_5:2
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_72100o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:??????????????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
`
embedding_layer_inputG
'serving_default_embedding_layer_input:0??????????????????@
output_layer0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?x
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
i__call__
*j&call_and_return_all_conditional_losses
k_default_save_signature"
_tf_keras_sequential
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layer
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
?
"iter

#beta_1

$beta_2
	%decay
&learning_ratemYmZm[m\m]'m^(m_)m`vavbvcvdve'vf(vg)vh"
	optimizer
X
0
'1
(2
)3
4
5
6
7"
trackable_list_wrapper
X
0
'1
(2
)3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
i__call__
k_default_save_signature
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
,
tserving_default"
signature_map
-:+	?C22embedding_layer/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
?
4
state_size

'kernel
(recurrent_kernel
)bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

9states
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
$:"(22dense_layer/kernel
:22dense_layer/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
%:#22output_layer/kernel
:2output_layer/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
 regularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	2?2lstm_layer/lstm_cell_1/kernel
::8	(?2'lstm_layer/lstm_cell_1/recurrent_kernel
*:(?2lstm_layer/lstm_cell_1/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
I0
J1"
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
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
5	variables
6trainable_variables
7regularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	Ptotal
	Qcount
R	variables
S	keras_api"
_tf_keras_metric
^
	Ttotal
	Ucount
V
_fn_kwargs
W	variables
X	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
P0
Q1"
trackable_list_wrapper
-
R	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
T0
U1"
trackable_list_wrapper
-
W	variables"
_generic_user_object
2:0	?C22!Adam/embedding_layer/embeddings/m
):'(22Adam/dense_layer/kernel/m
#:!22Adam/dense_layer/bias/m
*:(22Adam/output_layer/kernel/m
$:"2Adam/output_layer/bias/m
5:3	2?2$Adam/lstm_layer/lstm_cell_1/kernel/m
?:=	(?2.Adam/lstm_layer/lstm_cell_1/recurrent_kernel/m
/:-?2"Adam/lstm_layer/lstm_cell_1/bias/m
2:0	?C22!Adam/embedding_layer/embeddings/v
):'(22Adam/dense_layer/kernel/v
#:!22Adam/dense_layer/bias/v
*:(22Adam/output_layer/kernel/v
$:"2Adam/output_layer/bias/v
5:3	2?2$Adam/lstm_layer/lstm_cell_1/kernel/v
?:=	(?2.Adam/lstm_layer/lstm_cell_1/recurrent_kernel/v
/:-?2"Adam/lstm_layer/lstm_cell_1/bias/v
?2?
,__inference_sequential_1_layer_call_fn_71568
,__inference_sequential_1_layer_call_fn_72238
,__inference_sequential_1_layer_call_fn_72259
,__inference_sequential_1_layer_call_fn_72140?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_sequential_1_layer_call_and_return_conditional_losses_72714
G__inference_sequential_1_layer_call_and_return_conditional_losses_73169
G__inference_sequential_1_layer_call_and_return_conditional_losses_72164
G__inference_sequential_1_layer_call_and_return_conditional_losses_72188?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_70157embedding_layer_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_embedding_layer_layer_call_fn_73176?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_embedding_layer_layer_call_and_return_conditional_losses_73186?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_lstm_layer_layer_call_fn_73197
*__inference_lstm_layer_layer_call_fn_73208
*__inference_lstm_layer_layer_call_fn_73219
*__inference_lstm_layer_layer_call_fn_73230?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_lstm_layer_layer_call_and_return_conditional_losses_73665
E__inference_lstm_layer_layer_call_and_return_conditional_losses_74100
E__inference_lstm_layer_layer_call_and_return_conditional_losses_74535
E__inference_lstm_layer_layer_call_and_return_conditional_losses_74970?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dense_layer_layer_call_fn_74979?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_layer_layer_call_and_return_conditional_losses_74990?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_output_layer_layer_call_fn_74999?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_output_layer_layer_call_and_return_conditional_losses_75010?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_72217embedding_layer_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
 __inference__wrapped_model_70157?'()G?D
=?:
8?5
embedding_layer_input??????????????????
? ";?8
6
output_layer&?#
output_layer??????????
F__inference_dense_layer_layer_call_and_return_conditional_losses_74990\/?,
%?"
 ?
inputs?????????(
? "%?"
?
0?????????2
? ~
+__inference_dense_layer_layer_call_fn_74979O/?,
%?"
 ?
inputs?????????(
? "??????????2?
J__inference_embedding_layer_layer_call_and_return_conditional_losses_73186q8?5
.?+
)?&
inputs??????????????????
? "2?/
(?%
0??????????????????2
? ?
/__inference_embedding_layer_layer_call_fn_73176d8?5
.?+
)?&
inputs??????????????????
? "%?"??????????????????2?
E__inference_lstm_layer_layer_call_and_return_conditional_losses_73665}'()O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p 

 
? "%?"
?
0?????????(
? ?
E__inference_lstm_layer_layer_call_and_return_conditional_losses_74100}'()O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p

 
? "%?"
?
0?????????(
? ?
E__inference_lstm_layer_layer_call_and_return_conditional_losses_74535v'()H?E
>?;
-?*
inputs??????????????????2

 
p 

 
? "%?"
?
0?????????(
? ?
E__inference_lstm_layer_layer_call_and_return_conditional_losses_74970v'()H?E
>?;
-?*
inputs??????????????????2

 
p

 
? "%?"
?
0?????????(
? ?
*__inference_lstm_layer_layer_call_fn_73197p'()O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p 

 
? "??????????(?
*__inference_lstm_layer_layer_call_fn_73208p'()O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p

 
? "??????????(?
*__inference_lstm_layer_layer_call_fn_73219i'()H?E
>?;
-?*
inputs??????????????????2

 
p 

 
? "??????????(?
*__inference_lstm_layer_layer_call_fn_73230i'()H?E
>?;
-?*
inputs??????????????????2

 
p

 
? "??????????(?
G__inference_output_layer_layer_call_and_return_conditional_losses_75010\/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? 
,__inference_output_layer_layer_call_fn_74999O/?,
%?"
 ?
inputs?????????2
? "???????????
G__inference_sequential_1_layer_call_and_return_conditional_losses_72164?'()O?L
E?B
8?5
embedding_layer_input??????????????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_72188?'()O?L
E?B
8?5
embedding_layer_input??????????????????
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_72714s'()@?=
6?3
)?&
inputs??????????????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_73169s'()@?=
6?3
)?&
inputs??????????????????
p

 
? "%?"
?
0?????????
? ?
,__inference_sequential_1_layer_call_fn_71568u'()O?L
E?B
8?5
embedding_layer_input??????????????????
p 

 
? "???????????
,__inference_sequential_1_layer_call_fn_72140u'()O?L
E?B
8?5
embedding_layer_input??????????????????
p

 
? "???????????
,__inference_sequential_1_layer_call_fn_72238f'()@?=
6?3
)?&
inputs??????????????????
p 

 
? "???????????
,__inference_sequential_1_layer_call_fn_72259f'()@?=
6?3
)?&
inputs??????????????????
p

 
? "???????????
#__inference_signature_wrapper_72217?'()`?]
? 
V?S
Q
embedding_layer_input8?5
embedding_layer_input??????????????????";?8
6
output_layer&?#
output_layer?????????