Ò&
 ö
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
Á
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
µ
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
ö
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
 "serve*2.8.02v2.8.0-0-g3f878cff5b68ð½%
¦
%dense_flipout_43/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%dense_flipout_43/kernel_posterior_loc

9dense_flipout_43/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp%dense_flipout_43/kernel_posterior_loc*
_output_shapes

:*
dtype0
Æ
5dense_flipout_43/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75dense_flipout_43/kernel_posterior_untransformed_scale
¿
Idense_flipout_43/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp5dense_flipout_43/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

#dense_flipout_43/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#dense_flipout_43/bias_posterior_loc

7dense_flipout_43/bias_posterior_loc/Read/ReadVariableOpReadVariableOp#dense_flipout_43/bias_posterior_loc*
_output_shapes
:*
dtype0
¦
%dense_flipout_44/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%dense_flipout_44/kernel_posterior_loc

9dense_flipout_44/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp%dense_flipout_44/kernel_posterior_loc*
_output_shapes

:*
dtype0
Æ
5dense_flipout_44/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75dense_flipout_44/kernel_posterior_untransformed_scale
¿
Idense_flipout_44/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp5dense_flipout_44/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

#dense_flipout_44/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#dense_flipout_44/bias_posterior_loc

7dense_flipout_44/bias_posterior_loc/Read/ReadVariableOpReadVariableOp#dense_flipout_44/bias_posterior_loc*
_output_shapes
:*
dtype0
¦
%dense_flipout_45/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%dense_flipout_45/kernel_posterior_loc

9dense_flipout_45/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp%dense_flipout_45/kernel_posterior_loc*
_output_shapes

:*
dtype0
Æ
5dense_flipout_45/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75dense_flipout_45/kernel_posterior_untransformed_scale
¿
Idense_flipout_45/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp5dense_flipout_45/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

#dense_flipout_45/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#dense_flipout_45/bias_posterior_loc

7dense_flipout_45/bias_posterior_loc/Read/ReadVariableOpReadVariableOp#dense_flipout_45/bias_posterior_loc*
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
´
,Adam/dense_flipout_43/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_43/kernel_posterior_loc/m
­
@Adam/dense_flipout_43/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_43/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Ô
<Adam/dense_flipout_43/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_43/kernel_posterior_untransformed_scale/m
Í
PAdam/dense_flipout_43/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_43/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_43/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_43/bias_posterior_loc/m
¥
>Adam/dense_flipout_43/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_43/bias_posterior_loc/m*
_output_shapes
:*
dtype0
´
,Adam/dense_flipout_44/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_44/kernel_posterior_loc/m
­
@Adam/dense_flipout_44/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_44/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Ô
<Adam/dense_flipout_44/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_44/kernel_posterior_untransformed_scale/m
Í
PAdam/dense_flipout_44/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_44/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_44/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_44/bias_posterior_loc/m
¥
>Adam/dense_flipout_44/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_44/bias_posterior_loc/m*
_output_shapes
:*
dtype0
´
,Adam/dense_flipout_45/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_45/kernel_posterior_loc/m
­
@Adam/dense_flipout_45/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_45/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Ô
<Adam/dense_flipout_45/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_45/kernel_posterior_untransformed_scale/m
Í
PAdam/dense_flipout_45/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_45/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_45/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_45/bias_posterior_loc/m
¥
>Adam/dense_flipout_45/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_45/bias_posterior_loc/m*
_output_shapes
:*
dtype0
´
,Adam/dense_flipout_43/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_43/kernel_posterior_loc/v
­
@Adam/dense_flipout_43/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_43/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Ô
<Adam/dense_flipout_43/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_43/kernel_posterior_untransformed_scale/v
Í
PAdam/dense_flipout_43/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_43/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_43/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_43/bias_posterior_loc/v
¥
>Adam/dense_flipout_43/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_43/bias_posterior_loc/v*
_output_shapes
:*
dtype0
´
,Adam/dense_flipout_44/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_44/kernel_posterior_loc/v
­
@Adam/dense_flipout_44/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_44/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Ô
<Adam/dense_flipout_44/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_44/kernel_posterior_untransformed_scale/v
Í
PAdam/dense_flipout_44/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_44/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_44/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_44/bias_posterior_loc/v
¥
>Adam/dense_flipout_44/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_44/bias_posterior_loc/v*
_output_shapes
:*
dtype0
´
,Adam/dense_flipout_45/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_45/kernel_posterior_loc/v
­
@Adam/dense_flipout_45/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_45/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Ô
<Adam/dense_flipout_45/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_45/kernel_posterior_untransformed_scale/v
Í
PAdam/dense_flipout_45/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_45/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_45/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_45/bias_posterior_loc/v
¥
>Adam/dense_flipout_45/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_45/bias_posterior_loc/v*
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

:*
dtype0*
valueB*    
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

:*
dtype0*
valueB*    
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

:*
dtype0*
valueB*    

NoOpNoOp
ËL
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*L
valueúKB÷K BðK
Á
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Å
kernel_posterior_loc
($kernel_posterior_untransformed_scale
kernel_posterior
kernel_prior
bias_posterior_loc
bias_posterior
kernel_posterior_affine
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
Å
kernel_posterior_loc
($kernel_posterior_untransformed_scale
kernel_posterior
kernel_prior
bias_posterior_loc
bias_posterior
 kernel_posterior_affine
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
Å
'kernel_posterior_loc
(($kernel_posterior_untransformed_scale
)kernel_posterior
*kernel_prior
+bias_posterior_loc
,bias_posterior
-kernel_posterior_affine
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses*
ò
4iter

5beta_1

6beta_2
	7decay
8learning_ratemzm{m|m}m~m'm(m+mvvvvvv'v(v+v*
C
0
1
2
3
4
5
'6
(7
+8*
C
0
1
2
3
4
5
'6
(7
+8*
* 
°
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

>serving_default* 
}
VARIABLE_VALUE%dense_flipout_43/kernel_posterior_locDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
¤
VARIABLE_VALUE5dense_flipout_43/kernel_posterior_untransformed_scaleTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
?_distribution
@_graph_parents*
)
A_distribution
B_graph_parents* 
y
VARIABLE_VALUE#dense_flipout_43/bias_posterior_locBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
+
C_distribution
D_graph_parents*
$

E_scale
F_graph_parents*

0
1
2*

0
1
2*
* 

Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
}
VARIABLE_VALUE%dense_flipout_44/kernel_posterior_locDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
¤
VARIABLE_VALUE5dense_flipout_44/kernel_posterior_untransformed_scaleTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
L_distribution
M_graph_parents*
)
N_distribution
O_graph_parents* 
y
VARIABLE_VALUE#dense_flipout_44/bias_posterior_locBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
+
P_distribution
Q_graph_parents*
$

R_scale
S_graph_parents*

0
1
2*

0
1
2*
* 

Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
}
VARIABLE_VALUE%dense_flipout_45/kernel_posterior_locDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
¤
VARIABLE_VALUE5dense_flipout_45/kernel_posterior_untransformed_scaleTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
Y_distribution
Z_graph_parents*
)
[_distribution
\_graph_parents* 
y
VARIABLE_VALUE#dense_flipout_45/bias_posterior_locBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
+
]_distribution
^_graph_parents*
$

