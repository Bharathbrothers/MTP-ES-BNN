εγ2
 φ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Expm1
x"T
y"T"
Ttype:

2
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	

RandomUniformInt

shape"T
minval"Tout
maxval"Tout
output"Tout"
seedint "
seed2int "
Touttype:
2	"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
@
Softplus
features"T
activations"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
Α
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
executor_typestring ¨
^
StatelessRandomGetKeyCounter
seed"Tseed
key
counter"
Tseedtype0	:
2	
΅
StatelessRandomUniformIntV2
shape"Tshape
key
counter
alg
minval"dtype
maxval"dtype
output"dtype"
dtypetype:
2	"
Tshapetype0:
2	
@
StaticRegexFullMatch	
input

output
"
patternstring
φ
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-0-g3f878cff5b68Υ΄1
¦
%dense_flipout_15/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%dense_flipout_15/kernel_posterior_loc

9dense_flipout_15/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp%dense_flipout_15/kernel_posterior_loc*
_output_shapes

:*
dtype0
Ζ
5dense_flipout_15/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75dense_flipout_15/kernel_posterior_untransformed_scale
Ώ
Idense_flipout_15/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp5dense_flipout_15/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

#dense_flipout_15/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#dense_flipout_15/bias_posterior_loc

7dense_flipout_15/bias_posterior_loc/Read/ReadVariableOpReadVariableOp#dense_flipout_15/bias_posterior_loc*
_output_shapes
:*
dtype0
¦
%dense_flipout_16/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%dense_flipout_16/kernel_posterior_loc

9dense_flipout_16/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp%dense_flipout_16/kernel_posterior_loc*
_output_shapes

:*
dtype0
Ζ
5dense_flipout_16/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75dense_flipout_16/kernel_posterior_untransformed_scale
Ώ
Idense_flipout_16/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp5dense_flipout_16/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

#dense_flipout_16/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#dense_flipout_16/bias_posterior_loc

7dense_flipout_16/bias_posterior_loc/Read/ReadVariableOpReadVariableOp#dense_flipout_16/bias_posterior_loc*
_output_shapes
:*
dtype0
¦
%dense_flipout_17/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%dense_flipout_17/kernel_posterior_loc

9dense_flipout_17/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp%dense_flipout_17/kernel_posterior_loc*
_output_shapes

:*
dtype0
Ζ
5dense_flipout_17/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75dense_flipout_17/kernel_posterior_untransformed_scale
Ώ
Idense_flipout_17/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp5dense_flipout_17/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

#dense_flipout_17/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#dense_flipout_17/bias_posterior_loc

7dense_flipout_17/bias_posterior_loc/Read/ReadVariableOpReadVariableOp#dense_flipout_17/bias_posterior_loc*
_output_shapes
:*
dtype0
¦
%dense_flipout_18/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%dense_flipout_18/kernel_posterior_loc

9dense_flipout_18/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp%dense_flipout_18/kernel_posterior_loc*
_output_shapes

:*
dtype0
Ζ
5dense_flipout_18/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75dense_flipout_18/kernel_posterior_untransformed_scale
Ώ
Idense_flipout_18/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp5dense_flipout_18/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

#dense_flipout_18/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#dense_flipout_18/bias_posterior_loc

7dense_flipout_18/bias_posterior_loc/Read/ReadVariableOpReadVariableOp#dense_flipout_18/bias_posterior_loc*
_output_shapes
:*
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
΄
,Adam/dense_flipout_15/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_15/kernel_posterior_loc/m
­
@Adam/dense_flipout_15/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_15/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_15/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_15/kernel_posterior_untransformed_scale/m
Ν
PAdam/dense_flipout_15/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_15/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_15/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_15/bias_posterior_loc/m
₯
>Adam/dense_flipout_15/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_15/bias_posterior_loc/m*
_output_shapes
:*
dtype0
΄
,Adam/dense_flipout_16/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_16/kernel_posterior_loc/m
­
@Adam/dense_flipout_16/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_16/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_16/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_16/kernel_posterior_untransformed_scale/m
Ν
PAdam/dense_flipout_16/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_16/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_16/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_16/bias_posterior_loc/m
₯
>Adam/dense_flipout_16/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_16/bias_posterior_loc/m*
_output_shapes
:*
dtype0
΄
,Adam/dense_flipout_17/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_17/kernel_posterior_loc/m
­
@Adam/dense_flipout_17/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_17/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_17/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_17/kernel_posterior_untransformed_scale/m
Ν
PAdam/dense_flipout_17/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_17/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_17/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_17/bias_posterior_loc/m
₯
>Adam/dense_flipout_17/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_17/bias_posterior_loc/m*
_output_shapes
:*
dtype0
΄
,Adam/dense_flipout_18/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_18/kernel_posterior_loc/m
­
@Adam/dense_flipout_18/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_18/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_18/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_18/kernel_posterior_untransformed_scale/m
Ν
PAdam/dense_flipout_18/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_18/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_18/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_18/bias_posterior_loc/m
₯
>Adam/dense_flipout_18/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_18/bias_posterior_loc/m*
_output_shapes
:*
dtype0
΄
,Adam/dense_flipout_15/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_15/kernel_posterior_loc/v
­
@Adam/dense_flipout_15/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_15/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_15/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_15/kernel_posterior_untransformed_scale/v
Ν
PAdam/dense_flipout_15/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_15/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_15/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_15/bias_posterior_loc/v
₯
>Adam/dense_flipout_15/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_15/bias_posterior_loc/v*
_output_shapes
:*
dtype0
΄
,Adam/dense_flipout_16/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_16/kernel_posterior_loc/v
­
@Adam/dense_flipout_16/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_16/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_16/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_16/kernel_posterior_untransformed_scale/v
Ν
PAdam/dense_flipout_16/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_16/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_16/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_16/bias_posterior_loc/v
₯
>Adam/dense_flipout_16/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_16/bias_posterior_loc/v*
_output_shapes
:*
dtype0
΄
,Adam/dense_flipout_17/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_17/kernel_posterior_loc/v
­
@Adam/dense_flipout_17/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_17/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_17/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_17/kernel_posterior_untransformed_scale/v
Ν
PAdam/dense_flipout_17/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_17/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_17/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_17/bias_posterior_loc/v
₯
>Adam/dense_flipout_17/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_17/bias_posterior_loc/v*
_output_shapes
:*
dtype0
΄
,Adam/dense_flipout_18/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_18/kernel_posterior_loc/v
­
@Adam/dense_flipout_18/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_18/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_18/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_18/kernel_posterior_untransformed_scale/v
Ν
PAdam/dense_flipout_18/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_18/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_18/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_18/bias_posterior_loc/v
₯
>Adam/dense_flipout_18/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_18/bias_posterior_loc/v*
_output_shapes
:*
dtype0
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
\
Const_1Const*
_output_shapes

:*
dtype0*
valueB*    
L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
\
Const_3Const*
_output_shapes

:*
dtype0*
valueB*    
L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
\
Const_5Const*
_output_shapes

:*
dtype0*
valueB*    
L
Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
\
Const_7Const*
_output_shapes

:*
dtype0*
valueB*    

NoOpNoOp
ρa
Const_8Const"/device:CPU:0*
_output_shapes
: *
dtype0*ͺa
value aBa Ba
θ
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

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Ε
kernel_posterior_loc
($kernel_posterior_untransformed_scale
kernel_posterior
kernel_prior
bias_posterior_loc
bias_posterior
kernel_posterior_affine
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
Ε
kernel_posterior_loc
($kernel_posterior_untransformed_scale
kernel_posterior
kernel_prior
bias_posterior_loc
 bias_posterior
!kernel_posterior_affine
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses*
Ε
(kernel_posterior_loc
()$kernel_posterior_untransformed_scale
*kernel_posterior
+kernel_prior
,bias_posterior_loc
-bias_posterior
.kernel_posterior_affine
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses*
Ε
5kernel_posterior_loc
(6$kernel_posterior_untransformed_scale
7kernel_posterior
8kernel_prior
9bias_posterior_loc
:bias_posterior
;kernel_posterior_affine
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses*
΄
Biter

Cbeta_1

Dbeta_2
	Edecay
Flearning_ratemmmmmm(m)m,m 5m‘6m’9m£v€v₯v¦v§v¨v©(vͺ)v«,v¬5v­6v?9v―*
Z
0
1
2
3
4
5
(6
)7
,8
59
610
911*
Z
0
1
2
3
4
5
(6
)7
,8
59
610
911*
* 
°
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Lserving_default* 
}
VARIABLE_VALUE%dense_flipout_15/kernel_posterior_locDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
€
VARIABLE_VALUE5dense_flipout_15/kernel_posterior_untransformed_scaleTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
M_distribution
N_graph_parents*
)
O_distribution
P_graph_parents* 
y
VARIABLE_VALUE#dense_flipout_15/bias_posterior_locBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
+
Q_distribution
R_graph_parents*
$

S_scale
T_graph_parents*

0
1
2*

0
1
2*
* 

Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
}
VARIABLE_VALUE%dense_flipout_16/kernel_posterior_locDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
€
VARIABLE_VALUE5dense_flipout_16/kernel_posterior_untransformed_scaleTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
Z_distribution
[_graph_parents*
)
\_distribution
]_graph_parents* 
y
VARIABLE_VALUE#dense_flipout_16/bias_posterior_locBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
+
^_distribution
__graph_parents*
$

`_scale
a_graph_parents*

0
1
2*

0
1
2*
* 

bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
* 
* 
}
VARIABLE_VALUE%dense_flipout_17/kernel_posterior_locDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
€
VARIABLE_VALUE5dense_flipout_17/kernel_posterior_untransformed_scaleTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
g_distribution
h_graph_parents*
)
i_distribution
j_graph_parents* 
y
VARIABLE_VALUE#dense_flipout_17/bias_posterior_locBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
+
k_distribution
l_graph_parents*
$

m_scale
n_graph_parents*

(0
)1
,2*

(0
)1
,2*
* 

onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*
* 
* 
}
VARIABLE_VALUE%dense_flipout_18/kernel_posterior_locDlayer_with_weights-3/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
€
VARIABLE_VALUE5dense_flipout_18/kernel_posterior_untransformed_scaleTlayer_with_weights-3/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
t_distribution
u_graph_parents*
)
v_distribution
w_graph_parents* 
y
VARIABLE_VALUE#dense_flipout_18/bias_posterior_locBlayer_with_weights-3/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
+
x_distribution
y_graph_parents*
$

z_scale
{_graph_parents*

50
61
92*

50
61
92*
* 

|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

0
1*
* 
* 
* 
/
_loc

S_scale
_graph_parents*
* 

_graph_parents* 
* 
#
_loc
_graph_parents*
* 

_pretransformed_input*
* 
* 
* 
* 
* 
* 
/
_loc

`_scale
_graph_parents*
* 

_graph_parents* 
* 
#
_loc
_graph_parents*
* 

_pretransformed_input*
* 
* 
* 
* 
* 
* 
/
(_loc

m_scale
_graph_parents*
* 

_graph_parents* 
* 
#
,_loc
_graph_parents*
* 

)_pretransformed_input*
* 
* 
* 
* 
* 
* 
/
5_loc

z_scale
_graph_parents*
* 

_graph_parents* 
* 
#
9_loc
_graph_parents*
* 

6_pretransformed_input*
* 
* 
* 
* 
* 
* 
<

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*
§ 
VARIABLE_VALUE,Adam/dense_flipout_15/kernel_posterior_loc/m`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_15/kernel_posterior_untransformed_scale/mplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_15/bias_posterior_loc/m^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_16/kernel_posterior_loc/m`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_16/kernel_posterior_untransformed_scale/mplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_16/bias_posterior_loc/m^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_17/kernel_posterior_loc/m`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_17/kernel_posterior_untransformed_scale/mplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_17/bias_posterior_loc/m^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_18/kernel_posterior_loc/m`layer_with_weights-3/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_18/kernel_posterior_untransformed_scale/mplayer_with_weights-3/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_18/bias_posterior_loc/m^layer_with_weights-3/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_15/kernel_posterior_loc/v`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_15/kernel_posterior_untransformed_scale/vplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_15/bias_posterior_loc/v^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_16/kernel_posterior_loc/v`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_16/kernel_posterior_untransformed_scale/vplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_16/bias_posterior_loc/v^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_17/kernel_posterior_loc/v`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_17/kernel_posterior_untransformed_scale/vplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_17/bias_posterior_loc/v^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_18/kernel_posterior_loc/v`layer_with_weights-3/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_18/kernel_posterior_untransformed_scale/vplayer_with_weights-3/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_18/bias_posterior_loc/v^layer_with_weights-3/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_6Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
₯
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_65dense_flipout_15/kernel_posterior_untransformed_scale%dense_flipout_15/kernel_posterior_loc#dense_flipout_15/bias_posterior_locConstConst_15dense_flipout_16/kernel_posterior_untransformed_scale%dense_flipout_16/kernel_posterior_loc#dense_flipout_16/bias_posterior_locConst_2Const_35dense_flipout_17/kernel_posterior_untransformed_scale%dense_flipout_17/kernel_posterior_loc#dense_flipout_17/bias_posterior_locConst_4Const_55dense_flipout_18/kernel_posterior_untransformed_scale%dense_flipout_18/kernel_posterior_loc#dense_flipout_18/bias_posterior_locConst_6Const_7* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_2152977
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename9dense_flipout_15/kernel_posterior_loc/Read/ReadVariableOpIdense_flipout_15/kernel_posterior_untransformed_scale/Read/ReadVariableOp7dense_flipout_15/bias_posterior_loc/Read/ReadVariableOp9dense_flipout_16/kernel_posterior_loc/Read/ReadVariableOpIdense_flipout_16/kernel_posterior_untransformed_scale/Read/ReadVariableOp7dense_flipout_16/bias_posterior_loc/Read/ReadVariableOp9dense_flipout_17/kernel_posterior_loc/Read/ReadVariableOpIdense_flipout_17/kernel_posterior_untransformed_scale/Read/ReadVariableOp7dense_flipout_17/bias_posterior_loc/Read/ReadVariableOp9dense_flipout_18/kernel_posterior_loc/Read/ReadVariableOpIdense_flipout_18/kernel_posterior_untransformed_scale/Read/ReadVariableOp7dense_flipout_18/bias_posterior_loc/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp@Adam/dense_flipout_15/kernel_posterior_loc/m/Read/ReadVariableOpPAdam/dense_flipout_15/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp>Adam/dense_flipout_15/bias_posterior_loc/m/Read/ReadVariableOp@Adam/dense_flipout_16/kernel_posterior_loc/m/Read/ReadVariableOpPAdam/dense_flipout_16/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp>Adam/dense_flipout_16/bias_posterior_loc/m/Read/ReadVariableOp@Adam/dense_flipout_17/kernel_posterior_loc/m/Read/ReadVariableOpPAdam/dense_flipout_17/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp>Adam/dense_flipout_17/bias_posterior_loc/m/Read/ReadVariableOp@Adam/dense_flipout_18/kernel_posterior_loc/m/Read/ReadVariableOpPAdam/dense_flipout_18/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp>Adam/dense_flipout_18/bias_posterior_loc/m/Read/ReadVariableOp@Adam/dense_flipout_15/kernel_posterior_loc/v/Read/ReadVariableOpPAdam/dense_flipout_15/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp>Adam/dense_flipout_15/bias_posterior_loc/v/Read/ReadVariableOp@Adam/dense_flipout_16/kernel_posterior_loc/v/Read/ReadVariableOpPAdam/dense_flipout_16/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp>Adam/dense_flipout_16/bias_posterior_loc/v/Read/ReadVariableOp@Adam/dense_flipout_17/kernel_posterior_loc/v/Read/ReadVariableOpPAdam/dense_flipout_17/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp>Adam/dense_flipout_17/bias_posterior_loc/v/Read/ReadVariableOp@Adam/dense_flipout_18/kernel_posterior_loc/v/Read/ReadVariableOpPAdam/dense_flipout_18/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp>Adam/dense_flipout_18/bias_posterior_loc/v/Read/ReadVariableOpConst_8*:
Tin3
12/	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_save_2153769
υ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename%dense_flipout_15/kernel_posterior_loc5dense_flipout_15/kernel_posterior_untransformed_scale#dense_flipout_15/bias_posterior_loc%dense_flipout_16/kernel_posterior_loc5dense_flipout_16/kernel_posterior_untransformed_scale#dense_flipout_16/bias_posterior_loc%dense_flipout_17/kernel_posterior_loc5dense_flipout_17/kernel_posterior_untransformed_scale#dense_flipout_17/bias_posterior_loc%dense_flipout_18/kernel_posterior_loc5dense_flipout_18/kernel_posterior_untransformed_scale#dense_flipout_18/bias_posterior_loc	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1,Adam/dense_flipout_15/kernel_posterior_loc/m<Adam/dense_flipout_15/kernel_posterior_untransformed_scale/m*Adam/dense_flipout_15/bias_posterior_loc/m,Adam/dense_flipout_16/kernel_posterior_loc/m<Adam/dense_flipout_16/kernel_posterior_untransformed_scale/m*Adam/dense_flipout_16/bias_posterior_loc/m,Adam/dense_flipout_17/kernel_posterior_loc/m<Adam/dense_flipout_17/kernel_posterior_untransformed_scale/m*Adam/dense_flipout_17/bias_posterior_loc/m,Adam/dense_flipout_18/kernel_posterior_loc/m<Adam/dense_flipout_18/kernel_posterior_untransformed_scale/m*Adam/dense_flipout_18/bias_posterior_loc/m,Adam/dense_flipout_15/kernel_posterior_loc/v<Adam/dense_flipout_15/kernel_posterior_untransformed_scale/v*Adam/dense_flipout_15/bias_posterior_loc/v,Adam/dense_flipout_16/kernel_posterior_loc/v<Adam/dense_flipout_16/kernel_posterior_untransformed_scale/v*Adam/dense_flipout_16/bias_posterior_loc/v,Adam/dense_flipout_17/kernel_posterior_loc/v<Adam/dense_flipout_17/kernel_posterior_untransformed_scale/v*Adam/dense_flipout_17/bias_posterior_loc/v,Adam/dense_flipout_18/kernel_posterior_loc/v<Adam/dense_flipout_18/kernel_posterior_untransformed_scale/v*Adam/dense_flipout_18/bias_posterior_loc/v*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__traced_restore_2153914₯¦/
ΟΝ
€-
I__inference_sequential_7_layer_call_and_return_conditional_losses_2152380

inputsQ
?dense_flipout_15_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_15_matmul_1_readvariableop_resource:k
]dense_flipout_15_independentdeterministic_sample_deterministic_sample_readvariableop_resource:η
βdense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2151939λ
ζdense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_16_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_16_matmul_1_readvariableop_resource:k
]dense_flipout_16_independentdeterministic_sample_deterministic_sample_readvariableop_resource:η
βdense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152074λ
ζdense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_17_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_17_matmul_1_readvariableop_resource:k
]dense_flipout_17_independentdeterministic_sample_deterministic_sample_readvariableop_resource:η
βdense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152210λ
ζdense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_18_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_18_matmul_1_readvariableop_resource:k
]dense_flipout_18_independentdeterministic_sample_deterministic_sample_readvariableop_resource:η
βdense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152346λ
ζdense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1

identity_2

identity_3

