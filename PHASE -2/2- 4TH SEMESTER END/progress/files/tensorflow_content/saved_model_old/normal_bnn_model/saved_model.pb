ΟΔ&
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
 "serve*2.8.02v2.8.0-0-g3f878cff5b68Ϋ°%
¦
%dense_flipout_12/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%dense_flipout_12/kernel_posterior_loc

9dense_flipout_12/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp%dense_flipout_12/kernel_posterior_loc*
_output_shapes

:*
dtype0
Ζ
5dense_flipout_12/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75dense_flipout_12/kernel_posterior_untransformed_scale
Ώ
Idense_flipout_12/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp5dense_flipout_12/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

#dense_flipout_12/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#dense_flipout_12/bias_posterior_loc

7dense_flipout_12/bias_posterior_loc/Read/ReadVariableOpReadVariableOp#dense_flipout_12/bias_posterior_loc*
_output_shapes
:*
dtype0
¦
%dense_flipout_13/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%dense_flipout_13/kernel_posterior_loc

9dense_flipout_13/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp%dense_flipout_13/kernel_posterior_loc*
_output_shapes

:*
dtype0
Ζ
5dense_flipout_13/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75dense_flipout_13/kernel_posterior_untransformed_scale
Ώ
Idense_flipout_13/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp5dense_flipout_13/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

#dense_flipout_13/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#dense_flipout_13/bias_posterior_loc

7dense_flipout_13/bias_posterior_loc/Read/ReadVariableOpReadVariableOp#dense_flipout_13/bias_posterior_loc*
_output_shapes
:*
dtype0
¦
%dense_flipout_14/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%dense_flipout_14/kernel_posterior_loc

9dense_flipout_14/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp%dense_flipout_14/kernel_posterior_loc*
_output_shapes

:*
dtype0
Ζ
5dense_flipout_14/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75dense_flipout_14/kernel_posterior_untransformed_scale
Ώ
Idense_flipout_14/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp5dense_flipout_14/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

#dense_flipout_14/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#dense_flipout_14/bias_posterior_loc

7dense_flipout_14/bias_posterior_loc/Read/ReadVariableOpReadVariableOp#dense_flipout_14/bias_posterior_loc*
_output_shapes
:*
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
,Adam/dense_flipout_12/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_12/kernel_posterior_loc/m
­
@Adam/dense_flipout_12/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_12/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_12/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_12/kernel_posterior_untransformed_scale/m
Ν
PAdam/dense_flipout_12/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_12/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_12/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_12/bias_posterior_loc/m
₯
>Adam/dense_flipout_12/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_12/bias_posterior_loc/m*
_output_shapes
:*
dtype0
΄
,Adam/dense_flipout_13/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_13/kernel_posterior_loc/m
­
@Adam/dense_flipout_13/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_13/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_13/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_13/kernel_posterior_untransformed_scale/m
Ν
PAdam/dense_flipout_13/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_13/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_13/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_13/bias_posterior_loc/m
₯
>Adam/dense_flipout_13/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_13/bias_posterior_loc/m*
_output_shapes
:*
dtype0
΄
,Adam/dense_flipout_14/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_14/kernel_posterior_loc/m
­
@Adam/dense_flipout_14/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_14/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_14/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_14/kernel_posterior_untransformed_scale/m
Ν
PAdam/dense_flipout_14/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_14/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_14/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_14/bias_posterior_loc/m
₯
>Adam/dense_flipout_14/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_14/bias_posterior_loc/m*
_output_shapes
:*
dtype0
΄
,Adam/dense_flipout_12/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_12/kernel_posterior_loc/v
­
@Adam/dense_flipout_12/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_12/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_12/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_12/kernel_posterior_untransformed_scale/v
Ν
PAdam/dense_flipout_12/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_12/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_12/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_12/bias_posterior_loc/v
₯
>Adam/dense_flipout_12/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_12/bias_posterior_loc/v*
_output_shapes
:*
dtype0
΄
,Adam/dense_flipout_13/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_13/kernel_posterior_loc/v
­
@Adam/dense_flipout_13/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_13/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_13/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_13/kernel_posterior_untransformed_scale/v
Ν
PAdam/dense_flipout_13/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_13/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_13/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_13/bias_posterior_loc/v
₯
>Adam/dense_flipout_13/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_13/bias_posterior_loc/v*
_output_shapes
:*
dtype0
΄
,Adam/dense_flipout_14/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_14/kernel_posterior_loc/v
­
@Adam/dense_flipout_14/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_14/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Τ
<Adam/dense_flipout_14/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_14/kernel_posterior_untransformed_scale/v
Ν
PAdam/dense_flipout_14/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_14/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_14/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_14/bias_posterior_loc/v
₯
>Adam/dense_flipout_14/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_14/bias_posterior_loc/v*
_output_shapes
:*
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

:*
dtype0*
valueB*    
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

:*
dtype0*
valueB*    
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

:*
dtype0*
valueB*    

NoOpNoOp
ΛL
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*L
valueϊKBχK BπK
Α
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
Ε
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
Ε
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
Ε
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
ς
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
VARIABLE_VALUE%dense_flipout_12/kernel_posterior_locDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
€
VARIABLE_VALUE5dense_flipout_12/kernel_posterior_untransformed_scaleTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
?_distribution
@_graph_parents*
)
A_distribution
B_graph_parents* 
y
VARIABLE_VALUE#dense_flipout_12/bias_posterior_locBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUE%dense_flipout_13/kernel_posterior_locDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
€
VARIABLE_VALUE5dense_flipout_13/kernel_posterior_untransformed_scaleTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
L_distribution
M_graph_parents*
)
N_distribution
O_graph_parents* 
y
VARIABLE_VALUE#dense_flipout_13/bias_posterior_locBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUE%dense_flipout_14/kernel_posterior_locDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
€
VARIABLE_VALUE5dense_flipout_14/kernel_posterior_untransformed_scaleTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
Y_distribution
Z_graph_parents*
)
[_distribution
\_graph_parents* 
y
VARIABLE_VALUE#dense_flipout_14/bias_posterior_locBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUE,Adam/dense_flipout_12/kernel_posterior_loc/m`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_12/kernel_posterior_untransformed_scale/mplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_12/bias_posterior_loc/m^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_13/kernel_posterior_loc/m`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_13/kernel_posterior_untransformed_scale/mplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_13/bias_posterior_loc/m^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_14/kernel_posterior_loc/m`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_14/kernel_posterior_untransformed_scale/mplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_14/bias_posterior_loc/m^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_12/kernel_posterior_loc/v`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_12/kernel_posterior_untransformed_scale/vplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_12/bias_posterior_loc/v^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_13/kernel_posterior_loc/v`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_13/kernel_posterior_untransformed_scale/vplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_13/bias_posterior_loc/v^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_14/kernel_posterior_loc/v`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ηΐ
VARIABLE_VALUE<Adam/dense_flipout_14/kernel_posterior_untransformed_scale/vplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_14/bias_posterior_loc/v^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_5Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_55dense_flipout_12/kernel_posterior_untransformed_scale%dense_flipout_12/kernel_posterior_loc#dense_flipout_12/bias_posterior_locConstConst_15dense_flipout_13/kernel_posterior_untransformed_scale%dense_flipout_13/kernel_posterior_loc#dense_flipout_13/bias_posterior_locConst_2Const_35dense_flipout_14/kernel_posterior_untransformed_scale%dense_flipout_14/kernel_posterior_loc#dense_flipout_14/bias_posterior_locConst_4Const_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_425610
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename9dense_flipout_12/kernel_posterior_loc/Read/ReadVariableOpIdense_flipout_12/kernel_posterior_untransformed_scale/Read/ReadVariableOp7dense_flipout_12/bias_posterior_loc/Read/ReadVariableOp9dense_flipout_13/kernel_posterior_loc/Read/ReadVariableOpIdense_flipout_13/kernel_posterior_untransformed_scale/Read/ReadVariableOp7dense_flipout_13/bias_posterior_loc/Read/ReadVariableOp9dense_flipout_14/kernel_posterior_loc/Read/ReadVariableOpIdense_flipout_14/kernel_posterior_untransformed_scale/Read/ReadVariableOp7dense_flipout_14/bias_posterior_loc/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp@Adam/dense_flipout_12/kernel_posterior_loc/m/Read/ReadVariableOpPAdam/dense_flipout_12/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp>Adam/dense_flipout_12/bias_posterior_loc/m/Read/ReadVariableOp@Adam/dense_flipout_13/kernel_posterior_loc/m/Read/ReadVariableOpPAdam/dense_flipout_13/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp>Adam/dense_flipout_13/bias_posterior_loc/m/Read/ReadVariableOp@Adam/dense_flipout_14/kernel_posterior_loc/m/Read/ReadVariableOpPAdam/dense_flipout_14/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp>Adam/dense_flipout_14/bias_posterior_loc/m/Read/ReadVariableOp@Adam/dense_flipout_12/kernel_posterior_loc/v/Read/ReadVariableOpPAdam/dense_flipout_12/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp>Adam/dense_flipout_12/bias_posterior_loc/v/Read/ReadVariableOp@Adam/dense_flipout_13/kernel_posterior_loc/v/Read/ReadVariableOpPAdam/dense_flipout_13/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp>Adam/dense_flipout_13/bias_posterior_loc/v/Read/ReadVariableOp@Adam/dense_flipout_14/kernel_posterior_loc/v/Read/ReadVariableOpPAdam/dense_flipout_14/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp>Adam/dense_flipout_14/bias_posterior_loc/v/Read/ReadVariableOpConst_6*1
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
GPU 2J 8 *(
f#R!
__inference__traced_save_426217
Έ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename%dense_flipout_12/kernel_posterior_loc5dense_flipout_12/kernel_posterior_untransformed_scale#dense_flipout_12/bias_posterior_loc%dense_flipout_13/kernel_posterior_loc5dense_flipout_13/kernel_posterior_untransformed_scale#dense_flipout_13/bias_posterior_loc%dense_flipout_14/kernel_posterior_loc5dense_flipout_14/kernel_posterior_untransformed_scale#dense_flipout_14/bias_posterior_loc	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1,Adam/dense_flipout_12/kernel_posterior_loc/m<Adam/dense_flipout_12/kernel_posterior_untransformed_scale/m*Adam/dense_flipout_12/bias_posterior_loc/m,Adam/dense_flipout_13/kernel_posterior_loc/m<Adam/dense_flipout_13/kernel_posterior_untransformed_scale/m*Adam/dense_flipout_13/bias_posterior_loc/m,Adam/dense_flipout_14/kernel_posterior_loc/m<Adam/dense_flipout_14/kernel_posterior_untransformed_scale/m*Adam/dense_flipout_14/bias_posterior_loc/m,Adam/dense_flipout_12/kernel_posterior_loc/v<Adam/dense_flipout_12/kernel_posterior_untransformed_scale/v*Adam/dense_flipout_12/bias_posterior_loc/v,Adam/dense_flipout_13/kernel_posterior_loc/v<Adam/dense_flipout_13/kernel_posterior_untransformed_scale/v*Adam/dense_flipout_13/bias_posterior_loc/v,Adam/dense_flipout_14/kernel_posterior_loc/v<Adam/dense_flipout_14/kernel_posterior_untransformed_scale/v*Adam/dense_flipout_14/bias_posterior_loc/v*0
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_426335€ά#

Ύ
H__inference_sequential_6_layer_call_and_return_conditional_losses_424620
input_5)
dense_flipout_12_424580:)
dense_flipout_12_424582:%
dense_flipout_12_424584:
dense_flipout_12_424586
dense_flipout_12_424588)
dense_flipout_13_424592:)
dense_flipout_13_424594:%
dense_flipout_13_424596:
dense_flipout_13_424598
dense_flipout_13_424600)
dense_flipout_14_424604:)
dense_flipout_14_424606:%
dense_flipout_14_424608:
dense_flipout_14_424610
dense_flipout_14_424612
identity

identity_1

identity_2