__scale
`_graph_parents*

'0
(1
+2*

'0
(1
+2*
* 

anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*
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

0
1
2*

f0
g1*
* 
* 
* 
.
_loc

E_scale
h_graph_parents*
* 

i_graph_parents* 
* 
"
_loc
j_graph_parents*
* 

_pretransformed_input*
* 
* 
* 
* 
* 
* 
.
_loc

R_scale
k_graph_parents*
* 

l_graph_parents* 
* 
"
_loc
m_graph_parents*
* 

_pretransformed_input*
* 
* 
* 
* 
* 
* 
.
'_loc

__scale
n_graph_parents*
* 

o_graph_parents* 
* 
"
+_loc
p_graph_parents*
* 

(_pretransformed_input*
* 
* 
* 
* 
* 
* 
8
	qtotal
	rcount
s	variables
t	keras_api*
H
	utotal
	vcount
w
_fn_kwargs
x	variables
y	keras_api*
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

q0
r1*

s	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

u0
v1*

x	variables*
§ 
VARIABLE_VALUE,Adam/dense_flipout_43/kernel_posterior_loc/m`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ÇÀ
VARIABLE_VALUE<Adam/dense_flipout_43/kernel_posterior_untransformed_scale/mplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_43/bias_posterior_loc/m^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_44/kernel_posterior_loc/m`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ÇÀ
VARIABLE_VALUE<Adam/dense_flipout_44/kernel_posterior_untransformed_scale/mplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_44/bias_posterior_loc/m^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_45/kernel_posterior_loc/m`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ÇÀ
VARIABLE_VALUE<Adam/dense_flipout_45/kernel_posterior_untransformed_scale/mplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_45/bias_posterior_loc/m^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_43/kernel_posterior_loc/v`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ÇÀ
VARIABLE_VALUE<Adam/dense_flipout_43/kernel_posterior_untransformed_scale/vplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_43/bias_posterior_loc/v^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_44/kernel_posterior_loc/v`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ÇÀ
VARIABLE_VALUE<Adam/dense_flipout_44/kernel_posterior_untransformed_scale/vplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_44/bias_posterior_loc/v^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_45/kernel_posterior_loc/v`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ÇÀ
VARIABLE_VALUE<Adam/dense_flipout_45/kernel_posterior_untransformed_scale/vplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_45/bias_posterior_loc/v^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
serving_default_input_15Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_155dense_flipout_43/kernel_posterior_untransformed_scale%dense_flipout_43/kernel_posterior_loc#dense_flipout_43/bias_posterior_locConstConst_15dense_flipout_44/kernel_posterior_untransformed_scale%dense_flipout_44/kernel_posterior_loc#dense_flipout_44/bias_posterior_locConst_2Const_35dense_flipout_45/kernel_posterior_untransformed_scale%dense_flipout_45/kernel_posterior_loc#dense_flipout_45/bias_posterior_locConst_4Const_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_2274976
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename9dense_flipout_43/kernel_posterior_loc/Read/ReadVariableOpIdense_flipout_43/kernel_posterior_untransformed_scale/Read/ReadVariableOp7dense_flipout_43/bias_posterior_loc/Read/ReadVariableOp9dense_flipout_44/kernel_posterior_loc/Read/ReadVariableOpIdense_flipout_44/kernel_posterior_untransformed_scale/Read/ReadVariableOp7dense_flipout_44/bias_posterior_loc/Read/ReadVariableOp9dense_flipout_45/kernel_posterior_loc/Read/ReadVariableOpIdense_flipout_45/kernel_posterior_untransformed_scale/Read/ReadVariableOp7dense_flipout_45/bias_posterior_loc/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp@Adam/dense_flipout_43/kernel_posterior_loc/m/Read/ReadVariableOpPAdam/dense_flipout_43/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp>Adam/dense_flipout_43/bias_posterior_loc/m/Read/ReadVariableOp@Adam/dense_flipout_44/kernel_posterior_loc/m/Read/ReadVariableOpPAdam/dense_flipout_44/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp>Adam/dense_flipout_44/bias_posterior_loc/m/Read/ReadVariableOp@Adam/dense_flipout_45/kernel_posterior_loc/m/Read/ReadVariableOpPAdam/dense_flipout_45/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp>Adam/dense_flipout_45/bias_posterior_loc/m/Read/ReadVariableOp@Adam/dense_flipout_43/kernel_posterior_loc/v/Read/ReadVariableOpPAdam/dense_flipout_43/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp>Adam/dense_flipout_43/bias_posterior_loc/v/Read/ReadVariableOp@Adam/dense_flipout_44/kernel_posterior_loc/v/Read/ReadVariableOpPAdam/dense_flipout_44/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp>Adam/dense_flipout_44/bias_posterior_loc/v/Read/ReadVariableOp@Adam/dense_flipout_45/kernel_posterior_loc/v/Read/ReadVariableOpPAdam/dense_flipout_45/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp>Adam/dense_flipout_45/bias_posterior_loc/v/Read/ReadVariableOpConst_6*1
Tin*
(2&	*
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
 __inference__traced_save_2275584
¹
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename%dense_flipout_43/kernel_posterior_loc5dense_flipout_43/kernel_posterior_untransformed_scale#dense_flipout_43/bias_posterior_loc%dense_flipout_44/kernel_posterior_loc5dense_flipout_44/kernel_posterior_untransformed_scale#dense_flipout_44/bias_posterior_loc%dense_flipout_45/kernel_posterior_loc5dense_flipout_45/kernel_posterior_untransformed_scale#dense_flipout_45/bias_posterior_loc	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1,Adam/dense_flipout_43/kernel_posterior_loc/m<Adam/dense_flipout_43/kernel_posterior_untransformed_scale/m*Adam/dense_flipout_43/bias_posterior_loc/m,Adam/dense_flipout_44/kernel_posterior_loc/m<Adam/dense_flipout_44/kernel_posterior_untransformed_scale/m*Adam/dense_flipout_44/bias_posterior_loc/m,Adam/dense_flipout_45/kernel_posterior_loc/m<Adam/dense_flipout_45/kernel_posterior_untransformed_scale/m*Adam/dense_flipout_45/bias_posterior_loc/m,Adam/dense_flipout_43/kernel_posterior_loc/v<Adam/dense_flipout_43/kernel_posterior_untransformed_scale/v*Adam/dense_flipout_43/bias_posterior_loc/v,Adam/dense_flipout_44/kernel_posterior_loc/v<Adam/dense_flipout_44/kernel_posterior_untransformed_scale/v*Adam/dense_flipout_44/bias_posterior_loc/v,Adam/dense_flipout_45/kernel_posterior_loc/v<Adam/dense_flipout_45/kernel_posterior_untransformed_scale/v*Adam/dense_flipout_45/bias_posterior_loc/v*0
Tin)
'2%*
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
#__inference__traced_restore_2275702´é#
½û

M__inference_dense_flipout_45_layer_call_and_return_conditional_losses_2275447

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_45_sample_deterministic_sample_readvariableop_resource:Ö
Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2275416Ú
Õkullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOp¢åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
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
valueB"      W
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
value	B : ¾
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
:*
dtype0Ð
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:¶
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
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
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ï
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
øÿÿÿÿo
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
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
value	B	 RÇ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :â
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
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
øÿÿÿÿq
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
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
value	B	 RË
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ï
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¼
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_45_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ª
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB î
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:ë
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      è
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:¶
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ü
ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusíKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ê
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÜKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ö
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Ì
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÑkullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2275416*
T0*
_output_shapes
: ¨
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:º
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivàKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2275416*
T0*
_output_shapes

:´
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÕkullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÑkullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2275416*
T0*
_output_shapes

:Ì
ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ø
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ª
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ß
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Ä
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOpæ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpÙ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2Ê
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOp2Ð
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpåKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2¶
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
¨[
É
 __inference__traced_save_2275584
file_prefixD
@savev2_dense_flipout_43_kernel_posterior_loc_read_readvariableopT
Psavev2_dense_flipout_43_kernel_posterior_untransformed_scale_read_readvariableopB
>savev2_dense_flipout_43_bias_posterior_loc_read_readvariableopD
@savev2_dense_flipout_44_kernel_posterior_loc_read_readvariableopT
Psavev2_dense_flipout_44_kernel_posterior_untransformed_scale_read_readvariableopB
>savev2_dense_flipout_44_bias_posterior_loc_read_readvariableopD
@savev2_dense_flipout_45_kernel_posterior_loc_read_readvariableopT
Psavev2_dense_flipout_45_kernel_posterior_untransformed_scale_read_readvariableopB
>savev2_dense_flipout_45_bias_posterior_loc_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopK
Gsavev2_adam_dense_flipout_43_kernel_posterior_loc_m_read_readvariableop[
Wsavev2_adam_dense_flipout_43_kernel_posterior_untransformed_scale_m_read_readvariableopI
Esavev2_adam_dense_flipout_43_bias_posterior_loc_m_read_readvariableopK
Gsavev2_adam_dense_flipout_44_kernel_posterior_loc_m_read_readvariableop[
Wsavev2_adam_dense_flipout_44_kernel_posterior_untransformed_scale_m_read_readvariableopI
Esavev2_adam_dense_flipout_44_bias_posterior_loc_m_read_readvariableopK
Gsavev2_adam_dense_flipout_45_kernel_posterior_loc_m_read_readvariableop[
Wsavev2_adam_dense_flipout_45_kernel_posterior_untransformed_scale_m_read_readvariableopI
Esavev2_adam_dense_flipout_45_bias_posterior_loc_m_read_readvariableopK
Gsavev2_adam_dense_flipout_43_kernel_posterior_loc_v_read_readvariableop[
Wsavev2_adam_dense_flipout_43_kernel_posterior_untransformed_scale_v_read_readvariableopI
Esavev2_adam_dense_flipout_43_bias_posterior_loc_v_read_readvariableopK
Gsavev2_adam_dense_flipout_44_kernel_posterior_loc_v_read_readvariableop[
Wsavev2_adam_dense_flipout_44_kernel_posterior_untransformed_scale_v_read_readvariableopI
Esavev2_adam_dense_flipout_44_bias_posterior_loc_v_read_readvariableopK
Gsavev2_adam_dense_flipout_45_kernel_posterior_loc_v_read_readvariableop[
Wsavev2_adam_dense_flipout_45_kernel_posterior_untransformed_scale_v_read_readvariableopI
Esavev2_adam_dense_flipout_45_bias_posterior_loc_v_read_readvariableop
savev2_const_6

identity_1¢MergeV2Checkpointsw
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
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*È
value¾B»%BDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH·
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B  
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0@savev2_dense_flipout_43_kernel_posterior_loc_read_readvariableopPsavev2_dense_flipout_43_kernel_posterior_untransformed_scale_read_readvariableop>savev2_dense_flipout_43_bias_posterior_loc_read_readvariableop@savev2_dense_flipout_44_kernel_posterior_loc_read_readvariableopPsavev2_dense_flipout_44_kernel_posterior_untransformed_scale_read_readvariableop>savev2_dense_flipout_44_bias_posterior_loc_read_readvariableop@savev2_dense_flipout_45_kernel_posterior_loc_read_readvariableopPsavev2_dense_flipout_45_kernel_posterior_untransformed_scale_read_readvariableop>savev2_dense_flipout_45_bias_posterior_loc_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopGsavev2_adam_dense_flipout_43_kernel_posterior_loc_m_read_readvariableopWsavev2_adam_dense_flipout_43_kernel_posterior_untransformed_scale_m_read_readvariableopEsavev2_adam_dense_flipout_43_bias_posterior_loc_m_read_readvariableopGsavev2_adam_dense_flipout_44_kernel_posterior_loc_m_read_readvariableopWsavev2_adam_dense_flipout_44_kernel_posterior_untransformed_scale_m_read_readvariableopEsavev2_adam_dense_flipout_44_bias_posterior_loc_m_read_readvariableopGsavev2_adam_dense_flipout_45_kernel_posterior_loc_m_read_readvariableopWsavev2_adam_dense_flipout_45_kernel_posterior_untransformed_scale_m_read_readvariableopEsavev2_adam_dense_flipout_45_bias_posterior_loc_m_read_readvariableopGsavev2_adam_dense_flipout_43_kernel_posterior_loc_v_read_readvariableopWsavev2_adam_dense_flipout_43_kernel_posterior_untransformed_scale_v_read_readvariableopEsavev2_adam_dense_flipout_43_bias_posterior_loc_v_read_readvariableopGsavev2_adam_dense_flipout_44_kernel_posterior_loc_v_read_readvariableopWsavev2_adam_dense_flipout_44_kernel_posterior_untransformed_scale_v_read_readvariableopEsavev2_adam_dense_flipout_44_bias_posterior_loc_v_read_readvariableopGsavev2_adam_dense_flipout_45_kernel_posterior_loc_v_read_readvariableopWsavev2_adam_dense_flipout_45_kernel_posterior_untransformed_scale_v_read_readvariableopEsavev2_adam_dense_flipout_45_bias_posterior_loc_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%	
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

identity_1Identity_1:output:0*
_input_shapes
: :::::::::: : : : : : : : : ::::::::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$  

_output_shapes

:: !

_output_shapes
::$" 

_output_shapes

::$# 

_output_shapes

:: $

_output_shapes
::%

_output_shapes
: 
Ã
Ð
J__inference_sequential_16_layer_call_and_return_conditional_losses_2273984
input_15*
dense_flipout_43_2273944:*
dense_flipout_43_2273946:&
dense_flipout_43_2273948:
dense_flipout_43_2273950
dense_flipout_43_2273952*
dense_flipout_44_2273956:*
dense_flipout_44_2273958:&
dense_flipout_44_2273960:
dense_flipout_44_2273962
dense_flipout_44_2273964*
dense_flipout_45_2273968:*
dense_flipout_45_2273970:&
dense_flipout_45_2273972:
dense_flipout_45_2273974
dense_flipout_45_2273976
identity

identity_1

identity_2

identity_3¢(dense_flipout_43/StatefulPartitionedCall¢(dense_flipout_44/StatefulPartitionedCall¢(dense_flipout_45/StatefulPartitionedCallê
(dense_flipout_43/StatefulPartitionedCallStatefulPartitionedCallinput_15dense_flipout_43_2273944dense_flipout_43_2273946dense_flipout_43_2273948dense_flipout_43_2273950dense_flipout_43_2273952*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_43_layer_call_and_return_conditional_losses_2273372
(dense_flipout_44/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_43/StatefulPartitionedCall:output:0dense_flipout_44_2273956dense_flipout_44_2273958dense_flipout_44_2273960dense_flipout_44_2273962dense_flipout_44_2273964*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_44_layer_call_and_return_conditional_losses_2273526
(dense_flipout_45/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_44/StatefulPartitionedCall:output:0dense_flipout_45_2273968dense_flipout_45_2273970dense_flipout_45_2273972dense_flipout_45_2273974dense_flipout_45_2273976*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_45_layer_call_and_return_conditional_losses_2273680
IdentityIdentity1dense_flipout_45/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity1dense_flipout_43/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_44/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_45/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Ç
NoOpNoOp)^dense_flipout_43/StatefulPartitionedCall)^dense_flipout_44/StatefulPartitionedCall)^dense_flipout_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2T
(dense_flipout_43/StatefulPartitionedCall(dense_flipout_43/StatefulPartitionedCall2T
(dense_flipout_44/StatefulPartitionedCall(dense_flipout_44/StatefulPartitionedCall2T
(dense_flipout_45/StatefulPartitionedCall(dense_flipout_45/StatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_15:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
	
Ú
2__inference_dense_flipout_45_layer_call_fn_2275306

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_45_layer_call_and_return_conditional_losses_2273680o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
¹¼
"
J__inference_sequential_16_layer_call_and_return_conditional_losses_2274939

inputsQ
?dense_flipout_43_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_43_matmul_1_readvariableop_resource:k
]dense_flipout_43_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ç
âdense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274634ë
ædense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_44_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_44_matmul_1_readvariableop_resource:k
]dense_flipout_44_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ç
âdense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274770ë
ædense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_45_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_45_matmul_1_readvariableop_resource:k
]dense_flipout_45_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ç
âdense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274906ë
ædense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1

identity_2

identity_3¢Tdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ödense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢édense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢(dense_flipout_43/MatMul_1/ReadVariableOp¢6dense_flipout_43/Normal/sample/Softplus/ReadVariableOp¢Tdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ödense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢édense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢(dense_flipout_44/MatMul_1/ReadVariableOp¢6dense_flipout_44/Normal/sample/Softplus/ReadVariableOp¢Tdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ödense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢édense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢(dense_flipout_45/MatMul_1/ReadVariableOp¢6dense_flipout_45/Normal/sample/Softplus/ReadVariableOpp
dense_flipout_43/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_43/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¶
6dense_flipout_43/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_43_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_43/Normal/sample/SoftplusSoftplus>dense_flipout_43/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_43/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4º
"dense_flipout_43/Normal/sample/addAddV2-dense_flipout_43/Normal/sample/add/x:output:05dense_flipout_43/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_43/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_43/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_43/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_43/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_43/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
,dense_flipout_43/Normal/sample/strided_sliceStridedSlice7dense_flipout_43/Normal/sample/shape_as_tensor:output:0;dense_flipout_43/Normal/sample/strided_slice/stack:output:0=dense_flipout_43/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_43/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_43/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_43/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_43/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_43/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_43/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
.dense_flipout_43/Normal/sample/strided_slice_1StridedSlice9dense_flipout_43/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_43/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_43/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_43/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_43/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_43/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ì
,dense_flipout_43/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_43/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_43/Normal/sample/strided_slice:output:0*
_output_shapes
:Ç
.dense_flipout_43/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_43/Normal/sample/BroadcastArgs:r0:07dense_flipout_43/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_43/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_43/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_43/Normal/sample/concatConcatV27dense_flipout_43/Normal/sample/concat/values_0:output:03dense_flipout_43/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_43/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_43/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_43/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ê
Hdense_flipout_43/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_43/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_43/Normal/sample/normal/random_normal/mulMulQdense_flipout_43/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_43/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:é
3dense_flipout_43/Normal/sample/normal/random_normalAddV2;dense_flipout_43/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_43/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_43/Normal/sample/mulMul7dense_flipout_43/Normal/sample/normal/random_normal:z:0&dense_flipout_43/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_43/Normal/sample/add_1AddV2&dense_flipout_43/Normal/sample/mul:z:0$dense_flipout_43/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_43/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_43/Normal/sample/ReshapeReshape(dense_flipout_43/Normal/sample/add_1:z:05dense_flipout_43/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:L
dense_flipout_43/ShapeShapeinputs*
T0*
_output_shapes
:n
$dense_flipout_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿp
&dense_flipout_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
dense_flipout_43/strided_sliceStridedSlicedense_flipout_43/Shape:output:0-dense_flipout_43/strided_slice/stack:output:0/dense_flipout_43/strided_slice/stack_1:output:0/dense_flipout_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_43/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_43/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
:dense_flipout_43/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÌ
6dense_flipout_43/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_43/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_43/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_43/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_43/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_43/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Ré
Ydense_flipout_43/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_43/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_43/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ù
<dense_flipout_43/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_43/Shape:output:0_dense_flipout_43/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_43/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_43/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_43/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_43/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	c
!dense_flipout_43/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RË
dense_flipout_43/rademacher/mulMul*dense_flipout_43/rademacher/mul/x:output:0Edense_flipout_43/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_43/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_43/rademacher/subSub#dense_flipout_43/rademacher/mul:z:0*dense_flipout_43/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_flipout_43/rademacher/CastCast#dense_flipout_43/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_43/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_43/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¤
dense_flipout_43/ExpandDims
ExpandDims*dense_flipout_43/ExpandDims/input:output:0(dense_flipout_43/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_43/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_flipout_43/concatConcatV2'dense_flipout_43/strided_slice:output:0$dense_flipout_43/ExpandDims:output:0%dense_flipout_43/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
<dense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÔ
8dense_flipout_43/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_43/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_43/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rí
[dense_flipout_43/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_43/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_43/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :æ
>dense_flipout_43/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_43/concat:output:0adense_flipout_43/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_43/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_43/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_43/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_43/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	e
#dense_flipout_43/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÑ
!dense_flipout_43/rademacher_1/mulMul,dense_flipout_43/rademacher_1/mul/x:output:0Gdense_flipout_43/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#dense_flipout_43/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¯
!dense_flipout_43/rademacher_1/subSub%dense_flipout_43/rademacher_1/mul:z:0,dense_flipout_43/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_flipout_43/rademacher_1/CastCast%dense_flipout_43/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
dense_flipout_43/mulMulinputs$dense_flipout_43/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_43/MatMulMatMuldense_flipout_43/mul:z:0/dense_flipout_43/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_43/mul_1Mul!dense_flipout_43/MatMul:product:0&dense_flipout_43/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(dense_flipout_43/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
dense_flipout_43/MatMul_1MatMulinputs0dense_flipout_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_43/addAddV2#dense_flipout_43/MatMul_1:product:0dense_flipout_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=dense_flipout_43/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:î
Tdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_43_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¥
[dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¥
[dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Á
Sdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
Ldense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
Qdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:¤
Sdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_43/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_43/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_43/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_43/BiasAddBiasAdddense_flipout_43/add:z:0Adense_flipout_43/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
dense_flipout_43/ReluRelu!dense_flipout_43/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
ödense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_43_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
çdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusþdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ª
ädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ý
âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ídense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0õdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ø
Þdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogædense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:î
àdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logâdense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274634*
T0*
_output_shapes
: Û
Þdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubâdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ü
édense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ð
âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivñdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0âdense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274634*
T0*
_output_shapes

:ç
ädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivædense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xâdense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274634*
T0*
_output_shapes

:ÿ
ìdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceædense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0èdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?î
Þdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulédense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ðdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @ä
àdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulëdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ú
àdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?æ
àdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulëdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:Ý
Þdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Û
àdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subâdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ð
dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÆ
dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_43/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6o
dense_flipout_43/CastCast dense_flipout_43/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ÷
dense_flipout_43/truedivRealDivdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_43/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_43/divergence_kernelIdentitydense_flipout_43/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_44/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_44/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¶
6dense_flipout_44/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_44_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_44/Normal/sample/SoftplusSoftplus>dense_flipout_44/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_44/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4º
"dense_flipout_44/Normal/sample/addAddV2-dense_flipout_44/Normal/sample/add/x:output:05dense_flipout_44/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_44/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_44/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_44/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_44/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_44/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
,dense_flipout_44/Normal/sample/strided_sliceStridedSlice7dense_flipout_44/Normal/sample/shape_as_tensor:output:0;dense_flipout_44/Normal/sample/strided_slice/stack:output:0=dense_flipout_44/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_44/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_44/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_44/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_44/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_44/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_44/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
.dense_flipout_44/Normal/sample/strided_slice_1StridedSlice9dense_flipout_44/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_44/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_44/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_44/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_44/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_44/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ì
,dense_flipout_44/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_44/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_44/Normal/sample/strided_slice:output:0*
_output_shapes
:Ç
.dense_flipout_44/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_44/Normal/sample/BroadcastArgs:r0:07dense_flipout_44/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_44/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_44/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_44/Normal/sample/concatConcatV27dense_flipout_44/Normal/sample/concat/values_0:output:03dense_flipout_44/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_44/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_44/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_44/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ê
Hdense_flipout_44/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_44/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_44/Normal/sample/normal/random_normal/mulMulQdense_flipout_44/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_44/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:é
3dense_flipout_44/Normal/sample/normal/random_normalAddV2;dense_flipout_44/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_44/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_44/Normal/sample/mulMul7dense_flipout_44/Normal/sample/normal/random_normal:z:0&dense_flipout_44/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_44/Normal/sample/add_1AddV2&dense_flipout_44/Normal/sample/mul:z:0$dense_flipout_44/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_44/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_44/Normal/sample/ReshapeReshape(dense_flipout_44/Normal/sample/add_1:z:05dense_flipout_44/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:i
dense_flipout_44/ShapeShape#dense_flipout_43/Relu:activations:0*
T0*
_output_shapes
:n
$dense_flipout_44/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_44/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿp
&dense_flipout_44/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
dense_flipout_44/strided_sliceStridedSlicedense_flipout_44/Shape:output:0-dense_flipout_44/strided_slice/stack:output:0/dense_flipout_44/strided_slice/stack_1:output:0/dense_flipout_44/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_44/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_44/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
:dense_flipout_44/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÌ
6dense_flipout_44/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_44/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_44/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_44/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_44/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_44/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Ré
Ydense_flipout_44/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_44/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_44/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ù
<dense_flipout_44/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_44/Shape:output:0_dense_flipout_44/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_44/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_44/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_44/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_44/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	c
!dense_flipout_44/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RË
dense_flipout_44/rademacher/mulMul*dense_flipout_44/rademacher/mul/x:output:0Edense_flipout_44/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_44/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_44/rademacher/subSub#dense_flipout_44/rademacher/mul:z:0*dense_flipout_44/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_flipout_44/rademacher/CastCast#dense_flipout_44/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_44/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_44/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¤
dense_flipout_44/ExpandDims
ExpandDims*dense_flipout_44/ExpandDims/input:output:0(dense_flipout_44/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_44/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_flipout_44/concatConcatV2'dense_flipout_44/strided_slice:output:0$dense_flipout_44/ExpandDims:output:0%dense_flipout_44/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
<dense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÔ
8dense_flipout_44/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_44/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_44/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rí
[dense_flipout_44/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_44/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_44/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :æ
>dense_flipout_44/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_44/concat:output:0adense_flipout_44/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_44/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_44/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_44/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_44/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	e
#dense_flipout_44/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÑ
!dense_flipout_44/rademacher_1/mulMul,dense_flipout_44/rademacher_1/mul/x:output:0Gdense_flipout_44/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#dense_flipout_44/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¯
!dense_flipout_44/rademacher_1/subSub%dense_flipout_44/rademacher_1/mul:z:0,dense_flipout_44/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_flipout_44/rademacher_1/CastCast%dense_flipout_44/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_44/mulMul#dense_flipout_43/Relu:activations:0$dense_flipout_44/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_44/MatMulMatMuldense_flipout_44/mul:z:0/dense_flipout_44/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_44/mul_1Mul!dense_flipout_44/MatMul:product:0&dense_flipout_44/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(dense_flipout_44/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_44_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¬
dense_flipout_44/MatMul_1MatMul#dense_flipout_43/Relu:activations:00dense_flipout_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_44/addAddV2#dense_flipout_44/MatMul_1:product:0dense_flipout_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=dense_flipout_44/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:î
Tdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_44_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¥
[dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¥
[dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Á
Sdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
Ldense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
Qdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:¤
Sdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_44/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_44/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_44/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_44/BiasAddBiasAdddense_flipout_44/add:z:0Adense_flipout_44/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
dense_flipout_44/ReluRelu!dense_flipout_44/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
ödense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_44_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
çdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusþdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ª
ädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ý
âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ídense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0õdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ø
Þdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogædense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:î
àdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logâdense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274770*
T0*
_output_shapes
: Û
Þdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubâdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ü
édense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_44_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ð
âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivñdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0âdense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274770*
T0*
_output_shapes

:ç
ädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivædense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xâdense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274770*
T0*
_output_shapes

:ÿ
ìdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceædense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0èdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?î
Þdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulédense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ðdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @ä
àdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulëdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ú
àdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?æ
àdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulëdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:Ý
Þdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Û
àdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subâdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ð
dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÆ
dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_44/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6o
dense_flipout_44/CastCast dense_flipout_44/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ÷
dense_flipout_44/truedivRealDivdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_44/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_44/divergence_kernelIdentitydense_flipout_44/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_45/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_45/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¶
6dense_flipout_45/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_45_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_45/Normal/sample/SoftplusSoftplus>dense_flipout_45/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_45/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4º
"dense_flipout_45/Normal/sample/addAddV2-dense_flipout_45/Normal/sample/add/x:output:05dense_flipout_45/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_45/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_45/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_45/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_45/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_45/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
,dense_flipout_45/Normal/sample/strided_sliceStridedSlice7dense_flipout_45/Normal/sample/shape_as_tensor:output:0;dense_flipout_45/Normal/sample/strided_slice/stack:output:0=dense_flipout_45/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_45/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_45/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_45/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_45/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_45/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_45/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
.dense_flipout_45/Normal/sample/strided_slice_1StridedSlice9dense_flipout_45/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_45/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_45/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_45/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_45/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_45/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ì
,dense_flipout_45/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_45/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_45/Normal/sample/strided_slice:output:0*
_output_shapes
:Ç
.dense_flipout_45/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_45/Normal/sample/BroadcastArgs:r0:07dense_flipout_45/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_45/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_45/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_45/Normal/sample/concatConcatV27dense_flipout_45/Normal/sample/concat/values_0:output:03dense_flipout_45/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_45/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_45/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_45/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ê
Hdense_flipout_45/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_45/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_45/Normal/sample/normal/random_normal/mulMulQdense_flipout_45/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_45/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:é
3dense_flipout_45/Normal/sample/normal/random_normalAddV2;dense_flipout_45/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_45/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_45/Normal/sample/mulMul7dense_flipout_45/Normal/sample/normal/random_normal:z:0&dense_flipout_45/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_45/Normal/sample/add_1AddV2&dense_flipout_45/Normal/sample/mul:z:0$dense_flipout_45/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_45/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_45/Normal/sample/ReshapeReshape(dense_flipout_45/Normal/sample/add_1:z:05dense_flipout_45/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:i
dense_flipout_45/ShapeShape#dense_flipout_44/Relu:activations:0*
T0*
_output_shapes
:n
$dense_flipout_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿp
&dense_flipout_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
dense_flipout_45/strided_sliceStridedSlicedense_flipout_45/Shape:output:0-dense_flipout_45/strided_slice/stack:output:0/dense_flipout_45/strided_slice/stack_1:output:0/dense_flipout_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_45/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_45/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
:dense_flipout_45/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÌ
6dense_flipout_45/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_45/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_45/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_45/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_45/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_45/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Ré
Ydense_flipout_45/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_45/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_45/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ù
<dense_flipout_45/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_45/Shape:output:0_dense_flipout_45/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_45/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_45/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_45/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_45/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	c
!dense_flipout_45/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RË
dense_flipout_45/rademacher/mulMul*dense_flipout_45/rademacher/mul/x:output:0Edense_flipout_45/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_45/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_45/rademacher/subSub#dense_flipout_45/rademacher/mul:z:0*dense_flipout_45/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_flipout_45/rademacher/CastCast#dense_flipout_45/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_45/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_45/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¤
dense_flipout_45/ExpandDims
ExpandDims*dense_flipout_45/ExpandDims/input:output:0(dense_flipout_45/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_45/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_flipout_45/concatConcatV2'dense_flipout_45/strided_slice:output:0$dense_flipout_45/ExpandDims:output:0%dense_flipout_45/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
<dense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÔ
8dense_flipout_45/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_45/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_45/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rí
[dense_flipout_45/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_45/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_45/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :æ
>dense_flipout_45/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_45/concat:output:0adense_flipout_45/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_45/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_45/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_45/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_45/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	e
#dense_flipout_45/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÑ
!dense_flipout_45/rademacher_1/mulMul,dense_flipout_45/rademacher_1/mul/x:output:0Gdense_flipout_45/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#dense_flipout_45/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¯
!dense_flipout_45/rademacher_1/subSub%dense_flipout_45/rademacher_1/mul:z:0,dense_flipout_45/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_flipout_45/rademacher_1/CastCast%dense_flipout_45/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_45/mulMul#dense_flipout_44/Relu:activations:0$dense_flipout_45/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_45/MatMulMatMuldense_flipout_45/mul:z:0/dense_flipout_45/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_45/mul_1Mul!dense_flipout_45/MatMul:product:0&dense_flipout_45/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(dense_flipout_45/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_45_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¬
dense_flipout_45/MatMul_1MatMul#dense_flipout_44/Relu:activations:00dense_flipout_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_45/addAddV2#dense_flipout_45/MatMul_1:product:0dense_flipout_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=dense_flipout_45/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:î
Tdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_45_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¥
[dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¥
[dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Á
Sdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
Ldense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
Qdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:¤
Sdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_45/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_45/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_45/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_45/BiasAddBiasAdddense_flipout_45/add:z:0Adense_flipout_45/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dense_flipout_45/SoftmaxSoftmax!dense_flipout_45/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
ödense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_45_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
çdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusþdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ª
ädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ý
âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ídense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0õdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ø
Þdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogædense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:î
àdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logâdense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274906*
T0*
_output_shapes
: Û
Þdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubâdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ü
édense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_45_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ð
âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivñdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0âdense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274906*
T0*
_output_shapes

:ç
ädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivædense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xâdense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274906*
T0*
_output_shapes

:ÿ
ìdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceædense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0èdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?î
Þdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulédense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ðdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @ä
àdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulëdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ú
àdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?æ
àdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulëdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:Ý
Þdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Û
àdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subâdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ð
dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÆ
dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_45/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6o
dense_flipout_45/CastCast dense_flipout_45/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ÷
dense_flipout_45/truedivRealDivdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_45/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_45/divergence_kernelIdentitydense_flipout_45/truediv:z:0*
T0*
_output_shapes
: q
IdentityIdentity"dense_flipout_45/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk

Identity_1Identity+dense_flipout_43/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_2Identity+dense_flipout_44/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_3Identity+dense_flipout_45/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ¬
NoOpNoOpU^dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp÷^dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpê^dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_43/MatMul_1/ReadVariableOp7^dense_flipout_43/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp÷^dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpê^dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_44/MatMul_1/ReadVariableOp7^dense_flipout_44/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp÷^dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpê^dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_45/MatMul_1/ReadVariableOp7^dense_flipout_45/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2¬
Tdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ò
ödense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpödense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ø
édense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpédense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_43/MatMul_1/ReadVariableOp(dense_flipout_43/MatMul_1/ReadVariableOp2p
6dense_flipout_43/Normal/sample/Softplus/ReadVariableOp6dense_flipout_43/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ò
ödense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpödense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ø
édense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpédense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_44/MatMul_1/ReadVariableOp(dense_flipout_44/MatMul_1/ReadVariableOp2p
6dense_flipout_44/Normal/sample/Softplus/ReadVariableOp6dense_flipout_44/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ò
ödense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpödense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ø
édense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpédense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_45/MatMul_1/ReadVariableOp(dense_flipout_45/MatMul_1/ReadVariableOp2p
6dense_flipout_45/Normal/sample/Softplus/ReadVariableOp6dense_flipout_45/Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
¸û

M__inference_dense_flipout_43_layer_call_and_return_conditional_losses_2275133

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_43_sample_deterministic_sample_readvariableop_resource:Ö
Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2275102Ú
Õkullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOp¢åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
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
valueB"      W
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
value	B : ¾
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
:*
dtype0Ð
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:¶
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
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
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ï
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
øÿÿÿÿo
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
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
value	B	 RÇ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :â
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
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
øÿÿÿÿq
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
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
value	B	 RË
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ï
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¼
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_43_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ª
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB î
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:ë
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      è
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:¶
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ü
ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusíKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ê
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÜKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ö
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Ì
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÑkullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2275102*
T0*
_output_shapes
: ¨
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:º
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivàKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2275102*
T0*
_output_shapes

:´
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÕkullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÑkullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2275102*
T0*
_output_shapes

:Ì
ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ø
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ª
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ß
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Ä
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOpæ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpÙ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2Ê
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOp2Ð
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpåKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2¶
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
½
Î
J__inference_sequential_16_layer_call_and_return_conditional_losses_2273867

inputs*
dense_flipout_43_2273827:*
dense_flipout_43_2273829:&
dense_flipout_43_2273831:
dense_flipout_43_2273833
dense_flipout_43_2273835*
dense_flipout_44_2273839:*
dense_flipout_44_2273841:&
dense_flipout_44_2273843:
dense_flipout_44_2273845
dense_flipout_44_2273847*
dense_flipout_45_2273851:*
dense_flipout_45_2273853:&
dense_flipout_45_2273855:
dense_flipout_45_2273857
dense_flipout_45_2273859
identity

identity_1

identity_2

identity_3¢(dense_flipout_43/StatefulPartitionedCall¢(dense_flipout_44/StatefulPartitionedCall¢(dense_flipout_45/StatefulPartitionedCallè
(dense_flipout_43/StatefulPartitionedCallStatefulPartitionedCallinputsdense_flipout_43_2273827dense_flipout_43_2273829dense_flipout_43_2273831dense_flipout_43_2273833dense_flipout_43_2273835*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_43_layer_call_and_return_conditional_losses_2273372
(dense_flipout_44/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_43/StatefulPartitionedCall:output:0dense_flipout_44_2273839dense_flipout_44_2273841dense_flipout_44_2273843dense_flipout_44_2273845dense_flipout_44_2273847*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_44_layer_call_and_return_conditional_losses_2273526
(dense_flipout_45/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_44/StatefulPartitionedCall:output:0dense_flipout_45_2273851dense_flipout_45_2273853dense_flipout_45_2273855dense_flipout_45_2273857dense_flipout_45_2273859*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_45_layer_call_and_return_conditional_losses_2273680
IdentityIdentity1dense_flipout_45/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity1dense_flipout_43/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_44/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_45/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Ç
NoOpNoOp)^dense_flipout_43/StatefulPartitionedCall)^dense_flipout_44/StatefulPartitionedCall)^dense_flipout_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2T
(dense_flipout_43/StatefulPartitionedCall(dense_flipout_43/StatefulPartitionedCall2T
(dense_flipout_44/StatefulPartitionedCall(dense_flipout_44/StatefulPartitionedCall2T
(dense_flipout_45/StatefulPartitionedCall(dense_flipout_45/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
¸û

M__inference_dense_flipout_44_layer_call_and_return_conditional_losses_2275290

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_44_sample_deterministic_sample_readvariableop_resource:Ö
Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2275259Ú
Õkullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOp¢åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
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
valueB"      W
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
value	B : ¾
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
:*
dtype0Ð
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:¶
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
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
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ï
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
øÿÿÿÿo
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
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
value	B	 RÇ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :â
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
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
øÿÿÿÿq
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
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
value	B	 RË
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ï
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¼
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_44_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ª
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB î
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:ë
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      è
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:¶
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ü
ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusíKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ê
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÜKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ö
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Ì
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÑkullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2275259*
T0*
_output_shapes
: ¨
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:º
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivàKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2275259*
T0*
_output_shapes

:´
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÕkullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÑkullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2275259*
T0*
_output_shapes

:Ì
ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ø
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ª
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ß
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Ä
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOpæ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpÙ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2Ê
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOp2Ð
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpåKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2¶
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
ä
´
#__inference__traced_restore_2275702
file_prefixH
6assignvariableop_dense_flipout_43_kernel_posterior_loc:Z
Hassignvariableop_1_dense_flipout_43_kernel_posterior_untransformed_scale:D
6assignvariableop_2_dense_flipout_43_bias_posterior_loc:J
8assignvariableop_3_dense_flipout_44_kernel_posterior_loc:Z
Hassignvariableop_4_dense_flipout_44_kernel_posterior_untransformed_scale:D
6assignvariableop_5_dense_flipout_44_bias_posterior_loc:J
8assignvariableop_6_dense_flipout_45_kernel_posterior_loc:Z
Hassignvariableop_7_dense_flipout_45_kernel_posterior_untransformed_scale:D
6assignvariableop_8_dense_flipout_45_bias_posterior_loc:&
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: #
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: R
@assignvariableop_18_adam_dense_flipout_43_kernel_posterior_loc_m:b
Passignvariableop_19_adam_dense_flipout_43_kernel_posterior_untransformed_scale_m:L
>assignvariableop_20_adam_dense_flipout_43_bias_posterior_loc_m:R
@assignvariableop_21_adam_dense_flipout_44_kernel_posterior_loc_m:b
Passignvariableop_22_adam_dense_flipout_44_kernel_posterior_untransformed_scale_m:L
>assignvariableop_23_adam_dense_flipout_44_bias_posterior_loc_m:R
@assignvariableop_24_adam_dense_flipout_45_kernel_posterior_loc_m:b
Passignvariableop_25_adam_dense_flipout_45_kernel_posterior_untransformed_scale_m:L
>assignvariableop_26_adam_dense_flipout_45_bias_posterior_loc_m:R
@assignvariableop_27_adam_dense_flipout_43_kernel_posterior_loc_v:b
Passignvariableop_28_adam_dense_flipout_43_kernel_posterior_untransformed_scale_v:L
>assignvariableop_29_adam_dense_flipout_43_bias_posterior_loc_v:R
@assignvariableop_30_adam_dense_flipout_44_kernel_posterior_loc_v:b
Passignvariableop_31_adam_dense_flipout_44_kernel_posterior_untransformed_scale_v:L
>assignvariableop_32_adam_dense_flipout_44_bias_posterior_loc_v:R
@assignvariableop_33_adam_dense_flipout_45_kernel_posterior_loc_v:b
Passignvariableop_34_adam_dense_flipout_45_kernel_posterior_untransformed_scale_v:L
>assignvariableop_35_adam_dense_flipout_45_bias_posterior_loc_v:
identity_37¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¢
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*È
value¾B»%BDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHº
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ú
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ª
_output_shapes
:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOpAssignVariableOp6assignvariableop_dense_flipout_43_kernel_posterior_locIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_1AssignVariableOpHassignvariableop_1_dense_flipout_43_kernel_posterior_untransformed_scaleIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_2AssignVariableOp6assignvariableop_2_dense_flipout_43_bias_posterior_locIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_3AssignVariableOp8assignvariableop_3_dense_flipout_44_kernel_posterior_locIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_4AssignVariableOpHassignvariableop_4_dense_flipout_44_kernel_posterior_untransformed_scaleIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_5AssignVariableOp6assignvariableop_5_dense_flipout_44_bias_posterior_locIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_6AssignVariableOp8assignvariableop_6_dense_flipout_45_kernel_posterior_locIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_7AssignVariableOpHassignvariableop_7_dense_flipout_45_kernel_posterior_untransformed_scaleIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_8AssignVariableOp6assignvariableop_8_dense_flipout_45_bias_posterior_locIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_18AssignVariableOp@assignvariableop_18_adam_dense_flipout_43_kernel_posterior_loc_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_19AssignVariableOpPassignvariableop_19_adam_dense_flipout_43_kernel_posterior_untransformed_scale_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_20AssignVariableOp>assignvariableop_20_adam_dense_flipout_43_bias_posterior_loc_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_dense_flipout_44_kernel_posterior_loc_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_22AssignVariableOpPassignvariableop_22_adam_dense_flipout_44_kernel_posterior_untransformed_scale_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_23AssignVariableOp>assignvariableop_23_adam_dense_flipout_44_bias_posterior_loc_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_dense_flipout_45_kernel_posterior_loc_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_25AssignVariableOpPassignvariableop_25_adam_dense_flipout_45_kernel_posterior_untransformed_scale_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_dense_flipout_45_bias_posterior_loc_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_dense_flipout_43_kernel_posterior_loc_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_28AssignVariableOpPassignvariableop_28_adam_dense_flipout_43_kernel_posterior_untransformed_scale_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_29AssignVariableOp>assignvariableop_29_adam_dense_flipout_43_bias_posterior_loc_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_dense_flipout_44_kernel_posterior_loc_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_31AssignVariableOpPassignvariableop_31_adam_dense_flipout_44_kernel_posterior_untransformed_scale_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_dense_flipout_44_bias_posterior_loc_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_33AssignVariableOp@assignvariableop_33_adam_dense_flipout_45_kernel_posterior_loc_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_34AssignVariableOpPassignvariableop_34_adam_dense_flipout_45_kernel_posterior_untransformed_scale_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_dense_flipout_45_bias_posterior_loc_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ç
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: Ô
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_35AssignVariableOp_352(
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
	
Ú
2__inference_dense_flipout_44_layer_call_fn_2275149

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_44_layer_call_and_return_conditional_losses_2273526o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
è
µ
%__inference_signature_wrapper_2274976
input_15
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_2273224o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_15:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
¸û

M__inference_dense_flipout_44_layer_call_and_return_conditional_losses_2273526

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_44_sample_deterministic_sample_readvariableop_resource:Ö
Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273495Ú
Õkullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOp¢åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
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
valueB"      W
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
value	B : ¾
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
:*
dtype0Ð
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:¶
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
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
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ï
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
øÿÿÿÿo
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
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
value	B	 RÇ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :â
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
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
øÿÿÿÿq
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
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
value	B	 RË
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ï
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¼
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_44_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ª
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB î
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:ë
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      è
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:¶
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ü
ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusíKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ê
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÜKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ö
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Ì
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÑkullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273495*
T0*
_output_shapes
: ¨
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:º
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivàKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273495*
T0*
_output_shapes

:´
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÕkullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÑkullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273495*
T0*
_output_shapes

:Ì
ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ø
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ª
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ß
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Ä
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOpæ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpÙ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2Ê
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOp2Ð
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpåKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2¶
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
½
Î
J__inference_sequential_16_layer_call_and_return_conditional_losses_2273697

inputs*
dense_flipout_43_2273373:*
dense_flipout_43_2273375:&
dense_flipout_43_2273377:
dense_flipout_43_2273379
dense_flipout_43_2273381*
dense_flipout_44_2273527:*
dense_flipout_44_2273529:&
dense_flipout_44_2273531:
dense_flipout_44_2273533
dense_flipout_44_2273535*
dense_flipout_45_2273681:*
dense_flipout_45_2273683:&
dense_flipout_45_2273685:
dense_flipout_45_2273687
dense_flipout_45_2273689
identity

identity_1

identity_2

identity_3¢(dense_flipout_43/StatefulPartitionedCall¢(dense_flipout_44/StatefulPartitionedCall¢(dense_flipout_45/StatefulPartitionedCallè
(dense_flipout_43/StatefulPartitionedCallStatefulPartitionedCallinputsdense_flipout_43_2273373dense_flipout_43_2273375dense_flipout_43_2273377dense_flipout_43_2273379dense_flipout_43_2273381*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_43_layer_call_and_return_conditional_losses_2273372
(dense_flipout_44/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_43/StatefulPartitionedCall:output:0dense_flipout_44_2273527dense_flipout_44_2273529dense_flipout_44_2273531dense_flipout_44_2273533dense_flipout_44_2273535*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_44_layer_call_and_return_conditional_losses_2273526
(dense_flipout_45/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_44/StatefulPartitionedCall:output:0dense_flipout_45_2273681dense_flipout_45_2273683dense_flipout_45_2273685dense_flipout_45_2273687dense_flipout_45_2273689*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_45_layer_call_and_return_conditional_losses_2273680
IdentityIdentity1dense_flipout_45/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity1dense_flipout_43/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_44/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_45/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Ç
NoOpNoOp)^dense_flipout_43/StatefulPartitionedCall)^dense_flipout_44/StatefulPartitionedCall)^dense_flipout_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2T
(dense_flipout_43/StatefulPartitionedCall(dense_flipout_43/StatefulPartitionedCall2T
(dense_flipout_44/StatefulPartitionedCall(dense_flipout_44/StatefulPartitionedCall2T
(dense_flipout_45/StatefulPartitionedCall(dense_flipout_45/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
¹¼
"
J__inference_sequential_16_layer_call_and_return_conditional_losses_2274524

inputsQ
?dense_flipout_43_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_43_matmul_1_readvariableop_resource:k
]dense_flipout_43_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ç
âdense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274219ë
ædense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_44_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_44_matmul_1_readvariableop_resource:k
]dense_flipout_44_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ç
âdense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274355ë
ædense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_45_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_45_matmul_1_readvariableop_resource:k
]dense_flipout_45_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ç
âdense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274491ë
ædense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1

identity_2

identity_3¢Tdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ödense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢édense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢(dense_flipout_43/MatMul_1/ReadVariableOp¢6dense_flipout_43/Normal/sample/Softplus/ReadVariableOp¢Tdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ödense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢édense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢(dense_flipout_44/MatMul_1/ReadVariableOp¢6dense_flipout_44/Normal/sample/Softplus/ReadVariableOp¢Tdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ödense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢édense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢(dense_flipout_45/MatMul_1/ReadVariableOp¢6dense_flipout_45/Normal/sample/Softplus/ReadVariableOpp
dense_flipout_43/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_43/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¶
6dense_flipout_43/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_43_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_43/Normal/sample/SoftplusSoftplus>dense_flipout_43/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_43/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4º
"dense_flipout_43/Normal/sample/addAddV2-dense_flipout_43/Normal/sample/add/x:output:05dense_flipout_43/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_43/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_43/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_43/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_43/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_43/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
,dense_flipout_43/Normal/sample/strided_sliceStridedSlice7dense_flipout_43/Normal/sample/shape_as_tensor:output:0;dense_flipout_43/Normal/sample/strided_slice/stack:output:0=dense_flipout_43/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_43/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_43/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_43/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_43/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_43/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_43/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
.dense_flipout_43/Normal/sample/strided_slice_1StridedSlice9dense_flipout_43/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_43/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_43/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_43/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_43/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_43/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ì
,dense_flipout_43/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_43/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_43/Normal/sample/strided_slice:output:0*
_output_shapes
:Ç
.dense_flipout_43/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_43/Normal/sample/BroadcastArgs:r0:07dense_flipout_43/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_43/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_43/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_43/Normal/sample/concatConcatV27dense_flipout_43/Normal/sample/concat/values_0:output:03dense_flipout_43/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_43/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_43/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_43/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ê
Hdense_flipout_43/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_43/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_43/Normal/sample/normal/random_normal/mulMulQdense_flipout_43/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_43/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:é
3dense_flipout_43/Normal/sample/normal/random_normalAddV2;dense_flipout_43/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_43/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_43/Normal/sample/mulMul7dense_flipout_43/Normal/sample/normal/random_normal:z:0&dense_flipout_43/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_43/Normal/sample/add_1AddV2&dense_flipout_43/Normal/sample/mul:z:0$dense_flipout_43/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_43/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_43/Normal/sample/ReshapeReshape(dense_flipout_43/Normal/sample/add_1:z:05dense_flipout_43/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:L
dense_flipout_43/ShapeShapeinputs*
T0*
_output_shapes
:n
$dense_flipout_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿp
&dense_flipout_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
dense_flipout_43/strided_sliceStridedSlicedense_flipout_43/Shape:output:0-dense_flipout_43/strided_slice/stack:output:0/dense_flipout_43/strided_slice/stack_1:output:0/dense_flipout_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_43/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_43/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
:dense_flipout_43/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÌ
6dense_flipout_43/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_43/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_43/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_43/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_43/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_43/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Ré
Ydense_flipout_43/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_43/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_43/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ù
<dense_flipout_43/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_43/Shape:output:0_dense_flipout_43/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_43/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_43/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_43/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_43/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	c
!dense_flipout_43/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RË
dense_flipout_43/rademacher/mulMul*dense_flipout_43/rademacher/mul/x:output:0Edense_flipout_43/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_43/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_43/rademacher/subSub#dense_flipout_43/rademacher/mul:z:0*dense_flipout_43/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_flipout_43/rademacher/CastCast#dense_flipout_43/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_43/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_43/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¤
dense_flipout_43/ExpandDims
ExpandDims*dense_flipout_43/ExpandDims/input:output:0(dense_flipout_43/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_43/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_flipout_43/concatConcatV2'dense_flipout_43/strided_slice:output:0$dense_flipout_43/ExpandDims:output:0%dense_flipout_43/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
<dense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÔ
8dense_flipout_43/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_43/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_43/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rí
[dense_flipout_43/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_43/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_43/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :æ
>dense_flipout_43/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_43/concat:output:0adense_flipout_43/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_43/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_43/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_43/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_43/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	e
#dense_flipout_43/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÑ
!dense_flipout_43/rademacher_1/mulMul,dense_flipout_43/rademacher_1/mul/x:output:0Gdense_flipout_43/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#dense_flipout_43/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¯
!dense_flipout_43/rademacher_1/subSub%dense_flipout_43/rademacher_1/mul:z:0,dense_flipout_43/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_flipout_43/rademacher_1/CastCast%dense_flipout_43/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
dense_flipout_43/mulMulinputs$dense_flipout_43/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_43/MatMulMatMuldense_flipout_43/mul:z:0/dense_flipout_43/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_43/mul_1Mul!dense_flipout_43/MatMul:product:0&dense_flipout_43/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(dense_flipout_43/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
dense_flipout_43/MatMul_1MatMulinputs0dense_flipout_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_43/addAddV2#dense_flipout_43/MatMul_1:product:0dense_flipout_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=dense_flipout_43/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:î
Tdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_43_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¥
[dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¥
[dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Á
Sdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
Ldense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
Qdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:¤
Sdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_43/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_43/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_43/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_43/BiasAddBiasAdddense_flipout_43/add:z:0Adense_flipout_43/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
dense_flipout_43/ReluRelu!dense_flipout_43/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
ödense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_43_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
çdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusþdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ª
ädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ý
âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ídense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0õdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ø
Þdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogædense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:î
àdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logâdense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274219*
T0*
_output_shapes
: Û
Þdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubâdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ü
édense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ð
âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivñdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0âdense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274219*
T0*
_output_shapes

:ç
ädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivædense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xâdense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274219*
T0*
_output_shapes

:ÿ
ìdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceædense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0èdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?î
Þdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulédense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ðdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @ä
àdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulëdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ú
àdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?æ
àdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulëdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:Ý
Þdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Û
àdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subâdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0âdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ð
dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÆ
dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumädense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_43/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6o
dense_flipout_43/CastCast dense_flipout_43/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ÷
dense_flipout_43/truedivRealDivdense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_43/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_43/divergence_kernelIdentitydense_flipout_43/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_44/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_44/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¶
6dense_flipout_44/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_44_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_44/Normal/sample/SoftplusSoftplus>dense_flipout_44/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_44/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4º
"dense_flipout_44/Normal/sample/addAddV2-dense_flipout_44/Normal/sample/add/x:output:05dense_flipout_44/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_44/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_44/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_44/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_44/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_44/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
,dense_flipout_44/Normal/sample/strided_sliceStridedSlice7dense_flipout_44/Normal/sample/shape_as_tensor:output:0;dense_flipout_44/Normal/sample/strided_slice/stack:output:0=dense_flipout_44/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_44/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_44/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_44/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_44/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_44/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_44/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
.dense_flipout_44/Normal/sample/strided_slice_1StridedSlice9dense_flipout_44/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_44/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_44/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_44/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_44/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_44/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ì
,dense_flipout_44/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_44/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_44/Normal/sample/strided_slice:output:0*
_output_shapes
:Ç
.dense_flipout_44/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_44/Normal/sample/BroadcastArgs:r0:07dense_flipout_44/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_44/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_44/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_44/Normal/sample/concatConcatV27dense_flipout_44/Normal/sample/concat/values_0:output:03dense_flipout_44/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_44/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_44/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_44/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ê
Hdense_flipout_44/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_44/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_44/Normal/sample/normal/random_normal/mulMulQdense_flipout_44/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_44/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:é
3dense_flipout_44/Normal/sample/normal/random_normalAddV2;dense_flipout_44/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_44/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_44/Normal/sample/mulMul7dense_flipout_44/Normal/sample/normal/random_normal:z:0&dense_flipout_44/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_44/Normal/sample/add_1AddV2&dense_flipout_44/Normal/sample/mul:z:0$dense_flipout_44/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_44/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_44/Normal/sample/ReshapeReshape(dense_flipout_44/Normal/sample/add_1:z:05dense_flipout_44/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:i
dense_flipout_44/ShapeShape#dense_flipout_43/Relu:activations:0*
T0*
_output_shapes
:n
$dense_flipout_44/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_44/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿp
&dense_flipout_44/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
dense_flipout_44/strided_sliceStridedSlicedense_flipout_44/Shape:output:0-dense_flipout_44/strided_slice/stack:output:0/dense_flipout_44/strided_slice/stack_1:output:0/dense_flipout_44/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_44/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_44/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
:dense_flipout_44/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÌ
6dense_flipout_44/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_44/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_44/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_44/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_44/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_44/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Ré
Ydense_flipout_44/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_44/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_44/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ù
<dense_flipout_44/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_44/Shape:output:0_dense_flipout_44/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_44/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_44/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_44/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_44/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	c
!dense_flipout_44/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RË
dense_flipout_44/rademacher/mulMul*dense_flipout_44/rademacher/mul/x:output:0Edense_flipout_44/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_44/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_44/rademacher/subSub#dense_flipout_44/rademacher/mul:z:0*dense_flipout_44/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_flipout_44/rademacher/CastCast#dense_flipout_44/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_44/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_44/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¤
dense_flipout_44/ExpandDims
ExpandDims*dense_flipout_44/ExpandDims/input:output:0(dense_flipout_44/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_44/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_flipout_44/concatConcatV2'dense_flipout_44/strided_slice:output:0$dense_flipout_44/ExpandDims:output:0%dense_flipout_44/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
<dense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÔ
8dense_flipout_44/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_44/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_44/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rí
[dense_flipout_44/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_44/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_44/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :æ
>dense_flipout_44/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_44/concat:output:0adense_flipout_44/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_44/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_44/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_44/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_44/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	e
#dense_flipout_44/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÑ
!dense_flipout_44/rademacher_1/mulMul,dense_flipout_44/rademacher_1/mul/x:output:0Gdense_flipout_44/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#dense_flipout_44/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¯
!dense_flipout_44/rademacher_1/subSub%dense_flipout_44/rademacher_1/mul:z:0,dense_flipout_44/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_flipout_44/rademacher_1/CastCast%dense_flipout_44/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_44/mulMul#dense_flipout_43/Relu:activations:0$dense_flipout_44/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_44/MatMulMatMuldense_flipout_44/mul:z:0/dense_flipout_44/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_44/mul_1Mul!dense_flipout_44/MatMul:product:0&dense_flipout_44/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(dense_flipout_44/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_44_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¬
dense_flipout_44/MatMul_1MatMul#dense_flipout_43/Relu:activations:00dense_flipout_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_44/addAddV2#dense_flipout_44/MatMul_1:product:0dense_flipout_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=dense_flipout_44/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:î
Tdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_44_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¥
[dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¥
[dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Á
Sdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
Ldense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
Qdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:¤
Sdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_44/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_44/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_44/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_44/BiasAddBiasAdddense_flipout_44/add:z:0Adense_flipout_44/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
dense_flipout_44/ReluRelu!dense_flipout_44/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
ödense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_44_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
çdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusþdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ª
ädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ý
âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ídense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0õdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ø
Þdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogædense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:î
àdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logâdense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274355*
T0*
_output_shapes
: Û
Þdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubâdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ü
édense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_44_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ð
âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivñdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0âdense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274355*
T0*
_output_shapes

:ç
ädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivædense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xâdense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274355*
T0*
_output_shapes

:ÿ
ìdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceædense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0èdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?î
Þdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulédense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ðdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @ä
àdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulëdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ú
àdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?æ
àdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulëdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:Ý
Þdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Û
àdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subâdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0âdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ð
dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÆ
dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumädense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_44/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6o
dense_flipout_44/CastCast dense_flipout_44/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ÷
dense_flipout_44/truedivRealDivdense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_44/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_44/divergence_kernelIdentitydense_flipout_44/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_45/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_45/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¶
6dense_flipout_45/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_45_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_45/Normal/sample/SoftplusSoftplus>dense_flipout_45/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_45/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4º
"dense_flipout_45/Normal/sample/addAddV2-dense_flipout_45/Normal/sample/add/x:output:05dense_flipout_45/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_45/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_45/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_45/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_45/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_45/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
,dense_flipout_45/Normal/sample/strided_sliceStridedSlice7dense_flipout_45/Normal/sample/shape_as_tensor:output:0;dense_flipout_45/Normal/sample/strided_slice/stack:output:0=dense_flipout_45/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_45/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_45/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_45/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_45/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_45/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_45/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
.dense_flipout_45/Normal/sample/strided_slice_1StridedSlice9dense_flipout_45/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_45/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_45/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_45/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_45/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_45/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ì
,dense_flipout_45/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_45/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_45/Normal/sample/strided_slice:output:0*
_output_shapes
:Ç
.dense_flipout_45/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_45/Normal/sample/BroadcastArgs:r0:07dense_flipout_45/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_45/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_45/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_45/Normal/sample/concatConcatV27dense_flipout_45/Normal/sample/concat/values_0:output:03dense_flipout_45/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_45/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_45/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_45/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ê
Hdense_flipout_45/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_45/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_45/Normal/sample/normal/random_normal/mulMulQdense_flipout_45/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_45/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:é
3dense_flipout_45/Normal/sample/normal/random_normalAddV2;dense_flipout_45/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_45/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_45/Normal/sample/mulMul7dense_flipout_45/Normal/sample/normal/random_normal:z:0&dense_flipout_45/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_45/Normal/sample/add_1AddV2&dense_flipout_45/Normal/sample/mul:z:0$dense_flipout_45/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_45/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_45/Normal/sample/ReshapeReshape(dense_flipout_45/Normal/sample/add_1:z:05dense_flipout_45/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:i
dense_flipout_45/ShapeShape#dense_flipout_44/Relu:activations:0*
T0*
_output_shapes
:n
$dense_flipout_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿp
&dense_flipout_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
dense_flipout_45/strided_sliceStridedSlicedense_flipout_45/Shape:output:0-dense_flipout_45/strided_slice/stack:output:0/dense_flipout_45/strided_slice/stack_1:output:0/dense_flipout_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_45/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_45/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
:dense_flipout_45/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÌ
6dense_flipout_45/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_45/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_45/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_45/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_45/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_45/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Ré
Ydense_flipout_45/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_45/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_45/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ù
<dense_flipout_45/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_45/Shape:output:0_dense_flipout_45/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_45/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_45/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_45/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_45/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	c
!dense_flipout_45/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RË
dense_flipout_45/rademacher/mulMul*dense_flipout_45/rademacher/mul/x:output:0Edense_flipout_45/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_45/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_45/rademacher/subSub#dense_flipout_45/rademacher/mul:z:0*dense_flipout_45/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_flipout_45/rademacher/CastCast#dense_flipout_45/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_45/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_45/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¤
dense_flipout_45/ExpandDims
ExpandDims*dense_flipout_45/ExpandDims/input:output:0(dense_flipout_45/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_45/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_flipout_45/concatConcatV2'dense_flipout_45/strided_slice:output:0$dense_flipout_45/ExpandDims:output:0%dense_flipout_45/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
<dense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÔ
8dense_flipout_45/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_45/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_45/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rí
[dense_flipout_45/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_45/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_45/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :æ
>dense_flipout_45/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_45/concat:output:0adense_flipout_45/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_45/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_45/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_45/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_45/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	e
#dense_flipout_45/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÑ
!dense_flipout_45/rademacher_1/mulMul,dense_flipout_45/rademacher_1/mul/x:output:0Gdense_flipout_45/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#dense_flipout_45/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¯
!dense_flipout_45/rademacher_1/subSub%dense_flipout_45/rademacher_1/mul:z:0,dense_flipout_45/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_flipout_45/rademacher_1/CastCast%dense_flipout_45/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_45/mulMul#dense_flipout_44/Relu:activations:0$dense_flipout_45/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_45/MatMulMatMuldense_flipout_45/mul:z:0/dense_flipout_45/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_45/mul_1Mul!dense_flipout_45/MatMul:product:0&dense_flipout_45/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(dense_flipout_45/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_45_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¬
dense_flipout_45/MatMul_1MatMul#dense_flipout_44/Relu:activations:00dense_flipout_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_45/addAddV2#dense_flipout_45/MatMul_1:product:0dense_flipout_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=dense_flipout_45/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:î
Tdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_45_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¥
[dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¥
[dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Á
Sdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
Ldense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
Qdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:¤
Sdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_45/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_45/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_45/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_45/BiasAddBiasAdddense_flipout_45/add:z:0Adense_flipout_45/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dense_flipout_45/SoftmaxSoftmax!dense_flipout_45/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
ödense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_45_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
çdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusþdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ª
ädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ý
âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ídense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0õdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ø
Þdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogædense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:î
àdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logâdense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274491*
T0*
_output_shapes
: Û
Þdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubâdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ü
édense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_45_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ð
âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivñdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0âdense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274491*
T0*
_output_shapes

:ç
ädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivædense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xâdense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2274491*
T0*
_output_shapes

:ÿ
ìdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceædense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0èdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?î
Þdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulédense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ðdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @ä
àdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulëdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ú
àdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?æ
àdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulëdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:Ý
Þdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Û
àdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subâdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0âdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ð
dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÆ
dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumädense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_45/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6o
dense_flipout_45/CastCast dense_flipout_45/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ÷
dense_flipout_45/truedivRealDivdense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_45/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_45/divergence_kernelIdentitydense_flipout_45/truediv:z:0*
T0*
_output_shapes
: q
IdentityIdentity"dense_flipout_45/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk

Identity_1Identity+dense_flipout_43/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_2Identity+dense_flipout_44/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_3Identity+dense_flipout_45/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ¬
NoOpNoOpU^dense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp÷^dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpê^dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_43/MatMul_1/ReadVariableOp7^dense_flipout_43/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp÷^dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpê^dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_44/MatMul_1/ReadVariableOp7^dense_flipout_44/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp÷^dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpê^dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_45/MatMul_1/ReadVariableOp7^dense_flipout_45/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2¬
Tdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_43/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ò
ödense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpödense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ø
édense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpédense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_43/MatMul_1/ReadVariableOp(dense_flipout_43/MatMul_1/ReadVariableOp2p
6dense_flipout_43/Normal/sample/Softplus/ReadVariableOp6dense_flipout_43/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_44/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ò
ödense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpödense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ø
édense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpédense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_44/MatMul_1/ReadVariableOp(dense_flipout_44/MatMul_1/ReadVariableOp2p
6dense_flipout_44/Normal/sample/Softplus/ReadVariableOp6dense_flipout_44/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_45/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ò
ödense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpödense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ø
édense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpédense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_45/MatMul_1/ReadVariableOp(dense_flipout_45/MatMul_1/ReadVariableOp2p
6dense_flipout_45/Normal/sample/Softplus/ReadVariableOp6dense_flipout_45/Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
¹
­&
"__inference__wrapped_model_2273224
input_15_
Msequential_16_dense_flipout_43_normal_sample_softplus_readvariableop_resource:Q
?sequential_16_dense_flipout_43_matmul_1_readvariableop_resource:
sequential_16_dense_flipout_43_independentdeterministic_constructed_at_dense_flipout_43_sample_deterministic_sample_readvariableop_resource:õ
ðsequential_16_dense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2272922ù
ôsequential_16_dense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x_
Msequential_16_dense_flipout_44_normal_sample_softplus_readvariableop_resource:Q
?sequential_16_dense_flipout_44_matmul_1_readvariableop_resource:
sequential_16_dense_flipout_44_independentdeterministic_constructed_at_dense_flipout_44_sample_deterministic_sample_readvariableop_resource:õ
ðsequential_16_dense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273058ù
ôsequential_16_dense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x_
Msequential_16_dense_flipout_45_normal_sample_softplus_readvariableop_resource:Q
?sequential_16_dense_flipout_45_matmul_1_readvariableop_resource:
sequential_16_dense_flipout_45_independentdeterministic_constructed_at_dense_flipout_45_sample_deterministic_sample_readvariableop_resource:õ
ðsequential_16_dense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273194ù
ôsequential_16_dense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity¢sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOp¢sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢÷sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢6sequential_16/dense_flipout_43/MatMul_1/ReadVariableOp¢Dsequential_16/dense_flipout_43/Normal/sample/Softplus/ReadVariableOp¢sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOp¢sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢÷sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢6sequential_16/dense_flipout_44/MatMul_1/ReadVariableOp¢Dsequential_16/dense_flipout_44/Normal/sample/Softplus/ReadVariableOp¢sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOp¢sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢÷sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢6sequential_16/dense_flipout_45/MatMul_1/ReadVariableOp¢Dsequential_16/dense_flipout_45/Normal/sample/Softplus/ReadVariableOp~
)sequential_16/dense_flipout_43/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    |
9sequential_16/dense_flipout_43/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ò
Dsequential_16/dense_flipout_43/Normal/sample/Softplus/ReadVariableOpReadVariableOpMsequential_16_dense_flipout_43_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0¸
5sequential_16/dense_flipout_43/Normal/sample/SoftplusSoftplusLsequential_16/dense_flipout_43/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:w
2sequential_16/dense_flipout_43/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ä
0sequential_16/dense_flipout_43/Normal/sample/addAddV2;sequential_16/dense_flipout_43/Normal/sample/add/x:output:0Csequential_16/dense_flipout_43/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
<sequential_16/dense_flipout_43/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      t
2sequential_16/dense_flipout_43/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
@sequential_16/dense_flipout_43/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_16/dense_flipout_43/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_16/dense_flipout_43/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
:sequential_16/dense_flipout_43/Normal/sample/strided_sliceStridedSliceEsequential_16/dense_flipout_43/Normal/sample/shape_as_tensor:output:0Isequential_16/dense_flipout_43/Normal/sample/strided_slice/stack:output:0Ksequential_16/dense_flipout_43/Normal/sample/strided_slice/stack_1:output:0Ksequential_16/dense_flipout_43/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
>sequential_16/dense_flipout_43/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      v
4sequential_16/dense_flipout_43/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
Bsequential_16/dense_flipout_43/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dsequential_16/dense_flipout_43/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_16/dense_flipout_43/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
<sequential_16/dense_flipout_43/Normal/sample/strided_slice_1StridedSliceGsequential_16/dense_flipout_43/Normal/sample/shape_as_tensor_1:output:0Ksequential_16/dense_flipout_43/Normal/sample/strided_slice_1/stack:output:0Msequential_16/dense_flipout_43/Normal/sample/strided_slice_1/stack_1:output:0Msequential_16/dense_flipout_43/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
=sequential_16/dense_flipout_43/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
?sequential_16/dense_flipout_43/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ö
:sequential_16/dense_flipout_43/Normal/sample/BroadcastArgsBroadcastArgsHsequential_16/dense_flipout_43/Normal/sample/BroadcastArgs/s0_1:output:0Csequential_16/dense_flipout_43/Normal/sample/strided_slice:output:0*
_output_shapes
:ñ
<sequential_16/dense_flipout_43/Normal/sample/BroadcastArgs_1BroadcastArgs?sequential_16/dense_flipout_43/Normal/sample/BroadcastArgs:r0:0Esequential_16/dense_flipout_43/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
<sequential_16/dense_flipout_43/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:z
8sequential_16/dense_flipout_43/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : º
3sequential_16/dense_flipout_43/Normal/sample/concatConcatV2Esequential_16/dense_flipout_43/Normal/sample/concat/values_0:output:0Asequential_16/dense_flipout_43/Normal/sample/BroadcastArgs_1:r0:0Asequential_16/dense_flipout_43/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Fsequential_16/dense_flipout_43/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Hsequential_16/dense_flipout_43/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?æ
Vsequential_16/dense_flipout_43/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal<sequential_16/dense_flipout_43/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0­
Esequential_16/dense_flipout_43/Normal/sample/normal/random_normal/mulMul_sequential_16/dense_flipout_43/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Qsequential_16/dense_flipout_43/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
Asequential_16/dense_flipout_43/Normal/sample/normal/random_normalAddV2Isequential_16/dense_flipout_43/Normal/sample/normal/random_normal/mul:z:0Osequential_16/dense_flipout_43/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:á
0sequential_16/dense_flipout_43/Normal/sample/mulMulEsequential_16/dense_flipout_43/Normal/sample/normal/random_normal:z:04sequential_16/dense_flipout_43/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ò
2sequential_16/dense_flipout_43/Normal/sample/add_1AddV24sequential_16/dense_flipout_43/Normal/sample/mul:z:02sequential_16/dense_flipout_43/zeros_like:output:0*
T0*"
_output_shapes
:
:sequential_16/dense_flipout_43/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      å
4sequential_16/dense_flipout_43/Normal/sample/ReshapeReshape6sequential_16/dense_flipout_43/Normal/sample/add_1:z:0Csequential_16/dense_flipout_43/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:\
$sequential_16/dense_flipout_43/ShapeShapeinput_15*
T0*
_output_shapes
:|
2sequential_16/dense_flipout_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
4sequential_16/dense_flipout_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4sequential_16/dense_flipout_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
,sequential_16/dense_flipout_43/strided_sliceStridedSlice-sequential_16/dense_flipout_43/Shape:output:0;sequential_16/dense_flipout_43/strided_slice/stack:output:0=sequential_16/dense_flipout_43/strided_slice/stack_1:output:0=sequential_16/dense_flipout_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Jsequential_16/dense_flipout_43/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Hsequential_16/dense_flipout_43/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Hsequential_16/dense_flipout_43/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Dsequential_16/dense_flipout_43/rademacher/uniform/sanitize_seed/seedRandomUniformIntSsequential_16/dense_flipout_43/rademacher/uniform/sanitize_seed/seed/shape:output:0Qsequential_16/dense_flipout_43/rademacher/uniform/sanitize_seed/seed/min:output:0Qsequential_16/dense_flipout_43/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Nsequential_16/dense_flipout_43/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Nsequential_16/dense_flipout_43/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
gsequential_16/dense_flipout_43/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterMsequential_16/dense_flipout_43/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Nsequential_16/dense_flipout_43/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :»
Jsequential_16/dense_flipout_43/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2-sequential_16/dense_flipout_43/Shape:output:0msequential_16/dense_flipout_43/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0qsequential_16/dense_flipout_43/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Wsequential_16/dense_flipout_43/rademacher/uniform/stateless_random_uniform/alg:output:0Wsequential_16/dense_flipout_43/rademacher/uniform/stateless_random_uniform/min:output:0Wsequential_16/dense_flipout_43/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	q
/sequential_16/dense_flipout_43/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rõ
-sequential_16/dense_flipout_43/rademacher/mulMul8sequential_16/dense_flipout_43/rademacher/mul/x:output:0Ssequential_16/dense_flipout_43/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/sequential_16/dense_flipout_43/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÓ
-sequential_16/dense_flipout_43/rademacher/subSub1sequential_16/dense_flipout_43/rademacher/mul:z:08sequential_16/dense_flipout_43/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
.sequential_16/dense_flipout_43/rademacher/CastCast1sequential_16/dense_flipout_43/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/sequential_16/dense_flipout_43/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :o
-sequential_16/dense_flipout_43/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Î
)sequential_16/dense_flipout_43/ExpandDims
ExpandDims8sequential_16/dense_flipout_43/ExpandDims/input:output:06sequential_16/dense_flipout_43/ExpandDims/dim:output:0*
T0*
_output_shapes
:l
*sequential_16/dense_flipout_43/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
%sequential_16/dense_flipout_43/concatConcatV25sequential_16/dense_flipout_43/strided_slice:output:02sequential_16/dense_flipout_43/ExpandDims:output:03sequential_16/dense_flipout_43/concat/axis:output:0*
N*
T0*
_output_shapes
:
Lsequential_16/dense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Jsequential_16/dense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Jsequential_16/dense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Fsequential_16/dense_flipout_43/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntUsequential_16/dense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Ssequential_16/dense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/min:output:0Ssequential_16/dense_flipout_43/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Psequential_16/dense_flipout_43/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Psequential_16/dense_flipout_43/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
isequential_16/dense_flipout_43/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterOsequential_16/dense_flipout_43/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Psequential_16/dense_flipout_43/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :È
Lsequential_16/dense_flipout_43/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2.sequential_16/dense_flipout_43/concat:output:0osequential_16/dense_flipout_43/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ssequential_16/dense_flipout_43/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ysequential_16/dense_flipout_43/rademacher_1/uniform/stateless_random_uniform/alg:output:0Ysequential_16/dense_flipout_43/rademacher_1/uniform/stateless_random_uniform/min:output:0Ysequential_16/dense_flipout_43/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	s
1sequential_16/dense_flipout_43/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rû
/sequential_16/dense_flipout_43/rademacher_1/mulMul:sequential_16/dense_flipout_43/rademacher_1/mul/x:output:0Usequential_16/dense_flipout_43/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
1sequential_16/dense_flipout_43/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÙ
/sequential_16/dense_flipout_43/rademacher_1/subSub3sequential_16/dense_flipout_43/rademacher_1/mul:z:0:sequential_16/dense_flipout_43/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
0sequential_16/dense_flipout_43/rademacher_1/CastCast3sequential_16/dense_flipout_43/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"sequential_16/dense_flipout_43/mulMulinput_152sequential_16/dense_flipout_43/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%sequential_16/dense_flipout_43/MatMulMatMul&sequential_16/dense_flipout_43/mul:z:0=sequential_16/dense_flipout_43/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
$sequential_16/dense_flipout_43/mul_1Mul/sequential_16/dense_flipout_43/MatMul:product:04sequential_16/dense_flipout_43/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
6sequential_16/dense_flipout_43/MatMul_1/ReadVariableOpReadVariableOp?sequential_16_dense_flipout_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0­
'sequential_16/dense_flipout_43/MatMul_1MatMulinput_15>sequential_16/dense_flipout_43/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
"sequential_16/dense_flipout_43/addAddV21sequential_16/dense_flipout_43/MatMul_1:product:0(sequential_16/dense_flipout_43/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
ksequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ã
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ü
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Ì
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_16_dense_flipout_43_independentdeterministic_constructed_at_dense_flipout_43_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Î
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:»
ysequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ô
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ô
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_sliceStridedSlicesequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/shape_as_tensor:output:0sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack:output:0sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskÈ
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ê
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Î
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Î
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ç
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB Á
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : æ
zsequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concatConcatV2sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/values_0:output:0sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/values_2:output:0sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ê
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastToBroadcastTosequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOp:value:0sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:Ó
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ç
{sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReshapeReshapesequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastTo:output:0sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:¶
lsequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
fsequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/ReshapeReshapesequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/Reshape:output:0usequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Reshape/shape:output:0*
T0*
_output_shapes
:ü
&sequential_16/dense_flipout_43/BiasAddBiasAdd&sequential_16/dense_flipout_43/add:z:0osequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#sequential_16/dense_flipout_43/ReluRelu/sequential_16/dense_flipout_43/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpMsequential_16_dense_flipout_43_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0º
õsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:¸
òsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4§
ðsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ûsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
ìsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogôsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
îsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logðsequential_16_dense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2272922*
T0*
_output_shapes
: 
ìsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubðsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0òsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ø
÷sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp?sequential_16_dense_flipout_43_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
ðsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivÿsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ðsequential_16_dense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2272922*
T0*
_output_shapes

:
òsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivôsequential_16_dense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xðsequential_16_dense_flipout_43_kullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2272922*
T0*
_output_shapes

:©
úsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceôsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ösequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:´
îsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ìsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul÷sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0þsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¶
ðsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
îsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulùsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ðsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
îsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1òsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¶
ðsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
îsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulùsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0òsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:
ìsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ðsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0òsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:
îsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subðsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ðsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:þ
¬sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿð
sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumòsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0µsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: h
%sequential_16/dense_flipout_43/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6
#sequential_16/dense_flipout_43/CastCast.sequential_16/dense_flipout_43/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ¡
&sequential_16/dense_flipout_43/truedivRealDiv£sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0'sequential_16/dense_flipout_43/Cast:y:0*
T0*
_output_shapes
: 
0sequential_16/dense_flipout_43/divergence_kernelIdentity*sequential_16/dense_flipout_43/truediv:z:0*
T0*
_output_shapes
: ~
)sequential_16/dense_flipout_44/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    |
9sequential_16/dense_flipout_44/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ò
Dsequential_16/dense_flipout_44/Normal/sample/Softplus/ReadVariableOpReadVariableOpMsequential_16_dense_flipout_44_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0¸
5sequential_16/dense_flipout_44/Normal/sample/SoftplusSoftplusLsequential_16/dense_flipout_44/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:w
2sequential_16/dense_flipout_44/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ä
0sequential_16/dense_flipout_44/Normal/sample/addAddV2;sequential_16/dense_flipout_44/Normal/sample/add/x:output:0Csequential_16/dense_flipout_44/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
<sequential_16/dense_flipout_44/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      t
2sequential_16/dense_flipout_44/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
@sequential_16/dense_flipout_44/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_16/dense_flipout_44/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_16/dense_flipout_44/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
:sequential_16/dense_flipout_44/Normal/sample/strided_sliceStridedSliceEsequential_16/dense_flipout_44/Normal/sample/shape_as_tensor:output:0Isequential_16/dense_flipout_44/Normal/sample/strided_slice/stack:output:0Ksequential_16/dense_flipout_44/Normal/sample/strided_slice/stack_1:output:0Ksequential_16/dense_flipout_44/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
>sequential_16/dense_flipout_44/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      v
4sequential_16/dense_flipout_44/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
Bsequential_16/dense_flipout_44/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dsequential_16/dense_flipout_44/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_16/dense_flipout_44/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
<sequential_16/dense_flipout_44/Normal/sample/strided_slice_1StridedSliceGsequential_16/dense_flipout_44/Normal/sample/shape_as_tensor_1:output:0Ksequential_16/dense_flipout_44/Normal/sample/strided_slice_1/stack:output:0Msequential_16/dense_flipout_44/Normal/sample/strided_slice_1/stack_1:output:0Msequential_16/dense_flipout_44/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
=sequential_16/dense_flipout_44/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
?sequential_16/dense_flipout_44/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ö
:sequential_16/dense_flipout_44/Normal/sample/BroadcastArgsBroadcastArgsHsequential_16/dense_flipout_44/Normal/sample/BroadcastArgs/s0_1:output:0Csequential_16/dense_flipout_44/Normal/sample/strided_slice:output:0*
_output_shapes
:ñ
<sequential_16/dense_flipout_44/Normal/sample/BroadcastArgs_1BroadcastArgs?sequential_16/dense_flipout_44/Normal/sample/BroadcastArgs:r0:0Esequential_16/dense_flipout_44/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
<sequential_16/dense_flipout_44/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:z
8sequential_16/dense_flipout_44/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : º
3sequential_16/dense_flipout_44/Normal/sample/concatConcatV2Esequential_16/dense_flipout_44/Normal/sample/concat/values_0:output:0Asequential_16/dense_flipout_44/Normal/sample/BroadcastArgs_1:r0:0Asequential_16/dense_flipout_44/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Fsequential_16/dense_flipout_44/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Hsequential_16/dense_flipout_44/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?æ
Vsequential_16/dense_flipout_44/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal<sequential_16/dense_flipout_44/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0­
Esequential_16/dense_flipout_44/Normal/sample/normal/random_normal/mulMul_sequential_16/dense_flipout_44/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Qsequential_16/dense_flipout_44/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
Asequential_16/dense_flipout_44/Normal/sample/normal/random_normalAddV2Isequential_16/dense_flipout_44/Normal/sample/normal/random_normal/mul:z:0Osequential_16/dense_flipout_44/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:á
0sequential_16/dense_flipout_44/Normal/sample/mulMulEsequential_16/dense_flipout_44/Normal/sample/normal/random_normal:z:04sequential_16/dense_flipout_44/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ò
2sequential_16/dense_flipout_44/Normal/sample/add_1AddV24sequential_16/dense_flipout_44/Normal/sample/mul:z:02sequential_16/dense_flipout_44/zeros_like:output:0*
T0*"
_output_shapes
:
:sequential_16/dense_flipout_44/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      å
4sequential_16/dense_flipout_44/Normal/sample/ReshapeReshape6sequential_16/dense_flipout_44/Normal/sample/add_1:z:0Csequential_16/dense_flipout_44/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
$sequential_16/dense_flipout_44/ShapeShape1sequential_16/dense_flipout_43/Relu:activations:0*
T0*
_output_shapes
:|
2sequential_16/dense_flipout_44/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
4sequential_16/dense_flipout_44/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4sequential_16/dense_flipout_44/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
,sequential_16/dense_flipout_44/strided_sliceStridedSlice-sequential_16/dense_flipout_44/Shape:output:0;sequential_16/dense_flipout_44/strided_slice/stack:output:0=sequential_16/dense_flipout_44/strided_slice/stack_1:output:0=sequential_16/dense_flipout_44/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Jsequential_16/dense_flipout_44/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Hsequential_16/dense_flipout_44/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Hsequential_16/dense_flipout_44/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Dsequential_16/dense_flipout_44/rademacher/uniform/sanitize_seed/seedRandomUniformIntSsequential_16/dense_flipout_44/rademacher/uniform/sanitize_seed/seed/shape:output:0Qsequential_16/dense_flipout_44/rademacher/uniform/sanitize_seed/seed/min:output:0Qsequential_16/dense_flipout_44/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Nsequential_16/dense_flipout_44/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Nsequential_16/dense_flipout_44/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
gsequential_16/dense_flipout_44/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterMsequential_16/dense_flipout_44/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Nsequential_16/dense_flipout_44/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :»
Jsequential_16/dense_flipout_44/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2-sequential_16/dense_flipout_44/Shape:output:0msequential_16/dense_flipout_44/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0qsequential_16/dense_flipout_44/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Wsequential_16/dense_flipout_44/rademacher/uniform/stateless_random_uniform/alg:output:0Wsequential_16/dense_flipout_44/rademacher/uniform/stateless_random_uniform/min:output:0Wsequential_16/dense_flipout_44/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	q
/sequential_16/dense_flipout_44/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rõ
-sequential_16/dense_flipout_44/rademacher/mulMul8sequential_16/dense_flipout_44/rademacher/mul/x:output:0Ssequential_16/dense_flipout_44/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/sequential_16/dense_flipout_44/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÓ
-sequential_16/dense_flipout_44/rademacher/subSub1sequential_16/dense_flipout_44/rademacher/mul:z:08sequential_16/dense_flipout_44/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
.sequential_16/dense_flipout_44/rademacher/CastCast1sequential_16/dense_flipout_44/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/sequential_16/dense_flipout_44/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :o
-sequential_16/dense_flipout_44/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Î
)sequential_16/dense_flipout_44/ExpandDims
ExpandDims8sequential_16/dense_flipout_44/ExpandDims/input:output:06sequential_16/dense_flipout_44/ExpandDims/dim:output:0*
T0*
_output_shapes
:l
*sequential_16/dense_flipout_44/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
%sequential_16/dense_flipout_44/concatConcatV25sequential_16/dense_flipout_44/strided_slice:output:02sequential_16/dense_flipout_44/ExpandDims:output:03sequential_16/dense_flipout_44/concat/axis:output:0*
N*
T0*
_output_shapes
:
Lsequential_16/dense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Jsequential_16/dense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Jsequential_16/dense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Fsequential_16/dense_flipout_44/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntUsequential_16/dense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Ssequential_16/dense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/min:output:0Ssequential_16/dense_flipout_44/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Psequential_16/dense_flipout_44/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Psequential_16/dense_flipout_44/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
isequential_16/dense_flipout_44/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterOsequential_16/dense_flipout_44/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Psequential_16/dense_flipout_44/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :È
Lsequential_16/dense_flipout_44/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2.sequential_16/dense_flipout_44/concat:output:0osequential_16/dense_flipout_44/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ssequential_16/dense_flipout_44/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ysequential_16/dense_flipout_44/rademacher_1/uniform/stateless_random_uniform/alg:output:0Ysequential_16/dense_flipout_44/rademacher_1/uniform/stateless_random_uniform/min:output:0Ysequential_16/dense_flipout_44/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	s
1sequential_16/dense_flipout_44/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rû
/sequential_16/dense_flipout_44/rademacher_1/mulMul:sequential_16/dense_flipout_44/rademacher_1/mul/x:output:0Usequential_16/dense_flipout_44/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
1sequential_16/dense_flipout_44/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÙ
/sequential_16/dense_flipout_44/rademacher_1/subSub3sequential_16/dense_flipout_44/rademacher_1/mul:z:0:sequential_16/dense_flipout_44/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
0sequential_16/dense_flipout_44/rademacher_1/CastCast3sequential_16/dense_flipout_44/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
"sequential_16/dense_flipout_44/mulMul1sequential_16/dense_flipout_43/Relu:activations:02sequential_16/dense_flipout_44/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%sequential_16/dense_flipout_44/MatMulMatMul&sequential_16/dense_flipout_44/mul:z:0=sequential_16/dense_flipout_44/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
$sequential_16/dense_flipout_44/mul_1Mul/sequential_16/dense_flipout_44/MatMul:product:04sequential_16/dense_flipout_44/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
6sequential_16/dense_flipout_44/MatMul_1/ReadVariableOpReadVariableOp?sequential_16_dense_flipout_44_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ö
'sequential_16/dense_flipout_44/MatMul_1MatMul1sequential_16/dense_flipout_43/Relu:activations:0>sequential_16/dense_flipout_44/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
"sequential_16/dense_flipout_44/addAddV21sequential_16/dense_flipout_44/MatMul_1:product:0(sequential_16/dense_flipout_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
ksequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ã
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ü
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Ì
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_16_dense_flipout_44_independentdeterministic_constructed_at_dense_flipout_44_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Î
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:»
ysequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ô
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ô
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_sliceStridedSlicesequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/shape_as_tensor:output:0sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack:output:0sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskÈ
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ê
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Î
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Î
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ç
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB Á
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : æ
zsequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concatConcatV2sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/values_0:output:0sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/values_2:output:0sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ê
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastToBroadcastTosequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOp:value:0sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:Ó
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ç
{sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReshapeReshapesequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/BroadcastTo:output:0sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:¶
lsequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
fsequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/ReshapeReshapesequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/Reshape:output:0usequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Reshape/shape:output:0*
T0*
_output_shapes
:ü
&sequential_16/dense_flipout_44/BiasAddBiasAdd&sequential_16/dense_flipout_44/add:z:0osequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#sequential_16/dense_flipout_44/ReluRelu/sequential_16/dense_flipout_44/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpMsequential_16_dense_flipout_44_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0º
õsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:¸
òsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4§
ðsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ûsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
ìsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogôsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
îsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logðsequential_16_dense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273058*
T0*
_output_shapes
: 
ìsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubðsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0òsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ø
÷sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp?sequential_16_dense_flipout_44_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
ðsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivÿsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ðsequential_16_dense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273058*
T0*
_output_shapes

:
òsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivôsequential_16_dense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xðsequential_16_dense_flipout_44_kullbackleibler_independentnormal_constructed_at_dense_flipout_44_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273058*
T0*
_output_shapes

:©
úsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceôsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ösequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:´
îsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ìsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul÷sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0þsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¶
ðsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
îsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulùsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ðsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
îsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1òsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¶
ðsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
îsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulùsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0òsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:
ìsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ðsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0òsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:
îsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subðsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ðsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:þ
¬sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿð
sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumòsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0µsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: h
%sequential_16/dense_flipout_44/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6
#sequential_16/dense_flipout_44/CastCast.sequential_16/dense_flipout_44/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ¡
&sequential_16/dense_flipout_44/truedivRealDiv£sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0'sequential_16/dense_flipout_44/Cast:y:0*
T0*
_output_shapes
: 
0sequential_16/dense_flipout_44/divergence_kernelIdentity*sequential_16/dense_flipout_44/truediv:z:0*
T0*
_output_shapes
: ~
)sequential_16/dense_flipout_45/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    |
9sequential_16/dense_flipout_45/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ò
Dsequential_16/dense_flipout_45/Normal/sample/Softplus/ReadVariableOpReadVariableOpMsequential_16_dense_flipout_45_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0¸
5sequential_16/dense_flipout_45/Normal/sample/SoftplusSoftplusLsequential_16/dense_flipout_45/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:w
2sequential_16/dense_flipout_45/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ä
0sequential_16/dense_flipout_45/Normal/sample/addAddV2;sequential_16/dense_flipout_45/Normal/sample/add/x:output:0Csequential_16/dense_flipout_45/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
<sequential_16/dense_flipout_45/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      t
2sequential_16/dense_flipout_45/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
@sequential_16/dense_flipout_45/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_16/dense_flipout_45/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_16/dense_flipout_45/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
:sequential_16/dense_flipout_45/Normal/sample/strided_sliceStridedSliceEsequential_16/dense_flipout_45/Normal/sample/shape_as_tensor:output:0Isequential_16/dense_flipout_45/Normal/sample/strided_slice/stack:output:0Ksequential_16/dense_flipout_45/Normal/sample/strided_slice/stack_1:output:0Ksequential_16/dense_flipout_45/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
>sequential_16/dense_flipout_45/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      v
4sequential_16/dense_flipout_45/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
Bsequential_16/dense_flipout_45/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dsequential_16/dense_flipout_45/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_16/dense_flipout_45/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
<sequential_16/dense_flipout_45/Normal/sample/strided_slice_1StridedSliceGsequential_16/dense_flipout_45/Normal/sample/shape_as_tensor_1:output:0Ksequential_16/dense_flipout_45/Normal/sample/strided_slice_1/stack:output:0Msequential_16/dense_flipout_45/Normal/sample/strided_slice_1/stack_1:output:0Msequential_16/dense_flipout_45/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
=sequential_16/dense_flipout_45/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
?sequential_16/dense_flipout_45/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ö
:sequential_16/dense_flipout_45/Normal/sample/BroadcastArgsBroadcastArgsHsequential_16/dense_flipout_45/Normal/sample/BroadcastArgs/s0_1:output:0Csequential_16/dense_flipout_45/Normal/sample/strided_slice:output:0*
_output_shapes
:ñ
<sequential_16/dense_flipout_45/Normal/sample/BroadcastArgs_1BroadcastArgs?sequential_16/dense_flipout_45/Normal/sample/BroadcastArgs:r0:0Esequential_16/dense_flipout_45/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
<sequential_16/dense_flipout_45/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:z
8sequential_16/dense_flipout_45/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : º
3sequential_16/dense_flipout_45/Normal/sample/concatConcatV2Esequential_16/dense_flipout_45/Normal/sample/concat/values_0:output:0Asequential_16/dense_flipout_45/Normal/sample/BroadcastArgs_1:r0:0Asequential_16/dense_flipout_45/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Fsequential_16/dense_flipout_45/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Hsequential_16/dense_flipout_45/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?æ
Vsequential_16/dense_flipout_45/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal<sequential_16/dense_flipout_45/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0­
Esequential_16/dense_flipout_45/Normal/sample/normal/random_normal/mulMul_sequential_16/dense_flipout_45/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Qsequential_16/dense_flipout_45/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
Asequential_16/dense_flipout_45/Normal/sample/normal/random_normalAddV2Isequential_16/dense_flipout_45/Normal/sample/normal/random_normal/mul:z:0Osequential_16/dense_flipout_45/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:á
0sequential_16/dense_flipout_45/Normal/sample/mulMulEsequential_16/dense_flipout_45/Normal/sample/normal/random_normal:z:04sequential_16/dense_flipout_45/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ò
2sequential_16/dense_flipout_45/Normal/sample/add_1AddV24sequential_16/dense_flipout_45/Normal/sample/mul:z:02sequential_16/dense_flipout_45/zeros_like:output:0*
T0*"
_output_shapes
:
:sequential_16/dense_flipout_45/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      å
4sequential_16/dense_flipout_45/Normal/sample/ReshapeReshape6sequential_16/dense_flipout_45/Normal/sample/add_1:z:0Csequential_16/dense_flipout_45/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
$sequential_16/dense_flipout_45/ShapeShape1sequential_16/dense_flipout_44/Relu:activations:0*
T0*
_output_shapes
:|
2sequential_16/dense_flipout_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
4sequential_16/dense_flipout_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4sequential_16/dense_flipout_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
,sequential_16/dense_flipout_45/strided_sliceStridedSlice-sequential_16/dense_flipout_45/Shape:output:0;sequential_16/dense_flipout_45/strided_slice/stack:output:0=sequential_16/dense_flipout_45/strided_slice/stack_1:output:0=sequential_16/dense_flipout_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Jsequential_16/dense_flipout_45/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Hsequential_16/dense_flipout_45/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Hsequential_16/dense_flipout_45/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Dsequential_16/dense_flipout_45/rademacher/uniform/sanitize_seed/seedRandomUniformIntSsequential_16/dense_flipout_45/rademacher/uniform/sanitize_seed/seed/shape:output:0Qsequential_16/dense_flipout_45/rademacher/uniform/sanitize_seed/seed/min:output:0Qsequential_16/dense_flipout_45/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Nsequential_16/dense_flipout_45/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Nsequential_16/dense_flipout_45/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
gsequential_16/dense_flipout_45/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterMsequential_16/dense_flipout_45/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Nsequential_16/dense_flipout_45/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :»
Jsequential_16/dense_flipout_45/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2-sequential_16/dense_flipout_45/Shape:output:0msequential_16/dense_flipout_45/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0qsequential_16/dense_flipout_45/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Wsequential_16/dense_flipout_45/rademacher/uniform/stateless_random_uniform/alg:output:0Wsequential_16/dense_flipout_45/rademacher/uniform/stateless_random_uniform/min:output:0Wsequential_16/dense_flipout_45/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	q
/sequential_16/dense_flipout_45/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rõ
-sequential_16/dense_flipout_45/rademacher/mulMul8sequential_16/dense_flipout_45/rademacher/mul/x:output:0Ssequential_16/dense_flipout_45/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/sequential_16/dense_flipout_45/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÓ
-sequential_16/dense_flipout_45/rademacher/subSub1sequential_16/dense_flipout_45/rademacher/mul:z:08sequential_16/dense_flipout_45/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
.sequential_16/dense_flipout_45/rademacher/CastCast1sequential_16/dense_flipout_45/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/sequential_16/dense_flipout_45/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :o
-sequential_16/dense_flipout_45/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Î
)sequential_16/dense_flipout_45/ExpandDims
ExpandDims8sequential_16/dense_flipout_45/ExpandDims/input:output:06sequential_16/dense_flipout_45/ExpandDims/dim:output:0*
T0*
_output_shapes
:l
*sequential_16/dense_flipout_45/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
%sequential_16/dense_flipout_45/concatConcatV25sequential_16/dense_flipout_45/strided_slice:output:02sequential_16/dense_flipout_45/ExpandDims:output:03sequential_16/dense_flipout_45/concat/axis:output:0*
N*
T0*
_output_shapes
:
Lsequential_16/dense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Jsequential_16/dense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Jsequential_16/dense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Fsequential_16/dense_flipout_45/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntUsequential_16/dense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Ssequential_16/dense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/min:output:0Ssequential_16/dense_flipout_45/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Psequential_16/dense_flipout_45/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Psequential_16/dense_flipout_45/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
isequential_16/dense_flipout_45/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterOsequential_16/dense_flipout_45/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Psequential_16/dense_flipout_45/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :È
Lsequential_16/dense_flipout_45/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2.sequential_16/dense_flipout_45/concat:output:0osequential_16/dense_flipout_45/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ssequential_16/dense_flipout_45/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Ysequential_16/dense_flipout_45/rademacher_1/uniform/stateless_random_uniform/alg:output:0Ysequential_16/dense_flipout_45/rademacher_1/uniform/stateless_random_uniform/min:output:0Ysequential_16/dense_flipout_45/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	s
1sequential_16/dense_flipout_45/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rû
/sequential_16/dense_flipout_45/rademacher_1/mulMul:sequential_16/dense_flipout_45/rademacher_1/mul/x:output:0Usequential_16/dense_flipout_45/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
1sequential_16/dense_flipout_45/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÙ
/sequential_16/dense_flipout_45/rademacher_1/subSub3sequential_16/dense_flipout_45/rademacher_1/mul:z:0:sequential_16/dense_flipout_45/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
0sequential_16/dense_flipout_45/rademacher_1/CastCast3sequential_16/dense_flipout_45/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
"sequential_16/dense_flipout_45/mulMul1sequential_16/dense_flipout_44/Relu:activations:02sequential_16/dense_flipout_45/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
%sequential_16/dense_flipout_45/MatMulMatMul&sequential_16/dense_flipout_45/mul:z:0=sequential_16/dense_flipout_45/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
$sequential_16/dense_flipout_45/mul_1Mul/sequential_16/dense_flipout_45/MatMul:product:04sequential_16/dense_flipout_45/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
6sequential_16/dense_flipout_45/MatMul_1/ReadVariableOpReadVariableOp?sequential_16_dense_flipout_45_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ö
'sequential_16/dense_flipout_45/MatMul_1MatMul1sequential_16/dense_flipout_44/Relu:activations:0>sequential_16/dense_flipout_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
"sequential_16/dense_flipout_45/addAddV21sequential_16/dense_flipout_45/MatMul_1:product:0(sequential_16/dense_flipout_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
ksequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ã
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ü
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Ì
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_16_dense_flipout_45_independentdeterministic_constructed_at_dense_flipout_45_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Î
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:»
ysequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ò
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ô
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ô
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_sliceStridedSlicesequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/shape_as_tensor:output:0sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack:output:0sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskÈ
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ê
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Î
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Î
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ç
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB Á
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : æ
zsequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concatConcatV2sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/values_0:output:0sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/values_2:output:0sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ê
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastToBroadcastTosequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOp:value:0sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:Ó
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ç
{sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReshapeReshapesequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastTo:output:0sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:¶
lsequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
fsequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/ReshapeReshapesequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/Reshape:output:0usequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Reshape/shape:output:0*
T0*
_output_shapes
:ü
&sequential_16/dense_flipout_45/BiasAddBiasAdd&sequential_16/dense_flipout_45/add:z:0osequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&sequential_16/dense_flipout_45/SoftmaxSoftmax/sequential_16/dense_flipout_45/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpMsequential_16_dense_flipout_45_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0º
õsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:¸
òsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4§
ðsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ûsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
ìsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogôsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
îsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logðsequential_16_dense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273194*
T0*
_output_shapes
: 
ìsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubðsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0òsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ø
÷sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp?sequential_16_dense_flipout_45_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
ðsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivÿsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ðsequential_16_dense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273194*
T0*
_output_shapes

:
òsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivôsequential_16_dense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xðsequential_16_dense_flipout_45_kullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273194*
T0*
_output_shapes

:©
úsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceôsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ösequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:´
îsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ìsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul÷sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0þsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¶
ðsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
îsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulùsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ðsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
îsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1òsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¶
ðsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
îsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulùsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0òsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:
ìsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ðsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0òsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:
îsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subðsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ðsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:þ
¬sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿð
sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumòsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0µsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: h
%sequential_16/dense_flipout_45/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6
#sequential_16/dense_flipout_45/CastCast.sequential_16/dense_flipout_45/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ¡
&sequential_16/dense_flipout_45/truedivRealDiv£sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0'sequential_16/dense_flipout_45/Cast:y:0*
T0*
_output_shapes
: 
0sequential_16/dense_flipout_45/divergence_kernelIdentity*sequential_16/dense_flipout_45/truediv:z:0*
T0*
_output_shapes
: 
IdentityIdentity0sequential_16/dense_flipout_45/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
NoOpNoOp^sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOp^sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpø^sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp7^sequential_16/dense_flipout_43/MatMul_1/ReadVariableOpE^sequential_16/dense_flipout_43/Normal/sample/Softplus/ReadVariableOp^sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOp^sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpø^sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp7^sequential_16/dense_flipout_44/MatMul_1/ReadVariableOpE^sequential_16/dense_flipout_44/Normal/sample/Softplus/ReadVariableOp^sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOp^sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpø^sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp7^sequential_16/dense_flipout_45/MatMul_1/ReadVariableOpE^sequential_16/dense_flipout_45/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2
sequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOpsequential_16/dense_flipout_43/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOp2
sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2ô
÷sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp÷sequential_16/dense_flipout_43/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2p
6sequential_16/dense_flipout_43/MatMul_1/ReadVariableOp6sequential_16/dense_flipout_43/MatMul_1/ReadVariableOp2
Dsequential_16/dense_flipout_43/Normal/sample/Softplus/ReadVariableOpDsequential_16/dense_flipout_43/Normal/sample/Softplus/ReadVariableOp2
sequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOpsequential_16/dense_flipout_44/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_44/sample/Deterministic/sample/ReadVariableOp2
sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2ô
÷sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp÷sequential_16/dense_flipout_44/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_44/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2p
6sequential_16/dense_flipout_44/MatMul_1/ReadVariableOp6sequential_16/dense_flipout_44/MatMul_1/ReadVariableOp2
Dsequential_16/dense_flipout_44/Normal/sample/Softplus/ReadVariableOpDsequential_16/dense_flipout_44/Normal/sample/Softplus/ReadVariableOp2
sequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOpsequential_16/dense_flipout_45/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOp2
sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2ô
÷sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp÷sequential_16/dense_flipout_45/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2p
6sequential_16/dense_flipout_45/MatMul_1/ReadVariableOp6sequential_16/dense_flipout_45/MatMul_1/ReadVariableOp2
Dsequential_16/dense_flipout_45/Normal/sample/Softplus/ReadVariableOpDsequential_16/dense_flipout_45/Normal/sample/Softplus/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_15:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
½û

M__inference_dense_flipout_45_layer_call_and_return_conditional_losses_2273680

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_45_sample_deterministic_sample_readvariableop_resource:Ö
Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273649Ú
Õkullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOp¢åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
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
valueB"      W
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
value	B : ¾
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
:*
dtype0Ð
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:¶
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
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
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ï
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
øÿÿÿÿo
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
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
value	B	 RÇ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :â
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
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
øÿÿÿÿq
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
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
value	B	 RË
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ï
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¼
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_45_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ª
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB î
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:ë
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      è
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:¶
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ü
ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusíKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ê
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÜKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ö
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Ì
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÑkullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273649*
T0*
_output_shapes
: ¨
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:º
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivàKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273649*
T0*
_output_shapes

:´
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÕkullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÑkullbackleibler_independentnormal_constructed_at_dense_flipout_45_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273649*
T0*
_output_shapes

:Ì
ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ø
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ª
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ß
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Ä
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOpæ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpÙ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2Ê
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_45/sample/Deterministic/sample/ReadVariableOp2Ð
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpåKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2¶
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_45/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
£
¿
/__inference_sequential_16_layer_call_fn_2273733
input_15
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : : *+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_2273697o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_15:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
Ã
Ð
J__inference_sequential_16_layer_call_and_return_conditional_losses_2274027
input_15*
dense_flipout_43_2273987:*
dense_flipout_43_2273989:&
dense_flipout_43_2273991:
dense_flipout_43_2273993
dense_flipout_43_2273995*
dense_flipout_44_2273999:*
dense_flipout_44_2274001:&
dense_flipout_44_2274003:
dense_flipout_44_2274005
dense_flipout_44_2274007*
dense_flipout_45_2274011:*
dense_flipout_45_2274013:&
dense_flipout_45_2274015:
dense_flipout_45_2274017
dense_flipout_45_2274019
identity

identity_1

identity_2

identity_3¢(dense_flipout_43/StatefulPartitionedCall¢(dense_flipout_44/StatefulPartitionedCall¢(dense_flipout_45/StatefulPartitionedCallê
(dense_flipout_43/StatefulPartitionedCallStatefulPartitionedCallinput_15dense_flipout_43_2273987dense_flipout_43_2273989dense_flipout_43_2273991dense_flipout_43_2273993dense_flipout_43_2273995*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_43_layer_call_and_return_conditional_losses_2273372
(dense_flipout_44/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_43/StatefulPartitionedCall:output:0dense_flipout_44_2273999dense_flipout_44_2274001dense_flipout_44_2274003dense_flipout_44_2274005dense_flipout_44_2274007*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_44_layer_call_and_return_conditional_losses_2273526
(dense_flipout_45/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_44/StatefulPartitionedCall:output:0dense_flipout_45_2274011dense_flipout_45_2274013dense_flipout_45_2274015dense_flipout_45_2274017dense_flipout_45_2274019*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_45_layer_call_and_return_conditional_losses_2273680
IdentityIdentity1dense_flipout_45/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity1dense_flipout_43/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_44/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_45/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Ç
NoOpNoOp)^dense_flipout_43/StatefulPartitionedCall)^dense_flipout_44/StatefulPartitionedCall)^dense_flipout_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2T
(dense_flipout_43/StatefulPartitionedCall(dense_flipout_43/StatefulPartitionedCall2T
(dense_flipout_44/StatefulPartitionedCall(dense_flipout_44/StatefulPartitionedCall2T
(dense_flipout_45/StatefulPartitionedCall(dense_flipout_45/StatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_15:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:

½
/__inference_sequential_16_layer_call_fn_2274071

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : : *+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_2273697o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:

½
/__inference_sequential_16_layer_call_fn_2274109

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : : *+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_2273867o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
£
¿
/__inference_sequential_16_layer_call_fn_2273941
input_15
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : : *+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_2273867o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_15:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
	
Ú
2__inference_dense_flipout_43_layer_call_fn_2274992

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_dense_flipout_43_layer_call_and_return_conditional_losses_2273372o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
¸û

M__inference_dense_flipout_43_layer_call_and_return_conditional_losses_2273372

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_43_sample_deterministic_sample_readvariableop_resource:Ö
Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273341Ú
Õkullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOp¢åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
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
valueB"      W
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
value	B : ¾
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
:*
dtype0Ð
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:¶
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
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
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ï
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
øÿÿÿÿo
)rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
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
value	B	 RÇ
Hrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::q
/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :â
+rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2Shape:output:0Nrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Rrademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:08rademacher/uniform/stateless_random_uniform/alg:output:08rademacher/uniform/stateless_random_uniform/min:output:08rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
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
øÿÿÿÿq
+rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
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
value	B	 RË
Jrademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::s
1rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ï
-rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2concat:output:0Prademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Trademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0:rademacher_1/uniform/stateless_random_uniform/alg:output:0:rademacher_1/uniform/stateless_random_uniform/min:output:0:rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¼
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_43_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ª
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB î
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:ë
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      è
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:¶
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ü
ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusíKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ê
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÜKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ö
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Ì
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÑkullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273341*
T0*
_output_shapes
: ¨
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:º
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivàKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273341*
T0*
_output_shapes

:´
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÕkullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÑkullbackleibler_independentnormal_constructed_at_dense_flipout_43_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_2273341*
T0*
_output_shapes

:Ì
ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ø
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ª
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ß
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Ä
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOpæ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpÙ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2Ê
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_43/sample/Deterministic/sample/ReadVariableOp2Ð
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpåKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2¶
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_43/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*µ
serving_default¡
=
input_151
serving_default_input_15:0ÿÿÿÿÿÿÿÿÿD
dense_flipout_450
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:s
Û
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Ú
kernel_posterior_loc
($kernel_posterior_untransformed_scale
kernel_posterior
kernel_prior
bias_posterior_loc
bias_posterior
kernel_posterior_affine
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ú
kernel_posterior_loc
($kernel_posterior_untransformed_scale
kernel_posterior
kernel_prior
bias_posterior_loc
bias_posterior
 kernel_posterior_affine
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
Ú
'kernel_posterior_loc
(($kernel_posterior_untransformed_scale
)kernel_posterior
*kernel_prior
+bias_posterior_loc
,bias_posterior
-kernel_posterior_affine
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer

4iter

5beta_1

6beta_2
	7decay
8learning_ratemzm{m|m}m~m'm(m+mvvvvvv'v(v+v"
	optimizer
_
0
1
2
3
4
5
'6
(7
+8"
trackable_list_wrapper
_
0
1
2
3
4
5
'6
(7
+8"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
2
/__inference_sequential_16_layer_call_fn_2273733
/__inference_sequential_16_layer_call_fn_2274071
/__inference_sequential_16_layer_call_fn_2274109
/__inference_sequential_16_layer_call_fn_2273941À
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
kwonlydefaultsª 
annotationsª *
 
ö2ó
J__inference_sequential_16_layer_call_and_return_conditional_losses_2274524
J__inference_sequential_16_layer_call_and_return_conditional_losses_2274939
J__inference_sequential_16_layer_call_and_return_conditional_losses_2273984
J__inference_sequential_16_layer_call_and_return_conditional_losses_2274027À
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
kwonlydefaultsª 
annotationsª *
 
ÎBË
"__inference__wrapped_model_2273224input_15"
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
annotationsª *
 
,
>serving_default"
signature_map
7:52%dense_flipout_43/kernel_posterior_loc
G:E25dense_flipout_43/kernel_posterior_untransformed_scale
E
?_distribution
@_graph_parents"
_generic_user_object
E
A_distribution
B_graph_parents"
_generic_user_object
1:/2#dense_flipout_43/bias_posterior_loc
E
C_distribution
D_graph_parents"
_generic_user_object
>

E_scale
F_graph_parents"
_generic_user_object
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ü2Ù
2__inference_dense_flipout_43_layer_call_fn_2274992¢
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
annotationsª *
 
÷2ô
M__inference_dense_flipout_43_layer_call_and_return_conditional_losses_2275133¢
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
annotationsª *
 
7:52%dense_flipout_44/kernel_posterior_loc
G:E25dense_flipout_44/kernel_posterior_untransformed_scale
E
L_distribution
M_graph_parents"
_generic_user_object
E
N_distribution
O_graph_parents"
_generic_user_object
1:/2#dense_flipout_44/bias_posterior_loc
E
P_distribution
Q_graph_parents"
_generic_user_object
>

R_scale
S_graph_parents"
_generic_user_object
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
Ü2Ù
2__inference_dense_flipout_44_layer_call_fn_2275149¢
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
annotationsª *
 
÷2ô
M__inference_dense_flipout_44_layer_call_and_return_conditional_losses_2275290¢
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
annotationsª *
 
7:52%dense_flipout_45/kernel_posterior_loc
G:E25dense_flipout_45/kernel_posterior_untransformed_scale
E
Y_distribution
Z_graph_parents"
_generic_user_object
E
[_distribution
\_graph_parents"
_generic_user_object
1:/2#dense_flipout_45/bias_posterior_loc
E
]_distribution
^_graph_parents"
_generic_user_object
>

__scale
`_graph_parents"
_generic_user_object
5
'0
(1
+2"
trackable_list_wrapper
5
'0
(1
+2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
Ü2Ù
2__inference_dense_flipout_45_layer_call_fn_2275306¢
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
annotationsª *
 
÷2ô
M__inference_dense_flipout_45_layer_call_and_return_conditional_losses_2275447¢
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
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÍBÊ
%__inference_signature_wrapper_2274976input_15"
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
annotationsª *
 
H
_loc

E_scale
h_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
2
i_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
<
_loc
j_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
9
_pretransformed_input"
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
H
_loc

R_scale
k_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
2
l_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
<
_loc
m_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
9
_pretransformed_input"
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
H
'_loc

__scale
n_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
2
o_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
<
+_loc
p_graph_parents"
_generic_user_object
 "
trackable_list_wrapper
9
(_pretransformed_input"
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
N
	qtotal
	rcount
s	variables
t	keras_api"
_tf_keras_metric
^
	utotal
	vcount
w
_fn_kwargs
x	variables
y	keras_api"
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
:  (2total
:  (2count
.
q0
r1"
trackable_list_wrapper
-
s	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
u0
v1"
trackable_list_wrapper
-
x	variables"
_generic_user_object
<::2,Adam/dense_flipout_43/kernel_posterior_loc/m
L:J2<Adam/dense_flipout_43/kernel_posterior_untransformed_scale/m
6:42*Adam/dense_flipout_43/bias_posterior_loc/m
<::2,Adam/dense_flipout_44/kernel_posterior_loc/m
L:J2<Adam/dense_flipout_44/kernel_posterior_untransformed_scale/m
6:42*Adam/dense_flipout_44/bias_posterior_loc/m
<::2,Adam/dense_flipout_45/kernel_posterior_loc/m
L:J2<Adam/dense_flipout_45/kernel_posterior_untransformed_scale/m
6:42*Adam/dense_flipout_45/bias_posterior_loc/m
<::2,Adam/dense_flipout_43/kernel_posterior_loc/v
L:J2<Adam/dense_flipout_43/kernel_posterior_untransformed_scale/v
6:42*Adam/dense_flipout_43/bias_posterior_loc/v
<::2,Adam/dense_flipout_44/kernel_posterior_loc/v
L:J2<Adam/dense_flipout_44/kernel_posterior_untransformed_scale/v
6:42*Adam/dense_flipout_44/bias_posterior_loc/v
<::2,Adam/dense_flipout_45/kernel_posterior_loc/v
L:J2<Adam/dense_flipout_45/kernel_posterior_untransformed_scale/v
6:42*Adam/dense_flipout_45/bias_posterior_loc/v
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
Const_5¶
"__inference__wrapped_model_2273224('+1¢.
'¢$
"
input_15ÿÿÿÿÿÿÿÿÿ
ª "Cª@
>
dense_flipout_45*'
dense_flipout_45ÿÿÿÿÿÿÿÿÿÀ
M__inference_dense_flipout_43_layer_call_and_return_conditional_losses_2275133o/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "3¢0

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
2__inference_dense_flipout_43_layer_call_fn_2274992T/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ
M__inference_dense_flipout_44_layer_call_and_return_conditional_losses_2275290o/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "3¢0

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
2__inference_dense_flipout_44_layer_call_fn_2275149T/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ
M__inference_dense_flipout_45_layer_call_and_return_conditional_losses_2275447o('+/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "3¢0

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
2__inference_dense_flipout_45_layer_call_fn_2275306T('+/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿò
J__inference_sequential_16_layer_call_and_return_conditional_losses_2273984£('+9¢6
/¢,
"
input_15ÿÿÿÿÿÿÿÿÿ
p 

 
ª "O¢L

0ÿÿÿÿÿÿÿÿÿ
-*
	
1/0 
	
1/1 
	
1/2 ò
J__inference_sequential_16_layer_call_and_return_conditional_losses_2274027£('+9¢6
/¢,
"
input_15ÿÿÿÿÿÿÿÿÿ
p

 
ª "O¢L

0ÿÿÿÿÿÿÿÿÿ
-*
	
1/0 
	
1/1 
	
1/2 ð
J__inference_sequential_16_layer_call_and_return_conditional_losses_2274524¡('+7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "O¢L

0ÿÿÿÿÿÿÿÿÿ
-*
	
1/0 
	
1/1 
	
1/2 ð
J__inference_sequential_16_layer_call_and_return_conditional_losses_2274939¡('+7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "O¢L

0ÿÿÿÿÿÿÿÿÿ
-*
	
1/0 
	
1/1 
	
1/2 
/__inference_sequential_16_layer_call_fn_2273733l('+9¢6
/¢,
"
input_15ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_16_layer_call_fn_2273941l('+9¢6
/¢,
"
input_15ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_16_layer_call_fn_2274071j('+7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_16_layer_call_fn_2274109j('+7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÅ
%__inference_signature_wrapper_2274976('+=¢:
¢ 
3ª0
.
input_15"
input_15ÿÿÿÿÿÿÿÿÿ"Cª@
>
dense_flipout_45*'
dense_flipout_45ÿÿÿÿÿÿÿÿÿ