identity_4’Tdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_15/MatMul_1/ReadVariableOp’6dense_flipout_15/Normal/sample/Softplus/ReadVariableOp’Tdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_16/MatMul_1/ReadVariableOp’6dense_flipout_16/Normal/sample/Softplus/ReadVariableOp’Tdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_17/MatMul_1/ReadVariableOp’6dense_flipout_17/Normal/sample/Softplus/ReadVariableOp’Tdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_18/MatMul_1/ReadVariableOp’6dense_flipout_18/Normal/sample/Softplus/ReadVariableOpp
dense_flipout_15/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_15/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_15/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_15_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_15/Normal/sample/SoftplusSoftplus>dense_flipout_15/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_15/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_15/Normal/sample/addAddV2-dense_flipout_15/Normal/sample/add/x:output:05dense_flipout_15/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_15/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_15/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_15/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_15/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_15/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_15/Normal/sample/strided_sliceStridedSlice7dense_flipout_15/Normal/sample/shape_as_tensor:output:0;dense_flipout_15/Normal/sample/strided_slice/stack:output:0=dense_flipout_15/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_15/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_15/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_15/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_15/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_15/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_15/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_15/Normal/sample/strided_slice_1StridedSlice9dense_flipout_15/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_15/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_15/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_15/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_15/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_15/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_15/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_15/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_15/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_15/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_15/Normal/sample/BroadcastArgs:r0:07dense_flipout_15/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_15/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_15/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_15/Normal/sample/concatConcatV27dense_flipout_15/Normal/sample/concat/values_0:output:03dense_flipout_15/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_15/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_15/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_15/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_15/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_15/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_15/Normal/sample/normal/random_normal/mulMulQdense_flipout_15/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_15/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_15/Normal/sample/normal/random_normalAddV2;dense_flipout_15/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_15/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_15/Normal/sample/mulMul7dense_flipout_15/Normal/sample/normal/random_normal:z:0&dense_flipout_15/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_15/Normal/sample/add_1AddV2&dense_flipout_15/Normal/sample/mul:z:0$dense_flipout_15/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_15/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_15/Normal/sample/ReshapeReshape(dense_flipout_15/Normal/sample/add_1:z:05dense_flipout_15/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:L
dense_flipout_15/ShapeShapeinputs*
T0*
_output_shapes
:n
$dense_flipout_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_15/strided_sliceStridedSlicedense_flipout_15/Shape:output:0-dense_flipout_15/strided_slice/stack:output:0/dense_flipout_15/strided_slice/stack_1:output:0/dense_flipout_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_15/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_15/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_15/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_15/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_15/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_15/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_15/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_15/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_15/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_15/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_15/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_15/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_15/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_15/Shape:output:0_dense_flipout_15/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_15/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_15/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_15/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_15/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_15/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_15/rademacher/mulMul*dense_flipout_15/rademacher/mul/x:output:0Edense_flipout_15/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_15/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_15/rademacher/subSub#dense_flipout_15/rademacher/mul:z:0*dense_flipout_15/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_15/rademacher/CastCast#dense_flipout_15/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_15/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_15/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_15/ExpandDims
ExpandDims*dense_flipout_15/ExpandDims/input:output:0(dense_flipout_15/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_15/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_15/concatConcatV2'dense_flipout_15/strided_slice:output:0$dense_flipout_15/ExpandDims:output:0%dense_flipout_15/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_15/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_15/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_15/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_15/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_15/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_15/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_15/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_15/concat:output:0adense_flipout_15/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_15/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_15/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_15/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_15/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_15/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_15/rademacher_1/mulMul,dense_flipout_15/rademacher_1/mul/x:output:0Gdense_flipout_15/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_15/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_15/rademacher_1/subSub%dense_flipout_15/rademacher_1/mul:z:0,dense_flipout_15/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_15/rademacher_1/CastCast%dense_flipout_15/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????{
dense_flipout_15/mulMulinputs$dense_flipout_15/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_15/MatMulMatMuldense_flipout_15/mul:z:0/dense_flipout_15/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_15/mul_1Mul!dense_flipout_15/MatMul:product:0&dense_flipout_15/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_15/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
dense_flipout_15/MatMul_1MatMulinputs0dense_flipout_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_15/addAddV2#dense_flipout_15/MatMul_1:product:0dense_flipout_15/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_15/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_15_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_15/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_15/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_15/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_15/BiasAddBiasAdddense_flipout_15/add:z:0Adense_flipout_15/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_15_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ξ
ΰdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logβdense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2151939*
T0*
_output_shapes
: Ϋ
ήdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0π
βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0βdense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2151939*
T0*
_output_shapes

:η
δdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xβdense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2151939*
T0*
_output_shapes

:?
μdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_15/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_15/CastCast dense_flipout_15/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_15/truedivRealDivdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_15/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_15/divergence_kernelIdentitydense_flipout_15/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_16/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_16/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_16/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_16_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_16/Normal/sample/SoftplusSoftplus>dense_flipout_16/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_16/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_16/Normal/sample/addAddV2-dense_flipout_16/Normal/sample/add/x:output:05dense_flipout_16/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_16/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_16/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_16/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_16/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_16/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_16/Normal/sample/strided_sliceStridedSlice7dense_flipout_16/Normal/sample/shape_as_tensor:output:0;dense_flipout_16/Normal/sample/strided_slice/stack:output:0=dense_flipout_16/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_16/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_16/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_16/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_16/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_16/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_16/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_16/Normal/sample/strided_slice_1StridedSlice9dense_flipout_16/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_16/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_16/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_16/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_16/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_16/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_16/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_16/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_16/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_16/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_16/Normal/sample/BroadcastArgs:r0:07dense_flipout_16/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_16/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_16/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_16/Normal/sample/concatConcatV27dense_flipout_16/Normal/sample/concat/values_0:output:03dense_flipout_16/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_16/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_16/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_16/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_16/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_16/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_16/Normal/sample/normal/random_normal/mulMulQdense_flipout_16/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_16/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_16/Normal/sample/normal/random_normalAddV2;dense_flipout_16/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_16/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_16/Normal/sample/mulMul7dense_flipout_16/Normal/sample/normal/random_normal:z:0&dense_flipout_16/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_16/Normal/sample/add_1AddV2&dense_flipout_16/Normal/sample/mul:z:0$dense_flipout_16/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_16/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_16/Normal/sample/ReshapeReshape(dense_flipout_16/Normal/sample/add_1:z:05dense_flipout_16/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:g
dense_flipout_16/ShapeShape!dense_flipout_15/BiasAdd:output:0*
T0*
_output_shapes
:n
$dense_flipout_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_16/strided_sliceStridedSlicedense_flipout_16/Shape:output:0-dense_flipout_16/strided_slice/stack:output:0/dense_flipout_16/strided_slice/stack_1:output:0/dense_flipout_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_16/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_16/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_16/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_16/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_16/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_16/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_16/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_16/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_16/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_16/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_16/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_16/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_16/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_16/Shape:output:0_dense_flipout_16/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_16/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_16/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_16/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_16/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_16/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_16/rademacher/mulMul*dense_flipout_16/rademacher/mul/x:output:0Edense_flipout_16/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_16/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_16/rademacher/subSub#dense_flipout_16/rademacher/mul:z:0*dense_flipout_16/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_16/rademacher/CastCast#dense_flipout_16/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_16/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_16/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_16/ExpandDims
ExpandDims*dense_flipout_16/ExpandDims/input:output:0(dense_flipout_16/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_16/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_16/concatConcatV2'dense_flipout_16/strided_slice:output:0$dense_flipout_16/ExpandDims:output:0%dense_flipout_16/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_16/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_16/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_16/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_16/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_16/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_16/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_16/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_16/concat:output:0adense_flipout_16/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_16/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_16/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_16/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_16/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_16/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_16/rademacher_1/mulMul,dense_flipout_16/rademacher_1/mul/x:output:0Gdense_flipout_16/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_16/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_16/rademacher_1/subSub%dense_flipout_16/rademacher_1/mul:z:0,dense_flipout_16/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_16/rademacher_1/CastCast%dense_flipout_16/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
dense_flipout_16/mulMul!dense_flipout_15/BiasAdd:output:0$dense_flipout_16/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_16/MatMulMatMuldense_flipout_16/mul:z:0/dense_flipout_16/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_16/mul_1Mul!dense_flipout_16/MatMul:product:0&dense_flipout_16/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_16/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ͺ
dense_flipout_16/MatMul_1MatMul!dense_flipout_15/BiasAdd:output:00dense_flipout_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_16/addAddV2#dense_flipout_16/MatMul_1:product:0dense_flipout_16/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_16/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_16_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_16/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_16/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_16/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_16/BiasAddBiasAdddense_flipout_16/add:z:0Adense_flipout_16/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_16_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ξ
ΰdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logβdense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152074*
T0*
_output_shapes
: Ϋ
ήdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0π
βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0βdense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152074*
T0*
_output_shapes

:η
δdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xβdense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152074*
T0*
_output_shapes

:?
μdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_16/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_16/CastCast dense_flipout_16/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_16/truedivRealDivdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_16/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_16/divergence_kernelIdentitydense_flipout_16/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_17/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_17/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_17/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_17_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_17/Normal/sample/SoftplusSoftplus>dense_flipout_17/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_17/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_17/Normal/sample/addAddV2-dense_flipout_17/Normal/sample/add/x:output:05dense_flipout_17/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_17/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_17/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_17/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_17/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_17/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_17/Normal/sample/strided_sliceStridedSlice7dense_flipout_17/Normal/sample/shape_as_tensor:output:0;dense_flipout_17/Normal/sample/strided_slice/stack:output:0=dense_flipout_17/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_17/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_17/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_17/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_17/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_17/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_17/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_17/Normal/sample/strided_slice_1StridedSlice9dense_flipout_17/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_17/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_17/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_17/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_17/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_17/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_17/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_17/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_17/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_17/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_17/Normal/sample/BroadcastArgs:r0:07dense_flipout_17/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_17/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_17/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_17/Normal/sample/concatConcatV27dense_flipout_17/Normal/sample/concat/values_0:output:03dense_flipout_17/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_17/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_17/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_17/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_17/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_17/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_17/Normal/sample/normal/random_normal/mulMulQdense_flipout_17/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_17/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_17/Normal/sample/normal/random_normalAddV2;dense_flipout_17/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_17/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_17/Normal/sample/mulMul7dense_flipout_17/Normal/sample/normal/random_normal:z:0&dense_flipout_17/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_17/Normal/sample/add_1AddV2&dense_flipout_17/Normal/sample/mul:z:0$dense_flipout_17/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_17/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_17/Normal/sample/ReshapeReshape(dense_flipout_17/Normal/sample/add_1:z:05dense_flipout_17/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:g
dense_flipout_17/ShapeShape!dense_flipout_16/BiasAdd:output:0*
T0*
_output_shapes
:n
$dense_flipout_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_17/strided_sliceStridedSlicedense_flipout_17/Shape:output:0-dense_flipout_17/strided_slice/stack:output:0/dense_flipout_17/strided_slice/stack_1:output:0/dense_flipout_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_17/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_17/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_17/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_17/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_17/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_17/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_17/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_17/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_17/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_17/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_17/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_17/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_17/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_17/Shape:output:0_dense_flipout_17/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_17/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_17/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_17/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_17/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_17/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_17/rademacher/mulMul*dense_flipout_17/rademacher/mul/x:output:0Edense_flipout_17/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_17/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_17/rademacher/subSub#dense_flipout_17/rademacher/mul:z:0*dense_flipout_17/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_17/rademacher/CastCast#dense_flipout_17/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_17/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_17/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_17/ExpandDims
ExpandDims*dense_flipout_17/ExpandDims/input:output:0(dense_flipout_17/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_17/concatConcatV2'dense_flipout_17/strided_slice:output:0$dense_flipout_17/ExpandDims:output:0%dense_flipout_17/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_17/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_17/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_17/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_17/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_17/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_17/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_17/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_17/concat:output:0adense_flipout_17/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_17/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_17/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_17/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_17/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_17/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_17/rademacher_1/mulMul,dense_flipout_17/rademacher_1/mul/x:output:0Gdense_flipout_17/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_17/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_17/rademacher_1/subSub%dense_flipout_17/rademacher_1/mul:z:0,dense_flipout_17/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_17/rademacher_1/CastCast%dense_flipout_17/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
dense_flipout_17/mulMul!dense_flipout_16/BiasAdd:output:0$dense_flipout_17/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_17/MatMulMatMuldense_flipout_17/mul:z:0/dense_flipout_17/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_17/mul_1Mul!dense_flipout_17/MatMul:product:0&dense_flipout_17/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_17/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ͺ
dense_flipout_17/MatMul_1MatMul!dense_flipout_16/BiasAdd:output:00dense_flipout_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_17/addAddV2#dense_flipout_17/MatMul_1:product:0dense_flipout_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_17/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_17_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_17/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_17/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_17/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_17/BiasAddBiasAdddense_flipout_17/add:z:0Adense_flipout_17/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????r
dense_flipout_17/ReluRelu!dense_flipout_17/BiasAdd:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_17_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ξ
ΰdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logβdense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152210*
T0*
_output_shapes
: Ϋ
ήdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0π
βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0βdense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152210*
T0*
_output_shapes

:η
δdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xβdense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152210*
T0*
_output_shapes

:?
μdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_17/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_17/CastCast dense_flipout_17/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_17/truedivRealDivdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_17/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_17/divergence_kernelIdentitydense_flipout_17/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_18/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_18/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_18/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_18_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_18/Normal/sample/SoftplusSoftplus>dense_flipout_18/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_18/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_18/Normal/sample/addAddV2-dense_flipout_18/Normal/sample/add/x:output:05dense_flipout_18/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_18/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_18/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_18/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_18/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_18/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_18/Normal/sample/strided_sliceStridedSlice7dense_flipout_18/Normal/sample/shape_as_tensor:output:0;dense_flipout_18/Normal/sample/strided_slice/stack:output:0=dense_flipout_18/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_18/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_18/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_18/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_18/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_18/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_18/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_18/Normal/sample/strided_slice_1StridedSlice9dense_flipout_18/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_18/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_18/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_18/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_18/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_18/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_18/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_18/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_18/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_18/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_18/Normal/sample/BroadcastArgs:r0:07dense_flipout_18/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_18/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_18/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_18/Normal/sample/concatConcatV27dense_flipout_18/Normal/sample/concat/values_0:output:03dense_flipout_18/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_18/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_18/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_18/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_18/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_18/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_18/Normal/sample/normal/random_normal/mulMulQdense_flipout_18/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_18/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_18/Normal/sample/normal/random_normalAddV2;dense_flipout_18/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_18/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_18/Normal/sample/mulMul7dense_flipout_18/Normal/sample/normal/random_normal:z:0&dense_flipout_18/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_18/Normal/sample/add_1AddV2&dense_flipout_18/Normal/sample/mul:z:0$dense_flipout_18/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_18/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_18/Normal/sample/ReshapeReshape(dense_flipout_18/Normal/sample/add_1:z:05dense_flipout_18/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:i
dense_flipout_18/ShapeShape#dense_flipout_17/Relu:activations:0*
T0*
_output_shapes
:n
$dense_flipout_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_18/strided_sliceStridedSlicedense_flipout_18/Shape:output:0-dense_flipout_18/strided_slice/stack:output:0/dense_flipout_18/strided_slice/stack_1:output:0/dense_flipout_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_18/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_18/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_18/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_18/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_18/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_18/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_18/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_18/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_18/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_18/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_18/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_18/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_18/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_18/Shape:output:0_dense_flipout_18/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_18/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_18/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_18/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_18/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_18/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_18/rademacher/mulMul*dense_flipout_18/rademacher/mul/x:output:0Edense_flipout_18/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_18/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_18/rademacher/subSub#dense_flipout_18/rademacher/mul:z:0*dense_flipout_18/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_18/rademacher/CastCast#dense_flipout_18/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_18/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_18/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_18/ExpandDims
ExpandDims*dense_flipout_18/ExpandDims/input:output:0(dense_flipout_18/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_18/concatConcatV2'dense_flipout_18/strided_slice:output:0$dense_flipout_18/ExpandDims:output:0%dense_flipout_18/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_18/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_18/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_18/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_18/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_18/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_18/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_18/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_18/concat:output:0adense_flipout_18/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_18/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_18/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_18/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_18/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_18/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_18/rademacher_1/mulMul,dense_flipout_18/rademacher_1/mul/x:output:0Gdense_flipout_18/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_18/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_18/rademacher_1/subSub%dense_flipout_18/rademacher_1/mul:z:0,dense_flipout_18/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_18/rademacher_1/CastCast%dense_flipout_18/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
dense_flipout_18/mulMul#dense_flipout_17/Relu:activations:0$dense_flipout_18/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_18/MatMulMatMuldense_flipout_18/mul:z:0/dense_flipout_18/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_18/mul_1Mul!dense_flipout_18/MatMul:product:0&dense_flipout_18/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_18/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_18_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¬
dense_flipout_18/MatMul_1MatMul#dense_flipout_17/Relu:activations:00dense_flipout_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_18/addAddV2#dense_flipout_18/MatMul_1:product:0dense_flipout_18/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_18/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_18_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_18/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_18/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_18/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_18/BiasAddBiasAdddense_flipout_18/add:z:0Adense_flipout_18/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????x
dense_flipout_18/SoftmaxSoftmax!dense_flipout_18/BiasAdd:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_18_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ξ
ΰdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logβdense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152346*
T0*
_output_shapes
: Ϋ
ήdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_18_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0π
βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0βdense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152346*
T0*
_output_shapes

:η
δdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xβdense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152346*
T0*
_output_shapes

:?
μdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_18/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_18/CastCast dense_flipout_18/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_18/truedivRealDivdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_18/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_18/divergence_kernelIdentitydense_flipout_18/truediv:z:0*
T0*
_output_shapes
: q
IdentityIdentity"dense_flipout_18/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????k

Identity_1Identity+dense_flipout_15/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_2Identity+dense_flipout_16/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_3Identity+dense_flipout_17/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_4Identity+dense_flipout_18/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: Ξ
NoOpNoOpU^dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_15/MatMul_1/ReadVariableOp7^dense_flipout_15/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_16/MatMul_1/ReadVariableOp7^dense_flipout_16/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_17/MatMul_1/ReadVariableOp7^dense_flipout_17/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_18/MatMul_1/ReadVariableOp7^dense_flipout_18/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????: : : : :: : : : :: : : : :: : : : :2¬
Tdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_15/MatMul_1/ReadVariableOp(dense_flipout_15/MatMul_1/ReadVariableOp2p
6dense_flipout_15/Normal/sample/Softplus/ReadVariableOp6dense_flipout_15/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_16/MatMul_1/ReadVariableOp(dense_flipout_16/MatMul_1/ReadVariableOp2p
6dense_flipout_16/Normal/sample/Softplus/ReadVariableOp6dense_flipout_16/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_17/MatMul_1/ReadVariableOp(dense_flipout_17/MatMul_1/ReadVariableOp2p
6dense_flipout_17/Normal/sample/Softplus/ReadVariableOp6dense_flipout_17/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_18/MatMul_1/ReadVariableOp(dense_flipout_18/MatMul_1/ReadVariableOp2p
6dense_flipout_18/Normal/sample/Softplus/ReadVariableOp6dense_flipout_18/Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
Ή'
Ε
I__inference_sequential_7_layer_call_and_return_conditional_losses_2151670
input_6*
dense_flipout_15_2151617:*
dense_flipout_15_2151619:&
dense_flipout_15_2151621:
dense_flipout_15_2151623
dense_flipout_15_2151625*
dense_flipout_16_2151629:*
dense_flipout_16_2151631:&
dense_flipout_16_2151633:
dense_flipout_16_2151635
dense_flipout_16_2151637*
dense_flipout_17_2151641:*
dense_flipout_17_2151643:&
dense_flipout_17_2151645:
dense_flipout_17_2151647
dense_flipout_17_2151649*
dense_flipout_18_2151653:*
dense_flipout_18_2151655:&
dense_flipout_18_2151657:
dense_flipout_18_2151659
dense_flipout_18_2151661
identity

identity_1

identity_2

identity_3

identity_4’(dense_flipout_15/StatefulPartitionedCall’(dense_flipout_16/StatefulPartitionedCall’(dense_flipout_17/StatefulPartitionedCall’(dense_flipout_18/StatefulPartitionedCallι
(dense_flipout_15/StatefulPartitionedCallStatefulPartitionedCallinput_6dense_flipout_15_2151617dense_flipout_15_2151619dense_flipout_15_2151621dense_flipout_15_2151623dense_flipout_15_2151625*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_15_layer_call_and_return_conditional_losses_2150817
(dense_flipout_16/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_15/StatefulPartitionedCall:output:0dense_flipout_16_2151629dense_flipout_16_2151631dense_flipout_16_2151633dense_flipout_16_2151635dense_flipout_16_2151637*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_16_layer_call_and_return_conditional_losses_2150970
(dense_flipout_17/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_16/StatefulPartitionedCall:output:0dense_flipout_17_2151641dense_flipout_17_2151643dense_flipout_17_2151645dense_flipout_17_2151647dense_flipout_17_2151649*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_17_layer_call_and_return_conditional_losses_2151124
(dense_flipout_18/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_17/StatefulPartitionedCall:output:0dense_flipout_18_2151653dense_flipout_18_2151655dense_flipout_18_2151657dense_flipout_18_2151659dense_flipout_18_2151661*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_18_layer_call_and_return_conditional_losses_2151278
IdentityIdentity1dense_flipout_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity1dense_flipout_15/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_16/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_17/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_4Identity1dense_flipout_18/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: ς
NoOpNoOp)^dense_flipout_15/StatefulPartitionedCall)^dense_flipout_16/StatefulPartitionedCall)^dense_flipout_17/StatefulPartitionedCall)^dense_flipout_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????: : : : :: : : : :: : : : :: : : : :2T
(dense_flipout_15/StatefulPartitionedCall(dense_flipout_15/StatefulPartitionedCall2T
(dense_flipout_16/StatefulPartitionedCall(dense_flipout_16/StatefulPartitionedCall2T
(dense_flipout_17/StatefulPartitionedCall(dense_flipout_17/StatefulPartitionedCall2T
(dense_flipout_18/StatefulPartitionedCall(dense_flipout_18/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_6:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
½ϋ

M__inference_dense_flipout_18_layer_call_and_return_conditional_losses_2151278

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_18_sample_deterministic_sample_readvariableop_resource:Φ
Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2151247Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB 
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ύ
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¨
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ο
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΗ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :β
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ο
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_18_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Μ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΡkullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2151247*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2151247*
T0*
_output_shapes

:΄
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΡkullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2151247*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Δ
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
±
³
.__inference_sequential_7_layer_call_fn_2151614
input_6
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13

unknown_14:

unknown_15:

unknown_16:

unknown_17

unknown_18
identity’StatefulPartitionedCallΦ
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:?????????: : : : *.
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_2151518o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????: : : : :: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_6:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
	
Ϊ
2__inference_dense_flipout_15_layer_call_fn_2152993

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_15_layer_call_and_return_conditional_losses_2150817o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
p

 __inference__traced_save_2153769
file_prefixD
@savev2_dense_flipout_15_kernel_posterior_loc_read_readvariableopT
Psavev2_dense_flipout_15_kernel_posterior_untransformed_scale_read_readvariableopB
>savev2_dense_flipout_15_bias_posterior_loc_read_readvariableopD
@savev2_dense_flipout_16_kernel_posterior_loc_read_readvariableopT
Psavev2_dense_flipout_16_kernel_posterior_untransformed_scale_read_readvariableopB
>savev2_dense_flipout_16_bias_posterior_loc_read_readvariableopD
@savev2_dense_flipout_17_kernel_posterior_loc_read_readvariableopT
Psavev2_dense_flipout_17_kernel_posterior_untransformed_scale_read_readvariableopB
>savev2_dense_flipout_17_bias_posterior_loc_read_readvariableopD
@savev2_dense_flipout_18_kernel_posterior_loc_read_readvariableopT
Psavev2_dense_flipout_18_kernel_posterior_untransformed_scale_read_readvariableopB
>savev2_dense_flipout_18_bias_posterior_loc_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopK
Gsavev2_adam_dense_flipout_15_kernel_posterior_loc_m_read_readvariableop[
Wsavev2_adam_dense_flipout_15_kernel_posterior_untransformed_scale_m_read_readvariableopI
Esavev2_adam_dense_flipout_15_bias_posterior_loc_m_read_readvariableopK
Gsavev2_adam_dense_flipout_16_kernel_posterior_loc_m_read_readvariableop[
Wsavev2_adam_dense_flipout_16_kernel_posterior_untransformed_scale_m_read_readvariableopI
Esavev2_adam_dense_flipout_16_bias_posterior_loc_m_read_readvariableopK
Gsavev2_adam_dense_flipout_17_kernel_posterior_loc_m_read_readvariableop[
Wsavev2_adam_dense_flipout_17_kernel_posterior_untransformed_scale_m_read_readvariableopI
Esavev2_adam_dense_flipout_17_bias_posterior_loc_m_read_readvariableopK
Gsavev2_adam_dense_flipout_18_kernel_posterior_loc_m_read_readvariableop[
Wsavev2_adam_dense_flipout_18_kernel_posterior_untransformed_scale_m_read_readvariableopI
Esavev2_adam_dense_flipout_18_bias_posterior_loc_m_read_readvariableopK
Gsavev2_adam_dense_flipout_15_kernel_posterior_loc_v_read_readvariableop[
Wsavev2_adam_dense_flipout_15_kernel_posterior_untransformed_scale_v_read_readvariableopI
Esavev2_adam_dense_flipout_15_bias_posterior_loc_v_read_readvariableopK
Gsavev2_adam_dense_flipout_16_kernel_posterior_loc_v_read_readvariableop[
Wsavev2_adam_dense_flipout_16_kernel_posterior_untransformed_scale_v_read_readvariableopI
Esavev2_adam_dense_flipout_16_bias_posterior_loc_v_read_readvariableopK
Gsavev2_adam_dense_flipout_17_kernel_posterior_loc_v_read_readvariableop[
Wsavev2_adam_dense_flipout_17_kernel_posterior_untransformed_scale_v_read_readvariableopI
Esavev2_adam_dense_flipout_17_bias_posterior_loc_v_read_readvariableopK
Gsavev2_adam_dense_flipout_18_kernel_posterior_loc_v_read_readvariableop[
Wsavev2_adam_dense_flipout_18_kernel_posterior_untransformed_scale_v_read_readvariableopI
Esavev2_adam_dense_flipout_18_bias_posterior_loc_v_read_readvariableop
savev2_const_8

identity_1’MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: η
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*
valueB.BDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-3/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-3/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-3/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-3/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-3/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-3/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-3/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-3/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHΙ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ο
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0@savev2_dense_flipout_15_kernel_posterior_loc_read_readvariableopPsavev2_dense_flipout_15_kernel_posterior_untransformed_scale_read_readvariableop>savev2_dense_flipout_15_bias_posterior_loc_read_readvariableop@savev2_dense_flipout_16_kernel_posterior_loc_read_readvariableopPsavev2_dense_flipout_16_kernel_posterior_untransformed_scale_read_readvariableop>savev2_dense_flipout_16_bias_posterior_loc_read_readvariableop@savev2_dense_flipout_17_kernel_posterior_loc_read_readvariableopPsavev2_dense_flipout_17_kernel_posterior_untransformed_scale_read_readvariableop>savev2_dense_flipout_17_bias_posterior_loc_read_readvariableop@savev2_dense_flipout_18_kernel_posterior_loc_read_readvariableopPsavev2_dense_flipout_18_kernel_posterior_untransformed_scale_read_readvariableop>savev2_dense_flipout_18_bias_posterior_loc_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopGsavev2_adam_dense_flipout_15_kernel_posterior_loc_m_read_readvariableopWsavev2_adam_dense_flipout_15_kernel_posterior_untransformed_scale_m_read_readvariableopEsavev2_adam_dense_flipout_15_bias_posterior_loc_m_read_readvariableopGsavev2_adam_dense_flipout_16_kernel_posterior_loc_m_read_readvariableopWsavev2_adam_dense_flipout_16_kernel_posterior_untransformed_scale_m_read_readvariableopEsavev2_adam_dense_flipout_16_bias_posterior_loc_m_read_readvariableopGsavev2_adam_dense_flipout_17_kernel_posterior_loc_m_read_readvariableopWsavev2_adam_dense_flipout_17_kernel_posterior_untransformed_scale_m_read_readvariableopEsavev2_adam_dense_flipout_17_bias_posterior_loc_m_read_readvariableopGsavev2_adam_dense_flipout_18_kernel_posterior_loc_m_read_readvariableopWsavev2_adam_dense_flipout_18_kernel_posterior_untransformed_scale_m_read_readvariableopEsavev2_adam_dense_flipout_18_bias_posterior_loc_m_read_readvariableopGsavev2_adam_dense_flipout_15_kernel_posterior_loc_v_read_readvariableopWsavev2_adam_dense_flipout_15_kernel_posterior_untransformed_scale_v_read_readvariableopEsavev2_adam_dense_flipout_15_bias_posterior_loc_v_read_readvariableopGsavev2_adam_dense_flipout_16_kernel_posterior_loc_v_read_readvariableopWsavev2_adam_dense_flipout_16_kernel_posterior_untransformed_scale_v_read_readvariableopEsavev2_adam_dense_flipout_16_bias_posterior_loc_v_read_readvariableopGsavev2_adam_dense_flipout_17_kernel_posterior_loc_v_read_readvariableopWsavev2_adam_dense_flipout_17_kernel_posterior_untransformed_scale_v_read_readvariableopEsavev2_adam_dense_flipout_17_bias_posterior_loc_v_read_readvariableopGsavev2_adam_dense_flipout_18_kernel_posterior_loc_v_read_readvariableopWsavev2_adam_dense_flipout_18_kernel_posterior_untransformed_scale_v_read_readvariableopEsavev2_adam_dense_flipout_18_bias_posterior_loc_v_read_readvariableopsavev2_const_8"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*γ
_input_shapesΡ
Ξ: ::::::::::::: : : : : : : : : ::::::::::::::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 	

_output_shapes
::$
 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$  

_output_shapes

:: !

_output_shapes
::$" 

_output_shapes

::$# 

_output_shapes

:: $

_output_shapes
::$% 

_output_shapes

::$& 

_output_shapes

:: '

_output_shapes
::$( 

_output_shapes

::$) 

_output_shapes

:: *

_output_shapes
::$+ 

_output_shapes

::$, 

_output_shapes

:: -

_output_shapes
::.

_output_shapes
: 
?
²
.__inference_sequential_7_layer_call_fn_2151830

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13

unknown_14:

unknown_15:

unknown_16:

unknown_17

unknown_18
identity’StatefulPartitionedCallΥ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:?????????: : : : *.
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_2151518o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????: : : : :: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
?
²
.__inference_sequential_7_layer_call_fn_2151781

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13

unknown_14:

unknown_15:

unknown_16:

unknown_17

unknown_18
identity’StatefulPartitionedCallΥ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:?????????: : : : *.
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_2151296o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????: : : : :: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
δϊ

M__inference_dense_flipout_15_layer_call_and_return_conditional_losses_2153133

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_15_sample_deterministic_sample_readvariableop_resource:Φ
Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153102Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB 
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ύ
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¨
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ο
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΗ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :β
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ο
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_15_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Μ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΡkullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153102*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153102*
T0*
_output_shapes

:΄
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΡkullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153102*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Δ
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
δϊ

M__inference_dense_flipout_16_layer_call_and_return_conditional_losses_2153289

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_16_sample_deterministic_sample_readvariableop_resource:Φ
Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153258Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB 
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ύ
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¨
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ο
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΗ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :β
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ο
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_16_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Μ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΡkullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153258*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153258*
T0*
_output_shapes

:΄
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΡkullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153258*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Δ
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
Έϋ

M__inference_dense_flipout_17_layer_call_and_return_conditional_losses_2153446

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_17_sample_deterministic_sample_readvariableop_resource:Φ
Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153415Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB 
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ύ
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¨
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ο
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΗ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :β
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ο
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_17_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Μ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΡkullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153415*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153415*
T0*
_output_shapes

:΄
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΡkullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153415*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Δ
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
Ακ	
?2
"__inference__wrapped_model_2150670
input_6^
Lsequential_7_dense_flipout_15_normal_sample_softplus_readvariableop_resource:P
>sequential_7_dense_flipout_15_matmul_1_readvariableop_resource:
sequential_7_dense_flipout_15_independentdeterministic_constructed_at_dense_flipout_15_sample_deterministic_sample_readvariableop_resource:τ
οsequential_7_dense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150233ψ
σsequential_7_dense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x^
Lsequential_7_dense_flipout_16_normal_sample_softplus_readvariableop_resource:P
>sequential_7_dense_flipout_16_matmul_1_readvariableop_resource:
sequential_7_dense_flipout_16_independentdeterministic_constructed_at_dense_flipout_16_sample_deterministic_sample_readvariableop_resource:τ
οsequential_7_dense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150368ψ
σsequential_7_dense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x^
Lsequential_7_dense_flipout_17_normal_sample_softplus_readvariableop_resource:P
>sequential_7_dense_flipout_17_matmul_1_readvariableop_resource:
sequential_7_dense_flipout_17_independentdeterministic_constructed_at_dense_flipout_17_sample_deterministic_sample_readvariableop_resource:τ
οsequential_7_dense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150504ψ
σsequential_7_dense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x^
Lsequential_7_dense_flipout_18_normal_sample_softplus_readvariableop_resource:P
>sequential_7_dense_flipout_18_matmul_1_readvariableop_resource:
sequential_7_dense_flipout_18_independentdeterministic_constructed_at_dense_flipout_18_sample_deterministic_sample_readvariableop_resource:τ
οsequential_7_dense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150640ψ
σsequential_7_dense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity’sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOp’sequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’φsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’5sequential_7/dense_flipout_15/MatMul_1/ReadVariableOp’Csequential_7/dense_flipout_15/Normal/sample/Softplus/ReadVariableOp’sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOp’sequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’φsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’5sequential_7/dense_flipout_16/MatMul_1/ReadVariableOp’Csequential_7/dense_flipout_16/Normal/sample/Softplus/ReadVariableOp’sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOp’sequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’φsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’5sequential_7/dense_flipout_17/MatMul_1/ReadVariableOp’Csequential_7/dense_flipout_17/Normal/sample/Softplus/ReadVariableOp’sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOp’sequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’φsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’5sequential_7/dense_flipout_18/MatMul_1/ReadVariableOp’Csequential_7/dense_flipout_18/Normal/sample/Softplus/ReadVariableOp}
(sequential_7/dense_flipout_15/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    {
8sequential_7/dense_flipout_15/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Π
Csequential_7/dense_flipout_15/Normal/sample/Softplus/ReadVariableOpReadVariableOpLsequential_7_dense_flipout_15_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Ά
4sequential_7/dense_flipout_15/Normal/sample/SoftplusSoftplusKsequential_7/dense_flipout_15/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:v
1sequential_7/dense_flipout_15/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4α
/sequential_7/dense_flipout_15/Normal/sample/addAddV2:sequential_7/dense_flipout_15/Normal/sample/add/x:output:0Bsequential_7/dense_flipout_15/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
;sequential_7/dense_flipout_15/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      s
1sequential_7/dense_flipout_15/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
?sequential_7/dense_flipout_15/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_7/dense_flipout_15/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_7/dense_flipout_15/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:΅
9sequential_7/dense_flipout_15/Normal/sample/strided_sliceStridedSliceDsequential_7/dense_flipout_15/Normal/sample/shape_as_tensor:output:0Hsequential_7/dense_flipout_15/Normal/sample/strided_slice/stack:output:0Jsequential_7/dense_flipout_15/Normal/sample/strided_slice/stack_1:output:0Jsequential_7/dense_flipout_15/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
=sequential_7/dense_flipout_15/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      u
3sequential_7/dense_flipout_15/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
Asequential_7/dense_flipout_15/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Csequential_7/dense_flipout_15/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Csequential_7/dense_flipout_15/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
;sequential_7/dense_flipout_15/Normal/sample/strided_slice_1StridedSliceFsequential_7/dense_flipout_15/Normal/sample/shape_as_tensor_1:output:0Jsequential_7/dense_flipout_15/Normal/sample/strided_slice_1/stack:output:0Lsequential_7/dense_flipout_15/Normal/sample/strided_slice_1/stack_1:output:0Lsequential_7/dense_flipout_15/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<sequential_7/dense_flipout_15/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
>sequential_7/dense_flipout_15/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB σ
9sequential_7/dense_flipout_15/Normal/sample/BroadcastArgsBroadcastArgsGsequential_7/dense_flipout_15/Normal/sample/BroadcastArgs/s0_1:output:0Bsequential_7/dense_flipout_15/Normal/sample/strided_slice:output:0*
_output_shapes
:ξ
;sequential_7/dense_flipout_15/Normal/sample/BroadcastArgs_1BroadcastArgs>sequential_7/dense_flipout_15/Normal/sample/BroadcastArgs:r0:0Dsequential_7/dense_flipout_15/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
;sequential_7/dense_flipout_15/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:y
7sequential_7/dense_flipout_15/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ά
2sequential_7/dense_flipout_15/Normal/sample/concatConcatV2Dsequential_7/dense_flipout_15/Normal/sample/concat/values_0:output:0@sequential_7/dense_flipout_15/Normal/sample/BroadcastArgs_1:r0:0@sequential_7/dense_flipout_15/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Esequential_7/dense_flipout_15/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gsequential_7/dense_flipout_15/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?δ
Usequential_7/dense_flipout_15/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal;sequential_7/dense_flipout_15/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0ͺ
Dsequential_7/dense_flipout_15/Normal/sample/normal/random_normal/mulMul^sequential_7/dense_flipout_15/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Psequential_7/dense_flipout_15/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
@sequential_7/dense_flipout_15/Normal/sample/normal/random_normalAddV2Hsequential_7/dense_flipout_15/Normal/sample/normal/random_normal/mul:z:0Nsequential_7/dense_flipout_15/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:ή
/sequential_7/dense_flipout_15/Normal/sample/mulMulDsequential_7/dense_flipout_15/Normal/sample/normal/random_normal:z:03sequential_7/dense_flipout_15/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ο
1sequential_7/dense_flipout_15/Normal/sample/add_1AddV23sequential_7/dense_flipout_15/Normal/sample/mul:z:01sequential_7/dense_flipout_15/zeros_like:output:0*
T0*"
_output_shapes
:
9sequential_7/dense_flipout_15/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      β
3sequential_7/dense_flipout_15/Normal/sample/ReshapeReshape5sequential_7/dense_flipout_15/Normal/sample/add_1:z:0Bsequential_7/dense_flipout_15/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:Z
#sequential_7/dense_flipout_15/ShapeShapeinput_6*
T0*
_output_shapes
:{
1sequential_7/dense_flipout_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
3sequential_7/dense_flipout_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????}
3sequential_7/dense_flipout_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
+sequential_7/dense_flipout_15/strided_sliceStridedSlice,sequential_7/dense_flipout_15/Shape:output:0:sequential_7/dense_flipout_15/strided_slice/stack:output:0<sequential_7/dense_flipout_15/strided_slice/stack_1:output:0<sequential_7/dense_flipout_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Isequential_7/dense_flipout_15/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Gsequential_7/dense_flipout_15/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Gsequential_7/dense_flipout_15/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Csequential_7/dense_flipout_15/rademacher/uniform/sanitize_seed/seedRandomUniformIntRsequential_7/dense_flipout_15/rademacher/uniform/sanitize_seed/seed/shape:output:0Psequential_7/dense_flipout_15/rademacher/uniform/sanitize_seed/seed/min:output:0Psequential_7/dense_flipout_15/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Msequential_7/dense_flipout_15/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Msequential_7/dense_flipout_15/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
fsequential_7/dense_flipout_15/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterLsequential_7/dense_flipout_15/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Msequential_7/dense_flipout_15/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :΄
Isequential_7/dense_flipout_15/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2,sequential_7/dense_flipout_15/Shape:output:0lsequential_7/dense_flipout_15/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0psequential_7/dense_flipout_15/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Vsequential_7/dense_flipout_15/rademacher/uniform/stateless_random_uniform/alg:output:0Vsequential_7/dense_flipout_15/rademacher/uniform/stateless_random_uniform/min:output:0Vsequential_7/dense_flipout_15/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	p
.sequential_7/dense_flipout_15/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rς
,sequential_7/dense_flipout_15/rademacher/mulMul7sequential_7/dense_flipout_15/rademacher/mul/x:output:0Rsequential_7/dense_flipout_15/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????p
.sequential_7/dense_flipout_15/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΠ
,sequential_7/dense_flipout_15/rademacher/subSub0sequential_7/dense_flipout_15/rademacher/mul:z:07sequential_7/dense_flipout_15/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????¨
-sequential_7/dense_flipout_15/rademacher/CastCast0sequential_7/dense_flipout_15/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????p
.sequential_7/dense_flipout_15/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :n
,sequential_7/dense_flipout_15/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Λ
(sequential_7/dense_flipout_15/ExpandDims
ExpandDims7sequential_7/dense_flipout_15/ExpandDims/input:output:05sequential_7/dense_flipout_15/ExpandDims/dim:output:0*
T0*
_output_shapes
:k
)sequential_7/dense_flipout_15/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ϋ
$sequential_7/dense_flipout_15/concatConcatV24sequential_7/dense_flipout_15/strided_slice:output:01sequential_7/dense_flipout_15/ExpandDims:output:02sequential_7/dense_flipout_15/concat/axis:output:0*
N*
T0*
_output_shapes
:
Ksequential_7/dense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Isequential_7/dense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Isequential_7/dense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Esequential_7/dense_flipout_15/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntTsequential_7/dense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Rsequential_7/dense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/min:output:0Rsequential_7/dense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Osequential_7/dense_flipout_15/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Osequential_7/dense_flipout_15/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
hsequential_7/dense_flipout_15/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterNsequential_7/dense_flipout_15/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Osequential_7/dense_flipout_15/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Α
Ksequential_7/dense_flipout_15/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2-sequential_7/dense_flipout_15/concat:output:0nsequential_7/dense_flipout_15/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0rsequential_7/dense_flipout_15/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Xsequential_7/dense_flipout_15/rademacher_1/uniform/stateless_random_uniform/alg:output:0Xsequential_7/dense_flipout_15/rademacher_1/uniform/stateless_random_uniform/min:output:0Xsequential_7/dense_flipout_15/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	r
0sequential_7/dense_flipout_15/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rψ
.sequential_7/dense_flipout_15/rademacher_1/mulMul9sequential_7/dense_flipout_15/rademacher_1/mul/x:output:0Tsequential_7/dense_flipout_15/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????r
0sequential_7/dense_flipout_15/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΦ
.sequential_7/dense_flipout_15/rademacher_1/subSub2sequential_7/dense_flipout_15/rademacher_1/mul:z:09sequential_7/dense_flipout_15/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????¬
/sequential_7/dense_flipout_15/rademacher_1/CastCast2sequential_7/dense_flipout_15/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
!sequential_7/dense_flipout_15/mulMulinput_61sequential_7/dense_flipout_15/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????Ε
$sequential_7/dense_flipout_15/MatMulMatMul%sequential_7/dense_flipout_15/mul:z:0<sequential_7/dense_flipout_15/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????Α
#sequential_7/dense_flipout_15/mul_1Mul.sequential_7/dense_flipout_15/MatMul:product:03sequential_7/dense_flipout_15/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????΄
5sequential_7/dense_flipout_15/MatMul_1/ReadVariableOpReadVariableOp>sequential_7_dense_flipout_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ͺ
&sequential_7/dense_flipout_15/MatMul_1MatMulinput_6=sequential_7/dense_flipout_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????·
!sequential_7/dense_flipout_15/addAddV20sequential_7/dense_flipout_15/MatMul_1:product:0'sequential_7/dense_flipout_15/mul_1:z:0*
T0*'
_output_shapes
:?????????­
jsequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Α
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ϋ
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Κ
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_7_dense_flipout_15_independentdeterministic_constructed_at_dense_flipout_15_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Ν
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:Ί
xsequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ρ
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Σ
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Σ
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_sliceStridedSlicesequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/shape_as_tensor:output:0sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack:output:0sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskΗ
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ι
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Λ
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Ν
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ζ
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ΐ
~sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : α
ysequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concatConcatV2sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/values_0:output:0sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/values_2:output:0sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Η
~sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastToBroadcastTosequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOp:value:0sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:?
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Δ
zsequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReshapeReshapesequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastTo:output:0sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:΅
ksequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
esequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/ReshapeReshapesequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/Reshape:output:0tsequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Reshape/shape:output:0*
T0*
_output_shapes
:ω
%sequential_7/dense_flipout_15/BiasAddBiasAdd%sequential_7/dense_flipout_15/add:z:0nsequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
sequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpLsequential_7_dense_flipout_15_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Έ
τsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:·
ρsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4€
οsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ϊsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
λsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogσsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
νsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logοsequential_7_dense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150233*
T0*
_output_shapes
: 
λsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubοsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ρsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:φ
φsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp>sequential_7_dense_flipout_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
οsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivώsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0οsequential_7_dense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150233*
T0*
_output_shapes

:
ρsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivσsequential_7_dense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xοsequential_7_dense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150233*
T0*
_output_shapes

:¦
ωsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceσsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0υsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:³
νsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
λsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulφsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ύsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:΅
οsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
νsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulψsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0οsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
νsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ρsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:΅
οsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
νsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulψsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ρsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:
λsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2οsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ρsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:
νsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subοsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0οsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ύ
«sequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???ν
sequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumρsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0΄sequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: g
$sequential_7/dense_flipout_15/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6
"sequential_7/dense_flipout_15/CastCast-sequential_7/dense_flipout_15/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 
%sequential_7/dense_flipout_15/truedivRealDiv’sequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0&sequential_7/dense_flipout_15/Cast:y:0*
T0*
_output_shapes
: 
/sequential_7/dense_flipout_15/divergence_kernelIdentity)sequential_7/dense_flipout_15/truediv:z:0*
T0*
_output_shapes
: }
(sequential_7/dense_flipout_16/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    {
8sequential_7/dense_flipout_16/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Π
Csequential_7/dense_flipout_16/Normal/sample/Softplus/ReadVariableOpReadVariableOpLsequential_7_dense_flipout_16_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Ά
4sequential_7/dense_flipout_16/Normal/sample/SoftplusSoftplusKsequential_7/dense_flipout_16/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:v
1sequential_7/dense_flipout_16/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4α
/sequential_7/dense_flipout_16/Normal/sample/addAddV2:sequential_7/dense_flipout_16/Normal/sample/add/x:output:0Bsequential_7/dense_flipout_16/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
;sequential_7/dense_flipout_16/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      s
1sequential_7/dense_flipout_16/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
?sequential_7/dense_flipout_16/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_7/dense_flipout_16/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_7/dense_flipout_16/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:΅
9sequential_7/dense_flipout_16/Normal/sample/strided_sliceStridedSliceDsequential_7/dense_flipout_16/Normal/sample/shape_as_tensor:output:0Hsequential_7/dense_flipout_16/Normal/sample/strided_slice/stack:output:0Jsequential_7/dense_flipout_16/Normal/sample/strided_slice/stack_1:output:0Jsequential_7/dense_flipout_16/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
=sequential_7/dense_flipout_16/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      u
3sequential_7/dense_flipout_16/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
Asequential_7/dense_flipout_16/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Csequential_7/dense_flipout_16/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Csequential_7/dense_flipout_16/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
;sequential_7/dense_flipout_16/Normal/sample/strided_slice_1StridedSliceFsequential_7/dense_flipout_16/Normal/sample/shape_as_tensor_1:output:0Jsequential_7/dense_flipout_16/Normal/sample/strided_slice_1/stack:output:0Lsequential_7/dense_flipout_16/Normal/sample/strided_slice_1/stack_1:output:0Lsequential_7/dense_flipout_16/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<sequential_7/dense_flipout_16/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
>sequential_7/dense_flipout_16/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB σ
9sequential_7/dense_flipout_16/Normal/sample/BroadcastArgsBroadcastArgsGsequential_7/dense_flipout_16/Normal/sample/BroadcastArgs/s0_1:output:0Bsequential_7/dense_flipout_16/Normal/sample/strided_slice:output:0*
_output_shapes
:ξ
;sequential_7/dense_flipout_16/Normal/sample/BroadcastArgs_1BroadcastArgs>sequential_7/dense_flipout_16/Normal/sample/BroadcastArgs:r0:0Dsequential_7/dense_flipout_16/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
;sequential_7/dense_flipout_16/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:y
7sequential_7/dense_flipout_16/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ά
2sequential_7/dense_flipout_16/Normal/sample/concatConcatV2Dsequential_7/dense_flipout_16/Normal/sample/concat/values_0:output:0@sequential_7/dense_flipout_16/Normal/sample/BroadcastArgs_1:r0:0@sequential_7/dense_flipout_16/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Esequential_7/dense_flipout_16/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gsequential_7/dense_flipout_16/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?δ
Usequential_7/dense_flipout_16/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal;sequential_7/dense_flipout_16/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0ͺ
Dsequential_7/dense_flipout_16/Normal/sample/normal/random_normal/mulMul^sequential_7/dense_flipout_16/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Psequential_7/dense_flipout_16/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
@sequential_7/dense_flipout_16/Normal/sample/normal/random_normalAddV2Hsequential_7/dense_flipout_16/Normal/sample/normal/random_normal/mul:z:0Nsequential_7/dense_flipout_16/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:ή
/sequential_7/dense_flipout_16/Normal/sample/mulMulDsequential_7/dense_flipout_16/Normal/sample/normal/random_normal:z:03sequential_7/dense_flipout_16/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ο
1sequential_7/dense_flipout_16/Normal/sample/add_1AddV23sequential_7/dense_flipout_16/Normal/sample/mul:z:01sequential_7/dense_flipout_16/zeros_like:output:0*
T0*"
_output_shapes
:
9sequential_7/dense_flipout_16/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      β
3sequential_7/dense_flipout_16/Normal/sample/ReshapeReshape5sequential_7/dense_flipout_16/Normal/sample/add_1:z:0Bsequential_7/dense_flipout_16/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
#sequential_7/dense_flipout_16/ShapeShape.sequential_7/dense_flipout_15/BiasAdd:output:0*
T0*
_output_shapes
:{
1sequential_7/dense_flipout_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
3sequential_7/dense_flipout_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????}
3sequential_7/dense_flipout_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
+sequential_7/dense_flipout_16/strided_sliceStridedSlice,sequential_7/dense_flipout_16/Shape:output:0:sequential_7/dense_flipout_16/strided_slice/stack:output:0<sequential_7/dense_flipout_16/strided_slice/stack_1:output:0<sequential_7/dense_flipout_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Isequential_7/dense_flipout_16/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Gsequential_7/dense_flipout_16/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Gsequential_7/dense_flipout_16/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Csequential_7/dense_flipout_16/rademacher/uniform/sanitize_seed/seedRandomUniformIntRsequential_7/dense_flipout_16/rademacher/uniform/sanitize_seed/seed/shape:output:0Psequential_7/dense_flipout_16/rademacher/uniform/sanitize_seed/seed/min:output:0Psequential_7/dense_flipout_16/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Msequential_7/dense_flipout_16/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Msequential_7/dense_flipout_16/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
fsequential_7/dense_flipout_16/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterLsequential_7/dense_flipout_16/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Msequential_7/dense_flipout_16/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :΄
Isequential_7/dense_flipout_16/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2,sequential_7/dense_flipout_16/Shape:output:0lsequential_7/dense_flipout_16/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0psequential_7/dense_flipout_16/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Vsequential_7/dense_flipout_16/rademacher/uniform/stateless_random_uniform/alg:output:0Vsequential_7/dense_flipout_16/rademacher/uniform/stateless_random_uniform/min:output:0Vsequential_7/dense_flipout_16/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	p
.sequential_7/dense_flipout_16/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rς
,sequential_7/dense_flipout_16/rademacher/mulMul7sequential_7/dense_flipout_16/rademacher/mul/x:output:0Rsequential_7/dense_flipout_16/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????p
.sequential_7/dense_flipout_16/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΠ
,sequential_7/dense_flipout_16/rademacher/subSub0sequential_7/dense_flipout_16/rademacher/mul:z:07sequential_7/dense_flipout_16/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????¨
-sequential_7/dense_flipout_16/rademacher/CastCast0sequential_7/dense_flipout_16/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????p
.sequential_7/dense_flipout_16/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :n
,sequential_7/dense_flipout_16/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Λ
(sequential_7/dense_flipout_16/ExpandDims
ExpandDims7sequential_7/dense_flipout_16/ExpandDims/input:output:05sequential_7/dense_flipout_16/ExpandDims/dim:output:0*
T0*
_output_shapes
:k
)sequential_7/dense_flipout_16/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ϋ
$sequential_7/dense_flipout_16/concatConcatV24sequential_7/dense_flipout_16/strided_slice:output:01sequential_7/dense_flipout_16/ExpandDims:output:02sequential_7/dense_flipout_16/concat/axis:output:0*
N*
T0*
_output_shapes
:
Ksequential_7/dense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Isequential_7/dense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Isequential_7/dense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Esequential_7/dense_flipout_16/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntTsequential_7/dense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Rsequential_7/dense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/min:output:0Rsequential_7/dense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Osequential_7/dense_flipout_16/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Osequential_7/dense_flipout_16/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
hsequential_7/dense_flipout_16/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterNsequential_7/dense_flipout_16/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Osequential_7/dense_flipout_16/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Α
Ksequential_7/dense_flipout_16/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2-sequential_7/dense_flipout_16/concat:output:0nsequential_7/dense_flipout_16/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0rsequential_7/dense_flipout_16/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Xsequential_7/dense_flipout_16/rademacher_1/uniform/stateless_random_uniform/alg:output:0Xsequential_7/dense_flipout_16/rademacher_1/uniform/stateless_random_uniform/min:output:0Xsequential_7/dense_flipout_16/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	r
0sequential_7/dense_flipout_16/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rψ
.sequential_7/dense_flipout_16/rademacher_1/mulMul9sequential_7/dense_flipout_16/rademacher_1/mul/x:output:0Tsequential_7/dense_flipout_16/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????r
0sequential_7/dense_flipout_16/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΦ
.sequential_7/dense_flipout_16/rademacher_1/subSub2sequential_7/dense_flipout_16/rademacher_1/mul:z:09sequential_7/dense_flipout_16/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????¬
/sequential_7/dense_flipout_16/rademacher_1/CastCast2sequential_7/dense_flipout_16/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????½
!sequential_7/dense_flipout_16/mulMul.sequential_7/dense_flipout_15/BiasAdd:output:01sequential_7/dense_flipout_16/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????Ε
$sequential_7/dense_flipout_16/MatMulMatMul%sequential_7/dense_flipout_16/mul:z:0<sequential_7/dense_flipout_16/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????Α
#sequential_7/dense_flipout_16/mul_1Mul.sequential_7/dense_flipout_16/MatMul:product:03sequential_7/dense_flipout_16/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????΄
5sequential_7/dense_flipout_16/MatMul_1/ReadVariableOpReadVariableOp>sequential_7_dense_flipout_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ρ
&sequential_7/dense_flipout_16/MatMul_1MatMul.sequential_7/dense_flipout_15/BiasAdd:output:0=sequential_7/dense_flipout_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????·
!sequential_7/dense_flipout_16/addAddV20sequential_7/dense_flipout_16/MatMul_1:product:0'sequential_7/dense_flipout_16/mul_1:z:0*
T0*'
_output_shapes
:?????????­
jsequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Α
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ϋ
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Κ
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_7_dense_flipout_16_independentdeterministic_constructed_at_dense_flipout_16_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Ν
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:Ί
xsequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ρ
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Σ
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Σ
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_sliceStridedSlicesequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/shape_as_tensor:output:0sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack:output:0sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskΗ
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ι
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Λ
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Ν
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ζ
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ΐ
~sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : α
ysequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concatConcatV2sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/values_0:output:0sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/values_2:output:0sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Η
~sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastToBroadcastTosequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOp:value:0sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:?
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Δ
zsequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReshapeReshapesequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastTo:output:0sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:΅
ksequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
esequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/ReshapeReshapesequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/Reshape:output:0tsequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Reshape/shape:output:0*
T0*
_output_shapes
:ω
%sequential_7/dense_flipout_16/BiasAddBiasAdd%sequential_7/dense_flipout_16/add:z:0nsequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
sequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpLsequential_7_dense_flipout_16_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Έ
τsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:·
ρsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4€
οsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ϊsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
λsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogσsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
νsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logοsequential_7_dense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150368*
T0*
_output_shapes
: 
λsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubοsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ρsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:φ
φsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp>sequential_7_dense_flipout_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
οsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivώsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0οsequential_7_dense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150368*
T0*
_output_shapes

:
ρsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivσsequential_7_dense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xοsequential_7_dense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150368*
T0*
_output_shapes

:¦
ωsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceσsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0υsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:³
νsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
λsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulφsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ύsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:΅
οsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
νsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulψsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0οsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
νsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ρsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:΅
οsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
νsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulψsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ρsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:
λsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2οsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ρsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:
νsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subοsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0οsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ύ
«sequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???ν
sequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumρsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0΄sequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: g
$sequential_7/dense_flipout_16/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6
"sequential_7/dense_flipout_16/CastCast-sequential_7/dense_flipout_16/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 
%sequential_7/dense_flipout_16/truedivRealDiv’sequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0&sequential_7/dense_flipout_16/Cast:y:0*
T0*
_output_shapes
: 
/sequential_7/dense_flipout_16/divergence_kernelIdentity)sequential_7/dense_flipout_16/truediv:z:0*
T0*
_output_shapes
: }
(sequential_7/dense_flipout_17/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    {
8sequential_7/dense_flipout_17/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Π
Csequential_7/dense_flipout_17/Normal/sample/Softplus/ReadVariableOpReadVariableOpLsequential_7_dense_flipout_17_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Ά
4sequential_7/dense_flipout_17/Normal/sample/SoftplusSoftplusKsequential_7/dense_flipout_17/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:v
1sequential_7/dense_flipout_17/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4α
/sequential_7/dense_flipout_17/Normal/sample/addAddV2:sequential_7/dense_flipout_17/Normal/sample/add/x:output:0Bsequential_7/dense_flipout_17/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
;sequential_7/dense_flipout_17/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      s
1sequential_7/dense_flipout_17/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
?sequential_7/dense_flipout_17/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_7/dense_flipout_17/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_7/dense_flipout_17/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:΅
9sequential_7/dense_flipout_17/Normal/sample/strided_sliceStridedSliceDsequential_7/dense_flipout_17/Normal/sample/shape_as_tensor:output:0Hsequential_7/dense_flipout_17/Normal/sample/strided_slice/stack:output:0Jsequential_7/dense_flipout_17/Normal/sample/strided_slice/stack_1:output:0Jsequential_7/dense_flipout_17/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
=sequential_7/dense_flipout_17/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      u
3sequential_7/dense_flipout_17/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
Asequential_7/dense_flipout_17/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Csequential_7/dense_flipout_17/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Csequential_7/dense_flipout_17/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
;sequential_7/dense_flipout_17/Normal/sample/strided_slice_1StridedSliceFsequential_7/dense_flipout_17/Normal/sample/shape_as_tensor_1:output:0Jsequential_7/dense_flipout_17/Normal/sample/strided_slice_1/stack:output:0Lsequential_7/dense_flipout_17/Normal/sample/strided_slice_1/stack_1:output:0Lsequential_7/dense_flipout_17/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<sequential_7/dense_flipout_17/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
>sequential_7/dense_flipout_17/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB σ
9sequential_7/dense_flipout_17/Normal/sample/BroadcastArgsBroadcastArgsGsequential_7/dense_flipout_17/Normal/sample/BroadcastArgs/s0_1:output:0Bsequential_7/dense_flipout_17/Normal/sample/strided_slice:output:0*
_output_shapes
:ξ
;sequential_7/dense_flipout_17/Normal/sample/BroadcastArgs_1BroadcastArgs>sequential_7/dense_flipout_17/Normal/sample/BroadcastArgs:r0:0Dsequential_7/dense_flipout_17/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
;sequential_7/dense_flipout_17/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:y
7sequential_7/dense_flipout_17/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ά
2sequential_7/dense_flipout_17/Normal/sample/concatConcatV2Dsequential_7/dense_flipout_17/Normal/sample/concat/values_0:output:0@sequential_7/dense_flipout_17/Normal/sample/BroadcastArgs_1:r0:0@sequential_7/dense_flipout_17/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Esequential_7/dense_flipout_17/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gsequential_7/dense_flipout_17/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?δ
Usequential_7/dense_flipout_17/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal;sequential_7/dense_flipout_17/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0ͺ
Dsequential_7/dense_flipout_17/Normal/sample/normal/random_normal/mulMul^sequential_7/dense_flipout_17/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Psequential_7/dense_flipout_17/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
@sequential_7/dense_flipout_17/Normal/sample/normal/random_normalAddV2Hsequential_7/dense_flipout_17/Normal/sample/normal/random_normal/mul:z:0Nsequential_7/dense_flipout_17/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:ή
/sequential_7/dense_flipout_17/Normal/sample/mulMulDsequential_7/dense_flipout_17/Normal/sample/normal/random_normal:z:03sequential_7/dense_flipout_17/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ο
1sequential_7/dense_flipout_17/Normal/sample/add_1AddV23sequential_7/dense_flipout_17/Normal/sample/mul:z:01sequential_7/dense_flipout_17/zeros_like:output:0*
T0*"
_output_shapes
:
9sequential_7/dense_flipout_17/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      β
3sequential_7/dense_flipout_17/Normal/sample/ReshapeReshape5sequential_7/dense_flipout_17/Normal/sample/add_1:z:0Bsequential_7/dense_flipout_17/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
#sequential_7/dense_flipout_17/ShapeShape.sequential_7/dense_flipout_16/BiasAdd:output:0*
T0*
_output_shapes
:{
1sequential_7/dense_flipout_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
3sequential_7/dense_flipout_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????}
3sequential_7/dense_flipout_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
+sequential_7/dense_flipout_17/strided_sliceStridedSlice,sequential_7/dense_flipout_17/Shape:output:0:sequential_7/dense_flipout_17/strided_slice/stack:output:0<sequential_7/dense_flipout_17/strided_slice/stack_1:output:0<sequential_7/dense_flipout_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Isequential_7/dense_flipout_17/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Gsequential_7/dense_flipout_17/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Gsequential_7/dense_flipout_17/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Csequential_7/dense_flipout_17/rademacher/uniform/sanitize_seed/seedRandomUniformIntRsequential_7/dense_flipout_17/rademacher/uniform/sanitize_seed/seed/shape:output:0Psequential_7/dense_flipout_17/rademacher/uniform/sanitize_seed/seed/min:output:0Psequential_7/dense_flipout_17/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Msequential_7/dense_flipout_17/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Msequential_7/dense_flipout_17/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
fsequential_7/dense_flipout_17/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterLsequential_7/dense_flipout_17/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Msequential_7/dense_flipout_17/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :΄
Isequential_7/dense_flipout_17/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2,sequential_7/dense_flipout_17/Shape:output:0lsequential_7/dense_flipout_17/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0psequential_7/dense_flipout_17/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Vsequential_7/dense_flipout_17/rademacher/uniform/stateless_random_uniform/alg:output:0Vsequential_7/dense_flipout_17/rademacher/uniform/stateless_random_uniform/min:output:0Vsequential_7/dense_flipout_17/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	p
.sequential_7/dense_flipout_17/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rς
,sequential_7/dense_flipout_17/rademacher/mulMul7sequential_7/dense_flipout_17/rademacher/mul/x:output:0Rsequential_7/dense_flipout_17/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????p
.sequential_7/dense_flipout_17/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΠ
,sequential_7/dense_flipout_17/rademacher/subSub0sequential_7/dense_flipout_17/rademacher/mul:z:07sequential_7/dense_flipout_17/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????¨
-sequential_7/dense_flipout_17/rademacher/CastCast0sequential_7/dense_flipout_17/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????p
.sequential_7/dense_flipout_17/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :n
,sequential_7/dense_flipout_17/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Λ
(sequential_7/dense_flipout_17/ExpandDims
ExpandDims7sequential_7/dense_flipout_17/ExpandDims/input:output:05sequential_7/dense_flipout_17/ExpandDims/dim:output:0*
T0*
_output_shapes
:k
)sequential_7/dense_flipout_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ϋ
$sequential_7/dense_flipout_17/concatConcatV24sequential_7/dense_flipout_17/strided_slice:output:01sequential_7/dense_flipout_17/ExpandDims:output:02sequential_7/dense_flipout_17/concat/axis:output:0*
N*
T0*
_output_shapes
:
Ksequential_7/dense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Isequential_7/dense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Isequential_7/dense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Esequential_7/dense_flipout_17/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntTsequential_7/dense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Rsequential_7/dense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/min:output:0Rsequential_7/dense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Osequential_7/dense_flipout_17/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Osequential_7/dense_flipout_17/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
hsequential_7/dense_flipout_17/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterNsequential_7/dense_flipout_17/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Osequential_7/dense_flipout_17/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Α
Ksequential_7/dense_flipout_17/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2-sequential_7/dense_flipout_17/concat:output:0nsequential_7/dense_flipout_17/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0rsequential_7/dense_flipout_17/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Xsequential_7/dense_flipout_17/rademacher_1/uniform/stateless_random_uniform/alg:output:0Xsequential_7/dense_flipout_17/rademacher_1/uniform/stateless_random_uniform/min:output:0Xsequential_7/dense_flipout_17/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	r
0sequential_7/dense_flipout_17/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rψ
.sequential_7/dense_flipout_17/rademacher_1/mulMul9sequential_7/dense_flipout_17/rademacher_1/mul/x:output:0Tsequential_7/dense_flipout_17/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????r
0sequential_7/dense_flipout_17/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΦ
.sequential_7/dense_flipout_17/rademacher_1/subSub2sequential_7/dense_flipout_17/rademacher_1/mul:z:09sequential_7/dense_flipout_17/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????¬
/sequential_7/dense_flipout_17/rademacher_1/CastCast2sequential_7/dense_flipout_17/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????½
!sequential_7/dense_flipout_17/mulMul.sequential_7/dense_flipout_16/BiasAdd:output:01sequential_7/dense_flipout_17/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????Ε
$sequential_7/dense_flipout_17/MatMulMatMul%sequential_7/dense_flipout_17/mul:z:0<sequential_7/dense_flipout_17/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????Α
#sequential_7/dense_flipout_17/mul_1Mul.sequential_7/dense_flipout_17/MatMul:product:03sequential_7/dense_flipout_17/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????΄
5sequential_7/dense_flipout_17/MatMul_1/ReadVariableOpReadVariableOp>sequential_7_dense_flipout_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ρ
&sequential_7/dense_flipout_17/MatMul_1MatMul.sequential_7/dense_flipout_16/BiasAdd:output:0=sequential_7/dense_flipout_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????·
!sequential_7/dense_flipout_17/addAddV20sequential_7/dense_flipout_17/MatMul_1:product:0'sequential_7/dense_flipout_17/mul_1:z:0*
T0*'
_output_shapes
:?????????­
jsequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Α
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ϋ
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Κ
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_7_dense_flipout_17_independentdeterministic_constructed_at_dense_flipout_17_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Ν
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:Ί
xsequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ρ
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Σ
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Σ
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_sliceStridedSlicesequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/shape_as_tensor:output:0sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack:output:0sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskΗ
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ι
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Λ
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Ν
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ζ
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ΐ
~sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : α
ysequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concatConcatV2sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/values_0:output:0sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/values_2:output:0sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Η
~sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastToBroadcastTosequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOp:value:0sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:?
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Δ
zsequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReshapeReshapesequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastTo:output:0sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:΅
ksequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
esequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/ReshapeReshapesequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/Reshape:output:0tsequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Reshape/shape:output:0*
T0*
_output_shapes
:ω
%sequential_7/dense_flipout_17/BiasAddBiasAdd%sequential_7/dense_flipout_17/add:z:0nsequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
"sequential_7/dense_flipout_17/ReluRelu.sequential_7/dense_flipout_17/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
sequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpLsequential_7_dense_flipout_17_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Έ
τsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:·
ρsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4€
οsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ϊsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
λsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogσsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
νsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logοsequential_7_dense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150504*
T0*
_output_shapes
: 
λsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubοsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ρsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:φ
φsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp>sequential_7_dense_flipout_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
οsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivώsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0οsequential_7_dense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150504*
T0*
_output_shapes

:
ρsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivσsequential_7_dense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xοsequential_7_dense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150504*
T0*
_output_shapes

:¦
ωsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceσsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0υsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:³
νsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
λsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulφsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ύsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:΅
οsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
νsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulψsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0οsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
νsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ρsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:΅
οsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
νsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulψsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ρsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:
λsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2οsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ρsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:
νsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subοsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0οsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ύ
«sequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???ν
sequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumρsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0΄sequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: g
$sequential_7/dense_flipout_17/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6
"sequential_7/dense_flipout_17/CastCast-sequential_7/dense_flipout_17/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 
%sequential_7/dense_flipout_17/truedivRealDiv’sequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0&sequential_7/dense_flipout_17/Cast:y:0*
T0*
_output_shapes
: 
/sequential_7/dense_flipout_17/divergence_kernelIdentity)sequential_7/dense_flipout_17/truediv:z:0*
T0*
_output_shapes
: }
(sequential_7/dense_flipout_18/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    {
8sequential_7/dense_flipout_18/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Π
Csequential_7/dense_flipout_18/Normal/sample/Softplus/ReadVariableOpReadVariableOpLsequential_7_dense_flipout_18_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Ά
4sequential_7/dense_flipout_18/Normal/sample/SoftplusSoftplusKsequential_7/dense_flipout_18/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:v
1sequential_7/dense_flipout_18/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4α
/sequential_7/dense_flipout_18/Normal/sample/addAddV2:sequential_7/dense_flipout_18/Normal/sample/add/x:output:0Bsequential_7/dense_flipout_18/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
;sequential_7/dense_flipout_18/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      s
1sequential_7/dense_flipout_18/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
?sequential_7/dense_flipout_18/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_7/dense_flipout_18/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_7/dense_flipout_18/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:΅
9sequential_7/dense_flipout_18/Normal/sample/strided_sliceStridedSliceDsequential_7/dense_flipout_18/Normal/sample/shape_as_tensor:output:0Hsequential_7/dense_flipout_18/Normal/sample/strided_slice/stack:output:0Jsequential_7/dense_flipout_18/Normal/sample/strided_slice/stack_1:output:0Jsequential_7/dense_flipout_18/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
=sequential_7/dense_flipout_18/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      u
3sequential_7/dense_flipout_18/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
Asequential_7/dense_flipout_18/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Csequential_7/dense_flipout_18/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Csequential_7/dense_flipout_18/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
;sequential_7/dense_flipout_18/Normal/sample/strided_slice_1StridedSliceFsequential_7/dense_flipout_18/Normal/sample/shape_as_tensor_1:output:0Jsequential_7/dense_flipout_18/Normal/sample/strided_slice_1/stack:output:0Lsequential_7/dense_flipout_18/Normal/sample/strided_slice_1/stack_1:output:0Lsequential_7/dense_flipout_18/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<sequential_7/dense_flipout_18/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
>sequential_7/dense_flipout_18/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB σ
9sequential_7/dense_flipout_18/Normal/sample/BroadcastArgsBroadcastArgsGsequential_7/dense_flipout_18/Normal/sample/BroadcastArgs/s0_1:output:0Bsequential_7/dense_flipout_18/Normal/sample/strided_slice:output:0*
_output_shapes
:ξ
;sequential_7/dense_flipout_18/Normal/sample/BroadcastArgs_1BroadcastArgs>sequential_7/dense_flipout_18/Normal/sample/BroadcastArgs:r0:0Dsequential_7/dense_flipout_18/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
;sequential_7/dense_flipout_18/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:y
7sequential_7/dense_flipout_18/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ά
2sequential_7/dense_flipout_18/Normal/sample/concatConcatV2Dsequential_7/dense_flipout_18/Normal/sample/concat/values_0:output:0@sequential_7/dense_flipout_18/Normal/sample/BroadcastArgs_1:r0:0@sequential_7/dense_flipout_18/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Esequential_7/dense_flipout_18/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gsequential_7/dense_flipout_18/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?δ
Usequential_7/dense_flipout_18/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal;sequential_7/dense_flipout_18/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0ͺ
Dsequential_7/dense_flipout_18/Normal/sample/normal/random_normal/mulMul^sequential_7/dense_flipout_18/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Psequential_7/dense_flipout_18/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
@sequential_7/dense_flipout_18/Normal/sample/normal/random_normalAddV2Hsequential_7/dense_flipout_18/Normal/sample/normal/random_normal/mul:z:0Nsequential_7/dense_flipout_18/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:ή
/sequential_7/dense_flipout_18/Normal/sample/mulMulDsequential_7/dense_flipout_18/Normal/sample/normal/random_normal:z:03sequential_7/dense_flipout_18/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ο
1sequential_7/dense_flipout_18/Normal/sample/add_1AddV23sequential_7/dense_flipout_18/Normal/sample/mul:z:01sequential_7/dense_flipout_18/zeros_like:output:0*
T0*"
_output_shapes
:
9sequential_7/dense_flipout_18/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      β
3sequential_7/dense_flipout_18/Normal/sample/ReshapeReshape5sequential_7/dense_flipout_18/Normal/sample/add_1:z:0Bsequential_7/dense_flipout_18/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
#sequential_7/dense_flipout_18/ShapeShape0sequential_7/dense_flipout_17/Relu:activations:0*
T0*
_output_shapes
:{
1sequential_7/dense_flipout_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
3sequential_7/dense_flipout_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????}
3sequential_7/dense_flipout_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
+sequential_7/dense_flipout_18/strided_sliceStridedSlice,sequential_7/dense_flipout_18/Shape:output:0:sequential_7/dense_flipout_18/strided_slice/stack:output:0<sequential_7/dense_flipout_18/strided_slice/stack_1:output:0<sequential_7/dense_flipout_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Isequential_7/dense_flipout_18/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Gsequential_7/dense_flipout_18/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Gsequential_7/dense_flipout_18/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Csequential_7/dense_flipout_18/rademacher/uniform/sanitize_seed/seedRandomUniformIntRsequential_7/dense_flipout_18/rademacher/uniform/sanitize_seed/seed/shape:output:0Psequential_7/dense_flipout_18/rademacher/uniform/sanitize_seed/seed/min:output:0Psequential_7/dense_flipout_18/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Msequential_7/dense_flipout_18/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Msequential_7/dense_flipout_18/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
fsequential_7/dense_flipout_18/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterLsequential_7/dense_flipout_18/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Msequential_7/dense_flipout_18/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :΄
Isequential_7/dense_flipout_18/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2,sequential_7/dense_flipout_18/Shape:output:0lsequential_7/dense_flipout_18/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0psequential_7/dense_flipout_18/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Vsequential_7/dense_flipout_18/rademacher/uniform/stateless_random_uniform/alg:output:0Vsequential_7/dense_flipout_18/rademacher/uniform/stateless_random_uniform/min:output:0Vsequential_7/dense_flipout_18/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	p
.sequential_7/dense_flipout_18/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rς
,sequential_7/dense_flipout_18/rademacher/mulMul7sequential_7/dense_flipout_18/rademacher/mul/x:output:0Rsequential_7/dense_flipout_18/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????p
.sequential_7/dense_flipout_18/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΠ
,sequential_7/dense_flipout_18/rademacher/subSub0sequential_7/dense_flipout_18/rademacher/mul:z:07sequential_7/dense_flipout_18/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????¨
-sequential_7/dense_flipout_18/rademacher/CastCast0sequential_7/dense_flipout_18/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????p
.sequential_7/dense_flipout_18/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :n
,sequential_7/dense_flipout_18/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Λ
(sequential_7/dense_flipout_18/ExpandDims
ExpandDims7sequential_7/dense_flipout_18/ExpandDims/input:output:05sequential_7/dense_flipout_18/ExpandDims/dim:output:0*
T0*
_output_shapes
:k
)sequential_7/dense_flipout_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ϋ
$sequential_7/dense_flipout_18/concatConcatV24sequential_7/dense_flipout_18/strided_slice:output:01sequential_7/dense_flipout_18/ExpandDims:output:02sequential_7/dense_flipout_18/concat/axis:output:0*
N*
T0*
_output_shapes
:
Ksequential_7/dense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Isequential_7/dense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Isequential_7/dense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Esequential_7/dense_flipout_18/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntTsequential_7/dense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Rsequential_7/dense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/min:output:0Rsequential_7/dense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Osequential_7/dense_flipout_18/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Osequential_7/dense_flipout_18/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
hsequential_7/dense_flipout_18/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterNsequential_7/dense_flipout_18/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Osequential_7/dense_flipout_18/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Α
Ksequential_7/dense_flipout_18/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2-sequential_7/dense_flipout_18/concat:output:0nsequential_7/dense_flipout_18/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0rsequential_7/dense_flipout_18/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Xsequential_7/dense_flipout_18/rademacher_1/uniform/stateless_random_uniform/alg:output:0Xsequential_7/dense_flipout_18/rademacher_1/uniform/stateless_random_uniform/min:output:0Xsequential_7/dense_flipout_18/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	r
0sequential_7/dense_flipout_18/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rψ
.sequential_7/dense_flipout_18/rademacher_1/mulMul9sequential_7/dense_flipout_18/rademacher_1/mul/x:output:0Tsequential_7/dense_flipout_18/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????r
0sequential_7/dense_flipout_18/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΦ
.sequential_7/dense_flipout_18/rademacher_1/subSub2sequential_7/dense_flipout_18/rademacher_1/mul:z:09sequential_7/dense_flipout_18/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????¬
/sequential_7/dense_flipout_18/rademacher_1/CastCast2sequential_7/dense_flipout_18/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Ώ
!sequential_7/dense_flipout_18/mulMul0sequential_7/dense_flipout_17/Relu:activations:01sequential_7/dense_flipout_18/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????Ε
$sequential_7/dense_flipout_18/MatMulMatMul%sequential_7/dense_flipout_18/mul:z:0<sequential_7/dense_flipout_18/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????Α
#sequential_7/dense_flipout_18/mul_1Mul.sequential_7/dense_flipout_18/MatMul:product:03sequential_7/dense_flipout_18/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????΄
5sequential_7/dense_flipout_18/MatMul_1/ReadVariableOpReadVariableOp>sequential_7_dense_flipout_18_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Σ
&sequential_7/dense_flipout_18/MatMul_1MatMul0sequential_7/dense_flipout_17/Relu:activations:0=sequential_7/dense_flipout_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????·
!sequential_7/dense_flipout_18/addAddV20sequential_7/dense_flipout_18/MatMul_1:product:0'sequential_7/dense_flipout_18/mul_1:z:0*
T0*'
_output_shapes
:?????????­
jsequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Α
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ϋ
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Κ
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_7_dense_flipout_18_independentdeterministic_constructed_at_dense_flipout_18_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Ν
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:Ί
xsequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ρ
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Σ
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Σ
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_sliceStridedSlicesequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/shape_as_tensor:output:0sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack:output:0sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskΗ
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ι
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Λ
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Ν
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ζ
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ΐ
~sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : α
ysequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concatConcatV2sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/values_0:output:0sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/values_2:output:0sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Η
~sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastToBroadcastTosequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOp:value:0sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:?
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Δ
zsequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReshapeReshapesequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastTo:output:0sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:΅
ksequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
esequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/ReshapeReshapesequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/Reshape:output:0tsequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Reshape/shape:output:0*
T0*
_output_shapes
:ω
%sequential_7/dense_flipout_18/BiasAddBiasAdd%sequential_7/dense_flipout_18/add:z:0nsequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
%sequential_7/dense_flipout_18/SoftmaxSoftmax.sequential_7/dense_flipout_18/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
sequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpLsequential_7_dense_flipout_18_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Έ
τsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:·
ρsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4€
οsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ϊsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
λsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogσsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
νsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logοsequential_7_dense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150640*
T0*
_output_shapes
: 
λsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubοsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ρsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:φ
φsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp>sequential_7_dense_flipout_18_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
οsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivώsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0οsequential_7_dense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150640*
T0*
_output_shapes

:
ρsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivσsequential_7_dense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xοsequential_7_dense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150640*
T0*
_output_shapes

:¦
ωsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceσsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0υsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:³
νsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
λsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulφsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ύsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:΅
οsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
νsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulψsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0οsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
νsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ρsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:΅
οsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
νsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulψsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ρsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:
λsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2οsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ρsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:
νsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subοsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0οsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ύ
«sequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???ν
sequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumρsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0΄sequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: g
$sequential_7/dense_flipout_18/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6
"sequential_7/dense_flipout_18/CastCast-sequential_7/dense_flipout_18/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 
%sequential_7/dense_flipout_18/truedivRealDiv’sequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0&sequential_7/dense_flipout_18/Cast:y:0*
T0*
_output_shapes
: 
/sequential_7/dense_flipout_18/divergence_kernelIdentity)sequential_7/dense_flipout_18/truediv:z:0*
T0*
_output_shapes
: ~
IdentityIdentity/sequential_7/dense_flipout_18/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????Φ
NoOpNoOp^sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOp^sequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpχ^sequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp6^sequential_7/dense_flipout_15/MatMul_1/ReadVariableOpD^sequential_7/dense_flipout_15/Normal/sample/Softplus/ReadVariableOp^sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOp^sequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpχ^sequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp6^sequential_7/dense_flipout_16/MatMul_1/ReadVariableOpD^sequential_7/dense_flipout_16/Normal/sample/Softplus/ReadVariableOp^sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOp^sequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpχ^sequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp6^sequential_7/dense_flipout_17/MatMul_1/ReadVariableOpD^sequential_7/dense_flipout_17/Normal/sample/Softplus/ReadVariableOp^sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOp^sequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpχ^sequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp6^sequential_7/dense_flipout_18/MatMul_1/ReadVariableOpD^sequential_7/dense_flipout_18/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????: : : : :: : : : :: : : : :: : : : :2
sequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOpsequential_7/dense_flipout_15/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOp2
sequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2ς
φsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpφsequential_7/dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2n
5sequential_7/dense_flipout_15/MatMul_1/ReadVariableOp5sequential_7/dense_flipout_15/MatMul_1/ReadVariableOp2
Csequential_7/dense_flipout_15/Normal/sample/Softplus/ReadVariableOpCsequential_7/dense_flipout_15/Normal/sample/Softplus/ReadVariableOp2
sequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOpsequential_7/dense_flipout_16/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOp2
sequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2ς
φsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpφsequential_7/dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2n
5sequential_7/dense_flipout_16/MatMul_1/ReadVariableOp5sequential_7/dense_flipout_16/MatMul_1/ReadVariableOp2
Csequential_7/dense_flipout_16/Normal/sample/Softplus/ReadVariableOpCsequential_7/dense_flipout_16/Normal/sample/Softplus/ReadVariableOp2
sequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOpsequential_7/dense_flipout_17/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOp2
sequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2ς
φsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpφsequential_7/dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2n
5sequential_7/dense_flipout_17/MatMul_1/ReadVariableOp5sequential_7/dense_flipout_17/MatMul_1/ReadVariableOp2
Csequential_7/dense_flipout_17/Normal/sample/Softplus/ReadVariableOpCsequential_7/dense_flipout_17/Normal/sample/Softplus/ReadVariableOp2
sequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOpsequential_7/dense_flipout_18/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOp2
sequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2ς
φsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpφsequential_7/dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2n
5sequential_7/dense_flipout_18/MatMul_1/ReadVariableOp5sequential_7/dense_flipout_18/MatMul_1/ReadVariableOp2
Csequential_7/dense_flipout_18/Normal/sample/Softplus/ReadVariableOpCsequential_7/dense_flipout_18/Normal/sample/Softplus/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_6:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
δϊ

M__inference_dense_flipout_15_layer_call_and_return_conditional_losses_2150817

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_15_sample_deterministic_sample_readvariableop_resource:Φ
Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150786Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB 
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ύ
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¨
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ο
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΗ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :β
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ο
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_15_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Μ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΡkullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150786*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150786*
T0*
_output_shapes

:΄
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΡkullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150786*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Δ
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_15/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
Έϋ

M__inference_dense_flipout_17_layer_call_and_return_conditional_losses_2151124

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_17_sample_deterministic_sample_readvariableop_resource:Φ
Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2151093Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB 
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ύ
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¨
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ο
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΗ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :β
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ο
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_17_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Μ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΡkullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2151093*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2151093*
T0*
_output_shapes

:΄
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΡkullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2151093*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Δ
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_17/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
	
Ϊ
2__inference_dense_flipout_18_layer_call_fn_2153462

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_18_layer_call_and_return_conditional_losses_2151278o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
υ
ͺ
%__inference_signature_wrapper_2152977
input_6
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13

unknown_14:

unknown_15:

unknown_16:

unknown_17

unknown_18
identity’StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_2150670o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????: : : : :: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_6:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
½ϋ

M__inference_dense_flipout_18_layer_call_and_return_conditional_losses_2153603

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_18_sample_deterministic_sample_readvariableop_resource:Φ
Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153572Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB 
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ύ
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¨
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ο
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΗ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :β
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ο
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_18_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Μ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΡkullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153572*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153572*
T0*
_output_shapes

:΄
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΡkullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2153572*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Δ
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_18/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
Ά'
Δ
I__inference_sequential_7_layer_call_and_return_conditional_losses_2151518

inputs*
dense_flipout_15_2151465:*
dense_flipout_15_2151467:&
dense_flipout_15_2151469:
dense_flipout_15_2151471
dense_flipout_15_2151473*
dense_flipout_16_2151477:*
dense_flipout_16_2151479:&
dense_flipout_16_2151481:
dense_flipout_16_2151483
dense_flipout_16_2151485*
dense_flipout_17_2151489:*
dense_flipout_17_2151491:&
dense_flipout_17_2151493:
dense_flipout_17_2151495
dense_flipout_17_2151497*
dense_flipout_18_2151501:*
dense_flipout_18_2151503:&
dense_flipout_18_2151505:
dense_flipout_18_2151507
dense_flipout_18_2151509
identity

identity_1

identity_2

identity_3

identity_4’(dense_flipout_15/StatefulPartitionedCall’(dense_flipout_16/StatefulPartitionedCall’(dense_flipout_17/StatefulPartitionedCall’(dense_flipout_18/StatefulPartitionedCallθ
(dense_flipout_15/StatefulPartitionedCallStatefulPartitionedCallinputsdense_flipout_15_2151465dense_flipout_15_2151467dense_flipout_15_2151469dense_flipout_15_2151471dense_flipout_15_2151473*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_15_layer_call_and_return_conditional_losses_2150817
(dense_flipout_16/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_15/StatefulPartitionedCall:output:0dense_flipout_16_2151477dense_flipout_16_2151479dense_flipout_16_2151481dense_flipout_16_2151483dense_flipout_16_2151485*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_16_layer_call_and_return_conditional_losses_2150970
(dense_flipout_17/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_16/StatefulPartitionedCall:output:0dense_flipout_17_2151489dense_flipout_17_2151491dense_flipout_17_2151493dense_flipout_17_2151495dense_flipout_17_2151497*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_17_layer_call_and_return_conditional_losses_2151124
(dense_flipout_18/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_17/StatefulPartitionedCall:output:0dense_flipout_18_2151501dense_flipout_18_2151503dense_flipout_18_2151505dense_flipout_18_2151507dense_flipout_18_2151509*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_18_layer_call_and_return_conditional_losses_2151278
IdentityIdentity1dense_flipout_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity1dense_flipout_15/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_16/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_17/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_4Identity1dense_flipout_18/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: ς
NoOpNoOp)^dense_flipout_15/StatefulPartitionedCall)^dense_flipout_16/StatefulPartitionedCall)^dense_flipout_17/StatefulPartitionedCall)^dense_flipout_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????: : : : :: : : : :: : : : :: : : : :2T
(dense_flipout_15/StatefulPartitionedCall(dense_flipout_15/StatefulPartitionedCall2T
(dense_flipout_16/StatefulPartitionedCall(dense_flipout_16/StatefulPartitionedCall2T
(dense_flipout_17/StatefulPartitionedCall(dense_flipout_17/StatefulPartitionedCall2T
(dense_flipout_18/StatefulPartitionedCall(dense_flipout_18/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
Ή'
Ε
I__inference_sequential_7_layer_call_and_return_conditional_losses_2151726
input_6*
dense_flipout_15_2151673:*
dense_flipout_15_2151675:&
dense_flipout_15_2151677:
dense_flipout_15_2151679
dense_flipout_15_2151681*
dense_flipout_16_2151685:*
dense_flipout_16_2151687:&
dense_flipout_16_2151689:
dense_flipout_16_2151691
dense_flipout_16_2151693*
dense_flipout_17_2151697:*
dense_flipout_17_2151699:&
dense_flipout_17_2151701:
dense_flipout_17_2151703
dense_flipout_17_2151705*
dense_flipout_18_2151709:*
dense_flipout_18_2151711:&
dense_flipout_18_2151713:
dense_flipout_18_2151715
dense_flipout_18_2151717
identity

identity_1

identity_2

identity_3

identity_4’(dense_flipout_15/StatefulPartitionedCall’(dense_flipout_16/StatefulPartitionedCall’(dense_flipout_17/StatefulPartitionedCall’(dense_flipout_18/StatefulPartitionedCallι
(dense_flipout_15/StatefulPartitionedCallStatefulPartitionedCallinput_6dense_flipout_15_2151673dense_flipout_15_2151675dense_flipout_15_2151677dense_flipout_15_2151679dense_flipout_15_2151681*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_15_layer_call_and_return_conditional_losses_2150817
(dense_flipout_16/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_15/StatefulPartitionedCall:output:0dense_flipout_16_2151685dense_flipout_16_2151687dense_flipout_16_2151689dense_flipout_16_2151691dense_flipout_16_2151693*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_16_layer_call_and_return_conditional_losses_2150970
(dense_flipout_17/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_16/StatefulPartitionedCall:output:0dense_flipout_17_2151697dense_flipout_17_2151699dense_flipout_17_2151701dense_flipout_17_2151703dense_flipout_17_2151705*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_17_layer_call_and_return_conditional_losses_2151124
(dense_flipout_18/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_17/StatefulPartitionedCall:output:0dense_flipout_18_2151709dense_flipout_18_2151711dense_flipout_18_2151713dense_flipout_18_2151715dense_flipout_18_2151717*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_18_layer_call_and_return_conditional_losses_2151278
IdentityIdentity1dense_flipout_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity1dense_flipout_15/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_16/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_17/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_4Identity1dense_flipout_18/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: ς
NoOpNoOp)^dense_flipout_15/StatefulPartitionedCall)^dense_flipout_16/StatefulPartitionedCall)^dense_flipout_17/StatefulPartitionedCall)^dense_flipout_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????: : : : :: : : : :: : : : :: : : : :2T
(dense_flipout_15/StatefulPartitionedCall(dense_flipout_15/StatefulPartitionedCall2T
(dense_flipout_16/StatefulPartitionedCall(dense_flipout_16/StatefulPartitionedCall2T
(dense_flipout_17/StatefulPartitionedCall(dense_flipout_17/StatefulPartitionedCall2T
(dense_flipout_18/StatefulPartitionedCall(dense_flipout_18/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_6:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
	
Ϊ
2__inference_dense_flipout_17_layer_call_fn_2153305

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_17_layer_call_and_return_conditional_losses_2151124o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
ͺΘ
χ"
#__inference__traced_restore_2153914
file_prefixH
6assignvariableop_dense_flipout_15_kernel_posterior_loc:Z
Hassignvariableop_1_dense_flipout_15_kernel_posterior_untransformed_scale:D
6assignvariableop_2_dense_flipout_15_bias_posterior_loc:J
8assignvariableop_3_dense_flipout_16_kernel_posterior_loc:Z
Hassignvariableop_4_dense_flipout_16_kernel_posterior_untransformed_scale:D
6assignvariableop_5_dense_flipout_16_bias_posterior_loc:J
8assignvariableop_6_dense_flipout_17_kernel_posterior_loc:Z
Hassignvariableop_7_dense_flipout_17_kernel_posterior_untransformed_scale:D
6assignvariableop_8_dense_flipout_17_bias_posterior_loc:J
8assignvariableop_9_dense_flipout_18_kernel_posterior_loc:[
Iassignvariableop_10_dense_flipout_18_kernel_posterior_untransformed_scale:E
7assignvariableop_11_dense_flipout_18_bias_posterior_loc:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: R
@assignvariableop_21_adam_dense_flipout_15_kernel_posterior_loc_m:b
Passignvariableop_22_adam_dense_flipout_15_kernel_posterior_untransformed_scale_m:L
>assignvariableop_23_adam_dense_flipout_15_bias_posterior_loc_m:R
@assignvariableop_24_adam_dense_flipout_16_kernel_posterior_loc_m:b
Passignvariableop_25_adam_dense_flipout_16_kernel_posterior_untransformed_scale_m:L
>assignvariableop_26_adam_dense_flipout_16_bias_posterior_loc_m:R
@assignvariableop_27_adam_dense_flipout_17_kernel_posterior_loc_m:b
Passignvariableop_28_adam_dense_flipout_17_kernel_posterior_untransformed_scale_m:L
>assignvariableop_29_adam_dense_flipout_17_bias_posterior_loc_m:R
@assignvariableop_30_adam_dense_flipout_18_kernel_posterior_loc_m:b
Passignvariableop_31_adam_dense_flipout_18_kernel_posterior_untransformed_scale_m:L
>assignvariableop_32_adam_dense_flipout_18_bias_posterior_loc_m:R
@assignvariableop_33_adam_dense_flipout_15_kernel_posterior_loc_v:b
Passignvariableop_34_adam_dense_flipout_15_kernel_posterior_untransformed_scale_v:L
>assignvariableop_35_adam_dense_flipout_15_bias_posterior_loc_v:R
@assignvariableop_36_adam_dense_flipout_16_kernel_posterior_loc_v:b
Passignvariableop_37_adam_dense_flipout_16_kernel_posterior_untransformed_scale_v:L
>assignvariableop_38_adam_dense_flipout_16_bias_posterior_loc_v:R
@assignvariableop_39_adam_dense_flipout_17_kernel_posterior_loc_v:b
Passignvariableop_40_adam_dense_flipout_17_kernel_posterior_untransformed_scale_v:L
>assignvariableop_41_adam_dense_flipout_17_bias_posterior_loc_v:R
@assignvariableop_42_adam_dense_flipout_18_kernel_posterior_loc_v:b
Passignvariableop_43_adam_dense_flipout_18_kernel_posterior_untransformed_scale_v:L
>assignvariableop_44_adam_dense_flipout_18_bias_posterior_loc_v:
identity_46’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_33’AssignVariableOp_34’AssignVariableOp_35’AssignVariableOp_36’AssignVariableOp_37’AssignVariableOp_38’AssignVariableOp_39’AssignVariableOp_4’AssignVariableOp_40’AssignVariableOp_41’AssignVariableOp_42’AssignVariableOp_43’AssignVariableOp_44’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9κ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*
valueB.BDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-3/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-3/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-3/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-3/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-3/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-3/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-3/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-3/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHΜ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ξ
_output_shapes»
Έ::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOpAssignVariableOp6assignvariableop_dense_flipout_15_kernel_posterior_locIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_1AssignVariableOpHassignvariableop_1_dense_flipout_15_kernel_posterior_untransformed_scaleIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:₯
AssignVariableOp_2AssignVariableOp6assignvariableop_2_dense_flipout_15_bias_posterior_locIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_3AssignVariableOp8assignvariableop_3_dense_flipout_16_kernel_posterior_locIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_4AssignVariableOpHassignvariableop_4_dense_flipout_16_kernel_posterior_untransformed_scaleIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:₯
AssignVariableOp_5AssignVariableOp6assignvariableop_5_dense_flipout_16_bias_posterior_locIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_6AssignVariableOp8assignvariableop_6_dense_flipout_17_kernel_posterior_locIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_7AssignVariableOpHassignvariableop_7_dense_flipout_17_kernel_posterior_untransformed_scaleIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:₯
AssignVariableOp_8AssignVariableOp6assignvariableop_8_dense_flipout_17_bias_posterior_locIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_9AssignVariableOp8assignvariableop_9_dense_flipout_18_kernel_posterior_locIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ί
AssignVariableOp_10AssignVariableOpIassignvariableop_10_dense_flipout_18_kernel_posterior_untransformed_scaleIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_11AssignVariableOp7assignvariableop_11_dense_flipout_18_bias_posterior_locIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_dense_flipout_15_kernel_posterior_loc_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_22AssignVariableOpPassignvariableop_22_adam_dense_flipout_15_kernel_posterior_untransformed_scale_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_23AssignVariableOp>assignvariableop_23_adam_dense_flipout_15_bias_posterior_loc_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_dense_flipout_16_kernel_posterior_loc_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_25AssignVariableOpPassignvariableop_25_adam_dense_flipout_16_kernel_posterior_untransformed_scale_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_dense_flipout_16_bias_posterior_loc_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_dense_flipout_17_kernel_posterior_loc_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_28AssignVariableOpPassignvariableop_28_adam_dense_flipout_17_kernel_posterior_untransformed_scale_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_29AssignVariableOp>assignvariableop_29_adam_dense_flipout_17_bias_posterior_loc_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_dense_flipout_18_kernel_posterior_loc_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_31AssignVariableOpPassignvariableop_31_adam_dense_flipout_18_kernel_posterior_untransformed_scale_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_dense_flipout_18_bias_posterior_loc_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_33AssignVariableOp@assignvariableop_33_adam_dense_flipout_15_kernel_posterior_loc_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_34AssignVariableOpPassignvariableop_34_adam_dense_flipout_15_kernel_posterior_untransformed_scale_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_dense_flipout_15_bias_posterior_loc_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_36AssignVariableOp@assignvariableop_36_adam_dense_flipout_16_kernel_posterior_loc_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_37AssignVariableOpPassignvariableop_37_adam_dense_flipout_16_kernel_posterior_untransformed_scale_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_38AssignVariableOp>assignvariableop_38_adam_dense_flipout_16_bias_posterior_loc_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_39AssignVariableOp@assignvariableop_39_adam_dense_flipout_17_kernel_posterior_loc_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_40AssignVariableOpPassignvariableop_40_adam_dense_flipout_17_kernel_posterior_untransformed_scale_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_41AssignVariableOp>assignvariableop_41_adam_dense_flipout_17_bias_posterior_loc_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_42AssignVariableOp@assignvariableop_42_adam_dense_flipout_18_kernel_posterior_loc_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_43AssignVariableOpPassignvariableop_43_adam_dense_flipout_18_kernel_posterior_untransformed_scale_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_44AssignVariableOp>assignvariableop_44_adam_dense_flipout_18_bias_posterior_loc_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ­
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
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
Ά'
Δ
I__inference_sequential_7_layer_call_and_return_conditional_losses_2151296

inputs*
dense_flipout_15_2150818:*
dense_flipout_15_2150820:&
dense_flipout_15_2150822:
dense_flipout_15_2150824
dense_flipout_15_2150826*
dense_flipout_16_2150971:*
dense_flipout_16_2150973:&
dense_flipout_16_2150975:
dense_flipout_16_2150977
dense_flipout_16_2150979*
dense_flipout_17_2151125:*
dense_flipout_17_2151127:&
dense_flipout_17_2151129:
dense_flipout_17_2151131
dense_flipout_17_2151133*
dense_flipout_18_2151279:*
dense_flipout_18_2151281:&
dense_flipout_18_2151283:
dense_flipout_18_2151285
dense_flipout_18_2151287
identity

identity_1

identity_2

identity_3

identity_4’(dense_flipout_15/StatefulPartitionedCall’(dense_flipout_16/StatefulPartitionedCall’(dense_flipout_17/StatefulPartitionedCall’(dense_flipout_18/StatefulPartitionedCallθ
(dense_flipout_15/StatefulPartitionedCallStatefulPartitionedCallinputsdense_flipout_15_2150818dense_flipout_15_2150820dense_flipout_15_2150822dense_flipout_15_2150824dense_flipout_15_2150826*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_15_layer_call_and_return_conditional_losses_2150817
(dense_flipout_16/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_15/StatefulPartitionedCall:output:0dense_flipout_16_2150971dense_flipout_16_2150973dense_flipout_16_2150975dense_flipout_16_2150977dense_flipout_16_2150979*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_16_layer_call_and_return_conditional_losses_2150970
(dense_flipout_17/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_16/StatefulPartitionedCall:output:0dense_flipout_17_2151125dense_flipout_17_2151127dense_flipout_17_2151129dense_flipout_17_2151131dense_flipout_17_2151133*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_17_layer_call_and_return_conditional_losses_2151124
(dense_flipout_18/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_17/StatefulPartitionedCall:output:0dense_flipout_18_2151279dense_flipout_18_2151281dense_flipout_18_2151283dense_flipout_18_2151285dense_flipout_18_2151287*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_18_layer_call_and_return_conditional_losses_2151278
IdentityIdentity1dense_flipout_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity1dense_flipout_15/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_16/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_17/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_4Identity1dense_flipout_18/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: ς
NoOpNoOp)^dense_flipout_15/StatefulPartitionedCall)^dense_flipout_16/StatefulPartitionedCall)^dense_flipout_17/StatefulPartitionedCall)^dense_flipout_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????: : : : :: : : : :: : : : :: : : : :2T
(dense_flipout_15/StatefulPartitionedCall(dense_flipout_15/StatefulPartitionedCall2T
(dense_flipout_16/StatefulPartitionedCall(dense_flipout_16/StatefulPartitionedCall2T
(dense_flipout_17/StatefulPartitionedCall(dense_flipout_17/StatefulPartitionedCall2T
(dense_flipout_18/StatefulPartitionedCall(dense_flipout_18/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
δϊ

M__inference_dense_flipout_16_layer_call_and_return_conditional_losses_2150970

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_16_sample_deterministic_sample_readvariableop_resource:Φ
Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150939Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : k
!Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Normal/sample/strided_sliceStridedSlice&Normal/sample/shape_as_tensor:output:0*Normal/sample/strided_slice/stack:output:0,Normal/sample/strided_slice/stack_1:output:0,Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      W
Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : m
#Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
Normal/sample/strided_slice_1StridedSlice(Normal/sample/shape_as_tensor_1:output:0,Normal/sample/strided_slice_1/stack:output:0.Normal/sample/strided_slice_1/stack_1:output:0.Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maska
Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB c
 Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB 
Normal/sample/BroadcastArgsBroadcastArgs)Normal/sample/BroadcastArgs/s0_1:output:0$Normal/sample/strided_slice:output:0*
_output_shapes
:
Normal/sample/BroadcastArgs_1BroadcastArgs Normal/sample/BroadcastArgs:r0:0&Normal/sample/strided_slice_1:output:0*
_output_shapes
:g
Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:[
Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ύ
Normal/sample/concatConcatV2&Normal/sample/concat/values_0:output:0"Normal/sample/BroadcastArgs_1:r0:0"Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:l
'Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¨
7Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormalNormal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ο
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
+rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:t
)rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????o
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
%rademacher/uniform/sanitize_seed/seedRandomUniformInt4rademacher/uniform/sanitize_seed/seed/shape:output:02rademacher/uniform/sanitize_seed/seed/min:output:02rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:q
/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R q
/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΗ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :β
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsExpandDims/input:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concatConcatV2strided_slice:output:0ExpandDims:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
-rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:v
+rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????q
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
'rademacher_1/uniform/sanitize_seed/seedRandomUniformInt6rademacher_1/uniform/sanitize_seed/seed/shape:output:04rademacher_1/uniform/sanitize_seed/seed/min:output:04rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:s
1rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R s
1rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ο
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_16_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Μ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΡkullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150939*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ρkullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150939*
T0*
_output_shapes

:΄
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΡkullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2150939*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Δ
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
T0*
_output_shapes
: K
divergence_kernelIdentitytruediv:z:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_16/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
ΟΝ
€-
I__inference_sequential_7_layer_call_and_return_conditional_losses_2152930

inputsQ
?dense_flipout_15_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_15_matmul_1_readvariableop_resource:k
]dense_flipout_15_independentdeterministic_sample_deterministic_sample_readvariableop_resource:η
βdense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152489λ
ζdense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_16_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_16_matmul_1_readvariableop_resource:k
]dense_flipout_16_independentdeterministic_sample_deterministic_sample_readvariableop_resource:η
βdense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152624λ
ζdense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_17_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_17_matmul_1_readvariableop_resource:k
]dense_flipout_17_independentdeterministic_sample_deterministic_sample_readvariableop_resource:η
βdense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152760λ
ζdense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_18_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_18_matmul_1_readvariableop_resource:k
]dense_flipout_18_independentdeterministic_sample_deterministic_sample_readvariableop_resource:η
βdense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152896λ
ζdense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1

identity_2

identity_3

identity_4’Tdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_15/MatMul_1/ReadVariableOp’6dense_flipout_15/Normal/sample/Softplus/ReadVariableOp’Tdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_16/MatMul_1/ReadVariableOp’6dense_flipout_16/Normal/sample/Softplus/ReadVariableOp’Tdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_17/MatMul_1/ReadVariableOp’6dense_flipout_17/Normal/sample/Softplus/ReadVariableOp’Tdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_18/MatMul_1/ReadVariableOp’6dense_flipout_18/Normal/sample/Softplus/ReadVariableOpp
dense_flipout_15/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_15/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_15/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_15_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_15/Normal/sample/SoftplusSoftplus>dense_flipout_15/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_15/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_15/Normal/sample/addAddV2-dense_flipout_15/Normal/sample/add/x:output:05dense_flipout_15/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_15/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_15/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_15/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_15/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_15/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_15/Normal/sample/strided_sliceStridedSlice7dense_flipout_15/Normal/sample/shape_as_tensor:output:0;dense_flipout_15/Normal/sample/strided_slice/stack:output:0=dense_flipout_15/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_15/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_15/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_15/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_15/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_15/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_15/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_15/Normal/sample/strided_slice_1StridedSlice9dense_flipout_15/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_15/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_15/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_15/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_15/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_15/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_15/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_15/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_15/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_15/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_15/Normal/sample/BroadcastArgs:r0:07dense_flipout_15/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_15/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_15/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_15/Normal/sample/concatConcatV27dense_flipout_15/Normal/sample/concat/values_0:output:03dense_flipout_15/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_15/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_15/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_15/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_15/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_15/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_15/Normal/sample/normal/random_normal/mulMulQdense_flipout_15/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_15/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_15/Normal/sample/normal/random_normalAddV2;dense_flipout_15/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_15/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_15/Normal/sample/mulMul7dense_flipout_15/Normal/sample/normal/random_normal:z:0&dense_flipout_15/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_15/Normal/sample/add_1AddV2&dense_flipout_15/Normal/sample/mul:z:0$dense_flipout_15/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_15/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_15/Normal/sample/ReshapeReshape(dense_flipout_15/Normal/sample/add_1:z:05dense_flipout_15/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:L
dense_flipout_15/ShapeShapeinputs*
T0*
_output_shapes
:n
$dense_flipout_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_15/strided_sliceStridedSlicedense_flipout_15/Shape:output:0-dense_flipout_15/strided_slice/stack:output:0/dense_flipout_15/strided_slice/stack_1:output:0/dense_flipout_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_15/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_15/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_15/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_15/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_15/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_15/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_15/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_15/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_15/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_15/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_15/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_15/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_15/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_15/Shape:output:0_dense_flipout_15/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_15/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_15/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_15/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_15/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_15/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_15/rademacher/mulMul*dense_flipout_15/rademacher/mul/x:output:0Edense_flipout_15/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_15/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_15/rademacher/subSub#dense_flipout_15/rademacher/mul:z:0*dense_flipout_15/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_15/rademacher/CastCast#dense_flipout_15/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_15/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_15/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_15/ExpandDims
ExpandDims*dense_flipout_15/ExpandDims/input:output:0(dense_flipout_15/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_15/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_15/concatConcatV2'dense_flipout_15/strided_slice:output:0$dense_flipout_15/ExpandDims:output:0%dense_flipout_15/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_15/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_15/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_15/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_15/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_15/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_15/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_15/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_15/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_15/concat:output:0adense_flipout_15/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_15/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_15/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_15/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_15/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_15/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_15/rademacher_1/mulMul,dense_flipout_15/rademacher_1/mul/x:output:0Gdense_flipout_15/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_15/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_15/rademacher_1/subSub%dense_flipout_15/rademacher_1/mul:z:0,dense_flipout_15/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_15/rademacher_1/CastCast%dense_flipout_15/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????{
dense_flipout_15/mulMulinputs$dense_flipout_15/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_15/MatMulMatMuldense_flipout_15/mul:z:0/dense_flipout_15/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_15/mul_1Mul!dense_flipout_15/MatMul:product:0&dense_flipout_15/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_15/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
dense_flipout_15/MatMul_1MatMulinputs0dense_flipout_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_15/addAddV2#dense_flipout_15/MatMul_1:product:0dense_flipout_15/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_15/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_15_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_15/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_15/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_15/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_15/BiasAddBiasAdddense_flipout_15/add:z:0Adense_flipout_15/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_15_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ξ
ΰdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logβdense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152489*
T0*
_output_shapes
: Ϋ
ήdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_15_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0π
βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0βdense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152489*
T0*
_output_shapes

:η
δdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xβdense_flipout_15_kullbackleibler_independentnormal_constructed_at_dense_flipout_15_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152489*
T0*
_output_shapes

:?
μdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_15/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_15/CastCast dense_flipout_15/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_15/truedivRealDivdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_15/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_15/divergence_kernelIdentitydense_flipout_15/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_16/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_16/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_16/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_16_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_16/Normal/sample/SoftplusSoftplus>dense_flipout_16/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_16/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_16/Normal/sample/addAddV2-dense_flipout_16/Normal/sample/add/x:output:05dense_flipout_16/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_16/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_16/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_16/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_16/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_16/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_16/Normal/sample/strided_sliceStridedSlice7dense_flipout_16/Normal/sample/shape_as_tensor:output:0;dense_flipout_16/Normal/sample/strided_slice/stack:output:0=dense_flipout_16/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_16/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_16/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_16/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_16/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_16/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_16/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_16/Normal/sample/strided_slice_1StridedSlice9dense_flipout_16/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_16/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_16/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_16/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_16/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_16/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_16/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_16/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_16/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_16/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_16/Normal/sample/BroadcastArgs:r0:07dense_flipout_16/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_16/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_16/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_16/Normal/sample/concatConcatV27dense_flipout_16/Normal/sample/concat/values_0:output:03dense_flipout_16/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_16/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_16/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_16/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_16/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_16/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_16/Normal/sample/normal/random_normal/mulMulQdense_flipout_16/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_16/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_16/Normal/sample/normal/random_normalAddV2;dense_flipout_16/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_16/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_16/Normal/sample/mulMul7dense_flipout_16/Normal/sample/normal/random_normal:z:0&dense_flipout_16/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_16/Normal/sample/add_1AddV2&dense_flipout_16/Normal/sample/mul:z:0$dense_flipout_16/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_16/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_16/Normal/sample/ReshapeReshape(dense_flipout_16/Normal/sample/add_1:z:05dense_flipout_16/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:g
dense_flipout_16/ShapeShape!dense_flipout_15/BiasAdd:output:0*
T0*
_output_shapes
:n
$dense_flipout_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_16/strided_sliceStridedSlicedense_flipout_16/Shape:output:0-dense_flipout_16/strided_slice/stack:output:0/dense_flipout_16/strided_slice/stack_1:output:0/dense_flipout_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_16/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_16/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_16/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_16/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_16/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_16/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_16/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_16/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_16/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_16/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_16/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_16/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_16/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_16/Shape:output:0_dense_flipout_16/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_16/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_16/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_16/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_16/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_16/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_16/rademacher/mulMul*dense_flipout_16/rademacher/mul/x:output:0Edense_flipout_16/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_16/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_16/rademacher/subSub#dense_flipout_16/rademacher/mul:z:0*dense_flipout_16/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_16/rademacher/CastCast#dense_flipout_16/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_16/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_16/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_16/ExpandDims
ExpandDims*dense_flipout_16/ExpandDims/input:output:0(dense_flipout_16/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_16/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_16/concatConcatV2'dense_flipout_16/strided_slice:output:0$dense_flipout_16/ExpandDims:output:0%dense_flipout_16/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_16/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_16/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_16/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_16/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_16/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_16/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_16/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_16/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_16/concat:output:0adense_flipout_16/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_16/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_16/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_16/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_16/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_16/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_16/rademacher_1/mulMul,dense_flipout_16/rademacher_1/mul/x:output:0Gdense_flipout_16/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_16/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_16/rademacher_1/subSub%dense_flipout_16/rademacher_1/mul:z:0,dense_flipout_16/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_16/rademacher_1/CastCast%dense_flipout_16/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
dense_flipout_16/mulMul!dense_flipout_15/BiasAdd:output:0$dense_flipout_16/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_16/MatMulMatMuldense_flipout_16/mul:z:0/dense_flipout_16/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_16/mul_1Mul!dense_flipout_16/MatMul:product:0&dense_flipout_16/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_16/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ͺ
dense_flipout_16/MatMul_1MatMul!dense_flipout_15/BiasAdd:output:00dense_flipout_16/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_16/addAddV2#dense_flipout_16/MatMul_1:product:0dense_flipout_16/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_16/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_16_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_16/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_16/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_16/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_16/BiasAddBiasAdddense_flipout_16/add:z:0Adense_flipout_16/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_16_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ξ
ΰdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logβdense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152624*
T0*
_output_shapes
: Ϋ
ήdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_16_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0π
βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0βdense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152624*
T0*
_output_shapes

:η
δdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xβdense_flipout_16_kullbackleibler_independentnormal_constructed_at_dense_flipout_16_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152624*
T0*
_output_shapes

:?
μdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_16/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_16/CastCast dense_flipout_16/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_16/truedivRealDivdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_16/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_16/divergence_kernelIdentitydense_flipout_16/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_17/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_17/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_17/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_17_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_17/Normal/sample/SoftplusSoftplus>dense_flipout_17/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_17/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_17/Normal/sample/addAddV2-dense_flipout_17/Normal/sample/add/x:output:05dense_flipout_17/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_17/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_17/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_17/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_17/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_17/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_17/Normal/sample/strided_sliceStridedSlice7dense_flipout_17/Normal/sample/shape_as_tensor:output:0;dense_flipout_17/Normal/sample/strided_slice/stack:output:0=dense_flipout_17/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_17/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_17/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_17/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_17/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_17/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_17/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_17/Normal/sample/strided_slice_1StridedSlice9dense_flipout_17/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_17/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_17/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_17/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_17/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_17/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_17/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_17/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_17/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_17/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_17/Normal/sample/BroadcastArgs:r0:07dense_flipout_17/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_17/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_17/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_17/Normal/sample/concatConcatV27dense_flipout_17/Normal/sample/concat/values_0:output:03dense_flipout_17/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_17/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_17/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_17/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_17/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_17/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_17/Normal/sample/normal/random_normal/mulMulQdense_flipout_17/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_17/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_17/Normal/sample/normal/random_normalAddV2;dense_flipout_17/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_17/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_17/Normal/sample/mulMul7dense_flipout_17/Normal/sample/normal/random_normal:z:0&dense_flipout_17/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_17/Normal/sample/add_1AddV2&dense_flipout_17/Normal/sample/mul:z:0$dense_flipout_17/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_17/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_17/Normal/sample/ReshapeReshape(dense_flipout_17/Normal/sample/add_1:z:05dense_flipout_17/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:g
dense_flipout_17/ShapeShape!dense_flipout_16/BiasAdd:output:0*
T0*
_output_shapes
:n
$dense_flipout_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_17/strided_sliceStridedSlicedense_flipout_17/Shape:output:0-dense_flipout_17/strided_slice/stack:output:0/dense_flipout_17/strided_slice/stack_1:output:0/dense_flipout_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_17/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_17/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_17/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_17/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_17/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_17/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_17/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_17/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_17/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_17/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_17/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_17/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_17/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_17/Shape:output:0_dense_flipout_17/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_17/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_17/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_17/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_17/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_17/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_17/rademacher/mulMul*dense_flipout_17/rademacher/mul/x:output:0Edense_flipout_17/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_17/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_17/rademacher/subSub#dense_flipout_17/rademacher/mul:z:0*dense_flipout_17/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_17/rademacher/CastCast#dense_flipout_17/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_17/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_17/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_17/ExpandDims
ExpandDims*dense_flipout_17/ExpandDims/input:output:0(dense_flipout_17/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_17/concatConcatV2'dense_flipout_17/strided_slice:output:0$dense_flipout_17/ExpandDims:output:0%dense_flipout_17/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_17/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_17/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_17/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_17/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_17/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_17/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_17/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_17/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_17/concat:output:0adense_flipout_17/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_17/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_17/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_17/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_17/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_17/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_17/rademacher_1/mulMul,dense_flipout_17/rademacher_1/mul/x:output:0Gdense_flipout_17/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_17/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_17/rademacher_1/subSub%dense_flipout_17/rademacher_1/mul:z:0,dense_flipout_17/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_17/rademacher_1/CastCast%dense_flipout_17/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
dense_flipout_17/mulMul!dense_flipout_16/BiasAdd:output:0$dense_flipout_17/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_17/MatMulMatMuldense_flipout_17/mul:z:0/dense_flipout_17/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_17/mul_1Mul!dense_flipout_17/MatMul:product:0&dense_flipout_17/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_17/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ͺ
dense_flipout_17/MatMul_1MatMul!dense_flipout_16/BiasAdd:output:00dense_flipout_17/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_17/addAddV2#dense_flipout_17/MatMul_1:product:0dense_flipout_17/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_17/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_17_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_17/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_17/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_17/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_17/BiasAddBiasAdddense_flipout_17/add:z:0Adense_flipout_17/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????r
dense_flipout_17/ReluRelu!dense_flipout_17/BiasAdd:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_17_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ξ
ΰdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logβdense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152760*
T0*
_output_shapes
: Ϋ
ήdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_17_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0π
βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0βdense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152760*
T0*
_output_shapes

:η
δdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xβdense_flipout_17_kullbackleibler_independentnormal_constructed_at_dense_flipout_17_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152760*
T0*
_output_shapes

:?
μdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_17/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_17/CastCast dense_flipout_17/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_17/truedivRealDivdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_17/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_17/divergence_kernelIdentitydense_flipout_17/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_18/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_18/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_18/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_18_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_18/Normal/sample/SoftplusSoftplus>dense_flipout_18/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_18/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_18/Normal/sample/addAddV2-dense_flipout_18/Normal/sample/add/x:output:05dense_flipout_18/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_18/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_18/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_18/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_18/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_18/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_18/Normal/sample/strided_sliceStridedSlice7dense_flipout_18/Normal/sample/shape_as_tensor:output:0;dense_flipout_18/Normal/sample/strided_slice/stack:output:0=dense_flipout_18/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_18/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_18/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_18/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_18/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_18/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_18/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_18/Normal/sample/strided_slice_1StridedSlice9dense_flipout_18/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_18/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_18/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_18/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_18/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_18/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_18/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_18/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_18/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_18/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_18/Normal/sample/BroadcastArgs:r0:07dense_flipout_18/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_18/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_18/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_18/Normal/sample/concatConcatV27dense_flipout_18/Normal/sample/concat/values_0:output:03dense_flipout_18/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_18/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_18/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_18/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_18/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_18/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_18/Normal/sample/normal/random_normal/mulMulQdense_flipout_18/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_18/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_18/Normal/sample/normal/random_normalAddV2;dense_flipout_18/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_18/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_18/Normal/sample/mulMul7dense_flipout_18/Normal/sample/normal/random_normal:z:0&dense_flipout_18/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_18/Normal/sample/add_1AddV2&dense_flipout_18/Normal/sample/mul:z:0$dense_flipout_18/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_18/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_18/Normal/sample/ReshapeReshape(dense_flipout_18/Normal/sample/add_1:z:05dense_flipout_18/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:i
dense_flipout_18/ShapeShape#dense_flipout_17/Relu:activations:0*
T0*
_output_shapes
:n
$dense_flipout_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_18/strided_sliceStridedSlicedense_flipout_18/Shape:output:0-dense_flipout_18/strided_slice/stack:output:0/dense_flipout_18/strided_slice/stack_1:output:0/dense_flipout_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_18/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_18/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_18/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_18/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_18/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_18/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_18/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_18/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_18/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_18/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_18/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_18/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_18/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_18/Shape:output:0_dense_flipout_18/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_18/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_18/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_18/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_18/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_18/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_18/rademacher/mulMul*dense_flipout_18/rademacher/mul/x:output:0Edense_flipout_18/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_18/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_18/rademacher/subSub#dense_flipout_18/rademacher/mul:z:0*dense_flipout_18/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_18/rademacher/CastCast#dense_flipout_18/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_18/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_18/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_18/ExpandDims
ExpandDims*dense_flipout_18/ExpandDims/input:output:0(dense_flipout_18/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_18/concatConcatV2'dense_flipout_18/strided_slice:output:0$dense_flipout_18/ExpandDims:output:0%dense_flipout_18/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_18/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_18/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_18/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_18/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_18/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_18/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_18/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_18/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_18/concat:output:0adense_flipout_18/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_18/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_18/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_18/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_18/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_18/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_18/rademacher_1/mulMul,dense_flipout_18/rademacher_1/mul/x:output:0Gdense_flipout_18/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_18/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_18/rademacher_1/subSub%dense_flipout_18/rademacher_1/mul:z:0,dense_flipout_18/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_18/rademacher_1/CastCast%dense_flipout_18/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
dense_flipout_18/mulMul#dense_flipout_17/Relu:activations:0$dense_flipout_18/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_18/MatMulMatMuldense_flipout_18/mul:z:0/dense_flipout_18/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_18/mul_1Mul!dense_flipout_18/MatMul:product:0&dense_flipout_18/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_18/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_18_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¬
dense_flipout_18/MatMul_1MatMul#dense_flipout_17/Relu:activations:00dense_flipout_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_18/addAddV2#dense_flipout_18/MatMul_1:product:0dense_flipout_18/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_18/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_18_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_18/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_18/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_18/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_18/BiasAddBiasAdddense_flipout_18/add:z:0Adense_flipout_18/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????x
dense_flipout_18/SoftmaxSoftmax!dense_flipout_18/BiasAdd:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_18_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ξ
ΰdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logβdense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152896*
T0*
_output_shapes
: Ϋ
ήdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_18_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0π
βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0βdense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152896*
T0*
_output_shapes

:η
δdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xβdense_flipout_18_kullbackleibler_independentnormal_constructed_at_dense_flipout_18_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2152896*
T0*
_output_shapes

:?
μdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_18/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_18/CastCast dense_flipout_18/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_18/truedivRealDivdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_18/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_18/divergence_kernelIdentitydense_flipout_18/truediv:z:0*
T0*
_output_shapes
: q
IdentityIdentity"dense_flipout_18/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????k

Identity_1Identity+dense_flipout_15/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_2Identity+dense_flipout_16/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_3Identity+dense_flipout_17/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_4Identity+dense_flipout_18/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: Ξ
NoOpNoOpU^dense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_15/MatMul_1/ReadVariableOp7^dense_flipout_15/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_16/MatMul_1/ReadVariableOp7^dense_flipout_16/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_17/MatMul_1/ReadVariableOp7^dense_flipout_17/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_18/MatMul_1/ReadVariableOp7^dense_flipout_18/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????: : : : :: : : : :: : : : :: : : : :2¬
Tdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_15/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_15/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_15/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_15/MatMul_1/ReadVariableOp(dense_flipout_15/MatMul_1/ReadVariableOp2p
6dense_flipout_15/Normal/sample/Softplus/ReadVariableOp6dense_flipout_15/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_16/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_16/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_16/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_16/MatMul_1/ReadVariableOp(dense_flipout_16/MatMul_1/ReadVariableOp2p
6dense_flipout_16/Normal/sample/Softplus/ReadVariableOp6dense_flipout_16/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_17/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_17/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_17/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_17/MatMul_1/ReadVariableOp(dense_flipout_17/MatMul_1/ReadVariableOp2p
6dense_flipout_17/Normal/sample/Softplus/ReadVariableOp6dense_flipout_17/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_18/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_18/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_18/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_18/MatMul_1/ReadVariableOp(dense_flipout_18/MatMul_1/ReadVariableOp2p
6dense_flipout_18/Normal/sample/Softplus/ReadVariableOp6dense_flipout_18/Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
±
³
.__inference_sequential_7_layer_call_fn_2151343
input_6
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13

unknown_14:

unknown_15:

unknown_16:

unknown_17

unknown_18
identity’StatefulPartitionedCallΦ
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:?????????: : : : *.
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_2151296o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:?????????: : : : :: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_6:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
	
Ϊ
2__inference_dense_flipout_16_layer_call_fn_2153149

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_16_layer_call_and_return_conditional_losses_2150970o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:"ΫL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*³
serving_default
;
input_60
serving_default_input_6:0?????????D
dense_flipout_180
StatefulPartitionedCall:0?????????tensorflow/serving/predict:

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

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Ϊ
kernel_posterior_loc
($kernel_posterior_untransformed_scale
kernel_posterior
kernel_prior
bias_posterior_loc
bias_posterior
kernel_posterior_affine
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ϊ
kernel_posterior_loc
($kernel_posterior_untransformed_scale
kernel_posterior
kernel_prior
bias_posterior_loc
 bias_posterior
!kernel_posterior_affine
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
Ϊ
(kernel_posterior_loc
()$kernel_posterior_untransformed_scale
*kernel_posterior
+kernel_prior
,bias_posterior_loc
-bias_posterior
.kernel_posterior_affine
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
Ϊ
5kernel_posterior_loc
(6$kernel_posterior_untransformed_scale
7kernel_posterior
8kernel_prior
9bias_posterior_loc
:bias_posterior
;kernel_posterior_affine
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
Biter

Cbeta_1

Dbeta_2
	Edecay
Flearning_ratemmmmmm(m)m,m 5m‘6m’9m£v€v₯v¦v§v¨v©(vͺ)v«,v¬5v­6v?9v―"
	optimizer
v
0
1
2
3
4
5
(6
)7
,8
59
610
911"
trackable_list_wrapper
v
0
1
2
3
4
5
(6
)7
,8
59
610
911"
trackable_list_wrapper
 "
trackable_list_wrapper
Κ
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
.__inference_sequential_7_layer_call_fn_2151343
.__inference_sequential_7_layer_call_fn_2151781
.__inference_sequential_7_layer_call_fn_2151830
.__inference_sequential_7_layer_call_fn_2151614ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ς2ο
I__inference_sequential_7_layer_call_and_return_conditional_losses_2152380
I__inference_sequential_7_layer_call_and_return_conditional_losses_2152930
I__inference_sequential_7_layer_call_and_return_conditional_losses_2151670
I__inference_sequential_7_layer_call_and_return_conditional_losses_2151726ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΝBΚ
"__inference__wrapped_model_2150670input_6"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
,
Lserving_default"
signature_map
7:52%dense_flipout_15/kernel_posterior_loc
G:E25dense_flipout_15/kernel_posterior_untransformed_scale
E
M_distribution
N_graph_parents"
_generic_user_object
E
O_distribution
P_graph_parents"
_generic_user_object
1:/2#dense_flipout_15/bias_posterior_loc
E
Q_distribution
R_graph_parents"
_generic_user_object
>

S_scale
T_graph_parents"
_generic_user_object
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ά2Ω
2__inference_dense_flipout_15_layer_call_fn_2152993’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
χ2τ
M__inference_dense_flipout_15_layer_call_and_return_conditional_losses_2153133’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
7:52%dense_flipout_16/kernel_posterior_loc
G:E25dense_flipout_16/kernel_posterior_untransformed_scale
E
Z_distribution
[_graph_parents"
_generic_user_object
E
\_distribution
]_graph_parents"
_generic_user_object
1:/2#dense_flipout_16/bias_posterior_loc
E
^_distribution
__graph_parents"
_generic_user_object
>

`_scale
a_graph_parents"
_generic_user_object
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
ά2Ω
2__inference_dense_flipout_16_layer_call_fn_2153149’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
χ2τ
M__inference_dense_flipout_16_layer_call_and_return_conditional_losses_2153289’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
7:52%dense_flipout_17/kernel_posterior_loc
G:E25dense_flipout_17/kernel_posterior_untransformed_scale
E
g_distribution
h_graph_parents"
_generic_user_object
E
i_distribution
j_graph_parents"
_generic_user_object
1:/2#dense_flipout_17/bias_posterior_loc
E
k_distribution
l_graph_parents"
_generic_user_object
>

m_scale
n_graph_parents"
_generic_user_object
5
(0
)1
,2"
trackable_list_wrapper
5
(0
)1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
ά2Ω
2__inference_dense_flipout_17_layer_call_fn_2153305’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
χ2τ
M__inference_dense_flipout_17_layer_call_and_return_conditional_losses_2153446’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
7:52%dense_flipout_18/kernel_posterior_loc
G:E25dense_flipout_18/kernel_posterior_untransformed_scale
E
t_distribution
u_graph_parents"
_generic_user_object
E
v_distribution
w_graph_parents"
_generic_user_object
1:/2#dense_flipout_18/bias_posterior_loc
E
x_distribution
y_graph_parents"
_generic_user_object
>

z_scale
{_graph_parents"
_generic_user_object
5
50
61
92"
trackable_list_wrapper
5
50
61
92"
trackable_list_wrapper
 "
trackable_list_wrapper
?
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
ά2Ω
2__inference_dense_flipout_18_layer_call_fn_2153462’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
χ2τ
M__inference_dense_flipout_18_layer_call_and_return_conditional_losses_2153603’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ΜBΙ
%__inference_signature_wrapper_2152977input_6"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
I
_loc

S_scale
_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
3
_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
=
_loc
_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
9
_pretransformed_input"
_generic_user_object
 "
trackable_list_wrapper
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
I
_loc

`_scale
_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
3
_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
=
_loc
_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
9
_pretransformed_input"
_generic_user_object
 "
trackable_list_wrapper
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
I
(_loc

m_scale
_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
3
_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
=
,_loc
_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
9
)_pretransformed_input"
_generic_user_object
 "
trackable_list_wrapper
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
I
5_loc

z_scale
_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
3
_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
=
9_loc
_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
9
6_pretransformed_input"
_generic_user_object
 "
trackable_list_wrapper
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
<::2,Adam/dense_flipout_15/kernel_posterior_loc/m
L:J2<Adam/dense_flipout_15/kernel_posterior_untransformed_scale/m
6:42*Adam/dense_flipout_15/bias_posterior_loc/m
<::2,Adam/dense_flipout_16/kernel_posterior_loc/m
L:J2<Adam/dense_flipout_16/kernel_posterior_untransformed_scale/m
6:42*Adam/dense_flipout_16/bias_posterior_loc/m
<::2,Adam/dense_flipout_17/kernel_posterior_loc/m
L:J2<Adam/dense_flipout_17/kernel_posterior_untransformed_scale/m
6:42*Adam/dense_flipout_17/bias_posterior_loc/m
<::2,Adam/dense_flipout_18/kernel_posterior_loc/m
L:J2<Adam/dense_flipout_18/kernel_posterior_untransformed_scale/m
6:42*Adam/dense_flipout_18/bias_posterior_loc/m
<::2,Adam/dense_flipout_15/kernel_posterior_loc/v
L:J2<Adam/dense_flipout_15/kernel_posterior_untransformed_scale/v
6:42*Adam/dense_flipout_15/bias_posterior_loc/v
<::2,Adam/dense_flipout_16/kernel_posterior_loc/v
L:J2<Adam/dense_flipout_16/kernel_posterior_untransformed_scale/v
6:42*Adam/dense_flipout_16/bias_posterior_loc/v
<::2,Adam/dense_flipout_17/kernel_posterior_loc/v
L:J2<Adam/dense_flipout_17/kernel_posterior_untransformed_scale/v
6:42*Adam/dense_flipout_17/bias_posterior_loc/v
<::2,Adam/dense_flipout_18/kernel_posterior_loc/v
L:J2<Adam/dense_flipout_18/kernel_posterior_untransformed_scale/v
6:42*Adam/dense_flipout_18/bias_posterior_loc/v
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7Ό
"__inference__wrapped_model_2150670°±²³)(,΄΅659Ά·0’-
&’#
!
input_6?????????
ͺ "Cͺ@
>
dense_flipout_18*'
dense_flipout_18?????????ΐ
M__inference_dense_flipout_15_layer_call_and_return_conditional_losses_2153133o°±/’,
%’"
 
inputs?????????
ͺ "3’0

0?????????

	
1/0 
2__inference_dense_flipout_15_layer_call_fn_2152993T°±/’,
%’"
 
inputs?????????
ͺ "?????????ΐ
M__inference_dense_flipout_16_layer_call_and_return_conditional_losses_2153289o²³/’,
%’"
 
inputs?????????
ͺ "3’0

0?????????

	
1/0 
2__inference_dense_flipout_16_layer_call_fn_2153149T²³/’,
%’"
 
inputs?????????
ͺ "?????????ΐ
M__inference_dense_flipout_17_layer_call_and_return_conditional_losses_2153446o)(,΄΅/’,
%’"
 
inputs?????????
ͺ "3’0

0?????????

	
1/0 
2__inference_dense_flipout_17_layer_call_fn_2153305T)(,΄΅/’,
%’"
 
inputs?????????
ͺ "?????????ΐ
M__inference_dense_flipout_18_layer_call_and_return_conditional_losses_2153603o659Ά·/’,
%’"
 
inputs?????????
ͺ "3’0

0?????????

	
1/0 
2__inference_dense_flipout_18_layer_call_fn_2153462T659Ά·/’,
%’"
 
inputs?????????
ͺ "?????????
I__inference_sequential_7_layer_call_and_return_conditional_losses_2151670·°±²³)(,΄΅659Ά·8’5
.’+
!
input_6?????????
p 

 
ͺ "]’Z

0?????????
;8
	
1/0 
	
1/1 
	
1/2 
	
1/3 
I__inference_sequential_7_layer_call_and_return_conditional_losses_2151726·°±²³)(,΄΅659Ά·8’5
.’+
!
input_6?????????
p

 
ͺ "]’Z

0?????????
;8
	
1/0 
	
1/1 
	
1/2 
	
1/3 
I__inference_sequential_7_layer_call_and_return_conditional_losses_2152380Ά°±²³)(,΄΅659Ά·7’4
-’*
 
inputs?????????
p 

 
ͺ "]’Z

0?????????
;8
	
1/0 
	
1/1 
	
1/2 
	
1/3 
I__inference_sequential_7_layer_call_and_return_conditional_losses_2152930Ά°±²³)(,΄΅659Ά·7’4
-’*
 
inputs?????????
p

 
ͺ "]’Z

0?????????
;8
	
1/0 
	
1/1 
	
1/2 
	
1/3 €
.__inference_sequential_7_layer_call_fn_2151343r°±²³)(,΄΅659Ά·8’5
.’+
!
input_6?????????
p 

 
ͺ "?????????€
.__inference_sequential_7_layer_call_fn_2151614r°±²³)(,΄΅659Ά·8’5
.’+
!
input_6?????????
p

 
ͺ "?????????£
.__inference_sequential_7_layer_call_fn_2151781q°±²³)(,΄΅659Ά·7’4
-’*
 
inputs?????????
p 

 
ͺ "?????????£
.__inference_sequential_7_layer_call_fn_2151830q°±²³)(,΄΅659Ά·7’4
-’*
 
inputs?????????
p

 
ͺ "?????????Κ
%__inference_signature_wrapper_2152977 °±²³)(,΄΅659Ά·;’8
’ 
1ͺ.
,
input_6!
input_6?????????"Cͺ@
>
dense_flipout_18*'
dense_flipout_18?????????