identity_3’(dense_flipout_12/StatefulPartitionedCall’(dense_flipout_13/StatefulPartitionedCall’(dense_flipout_14/StatefulPartitionedCallγ
(dense_flipout_12/StatefulPartitionedCallStatefulPartitionedCallinput_5dense_flipout_12_424580dense_flipout_12_424582dense_flipout_12_424584dense_flipout_12_424586dense_flipout_12_424588*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_12_layer_call_and_return_conditional_losses_424008
(dense_flipout_13/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_12/StatefulPartitionedCall:output:0dense_flipout_13_424592dense_flipout_13_424594dense_flipout_13_424596dense_flipout_13_424598dense_flipout_13_424600*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_13_layer_call_and_return_conditional_losses_424162
(dense_flipout_14/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_13/StatefulPartitionedCall:output:0dense_flipout_14_424604dense_flipout_14_424606dense_flipout_14_424608dense_flipout_14_424610dense_flipout_14_424612*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_14_layer_call_and_return_conditional_losses_424316
IdentityIdentity1dense_flipout_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity1dense_flipout_12/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_13/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_14/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Η
NoOpNoOp)^dense_flipout_12/StatefulPartitionedCall)^dense_flipout_13/StatefulPartitionedCall)^dense_flipout_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????: : : : :: : : : :: : : : :2T
(dense_flipout_12/StatefulPartitionedCall(dense_flipout_12/StatefulPartitionedCall2T
(dense_flipout_13/StatefulPartitionedCall(dense_flipout_13/StatefulPartitionedCall2T
(dense_flipout_14/StatefulPartitionedCall(dense_flipout_14/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:

»
-__inference_sequential_6_layer_call_fn_424707

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity’StatefulPartitionedCall
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
:?????????: : : *+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_424333o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:

½
H__inference_sequential_6_layer_call_and_return_conditional_losses_424333

inputs)
dense_flipout_12_424009:)
dense_flipout_12_424011:%
dense_flipout_12_424013:
dense_flipout_12_424015
dense_flipout_12_424017)
dense_flipout_13_424163:)
dense_flipout_13_424165:%
dense_flipout_13_424167:
dense_flipout_13_424169
dense_flipout_13_424171)
dense_flipout_14_424317:)
dense_flipout_14_424319:%
dense_flipout_14_424321:
dense_flipout_14_424323
dense_flipout_14_424325
identity

identity_1

identity_2

identity_3’(dense_flipout_12/StatefulPartitionedCall’(dense_flipout_13/StatefulPartitionedCall’(dense_flipout_14/StatefulPartitionedCallβ
(dense_flipout_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_flipout_12_424009dense_flipout_12_424011dense_flipout_12_424013dense_flipout_12_424015dense_flipout_12_424017*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_12_layer_call_and_return_conditional_losses_424008
(dense_flipout_13/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_12/StatefulPartitionedCall:output:0dense_flipout_13_424163dense_flipout_13_424165dense_flipout_13_424167dense_flipout_13_424169dense_flipout_13_424171*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_13_layer_call_and_return_conditional_losses_424162
(dense_flipout_14/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_13/StatefulPartitionedCall:output:0dense_flipout_14_424317dense_flipout_14_424319dense_flipout_14_424321dense_flipout_14_424323dense_flipout_14_424325*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_14_layer_call_and_return_conditional_losses_424316
IdentityIdentity1dense_flipout_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity1dense_flipout_12/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_13/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_14/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Η
NoOpNoOp)^dense_flipout_12/StatefulPartitionedCall)^dense_flipout_13/StatefulPartitionedCall)^dense_flipout_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????: : : : :: : : : :: : : : :2T
(dense_flipout_12/StatefulPartitionedCall(dense_flipout_12/StatefulPartitionedCall2T
(dense_flipout_13/StatefulPartitionedCall(dense_flipout_13/StatefulPartitionedCall2T
(dense_flipout_14/StatefulPartitionedCall(dense_flipout_14/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
ίϊ

L__inference_dense_flipout_12_layer_call_and_return_conditional_losses_424008

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_12_sample_deterministic_sample_readvariableop_resource:Υ
Πkullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423977Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
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
valueB"      W
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
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
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
value	B :P
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
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_12_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Λ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΠkullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423977*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ό
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Πkullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423977*
T0*
_output_shapes

:³
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΠkullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423977*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
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

:
γ
³
$__inference_signature_wrapper_425610
input_5
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity’StatefulPartitionedCallή
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:?????????*+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_423861o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
±
&
!__inference__wrapped_model_423861
input_5^
Lsequential_6_dense_flipout_12_normal_sample_softplus_readvariableop_resource:P
>sequential_6_dense_flipout_12_matmul_1_readvariableop_resource:
sequential_6_dense_flipout_12_independentdeterministic_constructed_at_dense_flipout_12_sample_deterministic_sample_readvariableop_resource:σ
ξsequential_6_dense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423559ψ
σsequential_6_dense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x^
Lsequential_6_dense_flipout_13_normal_sample_softplus_readvariableop_resource:P
>sequential_6_dense_flipout_13_matmul_1_readvariableop_resource:
sequential_6_dense_flipout_13_independentdeterministic_constructed_at_dense_flipout_13_sample_deterministic_sample_readvariableop_resource:σ
ξsequential_6_dense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423695ψ
σsequential_6_dense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x^
Lsequential_6_dense_flipout_14_normal_sample_softplus_readvariableop_resource:P
>sequential_6_dense_flipout_14_matmul_1_readvariableop_resource:
sequential_6_dense_flipout_14_independentdeterministic_constructed_at_dense_flipout_14_sample_deterministic_sample_readvariableop_resource:σ
ξsequential_6_dense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423831ψ
σsequential_6_dense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity’sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOp’sequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’φsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’5sequential_6/dense_flipout_12/MatMul_1/ReadVariableOp’Csequential_6/dense_flipout_12/Normal/sample/Softplus/ReadVariableOp’sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOp’sequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’φsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’5sequential_6/dense_flipout_13/MatMul_1/ReadVariableOp’Csequential_6/dense_flipout_13/Normal/sample/Softplus/ReadVariableOp’sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOp’sequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’φsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’5sequential_6/dense_flipout_14/MatMul_1/ReadVariableOp’Csequential_6/dense_flipout_14/Normal/sample/Softplus/ReadVariableOp}
(sequential_6/dense_flipout_12/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    {
8sequential_6/dense_flipout_12/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Π
Csequential_6/dense_flipout_12/Normal/sample/Softplus/ReadVariableOpReadVariableOpLsequential_6_dense_flipout_12_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Ά
4sequential_6/dense_flipout_12/Normal/sample/SoftplusSoftplusKsequential_6/dense_flipout_12/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:v
1sequential_6/dense_flipout_12/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4α
/sequential_6/dense_flipout_12/Normal/sample/addAddV2:sequential_6/dense_flipout_12/Normal/sample/add/x:output:0Bsequential_6/dense_flipout_12/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
;sequential_6/dense_flipout_12/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      s
1sequential_6/dense_flipout_12/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
?sequential_6/dense_flipout_12/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_6/dense_flipout_12/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_6/dense_flipout_12/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:΅
9sequential_6/dense_flipout_12/Normal/sample/strided_sliceStridedSliceDsequential_6/dense_flipout_12/Normal/sample/shape_as_tensor:output:0Hsequential_6/dense_flipout_12/Normal/sample/strided_slice/stack:output:0Jsequential_6/dense_flipout_12/Normal/sample/strided_slice/stack_1:output:0Jsequential_6/dense_flipout_12/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
=sequential_6/dense_flipout_12/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      u
3sequential_6/dense_flipout_12/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
Asequential_6/dense_flipout_12/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Csequential_6/dense_flipout_12/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Csequential_6/dense_flipout_12/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
;sequential_6/dense_flipout_12/Normal/sample/strided_slice_1StridedSliceFsequential_6/dense_flipout_12/Normal/sample/shape_as_tensor_1:output:0Jsequential_6/dense_flipout_12/Normal/sample/strided_slice_1/stack:output:0Lsequential_6/dense_flipout_12/Normal/sample/strided_slice_1/stack_1:output:0Lsequential_6/dense_flipout_12/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<sequential_6/dense_flipout_12/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
>sequential_6/dense_flipout_12/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB σ
9sequential_6/dense_flipout_12/Normal/sample/BroadcastArgsBroadcastArgsGsequential_6/dense_flipout_12/Normal/sample/BroadcastArgs/s0_1:output:0Bsequential_6/dense_flipout_12/Normal/sample/strided_slice:output:0*
_output_shapes
:ξ
;sequential_6/dense_flipout_12/Normal/sample/BroadcastArgs_1BroadcastArgs>sequential_6/dense_flipout_12/Normal/sample/BroadcastArgs:r0:0Dsequential_6/dense_flipout_12/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
;sequential_6/dense_flipout_12/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:y
7sequential_6/dense_flipout_12/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ά
2sequential_6/dense_flipout_12/Normal/sample/concatConcatV2Dsequential_6/dense_flipout_12/Normal/sample/concat/values_0:output:0@sequential_6/dense_flipout_12/Normal/sample/BroadcastArgs_1:r0:0@sequential_6/dense_flipout_12/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Esequential_6/dense_flipout_12/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gsequential_6/dense_flipout_12/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?δ
Usequential_6/dense_flipout_12/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal;sequential_6/dense_flipout_12/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0ͺ
Dsequential_6/dense_flipout_12/Normal/sample/normal/random_normal/mulMul^sequential_6/dense_flipout_12/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Psequential_6/dense_flipout_12/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
@sequential_6/dense_flipout_12/Normal/sample/normal/random_normalAddV2Hsequential_6/dense_flipout_12/Normal/sample/normal/random_normal/mul:z:0Nsequential_6/dense_flipout_12/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:ή
/sequential_6/dense_flipout_12/Normal/sample/mulMulDsequential_6/dense_flipout_12/Normal/sample/normal/random_normal:z:03sequential_6/dense_flipout_12/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ο
1sequential_6/dense_flipout_12/Normal/sample/add_1AddV23sequential_6/dense_flipout_12/Normal/sample/mul:z:01sequential_6/dense_flipout_12/zeros_like:output:0*
T0*"
_output_shapes
:
9sequential_6/dense_flipout_12/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      β
3sequential_6/dense_flipout_12/Normal/sample/ReshapeReshape5sequential_6/dense_flipout_12/Normal/sample/add_1:z:0Bsequential_6/dense_flipout_12/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:Z
#sequential_6/dense_flipout_12/ShapeShapeinput_5*
T0*
_output_shapes
:{
1sequential_6/dense_flipout_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
3sequential_6/dense_flipout_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????}
3sequential_6/dense_flipout_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
+sequential_6/dense_flipout_12/strided_sliceStridedSlice,sequential_6/dense_flipout_12/Shape:output:0:sequential_6/dense_flipout_12/strided_slice/stack:output:0<sequential_6/dense_flipout_12/strided_slice/stack_1:output:0<sequential_6/dense_flipout_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Isequential_6/dense_flipout_12/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Gsequential_6/dense_flipout_12/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Gsequential_6/dense_flipout_12/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Csequential_6/dense_flipout_12/rademacher/uniform/sanitize_seed/seedRandomUniformIntRsequential_6/dense_flipout_12/rademacher/uniform/sanitize_seed/seed/shape:output:0Psequential_6/dense_flipout_12/rademacher/uniform/sanitize_seed/seed/min:output:0Psequential_6/dense_flipout_12/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Msequential_6/dense_flipout_12/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Msequential_6/dense_flipout_12/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
fsequential_6/dense_flipout_12/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterLsequential_6/dense_flipout_12/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Msequential_6/dense_flipout_12/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :΄
Isequential_6/dense_flipout_12/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2,sequential_6/dense_flipout_12/Shape:output:0lsequential_6/dense_flipout_12/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0psequential_6/dense_flipout_12/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Vsequential_6/dense_flipout_12/rademacher/uniform/stateless_random_uniform/alg:output:0Vsequential_6/dense_flipout_12/rademacher/uniform/stateless_random_uniform/min:output:0Vsequential_6/dense_flipout_12/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	p
.sequential_6/dense_flipout_12/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rς
,sequential_6/dense_flipout_12/rademacher/mulMul7sequential_6/dense_flipout_12/rademacher/mul/x:output:0Rsequential_6/dense_flipout_12/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????p
.sequential_6/dense_flipout_12/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΠ
,sequential_6/dense_flipout_12/rademacher/subSub0sequential_6/dense_flipout_12/rademacher/mul:z:07sequential_6/dense_flipout_12/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????¨
-sequential_6/dense_flipout_12/rademacher/CastCast0sequential_6/dense_flipout_12/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????p
.sequential_6/dense_flipout_12/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :n
,sequential_6/dense_flipout_12/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Λ
(sequential_6/dense_flipout_12/ExpandDims
ExpandDims7sequential_6/dense_flipout_12/ExpandDims/input:output:05sequential_6/dense_flipout_12/ExpandDims/dim:output:0*
T0*
_output_shapes
:k
)sequential_6/dense_flipout_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ϋ
$sequential_6/dense_flipout_12/concatConcatV24sequential_6/dense_flipout_12/strided_slice:output:01sequential_6/dense_flipout_12/ExpandDims:output:02sequential_6/dense_flipout_12/concat/axis:output:0*
N*
T0*
_output_shapes
:
Ksequential_6/dense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Isequential_6/dense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Isequential_6/dense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Esequential_6/dense_flipout_12/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntTsequential_6/dense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Rsequential_6/dense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/min:output:0Rsequential_6/dense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Osequential_6/dense_flipout_12/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Osequential_6/dense_flipout_12/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
hsequential_6/dense_flipout_12/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterNsequential_6/dense_flipout_12/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Osequential_6/dense_flipout_12/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Α
Ksequential_6/dense_flipout_12/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2-sequential_6/dense_flipout_12/concat:output:0nsequential_6/dense_flipout_12/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0rsequential_6/dense_flipout_12/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Xsequential_6/dense_flipout_12/rademacher_1/uniform/stateless_random_uniform/alg:output:0Xsequential_6/dense_flipout_12/rademacher_1/uniform/stateless_random_uniform/min:output:0Xsequential_6/dense_flipout_12/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	r
0sequential_6/dense_flipout_12/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rψ
.sequential_6/dense_flipout_12/rademacher_1/mulMul9sequential_6/dense_flipout_12/rademacher_1/mul/x:output:0Tsequential_6/dense_flipout_12/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????r
0sequential_6/dense_flipout_12/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΦ
.sequential_6/dense_flipout_12/rademacher_1/subSub2sequential_6/dense_flipout_12/rademacher_1/mul:z:09sequential_6/dense_flipout_12/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????¬
/sequential_6/dense_flipout_12/rademacher_1/CastCast2sequential_6/dense_flipout_12/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
!sequential_6/dense_flipout_12/mulMulinput_51sequential_6/dense_flipout_12/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????Ε
$sequential_6/dense_flipout_12/MatMulMatMul%sequential_6/dense_flipout_12/mul:z:0<sequential_6/dense_flipout_12/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????Α
#sequential_6/dense_flipout_12/mul_1Mul.sequential_6/dense_flipout_12/MatMul:product:03sequential_6/dense_flipout_12/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????΄
5sequential_6/dense_flipout_12/MatMul_1/ReadVariableOpReadVariableOp>sequential_6_dense_flipout_12_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ͺ
&sequential_6/dense_flipout_12/MatMul_1MatMulinput_5=sequential_6/dense_flipout_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????·
!sequential_6/dense_flipout_12/addAddV20sequential_6/dense_flipout_12/MatMul_1:product:0'sequential_6/dense_flipout_12/mul_1:z:0*
T0*'
_output_shapes
:?????????­
jsequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Α
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ϋ
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Κ
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_6_dense_flipout_12_independentdeterministic_constructed_at_dense_flipout_12_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Ν
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:Ί
xsequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ρ
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Σ
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Σ
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_sliceStridedSlicesequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/shape_as_tensor:output:0sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack:output:0sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskΗ
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ι
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Λ
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Ν
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ζ
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ΐ
~sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : α
ysequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concatConcatV2sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/values_0:output:0sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/values_2:output:0sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Η
~sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastToBroadcastTosequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOp:value:0sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:?
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Δ
zsequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReshapeReshapesequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastTo:output:0sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:΅
ksequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
esequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/ReshapeReshapesequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/Reshape:output:0tsequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Reshape/shape:output:0*
T0*
_output_shapes
:ω
%sequential_6/dense_flipout_12/BiasAddBiasAdd%sequential_6/dense_flipout_12/add:z:0nsequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
sequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpLsequential_6_dense_flipout_12_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Έ
τsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:·
ρsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4€
οsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ϊsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
λsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogσsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
νsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logξsequential_6_dense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423559*
T0*
_output_shapes
: 
λsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubοsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ρsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:φ
φsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp>sequential_6_dense_flipout_12_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
οsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivώsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ξsequential_6_dense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423559*
T0*
_output_shapes

:
ρsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivσsequential_6_dense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xξsequential_6_dense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423559*
T0*
_output_shapes

:¦
ωsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceσsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0υsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:³
νsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
λsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulφsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ύsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:΅
οsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
νsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulψsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0οsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
νsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ρsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:΅
οsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
νsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulψsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ρsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:
λsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2οsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ρsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:
νsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subοsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0οsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ύ
«sequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???ν
sequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumρsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0΄sequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: g
$sequential_6/dense_flipout_12/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6
"sequential_6/dense_flipout_12/CastCast-sequential_6/dense_flipout_12/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 
%sequential_6/dense_flipout_12/truedivRealDiv’sequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0&sequential_6/dense_flipout_12/Cast:y:0*
T0*
_output_shapes
: 
/sequential_6/dense_flipout_12/divergence_kernelIdentity)sequential_6/dense_flipout_12/truediv:z:0*
T0*
_output_shapes
: }
(sequential_6/dense_flipout_13/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    {
8sequential_6/dense_flipout_13/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Π
Csequential_6/dense_flipout_13/Normal/sample/Softplus/ReadVariableOpReadVariableOpLsequential_6_dense_flipout_13_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Ά
4sequential_6/dense_flipout_13/Normal/sample/SoftplusSoftplusKsequential_6/dense_flipout_13/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:v
1sequential_6/dense_flipout_13/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4α
/sequential_6/dense_flipout_13/Normal/sample/addAddV2:sequential_6/dense_flipout_13/Normal/sample/add/x:output:0Bsequential_6/dense_flipout_13/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
;sequential_6/dense_flipout_13/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      s
1sequential_6/dense_flipout_13/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
?sequential_6/dense_flipout_13/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_6/dense_flipout_13/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_6/dense_flipout_13/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:΅
9sequential_6/dense_flipout_13/Normal/sample/strided_sliceStridedSliceDsequential_6/dense_flipout_13/Normal/sample/shape_as_tensor:output:0Hsequential_6/dense_flipout_13/Normal/sample/strided_slice/stack:output:0Jsequential_6/dense_flipout_13/Normal/sample/strided_slice/stack_1:output:0Jsequential_6/dense_flipout_13/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
=sequential_6/dense_flipout_13/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      u
3sequential_6/dense_flipout_13/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
Asequential_6/dense_flipout_13/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Csequential_6/dense_flipout_13/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Csequential_6/dense_flipout_13/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
;sequential_6/dense_flipout_13/Normal/sample/strided_slice_1StridedSliceFsequential_6/dense_flipout_13/Normal/sample/shape_as_tensor_1:output:0Jsequential_6/dense_flipout_13/Normal/sample/strided_slice_1/stack:output:0Lsequential_6/dense_flipout_13/Normal/sample/strided_slice_1/stack_1:output:0Lsequential_6/dense_flipout_13/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<sequential_6/dense_flipout_13/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
>sequential_6/dense_flipout_13/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB σ
9sequential_6/dense_flipout_13/Normal/sample/BroadcastArgsBroadcastArgsGsequential_6/dense_flipout_13/Normal/sample/BroadcastArgs/s0_1:output:0Bsequential_6/dense_flipout_13/Normal/sample/strided_slice:output:0*
_output_shapes
:ξ
;sequential_6/dense_flipout_13/Normal/sample/BroadcastArgs_1BroadcastArgs>sequential_6/dense_flipout_13/Normal/sample/BroadcastArgs:r0:0Dsequential_6/dense_flipout_13/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
;sequential_6/dense_flipout_13/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:y
7sequential_6/dense_flipout_13/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ά
2sequential_6/dense_flipout_13/Normal/sample/concatConcatV2Dsequential_6/dense_flipout_13/Normal/sample/concat/values_0:output:0@sequential_6/dense_flipout_13/Normal/sample/BroadcastArgs_1:r0:0@sequential_6/dense_flipout_13/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Esequential_6/dense_flipout_13/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gsequential_6/dense_flipout_13/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?δ
Usequential_6/dense_flipout_13/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal;sequential_6/dense_flipout_13/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0ͺ
Dsequential_6/dense_flipout_13/Normal/sample/normal/random_normal/mulMul^sequential_6/dense_flipout_13/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Psequential_6/dense_flipout_13/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
@sequential_6/dense_flipout_13/Normal/sample/normal/random_normalAddV2Hsequential_6/dense_flipout_13/Normal/sample/normal/random_normal/mul:z:0Nsequential_6/dense_flipout_13/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:ή
/sequential_6/dense_flipout_13/Normal/sample/mulMulDsequential_6/dense_flipout_13/Normal/sample/normal/random_normal:z:03sequential_6/dense_flipout_13/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ο
1sequential_6/dense_flipout_13/Normal/sample/add_1AddV23sequential_6/dense_flipout_13/Normal/sample/mul:z:01sequential_6/dense_flipout_13/zeros_like:output:0*
T0*"
_output_shapes
:
9sequential_6/dense_flipout_13/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      β
3sequential_6/dense_flipout_13/Normal/sample/ReshapeReshape5sequential_6/dense_flipout_13/Normal/sample/add_1:z:0Bsequential_6/dense_flipout_13/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
#sequential_6/dense_flipout_13/ShapeShape.sequential_6/dense_flipout_12/BiasAdd:output:0*
T0*
_output_shapes
:{
1sequential_6/dense_flipout_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
3sequential_6/dense_flipout_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????}
3sequential_6/dense_flipout_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
+sequential_6/dense_flipout_13/strided_sliceStridedSlice,sequential_6/dense_flipout_13/Shape:output:0:sequential_6/dense_flipout_13/strided_slice/stack:output:0<sequential_6/dense_flipout_13/strided_slice/stack_1:output:0<sequential_6/dense_flipout_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Isequential_6/dense_flipout_13/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Gsequential_6/dense_flipout_13/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Gsequential_6/dense_flipout_13/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Csequential_6/dense_flipout_13/rademacher/uniform/sanitize_seed/seedRandomUniformIntRsequential_6/dense_flipout_13/rademacher/uniform/sanitize_seed/seed/shape:output:0Psequential_6/dense_flipout_13/rademacher/uniform/sanitize_seed/seed/min:output:0Psequential_6/dense_flipout_13/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Msequential_6/dense_flipout_13/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Msequential_6/dense_flipout_13/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
fsequential_6/dense_flipout_13/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterLsequential_6/dense_flipout_13/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Msequential_6/dense_flipout_13/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :΄
Isequential_6/dense_flipout_13/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2,sequential_6/dense_flipout_13/Shape:output:0lsequential_6/dense_flipout_13/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0psequential_6/dense_flipout_13/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Vsequential_6/dense_flipout_13/rademacher/uniform/stateless_random_uniform/alg:output:0Vsequential_6/dense_flipout_13/rademacher/uniform/stateless_random_uniform/min:output:0Vsequential_6/dense_flipout_13/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	p
.sequential_6/dense_flipout_13/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rς
,sequential_6/dense_flipout_13/rademacher/mulMul7sequential_6/dense_flipout_13/rademacher/mul/x:output:0Rsequential_6/dense_flipout_13/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????p
.sequential_6/dense_flipout_13/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΠ
,sequential_6/dense_flipout_13/rademacher/subSub0sequential_6/dense_flipout_13/rademacher/mul:z:07sequential_6/dense_flipout_13/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????¨
-sequential_6/dense_flipout_13/rademacher/CastCast0sequential_6/dense_flipout_13/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????p
.sequential_6/dense_flipout_13/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :n
,sequential_6/dense_flipout_13/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Λ
(sequential_6/dense_flipout_13/ExpandDims
ExpandDims7sequential_6/dense_flipout_13/ExpandDims/input:output:05sequential_6/dense_flipout_13/ExpandDims/dim:output:0*
T0*
_output_shapes
:k
)sequential_6/dense_flipout_13/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ϋ
$sequential_6/dense_flipout_13/concatConcatV24sequential_6/dense_flipout_13/strided_slice:output:01sequential_6/dense_flipout_13/ExpandDims:output:02sequential_6/dense_flipout_13/concat/axis:output:0*
N*
T0*
_output_shapes
:
Ksequential_6/dense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Isequential_6/dense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Isequential_6/dense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Esequential_6/dense_flipout_13/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntTsequential_6/dense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Rsequential_6/dense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/min:output:0Rsequential_6/dense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Osequential_6/dense_flipout_13/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Osequential_6/dense_flipout_13/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
hsequential_6/dense_flipout_13/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterNsequential_6/dense_flipout_13/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Osequential_6/dense_flipout_13/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Α
Ksequential_6/dense_flipout_13/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2-sequential_6/dense_flipout_13/concat:output:0nsequential_6/dense_flipout_13/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0rsequential_6/dense_flipout_13/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Xsequential_6/dense_flipout_13/rademacher_1/uniform/stateless_random_uniform/alg:output:0Xsequential_6/dense_flipout_13/rademacher_1/uniform/stateless_random_uniform/min:output:0Xsequential_6/dense_flipout_13/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	r
0sequential_6/dense_flipout_13/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rψ
.sequential_6/dense_flipout_13/rademacher_1/mulMul9sequential_6/dense_flipout_13/rademacher_1/mul/x:output:0Tsequential_6/dense_flipout_13/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????r
0sequential_6/dense_flipout_13/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΦ
.sequential_6/dense_flipout_13/rademacher_1/subSub2sequential_6/dense_flipout_13/rademacher_1/mul:z:09sequential_6/dense_flipout_13/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????¬
/sequential_6/dense_flipout_13/rademacher_1/CastCast2sequential_6/dense_flipout_13/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????½
!sequential_6/dense_flipout_13/mulMul.sequential_6/dense_flipout_12/BiasAdd:output:01sequential_6/dense_flipout_13/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????Ε
$sequential_6/dense_flipout_13/MatMulMatMul%sequential_6/dense_flipout_13/mul:z:0<sequential_6/dense_flipout_13/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????Α
#sequential_6/dense_flipout_13/mul_1Mul.sequential_6/dense_flipout_13/MatMul:product:03sequential_6/dense_flipout_13/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????΄
5sequential_6/dense_flipout_13/MatMul_1/ReadVariableOpReadVariableOp>sequential_6_dense_flipout_13_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ρ
&sequential_6/dense_flipout_13/MatMul_1MatMul.sequential_6/dense_flipout_12/BiasAdd:output:0=sequential_6/dense_flipout_13/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????·
!sequential_6/dense_flipout_13/addAddV20sequential_6/dense_flipout_13/MatMul_1:product:0'sequential_6/dense_flipout_13/mul_1:z:0*
T0*'
_output_shapes
:?????????­
jsequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Α
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ϋ
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Κ
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_6_dense_flipout_13_independentdeterministic_constructed_at_dense_flipout_13_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Ν
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:Ί
xsequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ρ
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Σ
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Σ
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_sliceStridedSlicesequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/shape_as_tensor:output:0sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack:output:0sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskΗ
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ι
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Λ
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Ν
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ζ
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ΐ
~sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : α
ysequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concatConcatV2sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/values_0:output:0sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/values_2:output:0sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Η
~sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastToBroadcastTosequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOp:value:0sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:?
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Δ
zsequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReshapeReshapesequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastTo:output:0sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:΅
ksequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
esequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/ReshapeReshapesequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/Reshape:output:0tsequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Reshape/shape:output:0*
T0*
_output_shapes
:ω
%sequential_6/dense_flipout_13/BiasAddBiasAdd%sequential_6/dense_flipout_13/add:z:0nsequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
"sequential_6/dense_flipout_13/ReluRelu.sequential_6/dense_flipout_13/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
sequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpLsequential_6_dense_flipout_13_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Έ
τsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:·
ρsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4€
οsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ϊsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
λsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogσsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
νsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logξsequential_6_dense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423695*
T0*
_output_shapes
: 
λsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubοsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ρsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:φ
φsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp>sequential_6_dense_flipout_13_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
οsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivώsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ξsequential_6_dense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423695*
T0*
_output_shapes

:
ρsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivσsequential_6_dense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xξsequential_6_dense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423695*
T0*
_output_shapes

:¦
ωsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceσsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0υsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:³
νsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
λsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulφsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ύsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:΅
οsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
νsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulψsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0οsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
νsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ρsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:΅
οsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
νsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulψsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ρsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:
λsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2οsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ρsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:
νsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subοsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0οsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ύ
«sequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???ν
sequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumρsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0΄sequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: g
$sequential_6/dense_flipout_13/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6
"sequential_6/dense_flipout_13/CastCast-sequential_6/dense_flipout_13/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 
%sequential_6/dense_flipout_13/truedivRealDiv’sequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0&sequential_6/dense_flipout_13/Cast:y:0*
T0*
_output_shapes
: 
/sequential_6/dense_flipout_13/divergence_kernelIdentity)sequential_6/dense_flipout_13/truediv:z:0*
T0*
_output_shapes
: }
(sequential_6/dense_flipout_14/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    {
8sequential_6/dense_flipout_14/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Π
Csequential_6/dense_flipout_14/Normal/sample/Softplus/ReadVariableOpReadVariableOpLsequential_6_dense_flipout_14_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Ά
4sequential_6/dense_flipout_14/Normal/sample/SoftplusSoftplusKsequential_6/dense_flipout_14/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:v
1sequential_6/dense_flipout_14/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4α
/sequential_6/dense_flipout_14/Normal/sample/addAddV2:sequential_6/dense_flipout_14/Normal/sample/add/x:output:0Bsequential_6/dense_flipout_14/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
;sequential_6/dense_flipout_14/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      s
1sequential_6/dense_flipout_14/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
?sequential_6/dense_flipout_14/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_6/dense_flipout_14/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_6/dense_flipout_14/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:΅
9sequential_6/dense_flipout_14/Normal/sample/strided_sliceStridedSliceDsequential_6/dense_flipout_14/Normal/sample/shape_as_tensor:output:0Hsequential_6/dense_flipout_14/Normal/sample/strided_slice/stack:output:0Jsequential_6/dense_flipout_14/Normal/sample/strided_slice/stack_1:output:0Jsequential_6/dense_flipout_14/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
=sequential_6/dense_flipout_14/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      u
3sequential_6/dense_flipout_14/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
Asequential_6/dense_flipout_14/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Csequential_6/dense_flipout_14/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Csequential_6/dense_flipout_14/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
;sequential_6/dense_flipout_14/Normal/sample/strided_slice_1StridedSliceFsequential_6/dense_flipout_14/Normal/sample/shape_as_tensor_1:output:0Jsequential_6/dense_flipout_14/Normal/sample/strided_slice_1/stack:output:0Lsequential_6/dense_flipout_14/Normal/sample/strided_slice_1/stack_1:output:0Lsequential_6/dense_flipout_14/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<sequential_6/dense_flipout_14/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
>sequential_6/dense_flipout_14/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB σ
9sequential_6/dense_flipout_14/Normal/sample/BroadcastArgsBroadcastArgsGsequential_6/dense_flipout_14/Normal/sample/BroadcastArgs/s0_1:output:0Bsequential_6/dense_flipout_14/Normal/sample/strided_slice:output:0*
_output_shapes
:ξ
;sequential_6/dense_flipout_14/Normal/sample/BroadcastArgs_1BroadcastArgs>sequential_6/dense_flipout_14/Normal/sample/BroadcastArgs:r0:0Dsequential_6/dense_flipout_14/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
;sequential_6/dense_flipout_14/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:y
7sequential_6/dense_flipout_14/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ά
2sequential_6/dense_flipout_14/Normal/sample/concatConcatV2Dsequential_6/dense_flipout_14/Normal/sample/concat/values_0:output:0@sequential_6/dense_flipout_14/Normal/sample/BroadcastArgs_1:r0:0@sequential_6/dense_flipout_14/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Esequential_6/dense_flipout_14/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gsequential_6/dense_flipout_14/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?δ
Usequential_6/dense_flipout_14/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal;sequential_6/dense_flipout_14/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0ͺ
Dsequential_6/dense_flipout_14/Normal/sample/normal/random_normal/mulMul^sequential_6/dense_flipout_14/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Psequential_6/dense_flipout_14/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
@sequential_6/dense_flipout_14/Normal/sample/normal/random_normalAddV2Hsequential_6/dense_flipout_14/Normal/sample/normal/random_normal/mul:z:0Nsequential_6/dense_flipout_14/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:ή
/sequential_6/dense_flipout_14/Normal/sample/mulMulDsequential_6/dense_flipout_14/Normal/sample/normal/random_normal:z:03sequential_6/dense_flipout_14/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ο
1sequential_6/dense_flipout_14/Normal/sample/add_1AddV23sequential_6/dense_flipout_14/Normal/sample/mul:z:01sequential_6/dense_flipout_14/zeros_like:output:0*
T0*"
_output_shapes
:
9sequential_6/dense_flipout_14/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      β
3sequential_6/dense_flipout_14/Normal/sample/ReshapeReshape5sequential_6/dense_flipout_14/Normal/sample/add_1:z:0Bsequential_6/dense_flipout_14/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
#sequential_6/dense_flipout_14/ShapeShape0sequential_6/dense_flipout_13/Relu:activations:0*
T0*
_output_shapes
:{
1sequential_6/dense_flipout_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
3sequential_6/dense_flipout_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????}
3sequential_6/dense_flipout_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
+sequential_6/dense_flipout_14/strided_sliceStridedSlice,sequential_6/dense_flipout_14/Shape:output:0:sequential_6/dense_flipout_14/strided_slice/stack:output:0<sequential_6/dense_flipout_14/strided_slice/stack_1:output:0<sequential_6/dense_flipout_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Isequential_6/dense_flipout_14/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Gsequential_6/dense_flipout_14/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Gsequential_6/dense_flipout_14/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Csequential_6/dense_flipout_14/rademacher/uniform/sanitize_seed/seedRandomUniformIntRsequential_6/dense_flipout_14/rademacher/uniform/sanitize_seed/seed/shape:output:0Psequential_6/dense_flipout_14/rademacher/uniform/sanitize_seed/seed/min:output:0Psequential_6/dense_flipout_14/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Msequential_6/dense_flipout_14/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Msequential_6/dense_flipout_14/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
fsequential_6/dense_flipout_14/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterLsequential_6/dense_flipout_14/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Msequential_6/dense_flipout_14/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :΄
Isequential_6/dense_flipout_14/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2,sequential_6/dense_flipout_14/Shape:output:0lsequential_6/dense_flipout_14/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0psequential_6/dense_flipout_14/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Vsequential_6/dense_flipout_14/rademacher/uniform/stateless_random_uniform/alg:output:0Vsequential_6/dense_flipout_14/rademacher/uniform/stateless_random_uniform/min:output:0Vsequential_6/dense_flipout_14/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	p
.sequential_6/dense_flipout_14/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rς
,sequential_6/dense_flipout_14/rademacher/mulMul7sequential_6/dense_flipout_14/rademacher/mul/x:output:0Rsequential_6/dense_flipout_14/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????p
.sequential_6/dense_flipout_14/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΠ
,sequential_6/dense_flipout_14/rademacher/subSub0sequential_6/dense_flipout_14/rademacher/mul:z:07sequential_6/dense_flipout_14/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????¨
-sequential_6/dense_flipout_14/rademacher/CastCast0sequential_6/dense_flipout_14/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????p
.sequential_6/dense_flipout_14/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :n
,sequential_6/dense_flipout_14/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Λ
(sequential_6/dense_flipout_14/ExpandDims
ExpandDims7sequential_6/dense_flipout_14/ExpandDims/input:output:05sequential_6/dense_flipout_14/ExpandDims/dim:output:0*
T0*
_output_shapes
:k
)sequential_6/dense_flipout_14/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ϋ
$sequential_6/dense_flipout_14/concatConcatV24sequential_6/dense_flipout_14/strided_slice:output:01sequential_6/dense_flipout_14/ExpandDims:output:02sequential_6/dense_flipout_14/concat/axis:output:0*
N*
T0*
_output_shapes
:
Ksequential_6/dense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Isequential_6/dense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
Isequential_6/dense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????
Esequential_6/dense_flipout_14/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntTsequential_6/dense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Rsequential_6/dense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/min:output:0Rsequential_6/dense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Osequential_6/dense_flipout_14/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Osequential_6/dense_flipout_14/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
hsequential_6/dense_flipout_14/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterNsequential_6/dense_flipout_14/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Osequential_6/dense_flipout_14/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Α
Ksequential_6/dense_flipout_14/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2-sequential_6/dense_flipout_14/concat:output:0nsequential_6/dense_flipout_14/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0rsequential_6/dense_flipout_14/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Xsequential_6/dense_flipout_14/rademacher_1/uniform/stateless_random_uniform/alg:output:0Xsequential_6/dense_flipout_14/rademacher_1/uniform/stateless_random_uniform/min:output:0Xsequential_6/dense_flipout_14/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	r
0sequential_6/dense_flipout_14/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rψ
.sequential_6/dense_flipout_14/rademacher_1/mulMul9sequential_6/dense_flipout_14/rademacher_1/mul/x:output:0Tsequential_6/dense_flipout_14/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????r
0sequential_6/dense_flipout_14/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RΦ
.sequential_6/dense_flipout_14/rademacher_1/subSub2sequential_6/dense_flipout_14/rademacher_1/mul:z:09sequential_6/dense_flipout_14/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????¬
/sequential_6/dense_flipout_14/rademacher_1/CastCast2sequential_6/dense_flipout_14/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Ώ
!sequential_6/dense_flipout_14/mulMul0sequential_6/dense_flipout_13/Relu:activations:01sequential_6/dense_flipout_14/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????Ε
$sequential_6/dense_flipout_14/MatMulMatMul%sequential_6/dense_flipout_14/mul:z:0<sequential_6/dense_flipout_14/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????Α
#sequential_6/dense_flipout_14/mul_1Mul.sequential_6/dense_flipout_14/MatMul:product:03sequential_6/dense_flipout_14/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????΄
5sequential_6/dense_flipout_14/MatMul_1/ReadVariableOpReadVariableOp>sequential_6_dense_flipout_14_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Σ
&sequential_6/dense_flipout_14/MatMul_1MatMul0sequential_6/dense_flipout_13/Relu:activations:0=sequential_6/dense_flipout_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????·
!sequential_6/dense_flipout_14/addAddV20sequential_6/dense_flipout_14/MatMul_1:product:0'sequential_6/dense_flipout_14/mul_1:z:0*
T0*'
_output_shapes
:?????????­
jsequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Α
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ϋ
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Κ
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_6_dense_flipout_14_independentdeterministic_constructed_at_dense_flipout_14_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Ν
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:Ί
xsequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ρ
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Σ
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Σ
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_sliceStridedSlicesequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/shape_as_tensor:output:0sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack:output:0sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskΗ
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ι
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Λ
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Ν
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ζ
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ΐ
~sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : α
ysequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concatConcatV2sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/values_0:output:0sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/values_2:output:0sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Η
~sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastToBroadcastTosequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOp:value:0sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:?
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Δ
zsequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReshapeReshapesequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastTo:output:0sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:΅
ksequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
esequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/ReshapeReshapesequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/Reshape:output:0tsequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Reshape/shape:output:0*
T0*
_output_shapes
:ω
%sequential_6/dense_flipout_14/BiasAddBiasAdd%sequential_6/dense_flipout_14/add:z:0nsequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
%sequential_6/dense_flipout_14/SoftmaxSoftmax.sequential_6/dense_flipout_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
sequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpLsequential_6_dense_flipout_14_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0Έ
τsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:·
ρsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4€
οsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ϊsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
λsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogσsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
νsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logξsequential_6_dense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423831*
T0*
_output_shapes
: 
λsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubοsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ρsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:φ
φsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp>sequential_6_dense_flipout_14_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
οsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivώsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ξsequential_6_dense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423831*
T0*
_output_shapes

:
ρsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivσsequential_6_dense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xξsequential_6_dense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_423831*
T0*
_output_shapes

:¦
ωsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceσsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0υsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:³
νsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
λsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulφsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ύsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:΅
οsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
νsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulψsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0οsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
νsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ρsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:΅
οsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
νsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulψsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ρsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:
λsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2οsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ρsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:
νsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subοsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0οsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ύ
«sequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???ν
sequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumρsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0΄sequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: g
$sequential_6/dense_flipout_14/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6
"sequential_6/dense_flipout_14/CastCast-sequential_6/dense_flipout_14/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 
%sequential_6/dense_flipout_14/truedivRealDiv’sequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0&sequential_6/dense_flipout_14/Cast:y:0*
T0*
_output_shapes
: 
/sequential_6/dense_flipout_14/divergence_kernelIdentity)sequential_6/dense_flipout_14/truediv:z:0*
T0*
_output_shapes
: ~
IdentityIdentity/sequential_6/dense_flipout_14/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOp^sequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpχ^sequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp6^sequential_6/dense_flipout_12/MatMul_1/ReadVariableOpD^sequential_6/dense_flipout_12/Normal/sample/Softplus/ReadVariableOp^sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOp^sequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpχ^sequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp6^sequential_6/dense_flipout_13/MatMul_1/ReadVariableOpD^sequential_6/dense_flipout_13/Normal/sample/Softplus/ReadVariableOp^sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOp^sequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpχ^sequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp6^sequential_6/dense_flipout_14/MatMul_1/ReadVariableOpD^sequential_6/dense_flipout_14/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????: : : : :: : : : :: : : : :2
sequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOpsequential_6/dense_flipout_12/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOp2
sequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2ς
φsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpφsequential_6/dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2n
5sequential_6/dense_flipout_12/MatMul_1/ReadVariableOp5sequential_6/dense_flipout_12/MatMul_1/ReadVariableOp2
Csequential_6/dense_flipout_12/Normal/sample/Softplus/ReadVariableOpCsequential_6/dense_flipout_12/Normal/sample/Softplus/ReadVariableOp2
sequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOpsequential_6/dense_flipout_13/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOp2
sequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2ς
φsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpφsequential_6/dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2n
5sequential_6/dense_flipout_13/MatMul_1/ReadVariableOp5sequential_6/dense_flipout_13/MatMul_1/ReadVariableOp2
Csequential_6/dense_flipout_13/Normal/sample/Softplus/ReadVariableOpCsequential_6/dense_flipout_13/Normal/sample/Softplus/ReadVariableOp2
sequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOpsequential_6/dense_flipout_14/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOp2
sequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2ς
φsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpφsequential_6/dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2n
5sequential_6/dense_flipout_14/MatMul_1/ReadVariableOp5sequential_6/dense_flipout_14/MatMul_1/ReadVariableOp2
Csequential_6/dense_flipout_14/Normal/sample/Softplus/ReadVariableOpCsequential_6/dense_flipout_14/Normal/sample/Softplus/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
Έϋ

L__inference_dense_flipout_14_layer_call_and_return_conditional_losses_426080

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_14_sample_deterministic_sample_readvariableop_resource:Υ
Πkullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_426049Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
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
valueB"      W
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
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
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
:?????????*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
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
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_14_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Λ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΠkullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_426049*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ό
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Πkullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_426049*
T0*
_output_shapes

:³
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΠkullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_426049*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:

Ύ
H__inference_sequential_6_layer_call_and_return_conditional_losses_424663
input_5)
dense_flipout_12_424623:)
dense_flipout_12_424625:%
dense_flipout_12_424627:
dense_flipout_12_424629
dense_flipout_12_424631)
dense_flipout_13_424635:)
dense_flipout_13_424637:%
dense_flipout_13_424639:
dense_flipout_13_424641
dense_flipout_13_424643)
dense_flipout_14_424647:)
dense_flipout_14_424649:%
dense_flipout_14_424651:
dense_flipout_14_424653
dense_flipout_14_424655
identity

identity_1

identity_2

identity_3’(dense_flipout_12/StatefulPartitionedCall’(dense_flipout_13/StatefulPartitionedCall’(dense_flipout_14/StatefulPartitionedCallγ
(dense_flipout_12/StatefulPartitionedCallStatefulPartitionedCallinput_5dense_flipout_12_424623dense_flipout_12_424625dense_flipout_12_424627dense_flipout_12_424629dense_flipout_12_424631*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_12_layer_call_and_return_conditional_losses_424008
(dense_flipout_13/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_12/StatefulPartitionedCall:output:0dense_flipout_13_424635dense_flipout_13_424637dense_flipout_13_424639dense_flipout_13_424641dense_flipout_13_424643*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_13_layer_call_and_return_conditional_losses_424162
(dense_flipout_14/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_13/StatefulPartitionedCall:output:0dense_flipout_14_424647dense_flipout_14_424649dense_flipout_14_424651dense_flipout_14_424653dense_flipout_14_424655*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_14_layer_call_and_return_conditional_losses_424316
IdentityIdentity1dense_flipout_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity1dense_flipout_12/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_13/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_14/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Η
NoOpNoOp)^dense_flipout_12/StatefulPartitionedCall)^dense_flipout_13/StatefulPartitionedCall)^dense_flipout_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????: : : : :: : : : :: : : : :2T
(dense_flipout_12/StatefulPartitionedCall(dense_flipout_12/StatefulPartitionedCall2T
(dense_flipout_13/StatefulPartitionedCall(dense_flipout_13/StatefulPartitionedCall2T
(dense_flipout_14/StatefulPartitionedCall(dense_flipout_14/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:

½
H__inference_sequential_6_layer_call_and_return_conditional_losses_424503

inputs)
dense_flipout_12_424463:)
dense_flipout_12_424465:%
dense_flipout_12_424467:
dense_flipout_12_424469
dense_flipout_12_424471)
dense_flipout_13_424475:)
dense_flipout_13_424477:%
dense_flipout_13_424479:
dense_flipout_13_424481
dense_flipout_13_424483)
dense_flipout_14_424487:)
dense_flipout_14_424489:%
dense_flipout_14_424491:
dense_flipout_14_424493
dense_flipout_14_424495
identity

identity_1

identity_2

identity_3’(dense_flipout_12/StatefulPartitionedCall’(dense_flipout_13/StatefulPartitionedCall’(dense_flipout_14/StatefulPartitionedCallβ
(dense_flipout_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_flipout_12_424463dense_flipout_12_424465dense_flipout_12_424467dense_flipout_12_424469dense_flipout_12_424471*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_12_layer_call_and_return_conditional_losses_424008
(dense_flipout_13/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_12/StatefulPartitionedCall:output:0dense_flipout_13_424475dense_flipout_13_424477dense_flipout_13_424479dense_flipout_13_424481dense_flipout_13_424483*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_13_layer_call_and_return_conditional_losses_424162
(dense_flipout_14/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_13/StatefulPartitionedCall:output:0dense_flipout_14_424487dense_flipout_14_424489dense_flipout_14_424491dense_flipout_14_424493dense_flipout_14_424495*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_14_layer_call_and_return_conditional_losses_424316
IdentityIdentity1dense_flipout_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity1dense_flipout_12/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_13/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_14/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Η
NoOpNoOp)^dense_flipout_12/StatefulPartitionedCall)^dense_flipout_13/StatefulPartitionedCall)^dense_flipout_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????: : : : :: : : : :: : : : :2T
(dense_flipout_12/StatefulPartitionedCall(dense_flipout_12/StatefulPartitionedCall2T
(dense_flipout_13/StatefulPartitionedCall(dense_flipout_13/StatefulPartitionedCall2T
(dense_flipout_14/StatefulPartitionedCall(dense_flipout_14/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
±»
"
H__inference_sequential_6_layer_call_and_return_conditional_losses_425159

inputsQ
?dense_flipout_12_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_12_matmul_1_readvariableop_resource:k
]dense_flipout_12_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ζ
αdense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424854λ
ζdense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_13_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_13_matmul_1_readvariableop_resource:k
]dense_flipout_13_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ζ
αdense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424990λ
ζdense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_14_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_14_matmul_1_readvariableop_resource:k
]dense_flipout_14_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ζ
αdense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425126λ
ζdense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1

identity_2

identity_3’Tdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_12/MatMul_1/ReadVariableOp’6dense_flipout_12/Normal/sample/Softplus/ReadVariableOp’Tdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_13/MatMul_1/ReadVariableOp’6dense_flipout_13/Normal/sample/Softplus/ReadVariableOp’Tdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_14/MatMul_1/ReadVariableOp’6dense_flipout_14/Normal/sample/Softplus/ReadVariableOpp
dense_flipout_12/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_12/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_12/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_12_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_12/Normal/sample/SoftplusSoftplus>dense_flipout_12/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_12/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_12/Normal/sample/addAddV2-dense_flipout_12/Normal/sample/add/x:output:05dense_flipout_12/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_12/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_12/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_12/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_12/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_12/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_12/Normal/sample/strided_sliceStridedSlice7dense_flipout_12/Normal/sample/shape_as_tensor:output:0;dense_flipout_12/Normal/sample/strided_slice/stack:output:0=dense_flipout_12/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_12/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_12/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_12/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_12/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_12/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_12/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_12/Normal/sample/strided_slice_1StridedSlice9dense_flipout_12/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_12/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_12/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_12/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_12/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_12/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_12/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_12/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_12/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_12/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_12/Normal/sample/BroadcastArgs:r0:07dense_flipout_12/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_12/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_12/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_12/Normal/sample/concatConcatV27dense_flipout_12/Normal/sample/concat/values_0:output:03dense_flipout_12/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_12/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_12/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_12/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_12/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_12/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_12/Normal/sample/normal/random_normal/mulMulQdense_flipout_12/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_12/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_12/Normal/sample/normal/random_normalAddV2;dense_flipout_12/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_12/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_12/Normal/sample/mulMul7dense_flipout_12/Normal/sample/normal/random_normal:z:0&dense_flipout_12/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_12/Normal/sample/add_1AddV2&dense_flipout_12/Normal/sample/mul:z:0$dense_flipout_12/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_12/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_12/Normal/sample/ReshapeReshape(dense_flipout_12/Normal/sample/add_1:z:05dense_flipout_12/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:L
dense_flipout_12/ShapeShapeinputs*
T0*
_output_shapes
:n
$dense_flipout_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_12/strided_sliceStridedSlicedense_flipout_12/Shape:output:0-dense_flipout_12/strided_slice/stack:output:0/dense_flipout_12/strided_slice/stack_1:output:0/dense_flipout_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_12/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_12/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_12/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_12/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_12/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_12/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_12/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_12/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_12/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_12/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_12/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_12/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_12/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_12/Shape:output:0_dense_flipout_12/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_12/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_12/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_12/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_12/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_12/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_12/rademacher/mulMul*dense_flipout_12/rademacher/mul/x:output:0Edense_flipout_12/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_12/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_12/rademacher/subSub#dense_flipout_12/rademacher/mul:z:0*dense_flipout_12/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_12/rademacher/CastCast#dense_flipout_12/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_12/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_12/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_12/ExpandDims
ExpandDims*dense_flipout_12/ExpandDims/input:output:0(dense_flipout_12/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_12/concatConcatV2'dense_flipout_12/strided_slice:output:0$dense_flipout_12/ExpandDims:output:0%dense_flipout_12/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_12/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_12/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_12/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_12/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_12/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_12/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_12/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_12/concat:output:0adense_flipout_12/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_12/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_12/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_12/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_12/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_12/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_12/rademacher_1/mulMul,dense_flipout_12/rademacher_1/mul/x:output:0Gdense_flipout_12/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_12/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_12/rademacher_1/subSub%dense_flipout_12/rademacher_1/mul:z:0,dense_flipout_12/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_12/rademacher_1/CastCast%dense_flipout_12/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????{
dense_flipout_12/mulMulinputs$dense_flipout_12/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_12/MatMulMatMuldense_flipout_12/mul:z:0/dense_flipout_12/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_12/mul_1Mul!dense_flipout_12/MatMul:product:0&dense_flipout_12/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_12/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_12_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
dense_flipout_12/MatMul_1MatMulinputs0dense_flipout_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_12/addAddV2#dense_flipout_12/MatMul_1:product:0dense_flipout_12/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_12/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_12_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_12/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_12/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_12/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_12/BiasAddBiasAdddense_flipout_12/add:z:0Adense_flipout_12/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_12_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ν
ΰdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logαdense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424854*
T0*
_output_shapes
: Ϋ
ήdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_12_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ο
βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0αdense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424854*
T0*
_output_shapes

:ζ
δdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xαdense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424854*
T0*
_output_shapes

:?
μdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_12/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_12/CastCast dense_flipout_12/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_12/truedivRealDivdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_12/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_12/divergence_kernelIdentitydense_flipout_12/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_13/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_13/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_13/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_13_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_13/Normal/sample/SoftplusSoftplus>dense_flipout_13/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_13/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_13/Normal/sample/addAddV2-dense_flipout_13/Normal/sample/add/x:output:05dense_flipout_13/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_13/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_13/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_13/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_13/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_13/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_13/Normal/sample/strided_sliceStridedSlice7dense_flipout_13/Normal/sample/shape_as_tensor:output:0;dense_flipout_13/Normal/sample/strided_slice/stack:output:0=dense_flipout_13/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_13/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_13/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_13/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_13/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_13/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_13/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_13/Normal/sample/strided_slice_1StridedSlice9dense_flipout_13/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_13/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_13/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_13/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_13/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_13/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_13/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_13/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_13/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_13/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_13/Normal/sample/BroadcastArgs:r0:07dense_flipout_13/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_13/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_13/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_13/Normal/sample/concatConcatV27dense_flipout_13/Normal/sample/concat/values_0:output:03dense_flipout_13/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_13/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_13/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_13/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_13/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_13/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_13/Normal/sample/normal/random_normal/mulMulQdense_flipout_13/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_13/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_13/Normal/sample/normal/random_normalAddV2;dense_flipout_13/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_13/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_13/Normal/sample/mulMul7dense_flipout_13/Normal/sample/normal/random_normal:z:0&dense_flipout_13/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_13/Normal/sample/add_1AddV2&dense_flipout_13/Normal/sample/mul:z:0$dense_flipout_13/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_13/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_13/Normal/sample/ReshapeReshape(dense_flipout_13/Normal/sample/add_1:z:05dense_flipout_13/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:g
dense_flipout_13/ShapeShape!dense_flipout_12/BiasAdd:output:0*
T0*
_output_shapes
:n
$dense_flipout_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_13/strided_sliceStridedSlicedense_flipout_13/Shape:output:0-dense_flipout_13/strided_slice/stack:output:0/dense_flipout_13/strided_slice/stack_1:output:0/dense_flipout_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_13/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_13/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_13/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_13/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_13/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_13/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_13/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_13/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_13/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_13/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_13/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_13/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_13/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_13/Shape:output:0_dense_flipout_13/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_13/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_13/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_13/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_13/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_13/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_13/rademacher/mulMul*dense_flipout_13/rademacher/mul/x:output:0Edense_flipout_13/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_13/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_13/rademacher/subSub#dense_flipout_13/rademacher/mul:z:0*dense_flipout_13/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_13/rademacher/CastCast#dense_flipout_13/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_13/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_13/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_13/ExpandDims
ExpandDims*dense_flipout_13/ExpandDims/input:output:0(dense_flipout_13/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_13/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_13/concatConcatV2'dense_flipout_13/strided_slice:output:0$dense_flipout_13/ExpandDims:output:0%dense_flipout_13/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_13/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_13/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_13/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_13/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_13/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_13/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_13/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_13/concat:output:0adense_flipout_13/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_13/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_13/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_13/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_13/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_13/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_13/rademacher_1/mulMul,dense_flipout_13/rademacher_1/mul/x:output:0Gdense_flipout_13/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_13/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_13/rademacher_1/subSub%dense_flipout_13/rademacher_1/mul:z:0,dense_flipout_13/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_13/rademacher_1/CastCast%dense_flipout_13/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
dense_flipout_13/mulMul!dense_flipout_12/BiasAdd:output:0$dense_flipout_13/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_13/MatMulMatMuldense_flipout_13/mul:z:0/dense_flipout_13/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_13/mul_1Mul!dense_flipout_13/MatMul:product:0&dense_flipout_13/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_13/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_13_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ͺ
dense_flipout_13/MatMul_1MatMul!dense_flipout_12/BiasAdd:output:00dense_flipout_13/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_13/addAddV2#dense_flipout_13/MatMul_1:product:0dense_flipout_13/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_13/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_13_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_13/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_13/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_13/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_13/BiasAddBiasAdddense_flipout_13/add:z:0Adense_flipout_13/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????r
dense_flipout_13/ReluRelu!dense_flipout_13/BiasAdd:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_13_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ν
ΰdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logαdense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424990*
T0*
_output_shapes
: Ϋ
ήdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_13_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ο
βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0αdense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424990*
T0*
_output_shapes

:ζ
δdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xαdense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424990*
T0*
_output_shapes

:?
μdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_13/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_13/CastCast dense_flipout_13/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_13/truedivRealDivdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_13/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_13/divergence_kernelIdentitydense_flipout_13/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_14/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_14/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_14/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_14_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_14/Normal/sample/SoftplusSoftplus>dense_flipout_14/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_14/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_14/Normal/sample/addAddV2-dense_flipout_14/Normal/sample/add/x:output:05dense_flipout_14/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_14/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_14/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_14/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_14/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_14/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_14/Normal/sample/strided_sliceStridedSlice7dense_flipout_14/Normal/sample/shape_as_tensor:output:0;dense_flipout_14/Normal/sample/strided_slice/stack:output:0=dense_flipout_14/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_14/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_14/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_14/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_14/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_14/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_14/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_14/Normal/sample/strided_slice_1StridedSlice9dense_flipout_14/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_14/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_14/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_14/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_14/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_14/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_14/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_14/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_14/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_14/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_14/Normal/sample/BroadcastArgs:r0:07dense_flipout_14/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_14/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_14/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_14/Normal/sample/concatConcatV27dense_flipout_14/Normal/sample/concat/values_0:output:03dense_flipout_14/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_14/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_14/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_14/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_14/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_14/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_14/Normal/sample/normal/random_normal/mulMulQdense_flipout_14/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_14/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_14/Normal/sample/normal/random_normalAddV2;dense_flipout_14/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_14/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_14/Normal/sample/mulMul7dense_flipout_14/Normal/sample/normal/random_normal:z:0&dense_flipout_14/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_14/Normal/sample/add_1AddV2&dense_flipout_14/Normal/sample/mul:z:0$dense_flipout_14/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_14/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_14/Normal/sample/ReshapeReshape(dense_flipout_14/Normal/sample/add_1:z:05dense_flipout_14/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:i
dense_flipout_14/ShapeShape#dense_flipout_13/Relu:activations:0*
T0*
_output_shapes
:n
$dense_flipout_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_14/strided_sliceStridedSlicedense_flipout_14/Shape:output:0-dense_flipout_14/strided_slice/stack:output:0/dense_flipout_14/strided_slice/stack_1:output:0/dense_flipout_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_14/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_14/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_14/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_14/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_14/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_14/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_14/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_14/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_14/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_14/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_14/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_14/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_14/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_14/Shape:output:0_dense_flipout_14/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_14/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_14/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_14/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_14/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_14/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_14/rademacher/mulMul*dense_flipout_14/rademacher/mul/x:output:0Edense_flipout_14/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_14/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_14/rademacher/subSub#dense_flipout_14/rademacher/mul:z:0*dense_flipout_14/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_14/rademacher/CastCast#dense_flipout_14/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_14/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_14/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_14/ExpandDims
ExpandDims*dense_flipout_14/ExpandDims/input:output:0(dense_flipout_14/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_14/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_14/concatConcatV2'dense_flipout_14/strided_slice:output:0$dense_flipout_14/ExpandDims:output:0%dense_flipout_14/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_14/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_14/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_14/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_14/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_14/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_14/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_14/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_14/concat:output:0adense_flipout_14/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_14/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_14/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_14/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_14/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_14/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_14/rademacher_1/mulMul,dense_flipout_14/rademacher_1/mul/x:output:0Gdense_flipout_14/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_14/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_14/rademacher_1/subSub%dense_flipout_14/rademacher_1/mul:z:0,dense_flipout_14/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_14/rademacher_1/CastCast%dense_flipout_14/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
dense_flipout_14/mulMul#dense_flipout_13/Relu:activations:0$dense_flipout_14/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_14/MatMulMatMuldense_flipout_14/mul:z:0/dense_flipout_14/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_14/mul_1Mul!dense_flipout_14/MatMul:product:0&dense_flipout_14/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_14/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_14_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¬
dense_flipout_14/MatMul_1MatMul#dense_flipout_13/Relu:activations:00dense_flipout_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_14/addAddV2#dense_flipout_14/MatMul_1:product:0dense_flipout_14/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_14/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_14_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_14/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_14/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_14/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_14/BiasAddBiasAdddense_flipout_14/add:z:0Adense_flipout_14/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????x
dense_flipout_14/SoftmaxSoftmax!dense_flipout_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_14_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ν
ΰdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logαdense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425126*
T0*
_output_shapes
: Ϋ
ήdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_14_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ο
βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0αdense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425126*
T0*
_output_shapes

:ζ
δdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xαdense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425126*
T0*
_output_shapes

:?
μdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_14/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_14/CastCast dense_flipout_14/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_14/truedivRealDivdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_14/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_14/divergence_kernelIdentitydense_flipout_14/truediv:z:0*
T0*
_output_shapes
: q
IdentityIdentity"dense_flipout_14/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????k

Identity_1Identity+dense_flipout_12/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_2Identity+dense_flipout_13/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_3Identity+dense_flipout_14/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ¬
NoOpNoOpU^dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_12/MatMul_1/ReadVariableOp7^dense_flipout_12/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_13/MatMul_1/ReadVariableOp7^dense_flipout_13/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_14/MatMul_1/ReadVariableOp7^dense_flipout_14/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????: : : : :: : : : :: : : : :2¬
Tdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_12/MatMul_1/ReadVariableOp(dense_flipout_12/MatMul_1/ReadVariableOp2p
6dense_flipout_12/Normal/sample/Softplus/ReadVariableOp6dense_flipout_12/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_13/MatMul_1/ReadVariableOp(dense_flipout_13/MatMul_1/ReadVariableOp2p
6dense_flipout_13/Normal/sample/Softplus/ReadVariableOp6dense_flipout_13/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_14/MatMul_1/ReadVariableOp(dense_flipout_14/MatMul_1/ReadVariableOp2p
6dense_flipout_14/Normal/sample/Softplus/ReadVariableOp6dense_flipout_14/Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
ίϊ

L__inference_dense_flipout_12_layer_call_and_return_conditional_losses_425766

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_12_sample_deterministic_sample_readvariableop_resource:Υ
Πkullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425735Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
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
valueB"      W
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
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
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
value	B :P
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
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_12_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Λ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΠkullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425735*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ό
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Πkullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425735*
T0*
_output_shapes

:³
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΠkullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425735*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_12/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
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

:

»
-__inference_sequential_6_layer_call_fn_424745

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity’StatefulPartitionedCall
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
:?????????: : : *+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_424503o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
Έϋ

L__inference_dense_flipout_14_layer_call_and_return_conditional_losses_424316

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_14_sample_deterministic_sample_readvariableop_resource:Υ
Πkullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424285Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
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
valueB"      W
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
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
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
:?????????*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????R
ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :P
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
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_14_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Λ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΠkullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424285*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ό
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Πkullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424285*
T0*
_output_shapes

:³
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΠkullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424285*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_14/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
³ϋ

L__inference_dense_flipout_13_layer_call_and_return_conditional_losses_424162

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_13_sample_deterministic_sample_readvariableop_resource:Υ
Πkullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424131Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
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
valueB"      W
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
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
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
:?????????*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????R
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
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_13_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Λ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΠkullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424131*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ό
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Πkullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424131*
T0*
_output_shapes

:³
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΠkullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_424131*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
	
Ω
1__inference_dense_flipout_13_layer_call_fn_425782

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_13_layer_call_and_return_conditional_losses_424162o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:

Ό
-__inference_sequential_6_layer_call_fn_424577
input_5
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:?????????: : : *+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_424503o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
§[
Θ
__inference__traced_save_426217
file_prefixD
@savev2_dense_flipout_12_kernel_posterior_loc_read_readvariableopT
Psavev2_dense_flipout_12_kernel_posterior_untransformed_scale_read_readvariableopB
>savev2_dense_flipout_12_bias_posterior_loc_read_readvariableopD
@savev2_dense_flipout_13_kernel_posterior_loc_read_readvariableopT
Psavev2_dense_flipout_13_kernel_posterior_untransformed_scale_read_readvariableopB
>savev2_dense_flipout_13_bias_posterior_loc_read_readvariableopD
@savev2_dense_flipout_14_kernel_posterior_loc_read_readvariableopT
Psavev2_dense_flipout_14_kernel_posterior_untransformed_scale_read_readvariableopB
>savev2_dense_flipout_14_bias_posterior_loc_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopK
Gsavev2_adam_dense_flipout_12_kernel_posterior_loc_m_read_readvariableop[
Wsavev2_adam_dense_flipout_12_kernel_posterior_untransformed_scale_m_read_readvariableopI
Esavev2_adam_dense_flipout_12_bias_posterior_loc_m_read_readvariableopK
Gsavev2_adam_dense_flipout_13_kernel_posterior_loc_m_read_readvariableop[
Wsavev2_adam_dense_flipout_13_kernel_posterior_untransformed_scale_m_read_readvariableopI
Esavev2_adam_dense_flipout_13_bias_posterior_loc_m_read_readvariableopK
Gsavev2_adam_dense_flipout_14_kernel_posterior_loc_m_read_readvariableop[
Wsavev2_adam_dense_flipout_14_kernel_posterior_untransformed_scale_m_read_readvariableopI
Esavev2_adam_dense_flipout_14_bias_posterior_loc_m_read_readvariableopK
Gsavev2_adam_dense_flipout_12_kernel_posterior_loc_v_read_readvariableop[
Wsavev2_adam_dense_flipout_12_kernel_posterior_untransformed_scale_v_read_readvariableopI
Esavev2_adam_dense_flipout_12_bias_posterior_loc_v_read_readvariableopK
Gsavev2_adam_dense_flipout_13_kernel_posterior_loc_v_read_readvariableop[
Wsavev2_adam_dense_flipout_13_kernel_posterior_untransformed_scale_v_read_readvariableopI
Esavev2_adam_dense_flipout_13_bias_posterior_loc_v_read_readvariableopK
Gsavev2_adam_dense_flipout_14_kernel_posterior_loc_v_read_readvariableop[
Wsavev2_adam_dense_flipout_14_kernel_posterior_untransformed_scale_v_read_readvariableopI
Esavev2_adam_dense_flipout_14_bias_posterior_loc_v_read_readvariableop
savev2_const_6

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
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*Θ
valueΎB»%BDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH·
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B  
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0@savev2_dense_flipout_12_kernel_posterior_loc_read_readvariableopPsavev2_dense_flipout_12_kernel_posterior_untransformed_scale_read_readvariableop>savev2_dense_flipout_12_bias_posterior_loc_read_readvariableop@savev2_dense_flipout_13_kernel_posterior_loc_read_readvariableopPsavev2_dense_flipout_13_kernel_posterior_untransformed_scale_read_readvariableop>savev2_dense_flipout_13_bias_posterior_loc_read_readvariableop@savev2_dense_flipout_14_kernel_posterior_loc_read_readvariableopPsavev2_dense_flipout_14_kernel_posterior_untransformed_scale_read_readvariableop>savev2_dense_flipout_14_bias_posterior_loc_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopGsavev2_adam_dense_flipout_12_kernel_posterior_loc_m_read_readvariableopWsavev2_adam_dense_flipout_12_kernel_posterior_untransformed_scale_m_read_readvariableopEsavev2_adam_dense_flipout_12_bias_posterior_loc_m_read_readvariableopGsavev2_adam_dense_flipout_13_kernel_posterior_loc_m_read_readvariableopWsavev2_adam_dense_flipout_13_kernel_posterior_untransformed_scale_m_read_readvariableopEsavev2_adam_dense_flipout_13_bias_posterior_loc_m_read_readvariableopGsavev2_adam_dense_flipout_14_kernel_posterior_loc_m_read_readvariableopWsavev2_adam_dense_flipout_14_kernel_posterior_untransformed_scale_m_read_readvariableopEsavev2_adam_dense_flipout_14_bias_posterior_loc_m_read_readvariableopGsavev2_adam_dense_flipout_12_kernel_posterior_loc_v_read_readvariableopWsavev2_adam_dense_flipout_12_kernel_posterior_untransformed_scale_v_read_readvariableopEsavev2_adam_dense_flipout_12_bias_posterior_loc_v_read_readvariableopGsavev2_adam_dense_flipout_13_kernel_posterior_loc_v_read_readvariableopWsavev2_adam_dense_flipout_13_kernel_posterior_untransformed_scale_v_read_readvariableopEsavev2_adam_dense_flipout_13_bias_posterior_loc_v_read_readvariableopGsavev2_adam_dense_flipout_14_kernel_posterior_loc_v_read_readvariableopWsavev2_adam_dense_flipout_14_kernel_posterior_untransformed_scale_v_read_readvariableopEsavev2_adam_dense_flipout_14_bias_posterior_loc_v_read_readvariableopsavev2_const_6"/device:CPU:0*
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
: :::::::::: : : : : : : : : ::::::::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 	

_output_shapes
::
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

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$  

_output_shapes

:: !

_output_shapes
::$" 

_output_shapes

::$# 

_output_shapes

:: $

_output_shapes
::%

_output_shapes
: 
γ
³
"__inference__traced_restore_426335
file_prefixH
6assignvariableop_dense_flipout_12_kernel_posterior_loc:Z
Hassignvariableop_1_dense_flipout_12_kernel_posterior_untransformed_scale:D
6assignvariableop_2_dense_flipout_12_bias_posterior_loc:J
8assignvariableop_3_dense_flipout_13_kernel_posterior_loc:Z
Hassignvariableop_4_dense_flipout_13_kernel_posterior_untransformed_scale:D
6assignvariableop_5_dense_flipout_13_bias_posterior_loc:J
8assignvariableop_6_dense_flipout_14_kernel_posterior_loc:Z
Hassignvariableop_7_dense_flipout_14_kernel_posterior_untransformed_scale:D
6assignvariableop_8_dense_flipout_14_bias_posterior_loc:&
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: #
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: R
@assignvariableop_18_adam_dense_flipout_12_kernel_posterior_loc_m:b
Passignvariableop_19_adam_dense_flipout_12_kernel_posterior_untransformed_scale_m:L
>assignvariableop_20_adam_dense_flipout_12_bias_posterior_loc_m:R
@assignvariableop_21_adam_dense_flipout_13_kernel_posterior_loc_m:b
Passignvariableop_22_adam_dense_flipout_13_kernel_posterior_untransformed_scale_m:L
>assignvariableop_23_adam_dense_flipout_13_bias_posterior_loc_m:R
@assignvariableop_24_adam_dense_flipout_14_kernel_posterior_loc_m:b
Passignvariableop_25_adam_dense_flipout_14_kernel_posterior_untransformed_scale_m:L
>assignvariableop_26_adam_dense_flipout_14_bias_posterior_loc_m:R
@assignvariableop_27_adam_dense_flipout_12_kernel_posterior_loc_v:b
Passignvariableop_28_adam_dense_flipout_12_kernel_posterior_untransformed_scale_v:L
>assignvariableop_29_adam_dense_flipout_12_bias_posterior_loc_v:R
@assignvariableop_30_adam_dense_flipout_13_kernel_posterior_loc_v:b
Passignvariableop_31_adam_dense_flipout_13_kernel_posterior_untransformed_scale_v:L
>assignvariableop_32_adam_dense_flipout_13_bias_posterior_loc_v:R
@assignvariableop_33_adam_dense_flipout_14_kernel_posterior_loc_v:b
Passignvariableop_34_adam_dense_flipout_14_kernel_posterior_untransformed_scale_v:L
>assignvariableop_35_adam_dense_flipout_14_bias_posterior_loc_v:
identity_37’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_33’AssignVariableOp_34’AssignVariableOp_35’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9’
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*Θ
valueΎB»%BDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHΊ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ϊ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ͺ
_output_shapes
:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOpAssignVariableOp6assignvariableop_dense_flipout_12_kernel_posterior_locIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_1AssignVariableOpHassignvariableop_1_dense_flipout_12_kernel_posterior_untransformed_scaleIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:₯
AssignVariableOp_2AssignVariableOp6assignvariableop_2_dense_flipout_12_bias_posterior_locIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_3AssignVariableOp8assignvariableop_3_dense_flipout_13_kernel_posterior_locIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_4AssignVariableOpHassignvariableop_4_dense_flipout_13_kernel_posterior_untransformed_scaleIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:₯
AssignVariableOp_5AssignVariableOp6assignvariableop_5_dense_flipout_13_bias_posterior_locIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_6AssignVariableOp8assignvariableop_6_dense_flipout_14_kernel_posterior_locIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_7AssignVariableOpHassignvariableop_7_dense_flipout_14_kernel_posterior_untransformed_scaleIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:₯
AssignVariableOp_8AssignVariableOp6assignvariableop_8_dense_flipout_14_bias_posterior_locIdentity_8:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp@assignvariableop_18_adam_dense_flipout_12_kernel_posterior_loc_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_19AssignVariableOpPassignvariableop_19_adam_dense_flipout_12_kernel_posterior_untransformed_scale_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_20AssignVariableOp>assignvariableop_20_adam_dense_flipout_12_bias_posterior_loc_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_dense_flipout_13_kernel_posterior_loc_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_22AssignVariableOpPassignvariableop_22_adam_dense_flipout_13_kernel_posterior_untransformed_scale_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_23AssignVariableOp>assignvariableop_23_adam_dense_flipout_13_bias_posterior_loc_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_dense_flipout_14_kernel_posterior_loc_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_25AssignVariableOpPassignvariableop_25_adam_dense_flipout_14_kernel_posterior_untransformed_scale_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_dense_flipout_14_bias_posterior_loc_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_dense_flipout_12_kernel_posterior_loc_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_28AssignVariableOpPassignvariableop_28_adam_dense_flipout_12_kernel_posterior_untransformed_scale_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_29AssignVariableOp>assignvariableop_29_adam_dense_flipout_12_bias_posterior_loc_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_dense_flipout_13_kernel_posterior_loc_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_31AssignVariableOpPassignvariableop_31_adam_dense_flipout_13_kernel_posterior_untransformed_scale_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_dense_flipout_13_bias_posterior_loc_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_33AssignVariableOp@assignvariableop_33_adam_dense_flipout_14_kernel_posterior_loc_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_34AssignVariableOpPassignvariableop_34_adam_dense_flipout_14_kernel_posterior_untransformed_scale_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:―
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_dense_flipout_14_bias_posterior_loc_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 η
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: Τ
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
±»
"
H__inference_sequential_6_layer_call_and_return_conditional_losses_425573

inputsQ
?dense_flipout_12_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_12_matmul_1_readvariableop_resource:k
]dense_flipout_12_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ζ
αdense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425268λ
ζdense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_13_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_13_matmul_1_readvariableop_resource:k
]dense_flipout_13_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ζ
αdense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425404λ
ζdense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_14_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_14_matmul_1_readvariableop_resource:k
]dense_flipout_14_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ζ
αdense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425540λ
ζdense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1

identity_2

identity_3’Tdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_12/MatMul_1/ReadVariableOp’6dense_flipout_12/Normal/sample/Softplus/ReadVariableOp’Tdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_13/MatMul_1/ReadVariableOp’6dense_flipout_13/Normal/sample/Softplus/ReadVariableOp’Tdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp’φdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ιdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’(dense_flipout_14/MatMul_1/ReadVariableOp’6dense_flipout_14/Normal/sample/Softplus/ReadVariableOpp
dense_flipout_12/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_12/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_12/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_12_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_12/Normal/sample/SoftplusSoftplus>dense_flipout_12/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_12/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_12/Normal/sample/addAddV2-dense_flipout_12/Normal/sample/add/x:output:05dense_flipout_12/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_12/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_12/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_12/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_12/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_12/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_12/Normal/sample/strided_sliceStridedSlice7dense_flipout_12/Normal/sample/shape_as_tensor:output:0;dense_flipout_12/Normal/sample/strided_slice/stack:output:0=dense_flipout_12/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_12/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_12/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_12/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_12/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_12/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_12/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_12/Normal/sample/strided_slice_1StridedSlice9dense_flipout_12/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_12/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_12/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_12/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_12/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_12/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_12/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_12/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_12/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_12/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_12/Normal/sample/BroadcastArgs:r0:07dense_flipout_12/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_12/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_12/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_12/Normal/sample/concatConcatV27dense_flipout_12/Normal/sample/concat/values_0:output:03dense_flipout_12/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_12/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_12/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_12/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_12/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_12/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_12/Normal/sample/normal/random_normal/mulMulQdense_flipout_12/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_12/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_12/Normal/sample/normal/random_normalAddV2;dense_flipout_12/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_12/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_12/Normal/sample/mulMul7dense_flipout_12/Normal/sample/normal/random_normal:z:0&dense_flipout_12/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_12/Normal/sample/add_1AddV2&dense_flipout_12/Normal/sample/mul:z:0$dense_flipout_12/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_12/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_12/Normal/sample/ReshapeReshape(dense_flipout_12/Normal/sample/add_1:z:05dense_flipout_12/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:L
dense_flipout_12/ShapeShapeinputs*
T0*
_output_shapes
:n
$dense_flipout_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_12/strided_sliceStridedSlicedense_flipout_12/Shape:output:0-dense_flipout_12/strided_slice/stack:output:0/dense_flipout_12/strided_slice/stack_1:output:0/dense_flipout_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_12/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_12/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_12/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_12/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_12/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_12/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_12/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_12/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_12/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_12/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_12/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_12/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_12/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_12/Shape:output:0_dense_flipout_12/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_12/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_12/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_12/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_12/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_12/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_12/rademacher/mulMul*dense_flipout_12/rademacher/mul/x:output:0Edense_flipout_12/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_12/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_12/rademacher/subSub#dense_flipout_12/rademacher/mul:z:0*dense_flipout_12/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_12/rademacher/CastCast#dense_flipout_12/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_12/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_12/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_12/ExpandDims
ExpandDims*dense_flipout_12/ExpandDims/input:output:0(dense_flipout_12/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_12/concatConcatV2'dense_flipout_12/strided_slice:output:0$dense_flipout_12/ExpandDims:output:0%dense_flipout_12/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_12/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_12/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_12/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_12/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_12/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_12/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_12/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_12/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_12/concat:output:0adense_flipout_12/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_12/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_12/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_12/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_12/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_12/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_12/rademacher_1/mulMul,dense_flipout_12/rademacher_1/mul/x:output:0Gdense_flipout_12/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_12/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_12/rademacher_1/subSub%dense_flipout_12/rademacher_1/mul:z:0,dense_flipout_12/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_12/rademacher_1/CastCast%dense_flipout_12/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????{
dense_flipout_12/mulMulinputs$dense_flipout_12/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_12/MatMulMatMuldense_flipout_12/mul:z:0/dense_flipout_12/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_12/mul_1Mul!dense_flipout_12/MatMul:product:0&dense_flipout_12/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_12/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_12_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
dense_flipout_12/MatMul_1MatMulinputs0dense_flipout_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_12/addAddV2#dense_flipout_12/MatMul_1:product:0dense_flipout_12/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_12/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_12_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_12/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_12/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_12/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_12/BiasAddBiasAdddense_flipout_12/add:z:0Adense_flipout_12/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_12_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ν
ΰdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logαdense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425268*
T0*
_output_shapes
: Ϋ
ήdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_12_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ο
βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0αdense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425268*
T0*
_output_shapes

:ζ
δdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xαdense_flipout_12_kullbackleibler_independentnormal_constructed_at_dense_flipout_12_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425268*
T0*
_output_shapes

:?
μdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_12/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_12/CastCast dense_flipout_12/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_12/truedivRealDivdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_12/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_12/divergence_kernelIdentitydense_flipout_12/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_13/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_13/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_13/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_13_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_13/Normal/sample/SoftplusSoftplus>dense_flipout_13/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_13/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_13/Normal/sample/addAddV2-dense_flipout_13/Normal/sample/add/x:output:05dense_flipout_13/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_13/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_13/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_13/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_13/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_13/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_13/Normal/sample/strided_sliceStridedSlice7dense_flipout_13/Normal/sample/shape_as_tensor:output:0;dense_flipout_13/Normal/sample/strided_slice/stack:output:0=dense_flipout_13/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_13/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_13/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_13/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_13/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_13/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_13/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_13/Normal/sample/strided_slice_1StridedSlice9dense_flipout_13/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_13/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_13/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_13/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_13/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_13/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_13/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_13/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_13/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_13/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_13/Normal/sample/BroadcastArgs:r0:07dense_flipout_13/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_13/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_13/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_13/Normal/sample/concatConcatV27dense_flipout_13/Normal/sample/concat/values_0:output:03dense_flipout_13/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_13/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_13/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_13/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_13/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_13/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_13/Normal/sample/normal/random_normal/mulMulQdense_flipout_13/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_13/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_13/Normal/sample/normal/random_normalAddV2;dense_flipout_13/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_13/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_13/Normal/sample/mulMul7dense_flipout_13/Normal/sample/normal/random_normal:z:0&dense_flipout_13/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_13/Normal/sample/add_1AddV2&dense_flipout_13/Normal/sample/mul:z:0$dense_flipout_13/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_13/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_13/Normal/sample/ReshapeReshape(dense_flipout_13/Normal/sample/add_1:z:05dense_flipout_13/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:g
dense_flipout_13/ShapeShape!dense_flipout_12/BiasAdd:output:0*
T0*
_output_shapes
:n
$dense_flipout_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_13/strided_sliceStridedSlicedense_flipout_13/Shape:output:0-dense_flipout_13/strided_slice/stack:output:0/dense_flipout_13/strided_slice/stack_1:output:0/dense_flipout_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_13/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_13/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_13/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_13/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_13/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_13/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_13/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_13/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_13/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_13/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_13/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_13/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_13/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_13/Shape:output:0_dense_flipout_13/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_13/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_13/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_13/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_13/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_13/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_13/rademacher/mulMul*dense_flipout_13/rademacher/mul/x:output:0Edense_flipout_13/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_13/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_13/rademacher/subSub#dense_flipout_13/rademacher/mul:z:0*dense_flipout_13/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_13/rademacher/CastCast#dense_flipout_13/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_13/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_13/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_13/ExpandDims
ExpandDims*dense_flipout_13/ExpandDims/input:output:0(dense_flipout_13/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_13/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_13/concatConcatV2'dense_flipout_13/strided_slice:output:0$dense_flipout_13/ExpandDims:output:0%dense_flipout_13/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_13/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_13/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_13/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_13/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_13/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_13/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_13/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_13/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_13/concat:output:0adense_flipout_13/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_13/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_13/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_13/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_13/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_13/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_13/rademacher_1/mulMul,dense_flipout_13/rademacher_1/mul/x:output:0Gdense_flipout_13/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_13/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_13/rademacher_1/subSub%dense_flipout_13/rademacher_1/mul:z:0,dense_flipout_13/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_13/rademacher_1/CastCast%dense_flipout_13/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
dense_flipout_13/mulMul!dense_flipout_12/BiasAdd:output:0$dense_flipout_13/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_13/MatMulMatMuldense_flipout_13/mul:z:0/dense_flipout_13/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_13/mul_1Mul!dense_flipout_13/MatMul:product:0&dense_flipout_13/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_13/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_13_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ͺ
dense_flipout_13/MatMul_1MatMul!dense_flipout_12/BiasAdd:output:00dense_flipout_13/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_13/addAddV2#dense_flipout_13/MatMul_1:product:0dense_flipout_13/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_13/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_13_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_13/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_13/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_13/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_13/BiasAddBiasAdddense_flipout_13/add:z:0Adense_flipout_13/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????r
dense_flipout_13/ReluRelu!dense_flipout_13/BiasAdd:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_13_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ν
ΰdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logαdense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425404*
T0*
_output_shapes
: Ϋ
ήdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_13_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ο
βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0αdense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425404*
T0*
_output_shapes

:ζ
δdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xαdense_flipout_13_kullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425404*
T0*
_output_shapes

:?
μdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_13/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_13/CastCast dense_flipout_13/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_13/truedivRealDivdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_13/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_13/divergence_kernelIdentitydense_flipout_13/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_14/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_14/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ά
6dense_flipout_14/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_14_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_14/Normal/sample/SoftplusSoftplus>dense_flipout_14/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_14/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ί
"dense_flipout_14/Normal/sample/addAddV2-dense_flipout_14/Normal/sample/add/x:output:05dense_flipout_14/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_14/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_14/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_14/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_14/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_14/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:τ
,dense_flipout_14/Normal/sample/strided_sliceStridedSlice7dense_flipout_14/Normal/sample/shape_as_tensor:output:0;dense_flipout_14/Normal/sample/strided_slice/stack:output:0=dense_flipout_14/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_14/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_14/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_14/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_14/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_14/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_14/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
.dense_flipout_14/Normal/sample/strided_slice_1StridedSlice9dense_flipout_14/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_14/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_14/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_14/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_14/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_14/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Μ
,dense_flipout_14/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_14/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_14/Normal/sample/strided_slice:output:0*
_output_shapes
:Η
.dense_flipout_14/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_14/Normal/sample/BroadcastArgs:r0:07dense_flipout_14/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_14/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_14/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_14/Normal/sample/concatConcatV27dense_flipout_14/Normal/sample/concat/values_0:output:03dense_flipout_14/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_14/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_14/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_14/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Κ
Hdense_flipout_14/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_14/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_14/Normal/sample/normal/random_normal/mulMulQdense_flipout_14/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_14/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:ι
3dense_flipout_14/Normal/sample/normal/random_normalAddV2;dense_flipout_14/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_14/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_14/Normal/sample/mulMul7dense_flipout_14/Normal/sample/normal/random_normal:z:0&dense_flipout_14/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_14/Normal/sample/add_1AddV2&dense_flipout_14/Normal/sample/mul:z:0$dense_flipout_14/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_14/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_14/Normal/sample/ReshapeReshape(dense_flipout_14/Normal/sample/add_1:z:05dense_flipout_14/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:i
dense_flipout_14/ShapeShape#dense_flipout_13/Relu:activations:0*
T0*
_output_shapes
:n
$dense_flipout_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????p
&dense_flipout_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:€
dense_flipout_14/strided_sliceStridedSlicedense_flipout_14/Shape:output:0-dense_flipout_14/strided_slice/stack:output:0/dense_flipout_14/strided_slice/stack_1:output:0/dense_flipout_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_14/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_14/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
:dense_flipout_14/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Μ
6dense_flipout_14/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_14/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_14/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_14/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_14/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_14/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rι
Ydense_flipout_14/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_14/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_14/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ω
<dense_flipout_14/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_14/Shape:output:0_dense_flipout_14/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_14/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_14/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_14/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_14/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	c
!dense_flipout_14/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΛ
dense_flipout_14/rademacher/mulMul*dense_flipout_14/rademacher/mul/x:output:0Edense_flipout_14/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????c
!dense_flipout_14/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_14/rademacher/subSub#dense_flipout_14/rademacher/mul:z:0*dense_flipout_14/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????
 dense_flipout_14/rademacher/CastCast#dense_flipout_14/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
!dense_flipout_14/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_14/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : €
dense_flipout_14/ExpandDims
ExpandDims*dense_flipout_14/ExpandDims/input:output:0(dense_flipout_14/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_14/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
dense_flipout_14/concatConcatV2'dense_flipout_14/strided_slice:output:0$dense_flipout_14/ExpandDims:output:0%dense_flipout_14/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
ψ????
<dense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :????Τ
8dense_flipout_14/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_14/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_14/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_14/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rν
[dense_flipout_14/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_14/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_14/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ζ
>dense_flipout_14/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_14/concat:output:0adense_flipout_14/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_14/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_14/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_14/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_14/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:?????????*
dtype0	e
#dense_flipout_14/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RΡ
!dense_flipout_14/rademacher_1/mulMul,dense_flipout_14/rademacher_1/mul/x:output:0Gdense_flipout_14/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????e
#dense_flipout_14/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R―
!dense_flipout_14/rademacher_1/subSub%dense_flipout_14/rademacher_1/mul:z:0,dense_flipout_14/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????
"dense_flipout_14/rademacher_1/CastCast%dense_flipout_14/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
dense_flipout_14/mulMul#dense_flipout_13/Relu:activations:0$dense_flipout_14/rademacher/Cast:y:0*
T0*'
_output_shapes
:?????????
dense_flipout_14/MatMulMatMuldense_flipout_14/mul:z:0/dense_flipout_14/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????
dense_flipout_14/mul_1Mul!dense_flipout_14/MatMul:product:0&dense_flipout_14/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????
(dense_flipout_14/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_14_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¬
dense_flipout_14/MatMul_1MatMul#dense_flipout_13/Relu:activations:00dense_flipout_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_flipout_14/addAddV2#dense_flipout_14/MatMul_1:product:0dense_flipout_14/mul_1:z:0*
T0*'
_output_shapes
:?????????
=dense_flipout_14/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ξ
Tdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_14_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ₯
[dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:₯
[dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Α
Sdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ό
Ldense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ύ
Qdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:€
Sdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_14/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_14/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_14/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_14/BiasAddBiasAdddense_flipout_14/add:z:0Adense_flipout_14/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????x
dense_flipout_14/SoftmaxSoftmax!dense_flipout_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????χ
φdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_14_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ηdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusώdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ͺ
δdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ύ
βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2νdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0υdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ψ
ήdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogζdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ν
ΰdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logαdense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425540*
T0*
_output_shapes
: Ϋ
ήdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubβdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0δdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ά
ιdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_14_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ο
βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivρdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0αdense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425540*
T0*
_output_shapes

:ζ
δdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivζdense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xαdense_flipout_14_kullbackleibler_independentnormal_constructed_at_dense_flipout_14_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425540*
T0*
_output_shapes

:?
μdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceζdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0θdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
ΰdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ξ
ήdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulιdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0πdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @δ
ΰdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulλdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ϊ
ΰdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1δdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ζ
ΰdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulλdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0δdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:έ
ήdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0δdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Ϋ
ΰdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subβdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0βdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:π
dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???Ζ
dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumδdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_14/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ψ6o
dense_flipout_14/CastCast dense_flipout_14/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: χ
dense_flipout_14/truedivRealDivdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_14/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_14/divergence_kernelIdentitydense_flipout_14/truediv:z:0*
T0*
_output_shapes
: q
IdentityIdentity"dense_flipout_14/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????k

Identity_1Identity+dense_flipout_12/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_2Identity+dense_flipout_13/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_3Identity+dense_flipout_14/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ¬
NoOpNoOpU^dense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_12/MatMul_1/ReadVariableOp7^dense_flipout_12/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_13/MatMul_1/ReadVariableOp7^dense_flipout_13/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpχ^dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpκ^dense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_14/MatMul_1/ReadVariableOp7^dense_flipout_14/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????: : : : :: : : : :: : : : :2¬
Tdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_12/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_12/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_12/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_12/MatMul_1/ReadVariableOp(dense_flipout_12/MatMul_1/ReadVariableOp2p
6dense_flipout_12/Normal/sample/Softplus/ReadVariableOp6dense_flipout_12/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_13/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_13/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_13/MatMul_1/ReadVariableOp(dense_flipout_13/MatMul_1/ReadVariableOp2p
6dense_flipout_13/Normal/sample/Softplus/ReadVariableOp6dense_flipout_13/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_14/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ς
φdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpφdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ψ
ιdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpιdense_flipout_14/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_14/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_14/MatMul_1/ReadVariableOp(dense_flipout_14/MatMul_1/ReadVariableOp2p
6dense_flipout_14/Normal/sample/Softplus/ReadVariableOp6dense_flipout_14/Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
	
Ω
1__inference_dense_flipout_12_layer_call_fn_425626

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_12_layer_call_and_return_conditional_losses_424008o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
³ϋ

L__inference_dense_flipout_13_layer_call_and_return_conditional_losses_425923

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_13_sample_deterministic_sample_readvariableop_resource:Υ
Πkullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425892Ϊ
Υkullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1’cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOp’εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp’ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp’MatMul_1/ReadVariableOp’%Normal/sample/Softplus/ReadVariableOp_

zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    ]
Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
%Normal/sample/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0z
Normal/sample/SoftplusSoftplus-Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:X
Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
Normal/sample/addAddV2Normal/sample/add/x:output:0$Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:n
Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      U
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
valueB"      W
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
:*
dtype0Π
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:Ά
"Normal/sample/normal/random_normalAddV2*Normal/sample/normal/random_normal/mul:z:00Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:
Normal/sample/mulMul&Normal/sample/normal/random_normal:z:0Normal/sample/add:z:0*
T0*"
_output_shapes
:u
Normal/sample/add_1AddV2Normal/sample/mul:z:0zeros_like:output:0*
T0*"
_output_shapes
:l
Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Normal/sample/ReshapeReshapeNormal/sample/add_1:z:0$Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:;
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
:?????????*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????R
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:?????????l
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????R
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
:?????????*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:?????????T
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:?????????p
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:?????????k
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????g
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:?????????x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ό
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_13_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:΄
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ͺ
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ξ
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:?
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ’
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:λ
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      θ
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ά
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Reshape:output:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Υ
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ό
ΦKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusνKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Κ
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2άKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0δKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Φ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Λ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogΠkullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425892*
T0*
_output_shapes
: ¨
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ί
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ό
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivΰKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Πkullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425892*
T0*
_output_shapes

:³
ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivΥkullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xΠkullbackleibler_independentnormal_constructed_at_dense_flipout_13_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_425892*
T0*
_output_shapes

:Μ
ΫKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceΥKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ΧKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ίKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ψ
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulΪKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ͺ
ΝKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ΟKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ΡKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ί
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"????ώ???
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumΣKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:?????????Z

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ³
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOpζ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpΩ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :2Κ
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_13/sample/Deterministic/sample/ReadVariableOp2Π
εKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpεKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ά
ΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpΨKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_13/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:

Ό
-__inference_sequential_6_layer_call_fn_424369
input_5
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7
	unknown_8
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:?????????: : : *+
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_424333o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :$ 

_output_shapes

::	

_output_shapes
: :$
 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
	
Ω
1__inference_dense_flipout_14_layer_call_fn_425939

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_14_layer_call_and_return_conditional_losses_424316o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:"ΫL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*³
serving_default
;
input_50
serving_default_input_5:0?????????D
dense_flipout_140
StatefulPartitionedCall:0?????????tensorflow/serving/predict:εr
Ϋ
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
Ϊ
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
Ϊ
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
Ϊ
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
Κ
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
2?
-__inference_sequential_6_layer_call_fn_424369
-__inference_sequential_6_layer_call_fn_424707
-__inference_sequential_6_layer_call_fn_424745
-__inference_sequential_6_layer_call_fn_424577ΐ
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
ξ2λ
H__inference_sequential_6_layer_call_and_return_conditional_losses_425159
H__inference_sequential_6_layer_call_and_return_conditional_losses_425573
H__inference_sequential_6_layer_call_and_return_conditional_losses_424620
H__inference_sequential_6_layer_call_and_return_conditional_losses_424663ΐ
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
ΜBΙ
!__inference__wrapped_model_423861input_5"
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
>serving_default"
signature_map
7:52%dense_flipout_12/kernel_posterior_loc
G:E25dense_flipout_12/kernel_posterior_untransformed_scale
E
?_distribution
@_graph_parents"
_generic_user_object
E
A_distribution
B_graph_parents"
_generic_user_object
1:/2#dense_flipout_12/bias_posterior_loc
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
Ϋ2Ψ
1__inference_dense_flipout_12_layer_call_fn_425626’
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
φ2σ
L__inference_dense_flipout_12_layer_call_and_return_conditional_losses_425766’
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
7:52%dense_flipout_13/kernel_posterior_loc
G:E25dense_flipout_13/kernel_posterior_untransformed_scale
E
L_distribution
M_graph_parents"
_generic_user_object
E
N_distribution
O_graph_parents"
_generic_user_object
1:/2#dense_flipout_13/bias_posterior_loc
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
Ϋ2Ψ
1__inference_dense_flipout_13_layer_call_fn_425782’
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
φ2σ
L__inference_dense_flipout_13_layer_call_and_return_conditional_losses_425923’
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
7:52%dense_flipout_14/kernel_posterior_loc
G:E25dense_flipout_14/kernel_posterior_untransformed_scale
E
Y_distribution
Z_graph_parents"
_generic_user_object
E
[_distribution
\_graph_parents"
_generic_user_object
1:/2#dense_flipout_14/bias_posterior_loc
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
Ϋ2Ψ
1__inference_dense_flipout_14_layer_call_fn_425939’
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
φ2σ
L__inference_dense_flipout_14_layer_call_and_return_conditional_losses_426080’
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
ΛBΘ
$__inference_signature_wrapper_425610input_5"
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
<::2,Adam/dense_flipout_12/kernel_posterior_loc/m
L:J2<Adam/dense_flipout_12/kernel_posterior_untransformed_scale/m
6:42*Adam/dense_flipout_12/bias_posterior_loc/m
<::2,Adam/dense_flipout_13/kernel_posterior_loc/m
L:J2<Adam/dense_flipout_13/kernel_posterior_untransformed_scale/m
6:42*Adam/dense_flipout_13/bias_posterior_loc/m
<::2,Adam/dense_flipout_14/kernel_posterior_loc/m
L:J2<Adam/dense_flipout_14/kernel_posterior_untransformed_scale/m
6:42*Adam/dense_flipout_14/bias_posterior_loc/m
<::2,Adam/dense_flipout_12/kernel_posterior_loc/v
L:J2<Adam/dense_flipout_12/kernel_posterior_untransformed_scale/v
6:42*Adam/dense_flipout_12/bias_posterior_loc/v
<::2,Adam/dense_flipout_13/kernel_posterior_loc/v
L:J2<Adam/dense_flipout_13/kernel_posterior_untransformed_scale/v
6:42*Adam/dense_flipout_13/bias_posterior_loc/v
<::2,Adam/dense_flipout_14/kernel_posterior_loc/v
L:J2<Adam/dense_flipout_14/kernel_posterior_untransformed_scale/v
6:42*Adam/dense_flipout_14/bias_posterior_loc/v
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
Const_5΄
!__inference__wrapped_model_423861('+0’-
&’#
!
input_5?????????
ͺ "Cͺ@
>
dense_flipout_14*'
dense_flipout_14?????????Ώ
L__inference_dense_flipout_12_layer_call_and_return_conditional_losses_425766o/’,
%’"
 
inputs?????????
ͺ "3’0

0?????????

	
1/0 
1__inference_dense_flipout_12_layer_call_fn_425626T/’,
%’"
 
inputs?????????
ͺ "?????????Ώ
L__inference_dense_flipout_13_layer_call_and_return_conditional_losses_425923o/’,
%’"
 
inputs?????????
ͺ "3’0

0?????????

	
1/0 
1__inference_dense_flipout_13_layer_call_fn_425782T/’,
%’"
 
inputs?????????
ͺ "?????????Ώ
L__inference_dense_flipout_14_layer_call_and_return_conditional_losses_426080o('+/’,
%’"
 
inputs?????????
ͺ "3’0

0?????????

	
1/0 
1__inference_dense_flipout_14_layer_call_fn_425939T('+/’,
%’"
 
inputs?????????
ͺ "?????????ο
H__inference_sequential_6_layer_call_and_return_conditional_losses_424620’('+8’5
.’+
!
input_5?????????
p 

 
ͺ "O’L

0?????????
-*
	
1/0 
	
1/1 
	
1/2 ο
H__inference_sequential_6_layer_call_and_return_conditional_losses_424663’('+8’5
.’+
!
input_5?????????
p

 
ͺ "O’L

0?????????
-*
	
1/0 
	
1/1 
	
1/2 ξ
H__inference_sequential_6_layer_call_and_return_conditional_losses_425159‘('+7’4
-’*
 
inputs?????????
p 

 
ͺ "O’L

0?????????
-*
	
1/0 
	
1/1 
	
1/2 ξ
H__inference_sequential_6_layer_call_and_return_conditional_losses_425573‘('+7’4
-’*
 
inputs?????????
p

 
ͺ "O’L

0?????????
-*
	
1/0 
	
1/1 
	
1/2 
-__inference_sequential_6_layer_call_fn_424369k('+8’5
.’+
!
input_5?????????
p 

 
ͺ "?????????
-__inference_sequential_6_layer_call_fn_424577k('+8’5
.’+
!
input_5?????????
p

 
ͺ "?????????
-__inference_sequential_6_layer_call_fn_424707j('+7’4
-’*
 
inputs?????????
p 

 
ͺ "?????????
-__inference_sequential_6_layer_call_fn_424745j('+7’4
-’*
 
inputs?????????
p

 
ͺ "?????????Β
$__inference_signature_wrapper_425610('+;’8
’ 
1ͺ.
,
input_5!
input_5?????????"Cͺ@
>
dense_flipout_14*'
dense_flipout_14?????????