õ¥&
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
 "serve*2.8.02v2.8.0-0-g3f878cff5b68­%
¤
$dense_flipout_3/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$dense_flipout_3/kernel_posterior_loc

8dense_flipout_3/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp$dense_flipout_3/kernel_posterior_loc*
_output_shapes

:*
dtype0
Ä
4dense_flipout_3/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*E
shared_name64dense_flipout_3/kernel_posterior_untransformed_scale
½
Hdense_flipout_3/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp4dense_flipout_3/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

"dense_flipout_3/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"dense_flipout_3/bias_posterior_loc

6dense_flipout_3/bias_posterior_loc/Read/ReadVariableOpReadVariableOp"dense_flipout_3/bias_posterior_loc*
_output_shapes
:*
dtype0
¤
$dense_flipout_4/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$dense_flipout_4/kernel_posterior_loc

8dense_flipout_4/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp$dense_flipout_4/kernel_posterior_loc*
_output_shapes

:*
dtype0
Ä
4dense_flipout_4/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*E
shared_name64dense_flipout_4/kernel_posterior_untransformed_scale
½
Hdense_flipout_4/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp4dense_flipout_4/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

"dense_flipout_4/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"dense_flipout_4/bias_posterior_loc

6dense_flipout_4/bias_posterior_loc/Read/ReadVariableOpReadVariableOp"dense_flipout_4/bias_posterior_loc*
_output_shapes
:*
dtype0
¤
$dense_flipout_5/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$dense_flipout_5/kernel_posterior_loc

8dense_flipout_5/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp$dense_flipout_5/kernel_posterior_loc*
_output_shapes

:*
dtype0
Ä
4dense_flipout_5/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*E
shared_name64dense_flipout_5/kernel_posterior_untransformed_scale
½
Hdense_flipout_5/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp4dense_flipout_5/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

"dense_flipout_5/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"dense_flipout_5/bias_posterior_loc

6dense_flipout_5/bias_posterior_loc/Read/ReadVariableOpReadVariableOp"dense_flipout_5/bias_posterior_loc*
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
²
+Adam/dense_flipout_3/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+Adam/dense_flipout_3/kernel_posterior_loc/m
«
?Adam/dense_flipout_3/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp+Adam/dense_flipout_3/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Ò
;Adam/dense_flipout_3/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*L
shared_name=;Adam/dense_flipout_3/kernel_posterior_untransformed_scale/m
Ë
OAdam/dense_flipout_3/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp;Adam/dense_flipout_3/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
ª
)Adam/dense_flipout_3/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/dense_flipout_3/bias_posterior_loc/m
£
=Adam/dense_flipout_3/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp)Adam/dense_flipout_3/bias_posterior_loc/m*
_output_shapes
:*
dtype0
²
+Adam/dense_flipout_4/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+Adam/dense_flipout_4/kernel_posterior_loc/m
«
?Adam/dense_flipout_4/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp+Adam/dense_flipout_4/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Ò
;Adam/dense_flipout_4/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*L
shared_name=;Adam/dense_flipout_4/kernel_posterior_untransformed_scale/m
Ë
OAdam/dense_flipout_4/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp;Adam/dense_flipout_4/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
ª
)Adam/dense_flipout_4/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/dense_flipout_4/bias_posterior_loc/m
£
=Adam/dense_flipout_4/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp)Adam/dense_flipout_4/bias_posterior_loc/m*
_output_shapes
:*
dtype0
²
+Adam/dense_flipout_5/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+Adam/dense_flipout_5/kernel_posterior_loc/m
«
?Adam/dense_flipout_5/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp+Adam/dense_flipout_5/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Ò
;Adam/dense_flipout_5/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*L
shared_name=;Adam/dense_flipout_5/kernel_posterior_untransformed_scale/m
Ë
OAdam/dense_flipout_5/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp;Adam/dense_flipout_5/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
ª
)Adam/dense_flipout_5/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/dense_flipout_5/bias_posterior_loc/m
£
=Adam/dense_flipout_5/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp)Adam/dense_flipout_5/bias_posterior_loc/m*
_output_shapes
:*
dtype0
²
+Adam/dense_flipout_3/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+Adam/dense_flipout_3/kernel_posterior_loc/v
«
?Adam/dense_flipout_3/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp+Adam/dense_flipout_3/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Ò
;Adam/dense_flipout_3/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*L
shared_name=;Adam/dense_flipout_3/kernel_posterior_untransformed_scale/v
Ë
OAdam/dense_flipout_3/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp;Adam/dense_flipout_3/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
ª
)Adam/dense_flipout_3/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/dense_flipout_3/bias_posterior_loc/v
£
=Adam/dense_flipout_3/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp)Adam/dense_flipout_3/bias_posterior_loc/v*
_output_shapes
:*
dtype0
²
+Adam/dense_flipout_4/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+Adam/dense_flipout_4/kernel_posterior_loc/v
«
?Adam/dense_flipout_4/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp+Adam/dense_flipout_4/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Ò
;Adam/dense_flipout_4/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*L
shared_name=;Adam/dense_flipout_4/kernel_posterior_untransformed_scale/v
Ë
OAdam/dense_flipout_4/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp;Adam/dense_flipout_4/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
ª
)Adam/dense_flipout_4/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/dense_flipout_4/bias_posterior_loc/v
£
=Adam/dense_flipout_4/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp)Adam/dense_flipout_4/bias_posterior_loc/v*
_output_shapes
:*
dtype0
²
+Adam/dense_flipout_5/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+Adam/dense_flipout_5/kernel_posterior_loc/v
«
?Adam/dense_flipout_5/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp+Adam/dense_flipout_5/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Ò
;Adam/dense_flipout_5/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*L
shared_name=;Adam/dense_flipout_5/kernel_posterior_untransformed_scale/v
Ë
OAdam/dense_flipout_5/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp;Adam/dense_flipout_5/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
ª
)Adam/dense_flipout_5/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/dense_flipout_5/bias_posterior_loc/v
£
=Adam/dense_flipout_5/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp)Adam/dense_flipout_5/bias_posterior_loc/v*
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
°L
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*éK
valueßKBÜK BÕK
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
|
VARIABLE_VALUE$dense_flipout_3/kernel_posterior_locDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE4dense_flipout_3/kernel_posterior_untransformed_scaleTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
?_distribution
@_graph_parents*
)
A_distribution
B_graph_parents* 
~x
VARIABLE_VALUE"dense_flipout_3/bias_posterior_locBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
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
|
VARIABLE_VALUE$dense_flipout_4/kernel_posterior_locDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE4dense_flipout_4/kernel_posterior_untransformed_scaleTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
L_distribution
M_graph_parents*
)
N_distribution
O_graph_parents* 
~x
VARIABLE_VALUE"dense_flipout_4/bias_posterior_locBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
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
|
VARIABLE_VALUE$dense_flipout_5/kernel_posterior_locDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE4dense_flipout_5/kernel_posterior_untransformed_scaleTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
Y_distribution
Z_graph_parents*
)
[_distribution
\_graph_parents* 
~x
VARIABLE_VALUE"dense_flipout_5/bias_posterior_locBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
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
¦
VARIABLE_VALUE+Adam/dense_flipout_3/kernel_posterior_loc/m`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Æ¿
VARIABLE_VALUE;Adam/dense_flipout_3/kernel_posterior_untransformed_scale/mplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¢
VARIABLE_VALUE)Adam/dense_flipout_3/bias_posterior_loc/m^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUE+Adam/dense_flipout_4/kernel_posterior_loc/m`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Æ¿
VARIABLE_VALUE;Adam/dense_flipout_4/kernel_posterior_untransformed_scale/mplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¢
VARIABLE_VALUE)Adam/dense_flipout_4/bias_posterior_loc/m^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUE+Adam/dense_flipout_5/kernel_posterior_loc/m`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Æ¿
VARIABLE_VALUE;Adam/dense_flipout_5/kernel_posterior_untransformed_scale/mplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¢
VARIABLE_VALUE)Adam/dense_flipout_5/bias_posterior_loc/m^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUE+Adam/dense_flipout_3/kernel_posterior_loc/v`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Æ¿
VARIABLE_VALUE;Adam/dense_flipout_3/kernel_posterior_untransformed_scale/vplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¢
VARIABLE_VALUE)Adam/dense_flipout_3/bias_posterior_loc/v^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUE+Adam/dense_flipout_4/kernel_posterior_loc/v`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Æ¿
VARIABLE_VALUE;Adam/dense_flipout_4/kernel_posterior_untransformed_scale/vplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¢
VARIABLE_VALUE)Adam/dense_flipout_4/bias_posterior_loc/v^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUE+Adam/dense_flipout_5/kernel_posterior_loc/v`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Æ¿
VARIABLE_VALUE;Adam/dense_flipout_5/kernel_posterior_untransformed_scale/vplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¢
VARIABLE_VALUE)Adam/dense_flipout_5/bias_posterior_loc/v^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_2Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
þ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_24dense_flipout_3/kernel_posterior_untransformed_scale$dense_flipout_3/kernel_posterior_loc"dense_flipout_3/bias_posterior_locConstConst_14dense_flipout_4/kernel_posterior_untransformed_scale$dense_flipout_4/kernel_posterior_loc"dense_flipout_4/bias_posterior_locConst_2Const_34dense_flipout_5/kernel_posterior_untransformed_scale$dense_flipout_5/kernel_posterior_loc"dense_flipout_5/bias_posterior_locConst_4Const_5*
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
GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_219536
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ô
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename8dense_flipout_3/kernel_posterior_loc/Read/ReadVariableOpHdense_flipout_3/kernel_posterior_untransformed_scale/Read/ReadVariableOp6dense_flipout_3/bias_posterior_loc/Read/ReadVariableOp8dense_flipout_4/kernel_posterior_loc/Read/ReadVariableOpHdense_flipout_4/kernel_posterior_untransformed_scale/Read/ReadVariableOp6dense_flipout_4/bias_posterior_loc/Read/ReadVariableOp8dense_flipout_5/kernel_posterior_loc/Read/ReadVariableOpHdense_flipout_5/kernel_posterior_untransformed_scale/Read/ReadVariableOp6dense_flipout_5/bias_posterior_loc/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp?Adam/dense_flipout_3/kernel_posterior_loc/m/Read/ReadVariableOpOAdam/dense_flipout_3/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp=Adam/dense_flipout_3/bias_posterior_loc/m/Read/ReadVariableOp?Adam/dense_flipout_4/kernel_posterior_loc/m/Read/ReadVariableOpOAdam/dense_flipout_4/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp=Adam/dense_flipout_4/bias_posterior_loc/m/Read/ReadVariableOp?Adam/dense_flipout_5/kernel_posterior_loc/m/Read/ReadVariableOpOAdam/dense_flipout_5/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp=Adam/dense_flipout_5/bias_posterior_loc/m/Read/ReadVariableOp?Adam/dense_flipout_3/kernel_posterior_loc/v/Read/ReadVariableOpOAdam/dense_flipout_3/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp=Adam/dense_flipout_3/bias_posterior_loc/v/Read/ReadVariableOp?Adam/dense_flipout_4/kernel_posterior_loc/v/Read/ReadVariableOpOAdam/dense_flipout_4/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp=Adam/dense_flipout_4/bias_posterior_loc/v/Read/ReadVariableOp?Adam/dense_flipout_5/kernel_posterior_loc/v/Read/ReadVariableOpOAdam/dense_flipout_5/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp=Adam/dense_flipout_5/bias_posterior_loc/v/Read/ReadVariableOpConst_6*1
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
__inference__traced_save_220144

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename$dense_flipout_3/kernel_posterior_loc4dense_flipout_3/kernel_posterior_untransformed_scale"dense_flipout_3/bias_posterior_loc$dense_flipout_4/kernel_posterior_loc4dense_flipout_4/kernel_posterior_untransformed_scale"dense_flipout_4/bias_posterior_loc$dense_flipout_5/kernel_posterior_loc4dense_flipout_5/kernel_posterior_untransformed_scale"dense_flipout_5/bias_posterior_loc	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1+Adam/dense_flipout_3/kernel_posterior_loc/m;Adam/dense_flipout_3/kernel_posterior_untransformed_scale/m)Adam/dense_flipout_3/bias_posterior_loc/m+Adam/dense_flipout_4/kernel_posterior_loc/m;Adam/dense_flipout_4/kernel_posterior_untransformed_scale/m)Adam/dense_flipout_4/bias_posterior_loc/m+Adam/dense_flipout_5/kernel_posterior_loc/m;Adam/dense_flipout_5/kernel_posterior_untransformed_scale/m)Adam/dense_flipout_5/bias_posterior_loc/m+Adam/dense_flipout_3/kernel_posterior_loc/v;Adam/dense_flipout_3/kernel_posterior_untransformed_scale/v)Adam/dense_flipout_3/bias_posterior_loc/v+Adam/dense_flipout_4/kernel_posterior_loc/v;Adam/dense_flipout_4/kernel_posterior_untransformed_scale/v)Adam/dense_flipout_4/bias_posterior_loc/v+Adam/dense_flipout_5/kernel_posterior_loc/v;Adam/dense_flipout_5/kernel_posterior_untransformed_scale/v)Adam/dense_flipout_5/bias_posterior_loc/v*0
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
"__inference__traced_restore_220262¼¿#
Êú

K__inference_dense_flipout_3_layer_call_and_return_conditional_losses_219693

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:y
kindependentdeterministic_constructed_at_dense_flipout_3_sample_deterministic_sample_readvariableop_resource:Ô
Ïkullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219662Ù
Ôkullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOp¢äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

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
:ÿÿÿÿÿÿÿÿÿ
KIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :»
qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOpReadVariableOpkindependentdeterministic_constructed_at_dense_flipout_3_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
YIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ±
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ý
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_sliceStridedSlicelIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/shape_as_tensor:output:0pIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack_1:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ©
fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ë
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgsBroadcastArgsoIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:¦
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¡
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Â
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concatConcatV2lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/values_0:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgs:r0:0lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/values_2:output:0hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:è
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastToBroadcastTojIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOp:value:0cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:²
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      å
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReshapeReshapehIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastTo:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:³
FIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/ReshapeReshapedIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/Reshape:output:0UIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0OIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ú
ÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusìKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ç
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ãKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ô
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:É
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÏkullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219662*
T0*
_output_shapes
: ¥
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:¹
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¹
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ïkullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219662*
T0*
_output_shapes

:°
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÔkullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÏkullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219662*
T0*
_output_shapes

:É
ÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¸
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ÞKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @®
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ö
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?°
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:§
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¥
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Þ
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
zKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
: Ã
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
: °
NoOpNoOpc^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOpå^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpØ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2È
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOpbIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOp2Î
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpäKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2´
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
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

»
-__inference_sequential_3_layer_call_fn_218631

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
identity¢StatefulPartitionedCall
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
GPU 2J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_218257o
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
ã
«
H__inference_sequential_3_layer_call_and_return_conditional_losses_218427

inputs(
dense_flipout_3_218387:(
dense_flipout_3_218389:$
dense_flipout_3_218391:
dense_flipout_3_218393
dense_flipout_3_218395(
dense_flipout_4_218399:(
dense_flipout_4_218401:$
dense_flipout_4_218403:
dense_flipout_4_218405
dense_flipout_4_218407(
dense_flipout_5_218411:(
dense_flipout_5_218413:$
dense_flipout_5_218415:
dense_flipout_5_218417
dense_flipout_5_218419
identity

identity_1

identity_2

identity_3¢'dense_flipout_3/StatefulPartitionedCall¢'dense_flipout_4/StatefulPartitionedCall¢'dense_flipout_5/StatefulPartitionedCallÛ
'dense_flipout_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_flipout_3_218387dense_flipout_3_218389dense_flipout_3_218391dense_flipout_3_218393dense_flipout_3_218395*
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_3_layer_call_and_return_conditional_losses_217932
'dense_flipout_4/StatefulPartitionedCallStatefulPartitionedCall0dense_flipout_3/StatefulPartitionedCall:output:0dense_flipout_4_218399dense_flipout_4_218401dense_flipout_4_218403dense_flipout_4_218405dense_flipout_4_218407*
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_4_layer_call_and_return_conditional_losses_218086
'dense_flipout_5/StatefulPartitionedCallStatefulPartitionedCall0dense_flipout_4/StatefulPartitionedCall:output:0dense_flipout_5_218411dense_flipout_5_218413dense_flipout_5_218415dense_flipout_5_218417dense_flipout_5_218419*
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_5_layer_call_and_return_conditional_losses_218240
IdentityIdentity0dense_flipout_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp

Identity_1Identity0dense_flipout_3/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: p

Identity_2Identity0dense_flipout_4/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: p

Identity_3Identity0dense_flipout_5/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Ä
NoOpNoOp(^dense_flipout_3/StatefulPartitionedCall(^dense_flipout_4/StatefulPartitionedCall(^dense_flipout_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2R
'dense_flipout_3/StatefulPartitionedCall'dense_flipout_3/StatefulPartitionedCall2R
'dense_flipout_4/StatefulPartitionedCall'dense_flipout_4/StatefulPartitionedCall2R
'dense_flipout_5/StatefulPartitionedCall'dense_flipout_5/StatefulPartitionedCall:O K
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
	
Ø
0__inference_dense_flipout_5_layer_call_fn_219866

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity¢StatefulPartitionedCall
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_5_layer_call_and_return_conditional_losses_218240o
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
Êú

K__inference_dense_flipout_3_layer_call_and_return_conditional_losses_217932

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:y
kindependentdeterministic_constructed_at_dense_flipout_3_sample_deterministic_sample_readvariableop_resource:Ô
Ïkullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217901Ù
Ôkullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOp¢äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

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
:ÿÿÿÿÿÿÿÿÿ
KIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :»
qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOpReadVariableOpkindependentdeterministic_constructed_at_dense_flipout_3_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
YIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ±
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ý
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_sliceStridedSlicelIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/shape_as_tensor:output:0pIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack_1:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ©
fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ë
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgsBroadcastArgsoIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:¦
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¡
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Â
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concatConcatV2lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/values_0:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgs:r0:0lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/values_2:output:0hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:è
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastToBroadcastTojIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOp:value:0cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:²
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      å
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReshapeReshapehIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastTo:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:³
FIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/ReshapeReshapedIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/Reshape:output:0UIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0OIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ú
ÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusìKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ç
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ãKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ô
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:É
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÏkullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217901*
T0*
_output_shapes
: ¥
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:¹
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¹
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ïkullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217901*
T0*
_output_shapes

:°
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÔkullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÏkullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217901*
T0*
_output_shapes

:É
ÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¸
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ÞKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @®
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ö
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?°
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:§
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¥
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Þ
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
zKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
: Ã
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
: °
NoOpNoOpc^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOpå^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpØ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2È
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOpbIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOp2Î
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpäKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2´
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
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

¼
-__inference_sequential_3_layer_call_fn_218501
input_2
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
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_218427o
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
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2:
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
ñZ
­
__inference__traced_save_220144
file_prefixC
?savev2_dense_flipout_3_kernel_posterior_loc_read_readvariableopS
Osavev2_dense_flipout_3_kernel_posterior_untransformed_scale_read_readvariableopA
=savev2_dense_flipout_3_bias_posterior_loc_read_readvariableopC
?savev2_dense_flipout_4_kernel_posterior_loc_read_readvariableopS
Osavev2_dense_flipout_4_kernel_posterior_untransformed_scale_read_readvariableopA
=savev2_dense_flipout_4_bias_posterior_loc_read_readvariableopC
?savev2_dense_flipout_5_kernel_posterior_loc_read_readvariableopS
Osavev2_dense_flipout_5_kernel_posterior_untransformed_scale_read_readvariableopA
=savev2_dense_flipout_5_bias_posterior_loc_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopJ
Fsavev2_adam_dense_flipout_3_kernel_posterior_loc_m_read_readvariableopZ
Vsavev2_adam_dense_flipout_3_kernel_posterior_untransformed_scale_m_read_readvariableopH
Dsavev2_adam_dense_flipout_3_bias_posterior_loc_m_read_readvariableopJ
Fsavev2_adam_dense_flipout_4_kernel_posterior_loc_m_read_readvariableopZ
Vsavev2_adam_dense_flipout_4_kernel_posterior_untransformed_scale_m_read_readvariableopH
Dsavev2_adam_dense_flipout_4_bias_posterior_loc_m_read_readvariableopJ
Fsavev2_adam_dense_flipout_5_kernel_posterior_loc_m_read_readvariableopZ
Vsavev2_adam_dense_flipout_5_kernel_posterior_untransformed_scale_m_read_readvariableopH
Dsavev2_adam_dense_flipout_5_bias_posterior_loc_m_read_readvariableopJ
Fsavev2_adam_dense_flipout_3_kernel_posterior_loc_v_read_readvariableopZ
Vsavev2_adam_dense_flipout_3_kernel_posterior_untransformed_scale_v_read_readvariableopH
Dsavev2_adam_dense_flipout_3_bias_posterior_loc_v_read_readvariableopJ
Fsavev2_adam_dense_flipout_4_kernel_posterior_loc_v_read_readvariableopZ
Vsavev2_adam_dense_flipout_4_kernel_posterior_untransformed_scale_v_read_readvariableopH
Dsavev2_adam_dense_flipout_4_bias_posterior_loc_v_read_readvariableopJ
Fsavev2_adam_dense_flipout_5_kernel_posterior_loc_v_read_readvariableopZ
Vsavev2_adam_dense_flipout_5_kernel_posterior_untransformed_scale_v_read_readvariableopH
Dsavev2_adam_dense_flipout_5_bias_posterior_loc_v_read_readvariableop
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
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0?savev2_dense_flipout_3_kernel_posterior_loc_read_readvariableopOsavev2_dense_flipout_3_kernel_posterior_untransformed_scale_read_readvariableop=savev2_dense_flipout_3_bias_posterior_loc_read_readvariableop?savev2_dense_flipout_4_kernel_posterior_loc_read_readvariableopOsavev2_dense_flipout_4_kernel_posterior_untransformed_scale_read_readvariableop=savev2_dense_flipout_4_bias_posterior_loc_read_readvariableop?savev2_dense_flipout_5_kernel_posterior_loc_read_readvariableopOsavev2_dense_flipout_5_kernel_posterior_untransformed_scale_read_readvariableop=savev2_dense_flipout_5_bias_posterior_loc_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopFsavev2_adam_dense_flipout_3_kernel_posterior_loc_m_read_readvariableopVsavev2_adam_dense_flipout_3_kernel_posterior_untransformed_scale_m_read_readvariableopDsavev2_adam_dense_flipout_3_bias_posterior_loc_m_read_readvariableopFsavev2_adam_dense_flipout_4_kernel_posterior_loc_m_read_readvariableopVsavev2_adam_dense_flipout_4_kernel_posterior_untransformed_scale_m_read_readvariableopDsavev2_adam_dense_flipout_4_bias_posterior_loc_m_read_readvariableopFsavev2_adam_dense_flipout_5_kernel_posterior_loc_m_read_readvariableopVsavev2_adam_dense_flipout_5_kernel_posterior_untransformed_scale_m_read_readvariableopDsavev2_adam_dense_flipout_5_bias_posterior_loc_m_read_readvariableopFsavev2_adam_dense_flipout_3_kernel_posterior_loc_v_read_readvariableopVsavev2_adam_dense_flipout_3_kernel_posterior_untransformed_scale_v_read_readvariableopDsavev2_adam_dense_flipout_3_bias_posterior_loc_v_read_readvariableopFsavev2_adam_dense_flipout_4_kernel_posterior_loc_v_read_readvariableopVsavev2_adam_dense_flipout_4_kernel_posterior_untransformed_scale_v_read_readvariableopDsavev2_adam_dense_flipout_4_bias_posterior_loc_v_read_readvariableopFsavev2_adam_dense_flipout_5_kernel_posterior_loc_v_read_readvariableopVsavev2_adam_dense_flipout_5_kernel_posterior_untransformed_scale_v_read_readvariableopDsavev2_adam_dense_flipout_5_bias_posterior_loc_v_read_readvariableopsavev2_const_6"/device:CPU:0*
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
´
ç!
H__inference_sequential_3_layer_call_and_return_conditional_losses_219499

inputsP
>dense_flipout_3_normal_sample_softplus_readvariableop_resource:B
0dense_flipout_3_matmul_1_readvariableop_resource:j
\dense_flipout_3_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ä
ßdense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219194é
ädense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xP
>dense_flipout_4_normal_sample_softplus_readvariableop_resource:B
0dense_flipout_4_matmul_1_readvariableop_resource:j
\dense_flipout_4_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ä
ßdense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219330é
ädense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xP
>dense_flipout_5_normal_sample_softplus_readvariableop_resource:B
0dense_flipout_5_matmul_1_readvariableop_resource:j
\dense_flipout_5_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ä
ßdense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219466é
ädense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1

identity_2

identity_3¢Sdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ôdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢çdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢'dense_flipout_3/MatMul_1/ReadVariableOp¢5dense_flipout_3/Normal/sample/Softplus/ReadVariableOp¢Sdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ôdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢çdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢'dense_flipout_4/MatMul_1/ReadVariableOp¢5dense_flipout_4/Normal/sample/Softplus/ReadVariableOp¢Sdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ôdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢çdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢'dense_flipout_5/MatMul_1/ReadVariableOp¢5dense_flipout_5/Normal/sample/Softplus/ReadVariableOpo
dense_flipout_3/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    m
*dense_flipout_3/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ´
5dense_flipout_3/Normal/sample/Softplus/ReadVariableOpReadVariableOp>dense_flipout_3_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
&dense_flipout_3/Normal/sample/SoftplusSoftplus=dense_flipout_3/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:h
#dense_flipout_3/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4·
!dense_flipout_3/Normal/sample/addAddV2,dense_flipout_3/Normal/sample/add/x:output:04dense_flipout_3/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:~
-dense_flipout_3/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      e
#dense_flipout_3/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : {
1dense_flipout_3/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_flipout_3/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_flipout_3/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
+dense_flipout_3/Normal/sample/strided_sliceStridedSlice6dense_flipout_3/Normal/sample/shape_as_tensor:output:0:dense_flipout_3/Normal/sample/strided_slice/stack:output:0<dense_flipout_3/Normal/sample/strided_slice/stack_1:output:0<dense_flipout_3/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
/dense_flipout_3/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      g
%dense_flipout_3/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : }
3dense_flipout_3/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_flipout_3/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_flipout_3/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
-dense_flipout_3/Normal/sample/strided_slice_1StridedSlice8dense_flipout_3/Normal/sample/shape_as_tensor_1:output:0<dense_flipout_3/Normal/sample/strided_slice_1/stack:output:0>dense_flipout_3/Normal/sample/strided_slice_1/stack_1:output:0>dense_flipout_3/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskq
.dense_flipout_3/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB s
0dense_flipout_3/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB É
+dense_flipout_3/Normal/sample/BroadcastArgsBroadcastArgs9dense_flipout_3/Normal/sample/BroadcastArgs/s0_1:output:04dense_flipout_3/Normal/sample/strided_slice:output:0*
_output_shapes
:Ä
-dense_flipout_3/Normal/sample/BroadcastArgs_1BroadcastArgs0dense_flipout_3/Normal/sample/BroadcastArgs:r0:06dense_flipout_3/Normal/sample/strided_slice_1:output:0*
_output_shapes
:w
-dense_flipout_3/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:k
)dense_flipout_3/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : þ
$dense_flipout_3/Normal/sample/concatConcatV26dense_flipout_3/Normal/sample/concat/values_0:output:02dense_flipout_3/Normal/sample/BroadcastArgs_1:r0:02dense_flipout_3/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:|
7dense_flipout_3/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
9dense_flipout_3/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
Gdense_flipout_3/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal-dense_flipout_3/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
6dense_flipout_3/Normal/sample/normal/random_normal/mulMulPdense_flipout_3/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Bdense_flipout_3/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:æ
2dense_flipout_3/Normal/sample/normal/random_normalAddV2:dense_flipout_3/Normal/sample/normal/random_normal/mul:z:0@dense_flipout_3/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:´
!dense_flipout_3/Normal/sample/mulMul6dense_flipout_3/Normal/sample/normal/random_normal:z:0%dense_flipout_3/Normal/sample/add:z:0*
T0*"
_output_shapes
:¥
#dense_flipout_3/Normal/sample/add_1AddV2%dense_flipout_3/Normal/sample/mul:z:0#dense_flipout_3/zeros_like:output:0*
T0*"
_output_shapes
:|
+dense_flipout_3/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
%dense_flipout_3/Normal/sample/ReshapeReshape'dense_flipout_3/Normal/sample/add_1:z:04dense_flipout_3/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:K
dense_flipout_3/ShapeShapeinputs*
T0*
_output_shapes
:m
#dense_flipout_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
%dense_flipout_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%dense_flipout_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
dense_flipout_3/strided_sliceStridedSlicedense_flipout_3/Shape:output:0,dense_flipout_3/strided_slice/stack:output:0.dense_flipout_3/strided_slice/stack_1:output:0.dense_flipout_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
;dense_flipout_3/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
9dense_flipout_3/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
9dense_flipout_3/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÈ
5dense_flipout_3/rademacher/uniform/sanitize_seed/seedRandomUniformIntDdense_flipout_3/rademacher/uniform/sanitize_seed/seed/shape:output:0Bdense_flipout_3/rademacher/uniform/sanitize_seed/seed/min:output:0Bdense_flipout_3/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
?dense_flipout_3/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?dense_flipout_3/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rç
Xdense_flipout_3/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter>dense_flipout_3/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
?dense_flipout_3/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ò
;dense_flipout_3/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_3/Shape:output:0^dense_flipout_3/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0bdense_flipout_3/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Hdense_flipout_3/rademacher/uniform/stateless_random_uniform/alg:output:0Hdense_flipout_3/rademacher/uniform/stateless_random_uniform/min:output:0Hdense_flipout_3/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	b
 dense_flipout_3/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÈ
dense_flipout_3/rademacher/mulMul)dense_flipout_3/rademacher/mul/x:output:0Ddense_flipout_3/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_3/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¦
dense_flipout_3/rademacher/subSub"dense_flipout_3/rademacher/mul:z:0)dense_flipout_3/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_3/rademacher/CastCast"dense_flipout_3/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_3/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :`
dense_flipout_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¡
dense_flipout_3/ExpandDims
ExpandDims)dense_flipout_3/ExpandDims/input:output:0'dense_flipout_3/ExpandDims/dim:output:0*
T0*
_output_shapes
:]
dense_flipout_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
dense_flipout_3/concatConcatV2&dense_flipout_3/strided_slice:output:0#dense_flipout_3/ExpandDims:output:0$dense_flipout_3/concat/axis:output:0*
N*
T0*
_output_shapes
:
=dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
;dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
;dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÐ
7dense_flipout_3/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntFdense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Ddense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/min:output:0Ddense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Adense_flipout_3/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Adense_flipout_3/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rë
Zdense_flipout_3/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter@dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Adense_flipout_3/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ß
=dense_flipout_3/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_3/concat:output:0`dense_flipout_3/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ddense_flipout_3/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Jdense_flipout_3/rademacher_1/uniform/stateless_random_uniform/alg:output:0Jdense_flipout_3/rademacher_1/uniform/stateless_random_uniform/min:output:0Jdense_flipout_3/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	d
"dense_flipout_3/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÎ
 dense_flipout_3/rademacher_1/mulMul+dense_flipout_3/rademacher_1/mul/x:output:0Fdense_flipout_3/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"dense_flipout_3/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¬
 dense_flipout_3/rademacher_1/subSub$dense_flipout_3/rademacher_1/mul:z:0+dense_flipout_3/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_flipout_3/rademacher_1/CastCast$dense_flipout_3/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
dense_flipout_3/mulMulinputs#dense_flipout_3/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_3/MatMulMatMuldense_flipout_3/mul:z:0.dense_flipout_3/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_3/mul_1Mul dense_flipout_3/MatMul:product:0%dense_flipout_3/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'dense_flipout_3/MatMul_1/ReadVariableOpReadVariableOp0dense_flipout_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
dense_flipout_3/MatMul_1MatMulinputs/dense_flipout_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_3/addAddV2"dense_flipout_3/MatMul_1:product:0dense_flipout_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
<dense_flipout_3/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¬
bdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ì
Sdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp\dense_flipout_3_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Tdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Jdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ¢
Xdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¤
Zdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¤
Zdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
Rdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice]dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0adense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0cdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0cdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Udense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Wdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ¾
Rdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgs`dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0[dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Tdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Tdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Pdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Kdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2]dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Wdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0]dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Ydense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:»
Pdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo[dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Tdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:£
Rdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
Ldense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeYdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0[dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
=dense_flipout_3/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
7dense_flipout_3/IndependentDeterministic/sample/ReshapeReshapeUdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Fdense_flipout_3/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:¯
dense_flipout_3/BiasAddBiasAdddense_flipout_3/add:z:0@dense_flipout_3/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dense_flipout_3/ReluRelu dense_flipout_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
ôdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp>dense_flipout_3_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ådense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusüdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:¨
âdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4÷
àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ëdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ódense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ô
Üdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogädense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:é
Þdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logßdense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219194*
T0*
_output_shapes
: Õ
Üdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubàdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0âdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ù
çdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp0dense_flipout_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0é
àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivïdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ßdense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219194*
T0*
_output_shapes

:à
âdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivädense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xßdense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219194*
T0*
_output_shapes

:ù
êdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceädense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ædense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¤
Þdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?è
Üdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulçdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0îdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¦
àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @Þ
Þdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulédense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ö
Þdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1âdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?à
Þdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulédense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0âdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:×
Üdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0âdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Õ
Þdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subàdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:î
dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÀ
dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumâdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0¥dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Y
dense_flipout_3/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6m
dense_flipout_3/CastCastdense_flipout_3/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ó
dense_flipout_3/truedivRealDivdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_3/Cast:y:0*
T0*
_output_shapes
: k
!dense_flipout_3/divergence_kernelIdentitydense_flipout_3/truediv:z:0*
T0*
_output_shapes
: o
dense_flipout_4/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    m
*dense_flipout_4/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ´
5dense_flipout_4/Normal/sample/Softplus/ReadVariableOpReadVariableOp>dense_flipout_4_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
&dense_flipout_4/Normal/sample/SoftplusSoftplus=dense_flipout_4/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:h
#dense_flipout_4/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4·
!dense_flipout_4/Normal/sample/addAddV2,dense_flipout_4/Normal/sample/add/x:output:04dense_flipout_4/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:~
-dense_flipout_4/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      e
#dense_flipout_4/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : {
1dense_flipout_4/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_flipout_4/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_flipout_4/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
+dense_flipout_4/Normal/sample/strided_sliceStridedSlice6dense_flipout_4/Normal/sample/shape_as_tensor:output:0:dense_flipout_4/Normal/sample/strided_slice/stack:output:0<dense_flipout_4/Normal/sample/strided_slice/stack_1:output:0<dense_flipout_4/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
/dense_flipout_4/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      g
%dense_flipout_4/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : }
3dense_flipout_4/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_flipout_4/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_flipout_4/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
-dense_flipout_4/Normal/sample/strided_slice_1StridedSlice8dense_flipout_4/Normal/sample/shape_as_tensor_1:output:0<dense_flipout_4/Normal/sample/strided_slice_1/stack:output:0>dense_flipout_4/Normal/sample/strided_slice_1/stack_1:output:0>dense_flipout_4/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskq
.dense_flipout_4/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB s
0dense_flipout_4/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB É
+dense_flipout_4/Normal/sample/BroadcastArgsBroadcastArgs9dense_flipout_4/Normal/sample/BroadcastArgs/s0_1:output:04dense_flipout_4/Normal/sample/strided_slice:output:0*
_output_shapes
:Ä
-dense_flipout_4/Normal/sample/BroadcastArgs_1BroadcastArgs0dense_flipout_4/Normal/sample/BroadcastArgs:r0:06dense_flipout_4/Normal/sample/strided_slice_1:output:0*
_output_shapes
:w
-dense_flipout_4/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:k
)dense_flipout_4/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : þ
$dense_flipout_4/Normal/sample/concatConcatV26dense_flipout_4/Normal/sample/concat/values_0:output:02dense_flipout_4/Normal/sample/BroadcastArgs_1:r0:02dense_flipout_4/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:|
7dense_flipout_4/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
9dense_flipout_4/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
Gdense_flipout_4/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal-dense_flipout_4/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
6dense_flipout_4/Normal/sample/normal/random_normal/mulMulPdense_flipout_4/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Bdense_flipout_4/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:æ
2dense_flipout_4/Normal/sample/normal/random_normalAddV2:dense_flipout_4/Normal/sample/normal/random_normal/mul:z:0@dense_flipout_4/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:´
!dense_flipout_4/Normal/sample/mulMul6dense_flipout_4/Normal/sample/normal/random_normal:z:0%dense_flipout_4/Normal/sample/add:z:0*
T0*"
_output_shapes
:¥
#dense_flipout_4/Normal/sample/add_1AddV2%dense_flipout_4/Normal/sample/mul:z:0#dense_flipout_4/zeros_like:output:0*
T0*"
_output_shapes
:|
+dense_flipout_4/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
%dense_flipout_4/Normal/sample/ReshapeReshape'dense_flipout_4/Normal/sample/add_1:z:04dense_flipout_4/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:g
dense_flipout_4/ShapeShape"dense_flipout_3/Relu:activations:0*
T0*
_output_shapes
:m
#dense_flipout_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
%dense_flipout_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%dense_flipout_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
dense_flipout_4/strided_sliceStridedSlicedense_flipout_4/Shape:output:0,dense_flipout_4/strided_slice/stack:output:0.dense_flipout_4/strided_slice/stack_1:output:0.dense_flipout_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
;dense_flipout_4/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
9dense_flipout_4/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
9dense_flipout_4/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÈ
5dense_flipout_4/rademacher/uniform/sanitize_seed/seedRandomUniformIntDdense_flipout_4/rademacher/uniform/sanitize_seed/seed/shape:output:0Bdense_flipout_4/rademacher/uniform/sanitize_seed/seed/min:output:0Bdense_flipout_4/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
?dense_flipout_4/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?dense_flipout_4/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rç
Xdense_flipout_4/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter>dense_flipout_4/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
?dense_flipout_4/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ò
;dense_flipout_4/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_4/Shape:output:0^dense_flipout_4/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0bdense_flipout_4/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Hdense_flipout_4/rademacher/uniform/stateless_random_uniform/alg:output:0Hdense_flipout_4/rademacher/uniform/stateless_random_uniform/min:output:0Hdense_flipout_4/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	b
 dense_flipout_4/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÈ
dense_flipout_4/rademacher/mulMul)dense_flipout_4/rademacher/mul/x:output:0Ddense_flipout_4/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_4/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¦
dense_flipout_4/rademacher/subSub"dense_flipout_4/rademacher/mul:z:0)dense_flipout_4/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_4/rademacher/CastCast"dense_flipout_4/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_4/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :`
dense_flipout_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¡
dense_flipout_4/ExpandDims
ExpandDims)dense_flipout_4/ExpandDims/input:output:0'dense_flipout_4/ExpandDims/dim:output:0*
T0*
_output_shapes
:]
dense_flipout_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
dense_flipout_4/concatConcatV2&dense_flipout_4/strided_slice:output:0#dense_flipout_4/ExpandDims:output:0$dense_flipout_4/concat/axis:output:0*
N*
T0*
_output_shapes
:
=dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
;dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
;dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÐ
7dense_flipout_4/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntFdense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Ddense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/min:output:0Ddense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Adense_flipout_4/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Adense_flipout_4/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rë
Zdense_flipout_4/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter@dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Adense_flipout_4/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ß
=dense_flipout_4/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_4/concat:output:0`dense_flipout_4/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ddense_flipout_4/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Jdense_flipout_4/rademacher_1/uniform/stateless_random_uniform/alg:output:0Jdense_flipout_4/rademacher_1/uniform/stateless_random_uniform/min:output:0Jdense_flipout_4/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	d
"dense_flipout_4/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÎ
 dense_flipout_4/rademacher_1/mulMul+dense_flipout_4/rademacher_1/mul/x:output:0Fdense_flipout_4/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"dense_flipout_4/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¬
 dense_flipout_4/rademacher_1/subSub$dense_flipout_4/rademacher_1/mul:z:0+dense_flipout_4/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_flipout_4/rademacher_1/CastCast$dense_flipout_4/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_4/mulMul"dense_flipout_3/Relu:activations:0#dense_flipout_4/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_4/MatMulMatMuldense_flipout_4/mul:z:0.dense_flipout_4/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_4/mul_1Mul dense_flipout_4/MatMul:product:0%dense_flipout_4/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'dense_flipout_4/MatMul_1/ReadVariableOpReadVariableOp0dense_flipout_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0©
dense_flipout_4/MatMul_1MatMul"dense_flipout_3/Relu:activations:0/dense_flipout_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_4/addAddV2"dense_flipout_4/MatMul_1:product:0dense_flipout_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
<dense_flipout_4/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¬
bdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ì
Sdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp\dense_flipout_4_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Tdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Jdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ¢
Xdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¤
Zdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¤
Zdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
Rdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice]dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0adense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0cdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0cdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Udense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Wdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ¾
Rdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgs`dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0[dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Tdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Tdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Pdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Kdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2]dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Wdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0]dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Ydense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:»
Pdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo[dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Tdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:£
Rdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
Ldense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeYdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0[dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
=dense_flipout_4/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
7dense_flipout_4/IndependentDeterministic/sample/ReshapeReshapeUdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Fdense_flipout_4/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:¯
dense_flipout_4/BiasAddBiasAdddense_flipout_4/add:z:0@dense_flipout_4/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dense_flipout_4/ReluRelu dense_flipout_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
ôdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp>dense_flipout_4_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ådense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusüdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:¨
âdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4÷
àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ëdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ódense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ô
Üdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogädense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:é
Þdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logßdense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219330*
T0*
_output_shapes
: Õ
Üdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubàdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0âdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ù
çdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp0dense_flipout_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0é
àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivïdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ßdense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219330*
T0*
_output_shapes

:à
âdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivädense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xßdense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219330*
T0*
_output_shapes

:ù
êdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceädense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ædense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¤
Þdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?è
Üdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulçdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0îdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¦
àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @Þ
Þdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulédense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ö
Þdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1âdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?à
Þdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulédense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0âdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:×
Üdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0âdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Õ
Þdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subàdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:î
dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÀ
dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumâdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0¥dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Y
dense_flipout_4/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6m
dense_flipout_4/CastCastdense_flipout_4/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ó
dense_flipout_4/truedivRealDivdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_4/Cast:y:0*
T0*
_output_shapes
: k
!dense_flipout_4/divergence_kernelIdentitydense_flipout_4/truediv:z:0*
T0*
_output_shapes
: o
dense_flipout_5/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    m
*dense_flipout_5/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ´
5dense_flipout_5/Normal/sample/Softplus/ReadVariableOpReadVariableOp>dense_flipout_5_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
&dense_flipout_5/Normal/sample/SoftplusSoftplus=dense_flipout_5/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:h
#dense_flipout_5/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4·
!dense_flipout_5/Normal/sample/addAddV2,dense_flipout_5/Normal/sample/add/x:output:04dense_flipout_5/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:~
-dense_flipout_5/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      e
#dense_flipout_5/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : {
1dense_flipout_5/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_flipout_5/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_flipout_5/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
+dense_flipout_5/Normal/sample/strided_sliceStridedSlice6dense_flipout_5/Normal/sample/shape_as_tensor:output:0:dense_flipout_5/Normal/sample/strided_slice/stack:output:0<dense_flipout_5/Normal/sample/strided_slice/stack_1:output:0<dense_flipout_5/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
/dense_flipout_5/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      g
%dense_flipout_5/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : }
3dense_flipout_5/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_flipout_5/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_flipout_5/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
-dense_flipout_5/Normal/sample/strided_slice_1StridedSlice8dense_flipout_5/Normal/sample/shape_as_tensor_1:output:0<dense_flipout_5/Normal/sample/strided_slice_1/stack:output:0>dense_flipout_5/Normal/sample/strided_slice_1/stack_1:output:0>dense_flipout_5/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskq
.dense_flipout_5/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB s
0dense_flipout_5/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB É
+dense_flipout_5/Normal/sample/BroadcastArgsBroadcastArgs9dense_flipout_5/Normal/sample/BroadcastArgs/s0_1:output:04dense_flipout_5/Normal/sample/strided_slice:output:0*
_output_shapes
:Ä
-dense_flipout_5/Normal/sample/BroadcastArgs_1BroadcastArgs0dense_flipout_5/Normal/sample/BroadcastArgs:r0:06dense_flipout_5/Normal/sample/strided_slice_1:output:0*
_output_shapes
:w
-dense_flipout_5/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:k
)dense_flipout_5/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : þ
$dense_flipout_5/Normal/sample/concatConcatV26dense_flipout_5/Normal/sample/concat/values_0:output:02dense_flipout_5/Normal/sample/BroadcastArgs_1:r0:02dense_flipout_5/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:|
7dense_flipout_5/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
9dense_flipout_5/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
Gdense_flipout_5/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal-dense_flipout_5/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
6dense_flipout_5/Normal/sample/normal/random_normal/mulMulPdense_flipout_5/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Bdense_flipout_5/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:æ
2dense_flipout_5/Normal/sample/normal/random_normalAddV2:dense_flipout_5/Normal/sample/normal/random_normal/mul:z:0@dense_flipout_5/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:´
!dense_flipout_5/Normal/sample/mulMul6dense_flipout_5/Normal/sample/normal/random_normal:z:0%dense_flipout_5/Normal/sample/add:z:0*
T0*"
_output_shapes
:¥
#dense_flipout_5/Normal/sample/add_1AddV2%dense_flipout_5/Normal/sample/mul:z:0#dense_flipout_5/zeros_like:output:0*
T0*"
_output_shapes
:|
+dense_flipout_5/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
%dense_flipout_5/Normal/sample/ReshapeReshape'dense_flipout_5/Normal/sample/add_1:z:04dense_flipout_5/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:g
dense_flipout_5/ShapeShape"dense_flipout_4/Relu:activations:0*
T0*
_output_shapes
:m
#dense_flipout_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
%dense_flipout_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%dense_flipout_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
dense_flipout_5/strided_sliceStridedSlicedense_flipout_5/Shape:output:0,dense_flipout_5/strided_slice/stack:output:0.dense_flipout_5/strided_slice/stack_1:output:0.dense_flipout_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
;dense_flipout_5/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
9dense_flipout_5/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
9dense_flipout_5/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÈ
5dense_flipout_5/rademacher/uniform/sanitize_seed/seedRandomUniformIntDdense_flipout_5/rademacher/uniform/sanitize_seed/seed/shape:output:0Bdense_flipout_5/rademacher/uniform/sanitize_seed/seed/min:output:0Bdense_flipout_5/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
?dense_flipout_5/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?dense_flipout_5/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rç
Xdense_flipout_5/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter>dense_flipout_5/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
?dense_flipout_5/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ò
;dense_flipout_5/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_5/Shape:output:0^dense_flipout_5/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0bdense_flipout_5/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Hdense_flipout_5/rademacher/uniform/stateless_random_uniform/alg:output:0Hdense_flipout_5/rademacher/uniform/stateless_random_uniform/min:output:0Hdense_flipout_5/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	b
 dense_flipout_5/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÈ
dense_flipout_5/rademacher/mulMul)dense_flipout_5/rademacher/mul/x:output:0Ddense_flipout_5/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_5/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¦
dense_flipout_5/rademacher/subSub"dense_flipout_5/rademacher/mul:z:0)dense_flipout_5/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_5/rademacher/CastCast"dense_flipout_5/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_5/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :`
dense_flipout_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¡
dense_flipout_5/ExpandDims
ExpandDims)dense_flipout_5/ExpandDims/input:output:0'dense_flipout_5/ExpandDims/dim:output:0*
T0*
_output_shapes
:]
dense_flipout_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
dense_flipout_5/concatConcatV2&dense_flipout_5/strided_slice:output:0#dense_flipout_5/ExpandDims:output:0$dense_flipout_5/concat/axis:output:0*
N*
T0*
_output_shapes
:
=dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
;dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
;dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÐ
7dense_flipout_5/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntFdense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Ddense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/min:output:0Ddense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Adense_flipout_5/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Adense_flipout_5/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rë
Zdense_flipout_5/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter@dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Adense_flipout_5/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ß
=dense_flipout_5/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_5/concat:output:0`dense_flipout_5/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ddense_flipout_5/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Jdense_flipout_5/rademacher_1/uniform/stateless_random_uniform/alg:output:0Jdense_flipout_5/rademacher_1/uniform/stateless_random_uniform/min:output:0Jdense_flipout_5/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	d
"dense_flipout_5/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÎ
 dense_flipout_5/rademacher_1/mulMul+dense_flipout_5/rademacher_1/mul/x:output:0Fdense_flipout_5/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"dense_flipout_5/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¬
 dense_flipout_5/rademacher_1/subSub$dense_flipout_5/rademacher_1/mul:z:0+dense_flipout_5/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_flipout_5/rademacher_1/CastCast$dense_flipout_5/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_5/mulMul"dense_flipout_4/Relu:activations:0#dense_flipout_5/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_5/MatMulMatMuldense_flipout_5/mul:z:0.dense_flipout_5/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_5/mul_1Mul dense_flipout_5/MatMul:product:0%dense_flipout_5/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'dense_flipout_5/MatMul_1/ReadVariableOpReadVariableOp0dense_flipout_5_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0©
dense_flipout_5/MatMul_1MatMul"dense_flipout_4/Relu:activations:0/dense_flipout_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_5/addAddV2"dense_flipout_5/MatMul_1:product:0dense_flipout_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
<dense_flipout_5/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¬
bdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ì
Sdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp\dense_flipout_5_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Tdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Jdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ¢
Xdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¤
Zdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¤
Zdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
Rdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice]dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0adense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0cdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0cdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Udense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Wdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ¾
Rdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgs`dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0[dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Tdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Tdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Pdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Kdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2]dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Wdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0]dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Ydense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:»
Pdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo[dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Tdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:£
Rdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
Ldense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeYdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0[dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
=dense_flipout_5/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
7dense_flipout_5/IndependentDeterministic/sample/ReshapeReshapeUdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Fdense_flipout_5/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:¯
dense_flipout_5/BiasAddBiasAdddense_flipout_5/add:z:0@dense_flipout_5/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
dense_flipout_5/SoftmaxSoftmax dense_flipout_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
ôdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp>dense_flipout_5_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ådense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusüdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:¨
âdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4÷
àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ëdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ódense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ô
Üdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogädense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:é
Þdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logßdense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219466*
T0*
_output_shapes
: Õ
Üdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubàdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0âdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ù
çdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp0dense_flipout_5_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0é
àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivïdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ßdense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219466*
T0*
_output_shapes

:à
âdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivädense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xßdense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219466*
T0*
_output_shapes

:ù
êdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceädense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ædense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¤
Þdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?è
Üdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulçdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0îdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¦
àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @Þ
Þdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulédense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ö
Þdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1âdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?à
Þdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulédense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0âdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:×
Üdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0âdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Õ
Þdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subàdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:î
dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÀ
dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumâdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0¥dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Y
dense_flipout_5/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6m
dense_flipout_5/CastCastdense_flipout_5/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ó
dense_flipout_5/truedivRealDivdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_5/Cast:y:0*
T0*
_output_shapes
: k
!dense_flipout_5/divergence_kernelIdentitydense_flipout_5/truediv:z:0*
T0*
_output_shapes
: p
IdentityIdentity!dense_flipout_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj

Identity_1Identity*dense_flipout_3/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: j

Identity_2Identity*dense_flipout_4/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: j

Identity_3Identity*dense_flipout_5/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOpT^dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpõ^dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpè^dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp(^dense_flipout_3/MatMul_1/ReadVariableOp6^dense_flipout_3/Normal/sample/Softplus/ReadVariableOpT^dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpõ^dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpè^dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp(^dense_flipout_4/MatMul_1/ReadVariableOp6^dense_flipout_4/Normal/sample/Softplus/ReadVariableOpT^dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpõ^dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpè^dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp(^dense_flipout_5/MatMul_1/ReadVariableOp6^dense_flipout_5/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2ª
Sdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpSdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2î
ôdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpôdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ô
çdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpçdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2R
'dense_flipout_3/MatMul_1/ReadVariableOp'dense_flipout_3/MatMul_1/ReadVariableOp2n
5dense_flipout_3/Normal/sample/Softplus/ReadVariableOp5dense_flipout_3/Normal/sample/Softplus/ReadVariableOp2ª
Sdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpSdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2î
ôdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpôdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ô
çdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpçdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2R
'dense_flipout_4/MatMul_1/ReadVariableOp'dense_flipout_4/MatMul_1/ReadVariableOp2n
5dense_flipout_4/Normal/sample/Softplus/ReadVariableOp5dense_flipout_4/Normal/sample/Softplus/ReadVariableOp2ª
Sdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpSdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2î
ôdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpôdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ô
çdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpçdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2R
'dense_flipout_5/MatMul_1/ReadVariableOp'dense_flipout_5/MatMul_1/ReadVariableOp2n
5dense_flipout_5/Normal/sample/Softplus/ReadVariableOp5dense_flipout_5/Normal/sample/Softplus/ReadVariableOp:O K
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
æ
¬
H__inference_sequential_3_layer_call_and_return_conditional_losses_218587
input_2(
dense_flipout_3_218547:(
dense_flipout_3_218549:$
dense_flipout_3_218551:
dense_flipout_3_218553
dense_flipout_3_218555(
dense_flipout_4_218559:(
dense_flipout_4_218561:$
dense_flipout_4_218563:
dense_flipout_4_218565
dense_flipout_4_218567(
dense_flipout_5_218571:(
dense_flipout_5_218573:$
dense_flipout_5_218575:
dense_flipout_5_218577
dense_flipout_5_218579
identity

identity_1

identity_2

identity_3¢'dense_flipout_3/StatefulPartitionedCall¢'dense_flipout_4/StatefulPartitionedCall¢'dense_flipout_5/StatefulPartitionedCallÜ
'dense_flipout_3/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_flipout_3_218547dense_flipout_3_218549dense_flipout_3_218551dense_flipout_3_218553dense_flipout_3_218555*
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_3_layer_call_and_return_conditional_losses_217932
'dense_flipout_4/StatefulPartitionedCallStatefulPartitionedCall0dense_flipout_3/StatefulPartitionedCall:output:0dense_flipout_4_218559dense_flipout_4_218561dense_flipout_4_218563dense_flipout_4_218565dense_flipout_4_218567*
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_4_layer_call_and_return_conditional_losses_218086
'dense_flipout_5/StatefulPartitionedCallStatefulPartitionedCall0dense_flipout_4/StatefulPartitionedCall:output:0dense_flipout_5_218571dense_flipout_5_218573dense_flipout_5_218575dense_flipout_5_218577dense_flipout_5_218579*
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_5_layer_call_and_return_conditional_losses_218240
IdentityIdentity0dense_flipout_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp

Identity_1Identity0dense_flipout_3/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: p

Identity_2Identity0dense_flipout_4/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: p

Identity_3Identity0dense_flipout_5/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Ä
NoOpNoOp(^dense_flipout_3/StatefulPartitionedCall(^dense_flipout_4/StatefulPartitionedCall(^dense_flipout_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2R
'dense_flipout_3/StatefulPartitionedCall'dense_flipout_3/StatefulPartitionedCall2R
'dense_flipout_4/StatefulPartitionedCall'dense_flipout_4/StatefulPartitionedCall2R
'dense_flipout_5/StatefulPartitionedCall'dense_flipout_5/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2:
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
´
ç!
H__inference_sequential_3_layer_call_and_return_conditional_losses_219084

inputsP
>dense_flipout_3_normal_sample_softplus_readvariableop_resource:B
0dense_flipout_3_matmul_1_readvariableop_resource:j
\dense_flipout_3_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ä
ßdense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218779é
ädense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xP
>dense_flipout_4_normal_sample_softplus_readvariableop_resource:B
0dense_flipout_4_matmul_1_readvariableop_resource:j
\dense_flipout_4_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ä
ßdense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218915é
ädense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xP
>dense_flipout_5_normal_sample_softplus_readvariableop_resource:B
0dense_flipout_5_matmul_1_readvariableop_resource:j
\dense_flipout_5_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ä
ßdense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219051é
ädense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1

identity_2

identity_3¢Sdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ôdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢çdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢'dense_flipout_3/MatMul_1/ReadVariableOp¢5dense_flipout_3/Normal/sample/Softplus/ReadVariableOp¢Sdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ôdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢çdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢'dense_flipout_4/MatMul_1/ReadVariableOp¢5dense_flipout_4/Normal/sample/Softplus/ReadVariableOp¢Sdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ôdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢çdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢'dense_flipout_5/MatMul_1/ReadVariableOp¢5dense_flipout_5/Normal/sample/Softplus/ReadVariableOpo
dense_flipout_3/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    m
*dense_flipout_3/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ´
5dense_flipout_3/Normal/sample/Softplus/ReadVariableOpReadVariableOp>dense_flipout_3_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
&dense_flipout_3/Normal/sample/SoftplusSoftplus=dense_flipout_3/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:h
#dense_flipout_3/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4·
!dense_flipout_3/Normal/sample/addAddV2,dense_flipout_3/Normal/sample/add/x:output:04dense_flipout_3/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:~
-dense_flipout_3/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      e
#dense_flipout_3/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : {
1dense_flipout_3/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_flipout_3/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_flipout_3/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
+dense_flipout_3/Normal/sample/strided_sliceStridedSlice6dense_flipout_3/Normal/sample/shape_as_tensor:output:0:dense_flipout_3/Normal/sample/strided_slice/stack:output:0<dense_flipout_3/Normal/sample/strided_slice/stack_1:output:0<dense_flipout_3/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
/dense_flipout_3/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      g
%dense_flipout_3/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : }
3dense_flipout_3/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_flipout_3/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_flipout_3/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
-dense_flipout_3/Normal/sample/strided_slice_1StridedSlice8dense_flipout_3/Normal/sample/shape_as_tensor_1:output:0<dense_flipout_3/Normal/sample/strided_slice_1/stack:output:0>dense_flipout_3/Normal/sample/strided_slice_1/stack_1:output:0>dense_flipout_3/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskq
.dense_flipout_3/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB s
0dense_flipout_3/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB É
+dense_flipout_3/Normal/sample/BroadcastArgsBroadcastArgs9dense_flipout_3/Normal/sample/BroadcastArgs/s0_1:output:04dense_flipout_3/Normal/sample/strided_slice:output:0*
_output_shapes
:Ä
-dense_flipout_3/Normal/sample/BroadcastArgs_1BroadcastArgs0dense_flipout_3/Normal/sample/BroadcastArgs:r0:06dense_flipout_3/Normal/sample/strided_slice_1:output:0*
_output_shapes
:w
-dense_flipout_3/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:k
)dense_flipout_3/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : þ
$dense_flipout_3/Normal/sample/concatConcatV26dense_flipout_3/Normal/sample/concat/values_0:output:02dense_flipout_3/Normal/sample/BroadcastArgs_1:r0:02dense_flipout_3/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:|
7dense_flipout_3/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
9dense_flipout_3/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
Gdense_flipout_3/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal-dense_flipout_3/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
6dense_flipout_3/Normal/sample/normal/random_normal/mulMulPdense_flipout_3/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Bdense_flipout_3/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:æ
2dense_flipout_3/Normal/sample/normal/random_normalAddV2:dense_flipout_3/Normal/sample/normal/random_normal/mul:z:0@dense_flipout_3/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:´
!dense_flipout_3/Normal/sample/mulMul6dense_flipout_3/Normal/sample/normal/random_normal:z:0%dense_flipout_3/Normal/sample/add:z:0*
T0*"
_output_shapes
:¥
#dense_flipout_3/Normal/sample/add_1AddV2%dense_flipout_3/Normal/sample/mul:z:0#dense_flipout_3/zeros_like:output:0*
T0*"
_output_shapes
:|
+dense_flipout_3/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
%dense_flipout_3/Normal/sample/ReshapeReshape'dense_flipout_3/Normal/sample/add_1:z:04dense_flipout_3/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:K
dense_flipout_3/ShapeShapeinputs*
T0*
_output_shapes
:m
#dense_flipout_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
%dense_flipout_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%dense_flipout_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
dense_flipout_3/strided_sliceStridedSlicedense_flipout_3/Shape:output:0,dense_flipout_3/strided_slice/stack:output:0.dense_flipout_3/strided_slice/stack_1:output:0.dense_flipout_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
;dense_flipout_3/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
9dense_flipout_3/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
9dense_flipout_3/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÈ
5dense_flipout_3/rademacher/uniform/sanitize_seed/seedRandomUniformIntDdense_flipout_3/rademacher/uniform/sanitize_seed/seed/shape:output:0Bdense_flipout_3/rademacher/uniform/sanitize_seed/seed/min:output:0Bdense_flipout_3/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
?dense_flipout_3/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?dense_flipout_3/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rç
Xdense_flipout_3/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter>dense_flipout_3/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
?dense_flipout_3/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ò
;dense_flipout_3/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_3/Shape:output:0^dense_flipout_3/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0bdense_flipout_3/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Hdense_flipout_3/rademacher/uniform/stateless_random_uniform/alg:output:0Hdense_flipout_3/rademacher/uniform/stateless_random_uniform/min:output:0Hdense_flipout_3/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	b
 dense_flipout_3/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÈ
dense_flipout_3/rademacher/mulMul)dense_flipout_3/rademacher/mul/x:output:0Ddense_flipout_3/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_3/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¦
dense_flipout_3/rademacher/subSub"dense_flipout_3/rademacher/mul:z:0)dense_flipout_3/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_3/rademacher/CastCast"dense_flipout_3/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_3/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :`
dense_flipout_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¡
dense_flipout_3/ExpandDims
ExpandDims)dense_flipout_3/ExpandDims/input:output:0'dense_flipout_3/ExpandDims/dim:output:0*
T0*
_output_shapes
:]
dense_flipout_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
dense_flipout_3/concatConcatV2&dense_flipout_3/strided_slice:output:0#dense_flipout_3/ExpandDims:output:0$dense_flipout_3/concat/axis:output:0*
N*
T0*
_output_shapes
:
=dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
;dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
;dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÐ
7dense_flipout_3/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntFdense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Ddense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/min:output:0Ddense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Adense_flipout_3/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Adense_flipout_3/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rë
Zdense_flipout_3/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter@dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Adense_flipout_3/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ß
=dense_flipout_3/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_3/concat:output:0`dense_flipout_3/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ddense_flipout_3/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Jdense_flipout_3/rademacher_1/uniform/stateless_random_uniform/alg:output:0Jdense_flipout_3/rademacher_1/uniform/stateless_random_uniform/min:output:0Jdense_flipout_3/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	d
"dense_flipout_3/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÎ
 dense_flipout_3/rademacher_1/mulMul+dense_flipout_3/rademacher_1/mul/x:output:0Fdense_flipout_3/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"dense_flipout_3/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¬
 dense_flipout_3/rademacher_1/subSub$dense_flipout_3/rademacher_1/mul:z:0+dense_flipout_3/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_flipout_3/rademacher_1/CastCast$dense_flipout_3/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
dense_flipout_3/mulMulinputs#dense_flipout_3/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_3/MatMulMatMuldense_flipout_3/mul:z:0.dense_flipout_3/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_3/mul_1Mul dense_flipout_3/MatMul:product:0%dense_flipout_3/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'dense_flipout_3/MatMul_1/ReadVariableOpReadVariableOp0dense_flipout_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
dense_flipout_3/MatMul_1MatMulinputs/dense_flipout_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_3/addAddV2"dense_flipout_3/MatMul_1:product:0dense_flipout_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
<dense_flipout_3/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¬
bdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ì
Sdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp\dense_flipout_3_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Tdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Jdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ¢
Xdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¤
Zdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¤
Zdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
Rdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice]dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0adense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0cdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0cdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Udense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Wdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ¾
Rdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgs`dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0[dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Tdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Tdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Pdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Kdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2]dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Wdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0]dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Ydense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:»
Pdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo[dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Tdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:£
Rdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
Ldense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeYdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0[dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
=dense_flipout_3/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
7dense_flipout_3/IndependentDeterministic/sample/ReshapeReshapeUdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Fdense_flipout_3/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:¯
dense_flipout_3/BiasAddBiasAdddense_flipout_3/add:z:0@dense_flipout_3/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dense_flipout_3/ReluRelu dense_flipout_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
ôdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp>dense_flipout_3_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ådense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusüdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:¨
âdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4÷
àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ëdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ódense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ô
Üdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogädense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:é
Þdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logßdense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218779*
T0*
_output_shapes
: Õ
Üdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubàdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0âdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ù
çdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp0dense_flipout_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0é
àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivïdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ßdense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218779*
T0*
_output_shapes

:à
âdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivädense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xßdense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218779*
T0*
_output_shapes

:ù
êdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceädense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ædense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¤
Þdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?è
Üdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulçdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0îdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¦
àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @Þ
Þdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulédense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ö
Þdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1âdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?à
Þdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulédense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0âdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:×
Üdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0âdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Õ
Þdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subàdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0àdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:î
dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÀ
dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumâdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0¥dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Y
dense_flipout_3/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6m
dense_flipout_3/CastCastdense_flipout_3/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ó
dense_flipout_3/truedivRealDivdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_3/Cast:y:0*
T0*
_output_shapes
: k
!dense_flipout_3/divergence_kernelIdentitydense_flipout_3/truediv:z:0*
T0*
_output_shapes
: o
dense_flipout_4/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    m
*dense_flipout_4/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ´
5dense_flipout_4/Normal/sample/Softplus/ReadVariableOpReadVariableOp>dense_flipout_4_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
&dense_flipout_4/Normal/sample/SoftplusSoftplus=dense_flipout_4/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:h
#dense_flipout_4/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4·
!dense_flipout_4/Normal/sample/addAddV2,dense_flipout_4/Normal/sample/add/x:output:04dense_flipout_4/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:~
-dense_flipout_4/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      e
#dense_flipout_4/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : {
1dense_flipout_4/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_flipout_4/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_flipout_4/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
+dense_flipout_4/Normal/sample/strided_sliceStridedSlice6dense_flipout_4/Normal/sample/shape_as_tensor:output:0:dense_flipout_4/Normal/sample/strided_slice/stack:output:0<dense_flipout_4/Normal/sample/strided_slice/stack_1:output:0<dense_flipout_4/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
/dense_flipout_4/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      g
%dense_flipout_4/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : }
3dense_flipout_4/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_flipout_4/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_flipout_4/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
-dense_flipout_4/Normal/sample/strided_slice_1StridedSlice8dense_flipout_4/Normal/sample/shape_as_tensor_1:output:0<dense_flipout_4/Normal/sample/strided_slice_1/stack:output:0>dense_flipout_4/Normal/sample/strided_slice_1/stack_1:output:0>dense_flipout_4/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskq
.dense_flipout_4/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB s
0dense_flipout_4/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB É
+dense_flipout_4/Normal/sample/BroadcastArgsBroadcastArgs9dense_flipout_4/Normal/sample/BroadcastArgs/s0_1:output:04dense_flipout_4/Normal/sample/strided_slice:output:0*
_output_shapes
:Ä
-dense_flipout_4/Normal/sample/BroadcastArgs_1BroadcastArgs0dense_flipout_4/Normal/sample/BroadcastArgs:r0:06dense_flipout_4/Normal/sample/strided_slice_1:output:0*
_output_shapes
:w
-dense_flipout_4/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:k
)dense_flipout_4/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : þ
$dense_flipout_4/Normal/sample/concatConcatV26dense_flipout_4/Normal/sample/concat/values_0:output:02dense_flipout_4/Normal/sample/BroadcastArgs_1:r0:02dense_flipout_4/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:|
7dense_flipout_4/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
9dense_flipout_4/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
Gdense_flipout_4/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal-dense_flipout_4/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
6dense_flipout_4/Normal/sample/normal/random_normal/mulMulPdense_flipout_4/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Bdense_flipout_4/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:æ
2dense_flipout_4/Normal/sample/normal/random_normalAddV2:dense_flipout_4/Normal/sample/normal/random_normal/mul:z:0@dense_flipout_4/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:´
!dense_flipout_4/Normal/sample/mulMul6dense_flipout_4/Normal/sample/normal/random_normal:z:0%dense_flipout_4/Normal/sample/add:z:0*
T0*"
_output_shapes
:¥
#dense_flipout_4/Normal/sample/add_1AddV2%dense_flipout_4/Normal/sample/mul:z:0#dense_flipout_4/zeros_like:output:0*
T0*"
_output_shapes
:|
+dense_flipout_4/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
%dense_flipout_4/Normal/sample/ReshapeReshape'dense_flipout_4/Normal/sample/add_1:z:04dense_flipout_4/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:g
dense_flipout_4/ShapeShape"dense_flipout_3/Relu:activations:0*
T0*
_output_shapes
:m
#dense_flipout_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
%dense_flipout_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%dense_flipout_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
dense_flipout_4/strided_sliceStridedSlicedense_flipout_4/Shape:output:0,dense_flipout_4/strided_slice/stack:output:0.dense_flipout_4/strided_slice/stack_1:output:0.dense_flipout_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
;dense_flipout_4/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
9dense_flipout_4/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
9dense_flipout_4/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÈ
5dense_flipout_4/rademacher/uniform/sanitize_seed/seedRandomUniformIntDdense_flipout_4/rademacher/uniform/sanitize_seed/seed/shape:output:0Bdense_flipout_4/rademacher/uniform/sanitize_seed/seed/min:output:0Bdense_flipout_4/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
?dense_flipout_4/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?dense_flipout_4/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rç
Xdense_flipout_4/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter>dense_flipout_4/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
?dense_flipout_4/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ò
;dense_flipout_4/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_4/Shape:output:0^dense_flipout_4/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0bdense_flipout_4/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Hdense_flipout_4/rademacher/uniform/stateless_random_uniform/alg:output:0Hdense_flipout_4/rademacher/uniform/stateless_random_uniform/min:output:0Hdense_flipout_4/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	b
 dense_flipout_4/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÈ
dense_flipout_4/rademacher/mulMul)dense_flipout_4/rademacher/mul/x:output:0Ddense_flipout_4/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_4/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¦
dense_flipout_4/rademacher/subSub"dense_flipout_4/rademacher/mul:z:0)dense_flipout_4/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_4/rademacher/CastCast"dense_flipout_4/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_4/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :`
dense_flipout_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¡
dense_flipout_4/ExpandDims
ExpandDims)dense_flipout_4/ExpandDims/input:output:0'dense_flipout_4/ExpandDims/dim:output:0*
T0*
_output_shapes
:]
dense_flipout_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
dense_flipout_4/concatConcatV2&dense_flipout_4/strided_slice:output:0#dense_flipout_4/ExpandDims:output:0$dense_flipout_4/concat/axis:output:0*
N*
T0*
_output_shapes
:
=dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
;dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
;dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÐ
7dense_flipout_4/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntFdense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Ddense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/min:output:0Ddense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Adense_flipout_4/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Adense_flipout_4/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rë
Zdense_flipout_4/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter@dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Adense_flipout_4/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ß
=dense_flipout_4/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_4/concat:output:0`dense_flipout_4/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ddense_flipout_4/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Jdense_flipout_4/rademacher_1/uniform/stateless_random_uniform/alg:output:0Jdense_flipout_4/rademacher_1/uniform/stateless_random_uniform/min:output:0Jdense_flipout_4/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	d
"dense_flipout_4/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÎ
 dense_flipout_4/rademacher_1/mulMul+dense_flipout_4/rademacher_1/mul/x:output:0Fdense_flipout_4/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"dense_flipout_4/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¬
 dense_flipout_4/rademacher_1/subSub$dense_flipout_4/rademacher_1/mul:z:0+dense_flipout_4/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_flipout_4/rademacher_1/CastCast$dense_flipout_4/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_4/mulMul"dense_flipout_3/Relu:activations:0#dense_flipout_4/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_4/MatMulMatMuldense_flipout_4/mul:z:0.dense_flipout_4/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_4/mul_1Mul dense_flipout_4/MatMul:product:0%dense_flipout_4/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'dense_flipout_4/MatMul_1/ReadVariableOpReadVariableOp0dense_flipout_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0©
dense_flipout_4/MatMul_1MatMul"dense_flipout_3/Relu:activations:0/dense_flipout_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_4/addAddV2"dense_flipout_4/MatMul_1:product:0dense_flipout_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
<dense_flipout_4/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¬
bdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ì
Sdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp\dense_flipout_4_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Tdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Jdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ¢
Xdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¤
Zdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¤
Zdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
Rdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice]dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0adense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0cdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0cdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Udense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Wdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ¾
Rdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgs`dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0[dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Tdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Tdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Pdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Kdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2]dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Wdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0]dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Ydense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:»
Pdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo[dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Tdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:£
Rdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
Ldense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeYdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0[dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
=dense_flipout_4/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
7dense_flipout_4/IndependentDeterministic/sample/ReshapeReshapeUdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Fdense_flipout_4/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:¯
dense_flipout_4/BiasAddBiasAdddense_flipout_4/add:z:0@dense_flipout_4/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dense_flipout_4/ReluRelu dense_flipout_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
ôdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp>dense_flipout_4_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ådense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusüdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:¨
âdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4÷
àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ëdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ódense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ô
Üdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogädense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:é
Þdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logßdense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218915*
T0*
_output_shapes
: Õ
Üdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubàdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0âdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ù
çdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp0dense_flipout_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0é
àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivïdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ßdense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218915*
T0*
_output_shapes

:à
âdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivädense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xßdense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218915*
T0*
_output_shapes

:ù
êdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceädense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ædense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¤
Þdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?è
Üdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulçdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0îdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¦
àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @Þ
Þdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulédense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ö
Þdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1âdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?à
Þdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulédense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0âdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:×
Üdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0âdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Õ
Þdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subàdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0àdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:î
dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÀ
dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumâdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0¥dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Y
dense_flipout_4/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6m
dense_flipout_4/CastCastdense_flipout_4/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ó
dense_flipout_4/truedivRealDivdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_4/Cast:y:0*
T0*
_output_shapes
: k
!dense_flipout_4/divergence_kernelIdentitydense_flipout_4/truediv:z:0*
T0*
_output_shapes
: o
dense_flipout_5/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    m
*dense_flipout_5/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ´
5dense_flipout_5/Normal/sample/Softplus/ReadVariableOpReadVariableOp>dense_flipout_5_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
&dense_flipout_5/Normal/sample/SoftplusSoftplus=dense_flipout_5/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:h
#dense_flipout_5/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4·
!dense_flipout_5/Normal/sample/addAddV2,dense_flipout_5/Normal/sample/add/x:output:04dense_flipout_5/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:~
-dense_flipout_5/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      e
#dense_flipout_5/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : {
1dense_flipout_5/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_flipout_5/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_flipout_5/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
+dense_flipout_5/Normal/sample/strided_sliceStridedSlice6dense_flipout_5/Normal/sample/shape_as_tensor:output:0:dense_flipout_5/Normal/sample/strided_slice/stack:output:0<dense_flipout_5/Normal/sample/strided_slice/stack_1:output:0<dense_flipout_5/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
/dense_flipout_5/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      g
%dense_flipout_5/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : }
3dense_flipout_5/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_flipout_5/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_flipout_5/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
-dense_flipout_5/Normal/sample/strided_slice_1StridedSlice8dense_flipout_5/Normal/sample/shape_as_tensor_1:output:0<dense_flipout_5/Normal/sample/strided_slice_1/stack:output:0>dense_flipout_5/Normal/sample/strided_slice_1/stack_1:output:0>dense_flipout_5/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskq
.dense_flipout_5/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB s
0dense_flipout_5/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB É
+dense_flipout_5/Normal/sample/BroadcastArgsBroadcastArgs9dense_flipout_5/Normal/sample/BroadcastArgs/s0_1:output:04dense_flipout_5/Normal/sample/strided_slice:output:0*
_output_shapes
:Ä
-dense_flipout_5/Normal/sample/BroadcastArgs_1BroadcastArgs0dense_flipout_5/Normal/sample/BroadcastArgs:r0:06dense_flipout_5/Normal/sample/strided_slice_1:output:0*
_output_shapes
:w
-dense_flipout_5/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:k
)dense_flipout_5/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : þ
$dense_flipout_5/Normal/sample/concatConcatV26dense_flipout_5/Normal/sample/concat/values_0:output:02dense_flipout_5/Normal/sample/BroadcastArgs_1:r0:02dense_flipout_5/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:|
7dense_flipout_5/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
9dense_flipout_5/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
Gdense_flipout_5/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal-dense_flipout_5/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
6dense_flipout_5/Normal/sample/normal/random_normal/mulMulPdense_flipout_5/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Bdense_flipout_5/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:æ
2dense_flipout_5/Normal/sample/normal/random_normalAddV2:dense_flipout_5/Normal/sample/normal/random_normal/mul:z:0@dense_flipout_5/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:´
!dense_flipout_5/Normal/sample/mulMul6dense_flipout_5/Normal/sample/normal/random_normal:z:0%dense_flipout_5/Normal/sample/add:z:0*
T0*"
_output_shapes
:¥
#dense_flipout_5/Normal/sample/add_1AddV2%dense_flipout_5/Normal/sample/mul:z:0#dense_flipout_5/zeros_like:output:0*
T0*"
_output_shapes
:|
+dense_flipout_5/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
%dense_flipout_5/Normal/sample/ReshapeReshape'dense_flipout_5/Normal/sample/add_1:z:04dense_flipout_5/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:g
dense_flipout_5/ShapeShape"dense_flipout_4/Relu:activations:0*
T0*
_output_shapes
:m
#dense_flipout_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
%dense_flipout_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%dense_flipout_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
dense_flipout_5/strided_sliceStridedSlicedense_flipout_5/Shape:output:0,dense_flipout_5/strided_slice/stack:output:0.dense_flipout_5/strided_slice/stack_1:output:0.dense_flipout_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
;dense_flipout_5/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
9dense_flipout_5/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
9dense_flipout_5/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÈ
5dense_flipout_5/rademacher/uniform/sanitize_seed/seedRandomUniformIntDdense_flipout_5/rademacher/uniform/sanitize_seed/seed/shape:output:0Bdense_flipout_5/rademacher/uniform/sanitize_seed/seed/min:output:0Bdense_flipout_5/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
?dense_flipout_5/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?dense_flipout_5/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rç
Xdense_flipout_5/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter>dense_flipout_5/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
?dense_flipout_5/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ò
;dense_flipout_5/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_5/Shape:output:0^dense_flipout_5/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0bdense_flipout_5/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Hdense_flipout_5/rademacher/uniform/stateless_random_uniform/alg:output:0Hdense_flipout_5/rademacher/uniform/stateless_random_uniform/min:output:0Hdense_flipout_5/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	b
 dense_flipout_5/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÈ
dense_flipout_5/rademacher/mulMul)dense_flipout_5/rademacher/mul/x:output:0Ddense_flipout_5/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_5/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¦
dense_flipout_5/rademacher/subSub"dense_flipout_5/rademacher/mul:z:0)dense_flipout_5/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_5/rademacher/CastCast"dense_flipout_5/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_5/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :`
dense_flipout_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¡
dense_flipout_5/ExpandDims
ExpandDims)dense_flipout_5/ExpandDims/input:output:0'dense_flipout_5/ExpandDims/dim:output:0*
T0*
_output_shapes
:]
dense_flipout_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
dense_flipout_5/concatConcatV2&dense_flipout_5/strided_slice:output:0#dense_flipout_5/ExpandDims:output:0$dense_flipout_5/concat/axis:output:0*
N*
T0*
_output_shapes
:
=dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
;dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
;dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÐ
7dense_flipout_5/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntFdense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Ddense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/min:output:0Ddense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Adense_flipout_5/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Adense_flipout_5/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rë
Zdense_flipout_5/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter@dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Adense_flipout_5/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ß
=dense_flipout_5/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_5/concat:output:0`dense_flipout_5/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ddense_flipout_5/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Jdense_flipout_5/rademacher_1/uniform/stateless_random_uniform/alg:output:0Jdense_flipout_5/rademacher_1/uniform/stateless_random_uniform/min:output:0Jdense_flipout_5/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	d
"dense_flipout_5/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÎ
 dense_flipout_5/rademacher_1/mulMul+dense_flipout_5/rademacher_1/mul/x:output:0Fdense_flipout_5/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"dense_flipout_5/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¬
 dense_flipout_5/rademacher_1/subSub$dense_flipout_5/rademacher_1/mul:z:0+dense_flipout_5/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_flipout_5/rademacher_1/CastCast$dense_flipout_5/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_5/mulMul"dense_flipout_4/Relu:activations:0#dense_flipout_5/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_5/MatMulMatMuldense_flipout_5/mul:z:0.dense_flipout_5/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_5/mul_1Mul dense_flipout_5/MatMul:product:0%dense_flipout_5/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'dense_flipout_5/MatMul_1/ReadVariableOpReadVariableOp0dense_flipout_5_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0©
dense_flipout_5/MatMul_1MatMul"dense_flipout_4/Relu:activations:0/dense_flipout_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_5/addAddV2"dense_flipout_5/MatMul_1:product:0dense_flipout_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
<dense_flipout_5/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¬
bdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ì
Sdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp\dense_flipout_5_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Tdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Jdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ¢
Xdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¤
Zdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¤
Zdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
Rdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice]dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0adense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0cdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0cdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Udense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Wdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ¾
Rdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgs`dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0[dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Tdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Tdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Pdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Kdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2]dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Wdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0]dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Ydense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:»
Pdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo[dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Tdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:£
Rdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
Ldense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeYdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0[dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
=dense_flipout_5/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
7dense_flipout_5/IndependentDeterministic/sample/ReshapeReshapeUdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Fdense_flipout_5/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:¯
dense_flipout_5/BiasAddBiasAdddense_flipout_5/add:z:0@dense_flipout_5/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
dense_flipout_5/SoftmaxSoftmax dense_flipout_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
ôdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp>dense_flipout_5_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ådense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusüdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:¨
âdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4÷
àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ëdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ódense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ô
Üdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogädense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:é
Þdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logßdense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219051*
T0*
_output_shapes
: Õ
Üdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubàdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0âdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ù
çdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp0dense_flipout_5_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0é
àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivïdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ßdense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219051*
T0*
_output_shapes

:à
âdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivädense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xßdense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219051*
T0*
_output_shapes

:ù
êdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceädense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ædense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¤
Þdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?è
Üdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulçdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0îdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¦
àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @Þ
Þdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulédense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ö
Þdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1âdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?à
Þdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulédense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0âdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:×
Üdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0âdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Õ
Þdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subàdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0àdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:î
dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÀ
dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumâdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0¥dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Y
dense_flipout_5/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6m
dense_flipout_5/CastCastdense_flipout_5/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ó
dense_flipout_5/truedivRealDivdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_5/Cast:y:0*
T0*
_output_shapes
: k
!dense_flipout_5/divergence_kernelIdentitydense_flipout_5/truediv:z:0*
T0*
_output_shapes
: p
IdentityIdentity!dense_flipout_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj

Identity_1Identity*dense_flipout_3/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: j

Identity_2Identity*dense_flipout_4/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: j

Identity_3Identity*dense_flipout_5/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOpT^dense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpõ^dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpè^dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp(^dense_flipout_3/MatMul_1/ReadVariableOp6^dense_flipout_3/Normal/sample/Softplus/ReadVariableOpT^dense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpõ^dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpè^dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp(^dense_flipout_4/MatMul_1/ReadVariableOp6^dense_flipout_4/Normal/sample/Softplus/ReadVariableOpT^dense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpõ^dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpè^dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp(^dense_flipout_5/MatMul_1/ReadVariableOp6^dense_flipout_5/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2ª
Sdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpSdense_flipout_3/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2î
ôdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpôdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ô
çdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpçdense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2R
'dense_flipout_3/MatMul_1/ReadVariableOp'dense_flipout_3/MatMul_1/ReadVariableOp2n
5dense_flipout_3/Normal/sample/Softplus/ReadVariableOp5dense_flipout_3/Normal/sample/Softplus/ReadVariableOp2ª
Sdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpSdense_flipout_4/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2î
ôdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpôdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ô
çdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpçdense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2R
'dense_flipout_4/MatMul_1/ReadVariableOp'dense_flipout_4/MatMul_1/ReadVariableOp2n
5dense_flipout_4/Normal/sample/Softplus/ReadVariableOp5dense_flipout_4/Normal/sample/Softplus/ReadVariableOp2ª
Sdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpSdense_flipout_5/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2î
ôdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpôdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ô
çdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpçdense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2R
'dense_flipout_5/MatMul_1/ReadVariableOp'dense_flipout_5/MatMul_1/ReadVariableOp2n
5dense_flipout_5/Normal/sample/Softplus/ReadVariableOp5dense_flipout_5/Normal/sample/Softplus/ReadVariableOp:O K
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
ã
«
H__inference_sequential_3_layer_call_and_return_conditional_losses_218257

inputs(
dense_flipout_3_217933:(
dense_flipout_3_217935:$
dense_flipout_3_217937:
dense_flipout_3_217939
dense_flipout_3_217941(
dense_flipout_4_218087:(
dense_flipout_4_218089:$
dense_flipout_4_218091:
dense_flipout_4_218093
dense_flipout_4_218095(
dense_flipout_5_218241:(
dense_flipout_5_218243:$
dense_flipout_5_218245:
dense_flipout_5_218247
dense_flipout_5_218249
identity

identity_1

identity_2

identity_3¢'dense_flipout_3/StatefulPartitionedCall¢'dense_flipout_4/StatefulPartitionedCall¢'dense_flipout_5/StatefulPartitionedCallÛ
'dense_flipout_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_flipout_3_217933dense_flipout_3_217935dense_flipout_3_217937dense_flipout_3_217939dense_flipout_3_217941*
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_3_layer_call_and_return_conditional_losses_217932
'dense_flipout_4/StatefulPartitionedCallStatefulPartitionedCall0dense_flipout_3/StatefulPartitionedCall:output:0dense_flipout_4_218087dense_flipout_4_218089dense_flipout_4_218091dense_flipout_4_218093dense_flipout_4_218095*
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_4_layer_call_and_return_conditional_losses_218086
'dense_flipout_5/StatefulPartitionedCallStatefulPartitionedCall0dense_flipout_4/StatefulPartitionedCall:output:0dense_flipout_5_218241dense_flipout_5_218243dense_flipout_5_218245dense_flipout_5_218247dense_flipout_5_218249*
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_5_layer_call_and_return_conditional_losses_218240
IdentityIdentity0dense_flipout_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp

Identity_1Identity0dense_flipout_3/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: p

Identity_2Identity0dense_flipout_4/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: p

Identity_3Identity0dense_flipout_5/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Ä
NoOpNoOp(^dense_flipout_3/StatefulPartitionedCall(^dense_flipout_4/StatefulPartitionedCall(^dense_flipout_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2R
'dense_flipout_3/StatefulPartitionedCall'dense_flipout_3/StatefulPartitionedCall2R
'dense_flipout_4/StatefulPartitionedCall'dense_flipout_4/StatefulPartitionedCall2R
'dense_flipout_5/StatefulPartitionedCall'dense_flipout_5/StatefulPartitionedCall:O K
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
Êú

K__inference_dense_flipout_4_layer_call_and_return_conditional_losses_218086

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:y
kindependentdeterministic_constructed_at_dense_flipout_4_sample_deterministic_sample_readvariableop_resource:Ô
Ïkullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218055Ù
Ôkullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOp¢äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

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
:ÿÿÿÿÿÿÿÿÿ
KIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :»
qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOpReadVariableOpkindependentdeterministic_constructed_at_dense_flipout_4_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
YIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ±
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ý
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_sliceStridedSlicelIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/shape_as_tensor:output:0pIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack_1:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ©
fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ë
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgsBroadcastArgsoIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:¦
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¡
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Â
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concatConcatV2lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/values_0:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgs:r0:0lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/values_2:output:0hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:è
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastToBroadcastTojIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOp:value:0cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:²
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      å
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReshapeReshapehIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastTo:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:³
FIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/ReshapeReshapedIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/Reshape:output:0UIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0OIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ú
ÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusìKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ç
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ãKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ô
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:É
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÏkullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218055*
T0*
_output_shapes
: ¥
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:¹
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¹
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ïkullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218055*
T0*
_output_shapes

:°
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÔkullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÏkullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218055*
T0*
_output_shapes

:É
ÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¸
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ÞKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @®
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ö
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?°
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:§
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¥
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Þ
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
zKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
: Ã
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
: °
NoOpNoOpc^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOpå^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpØ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2È
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOpbIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOp2Î
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpäKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2´
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
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
ã
³
$__inference_signature_wrapper_219536
input_2
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
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 **
f%R#
!__inference__wrapped_model_217784o
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
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2:
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
õ¨
×%
!__inference__wrapped_model_217784
input_2]
Ksequential_3_dense_flipout_3_normal_sample_softplus_readvariableop_resource:O
=sequential_3_dense_flipout_3_matmul_1_readvariableop_resource:
sequential_3_dense_flipout_3_independentdeterministic_constructed_at_dense_flipout_3_sample_deterministic_sample_readvariableop_resource:ñ
ìsequential_3_dense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217482ö
ñsequential_3_dense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x]
Ksequential_3_dense_flipout_4_normal_sample_softplus_readvariableop_resource:O
=sequential_3_dense_flipout_4_matmul_1_readvariableop_resource:
sequential_3_dense_flipout_4_independentdeterministic_constructed_at_dense_flipout_4_sample_deterministic_sample_readvariableop_resource:ñ
ìsequential_3_dense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217618ö
ñsequential_3_dense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x]
Ksequential_3_dense_flipout_5_normal_sample_softplus_readvariableop_resource:O
=sequential_3_dense_flipout_5_matmul_1_readvariableop_resource:
sequential_3_dense_flipout_5_independentdeterministic_constructed_at_dense_flipout_5_sample_deterministic_sample_readvariableop_resource:ñ
ìsequential_3_dense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217754ö
ñsequential_3_dense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity¢sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOp¢sequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ôsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢4sequential_3/dense_flipout_3/MatMul_1/ReadVariableOp¢Bsequential_3/dense_flipout_3/Normal/sample/Softplus/ReadVariableOp¢sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOp¢sequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ôsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢4sequential_3/dense_flipout_4/MatMul_1/ReadVariableOp¢Bsequential_3/dense_flipout_4/Normal/sample/Softplus/ReadVariableOp¢sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOp¢sequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ôsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢4sequential_3/dense_flipout_5/MatMul_1/ReadVariableOp¢Bsequential_3/dense_flipout_5/Normal/sample/Softplus/ReadVariableOp|
'sequential_3/dense_flipout_3/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    z
7sequential_3/dense_flipout_3/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Î
Bsequential_3/dense_flipout_3/Normal/sample/Softplus/ReadVariableOpReadVariableOpKsequential_3_dense_flipout_3_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0´
3sequential_3/dense_flipout_3/Normal/sample/SoftplusSoftplusJsequential_3/dense_flipout_3/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:u
0sequential_3/dense_flipout_3/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Þ
.sequential_3/dense_flipout_3/Normal/sample/addAddV29sequential_3/dense_flipout_3/Normal/sample/add/x:output:0Asequential_3/dense_flipout_3/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
:sequential_3/dense_flipout_3/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      r
0sequential_3/dense_flipout_3/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
>sequential_3/dense_flipout_3/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@sequential_3/dense_flipout_3/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@sequential_3/dense_flipout_3/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
8sequential_3/dense_flipout_3/Normal/sample/strided_sliceStridedSliceCsequential_3/dense_flipout_3/Normal/sample/shape_as_tensor:output:0Gsequential_3/dense_flipout_3/Normal/sample/strided_slice/stack:output:0Isequential_3/dense_flipout_3/Normal/sample/strided_slice/stack_1:output:0Isequential_3/dense_flipout_3/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<sequential_3/dense_flipout_3/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      t
2sequential_3/dense_flipout_3/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
@sequential_3/dense_flipout_3/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_3/dense_flipout_3/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_3/dense_flipout_3/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
:sequential_3/dense_flipout_3/Normal/sample/strided_slice_1StridedSliceEsequential_3/dense_flipout_3/Normal/sample/shape_as_tensor_1:output:0Isequential_3/dense_flipout_3/Normal/sample/strided_slice_1/stack:output:0Ksequential_3/dense_flipout_3/Normal/sample/strided_slice_1/stack_1:output:0Ksequential_3/dense_flipout_3/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask~
;sequential_3/dense_flipout_3/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
=sequential_3/dense_flipout_3/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ð
8sequential_3/dense_flipout_3/Normal/sample/BroadcastArgsBroadcastArgsFsequential_3/dense_flipout_3/Normal/sample/BroadcastArgs/s0_1:output:0Asequential_3/dense_flipout_3/Normal/sample/strided_slice:output:0*
_output_shapes
:ë
:sequential_3/dense_flipout_3/Normal/sample/BroadcastArgs_1BroadcastArgs=sequential_3/dense_flipout_3/Normal/sample/BroadcastArgs:r0:0Csequential_3/dense_flipout_3/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
:sequential_3/dense_flipout_3/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:x
6sequential_3/dense_flipout_3/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ²
1sequential_3/dense_flipout_3/Normal/sample/concatConcatV2Csequential_3/dense_flipout_3/Normal/sample/concat/values_0:output:0?sequential_3/dense_flipout_3/Normal/sample/BroadcastArgs_1:r0:0?sequential_3/dense_flipout_3/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Dsequential_3/dense_flipout_3/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Fsequential_3/dense_flipout_3/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?â
Tsequential_3/dense_flipout_3/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal:sequential_3/dense_flipout_3/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0§
Csequential_3/dense_flipout_3/Normal/sample/normal/random_normal/mulMul]sequential_3/dense_flipout_3/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Osequential_3/dense_flipout_3/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
?sequential_3/dense_flipout_3/Normal/sample/normal/random_normalAddV2Gsequential_3/dense_flipout_3/Normal/sample/normal/random_normal/mul:z:0Msequential_3/dense_flipout_3/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:Û
.sequential_3/dense_flipout_3/Normal/sample/mulMulCsequential_3/dense_flipout_3/Normal/sample/normal/random_normal:z:02sequential_3/dense_flipout_3/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ì
0sequential_3/dense_flipout_3/Normal/sample/add_1AddV22sequential_3/dense_flipout_3/Normal/sample/mul:z:00sequential_3/dense_flipout_3/zeros_like:output:0*
T0*"
_output_shapes
:
8sequential_3/dense_flipout_3/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ß
2sequential_3/dense_flipout_3/Normal/sample/ReshapeReshape4sequential_3/dense_flipout_3/Normal/sample/add_1:z:0Asequential_3/dense_flipout_3/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:Y
"sequential_3/dense_flipout_3/ShapeShapeinput_2*
T0*
_output_shapes
:z
0sequential_3/dense_flipout_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
2sequential_3/dense_flipout_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ|
2sequential_3/dense_flipout_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
*sequential_3/dense_flipout_3/strided_sliceStridedSlice+sequential_3/dense_flipout_3/Shape:output:09sequential_3/dense_flipout_3/strided_slice/stack:output:0;sequential_3/dense_flipout_3/strided_slice/stack_1:output:0;sequential_3/dense_flipout_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Hsequential_3/dense_flipout_3/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Fsequential_3/dense_flipout_3/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Fsequential_3/dense_flipout_3/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿü
Bsequential_3/dense_flipout_3/rademacher/uniform/sanitize_seed/seedRandomUniformIntQsequential_3/dense_flipout_3/rademacher/uniform/sanitize_seed/seed/shape:output:0Osequential_3/dense_flipout_3/rademacher/uniform/sanitize_seed/seed/min:output:0Osequential_3/dense_flipout_3/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Lsequential_3/dense_flipout_3/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Lsequential_3/dense_flipout_3/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
esequential_3/dense_flipout_3/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterKsequential_3/dense_flipout_3/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Lsequential_3/dense_flipout_3/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :­
Hsequential_3/dense_flipout_3/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2+sequential_3/dense_flipout_3/Shape:output:0ksequential_3/dense_flipout_3/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0osequential_3/dense_flipout_3/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Usequential_3/dense_flipout_3/rademacher/uniform/stateless_random_uniform/alg:output:0Usequential_3/dense_flipout_3/rademacher/uniform/stateless_random_uniform/min:output:0Usequential_3/dense_flipout_3/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	o
-sequential_3/dense_flipout_3/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rï
+sequential_3/dense_flipout_3/rademacher/mulMul6sequential_3/dense_flipout_3/rademacher/mul/x:output:0Qsequential_3/dense_flipout_3/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-sequential_3/dense_flipout_3/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÍ
+sequential_3/dense_flipout_3/rademacher/subSub/sequential_3/dense_flipout_3/rademacher/mul:z:06sequential_3/dense_flipout_3/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
,sequential_3/dense_flipout_3/rademacher/CastCast/sequential_3/dense_flipout_3/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-sequential_3/dense_flipout_3/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :m
+sequential_3/dense_flipout_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : È
'sequential_3/dense_flipout_3/ExpandDims
ExpandDims6sequential_3/dense_flipout_3/ExpandDims/input:output:04sequential_3/dense_flipout_3/ExpandDims/dim:output:0*
T0*
_output_shapes
:j
(sequential_3/dense_flipout_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
#sequential_3/dense_flipout_3/concatConcatV23sequential_3/dense_flipout_3/strided_slice:output:00sequential_3/dense_flipout_3/ExpandDims:output:01sequential_3/dense_flipout_3/concat/axis:output:0*
N*
T0*
_output_shapes
:
Jsequential_3/dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Hsequential_3/dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Hsequential_3/dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Dsequential_3/dense_flipout_3/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntSsequential_3/dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Qsequential_3/dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/min:output:0Qsequential_3/dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Nsequential_3/dense_flipout_3/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Nsequential_3/dense_flipout_3/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
gsequential_3/dense_flipout_3/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterMsequential_3/dense_flipout_3/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Nsequential_3/dense_flipout_3/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :º
Jsequential_3/dense_flipout_3/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2,sequential_3/dense_flipout_3/concat:output:0msequential_3/dense_flipout_3/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0qsequential_3/dense_flipout_3/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Wsequential_3/dense_flipout_3/rademacher_1/uniform/stateless_random_uniform/alg:output:0Wsequential_3/dense_flipout_3/rademacher_1/uniform/stateless_random_uniform/min:output:0Wsequential_3/dense_flipout_3/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	q
/sequential_3/dense_flipout_3/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rõ
-sequential_3/dense_flipout_3/rademacher_1/mulMul8sequential_3/dense_flipout_3/rademacher_1/mul/x:output:0Ssequential_3/dense_flipout_3/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/sequential_3/dense_flipout_3/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÓ
-sequential_3/dense_flipout_3/rademacher_1/subSub1sequential_3/dense_flipout_3/rademacher_1/mul:z:08sequential_3/dense_flipout_3/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
.sequential_3/dense_flipout_3/rademacher_1/CastCast1sequential_3/dense_flipout_3/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 sequential_3/dense_flipout_3/mulMulinput_20sequential_3/dense_flipout_3/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
#sequential_3/dense_flipout_3/MatMulMatMul$sequential_3/dense_flipout_3/mul:z:0;sequential_3/dense_flipout_3/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
"sequential_3/dense_flipout_3/mul_1Mul-sequential_3/dense_flipout_3/MatMul:product:02sequential_3/dense_flipout_3/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
4sequential_3/dense_flipout_3/MatMul_1/ReadVariableOpReadVariableOp=sequential_3_dense_flipout_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¨
%sequential_3/dense_flipout_3/MatMul_1MatMulinput_2<sequential_3/dense_flipout_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 sequential_3/dense_flipout_3/addAddV2/sequential_3/dense_flipout_3/MatMul_1:product:0&sequential_3/dense_flipout_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
hsequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¿
}sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ù
sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Å
sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_3_dense_flipout_3_independentdeterministic_constructed_at_dense_flipout_3_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Ë
sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:¸
vsequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ï
sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ñ
sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ñ
sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
~sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_sliceStridedSlicesequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/shape_as_tensor:output:0sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack:output:0sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskÅ
sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ç
sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ä
~sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Ë
sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ä
sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¾
|sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
wsequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concatConcatV2sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/values_0:output:0sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/values_2:output:0sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Á
|sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastToBroadcastTosequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOp:value:0sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:Ï
~sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¾
xsequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReshapeReshapesequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/BroadcastTo:output:0sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:³
isequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
csequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/ReshapeReshapesequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/Reshape:output:0rsequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Reshape/shape:output:0*
T0*
_output_shapes
:õ
$sequential_3/dense_flipout_3/BiasAddBiasAdd$sequential_3/dense_flipout_3/add:z:0lsequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!sequential_3/dense_flipout_3/ReluRelu-sequential_3/dense_flipout_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpKsequential_3_dense_flipout_3_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0´
òsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:µ
ïsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
ísequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2øsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
ésequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogñsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
ësequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logìsequential_3_dense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217482*
T0*
_output_shapes
: ü
ésequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubísequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ïsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ó
ôsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp=sequential_3_dense_flipout_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
ísequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivüsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ìsequential_3_dense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217482*
T0*
_output_shapes

:
ïsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivñsequential_3_dense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xìsequential_3_dense_flipout_3_kullbackleibler_independentnormal_constructed_at_dense_flipout_3_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217482*
T0*
_output_shapes

: 
÷sequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceñsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ósequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:±
ësequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ésequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulôsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ûsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:³
ísequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
ësequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulösequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ísequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
ësequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ïsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:³
ísequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ësequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulösequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ïsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:þ
ésequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ísequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ïsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:ü
ësequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subísequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ísequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:û
©sequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿç
sequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumïsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0²sequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: f
#sequential_3/dense_flipout_3/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6
!sequential_3/dense_flipout_3/CastCast,sequential_3/dense_flipout_3/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 
$sequential_3/dense_flipout_3/truedivRealDiv sequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0%sequential_3/dense_flipout_3/Cast:y:0*
T0*
_output_shapes
: 
.sequential_3/dense_flipout_3/divergence_kernelIdentity(sequential_3/dense_flipout_3/truediv:z:0*
T0*
_output_shapes
: |
'sequential_3/dense_flipout_4/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    z
7sequential_3/dense_flipout_4/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Î
Bsequential_3/dense_flipout_4/Normal/sample/Softplus/ReadVariableOpReadVariableOpKsequential_3_dense_flipout_4_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0´
3sequential_3/dense_flipout_4/Normal/sample/SoftplusSoftplusJsequential_3/dense_flipout_4/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:u
0sequential_3/dense_flipout_4/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Þ
.sequential_3/dense_flipout_4/Normal/sample/addAddV29sequential_3/dense_flipout_4/Normal/sample/add/x:output:0Asequential_3/dense_flipout_4/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
:sequential_3/dense_flipout_4/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      r
0sequential_3/dense_flipout_4/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
>sequential_3/dense_flipout_4/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@sequential_3/dense_flipout_4/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@sequential_3/dense_flipout_4/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
8sequential_3/dense_flipout_4/Normal/sample/strided_sliceStridedSliceCsequential_3/dense_flipout_4/Normal/sample/shape_as_tensor:output:0Gsequential_3/dense_flipout_4/Normal/sample/strided_slice/stack:output:0Isequential_3/dense_flipout_4/Normal/sample/strided_slice/stack_1:output:0Isequential_3/dense_flipout_4/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<sequential_3/dense_flipout_4/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      t
2sequential_3/dense_flipout_4/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
@sequential_3/dense_flipout_4/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_3/dense_flipout_4/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_3/dense_flipout_4/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
:sequential_3/dense_flipout_4/Normal/sample/strided_slice_1StridedSliceEsequential_3/dense_flipout_4/Normal/sample/shape_as_tensor_1:output:0Isequential_3/dense_flipout_4/Normal/sample/strided_slice_1/stack:output:0Ksequential_3/dense_flipout_4/Normal/sample/strided_slice_1/stack_1:output:0Ksequential_3/dense_flipout_4/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask~
;sequential_3/dense_flipout_4/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
=sequential_3/dense_flipout_4/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ð
8sequential_3/dense_flipout_4/Normal/sample/BroadcastArgsBroadcastArgsFsequential_3/dense_flipout_4/Normal/sample/BroadcastArgs/s0_1:output:0Asequential_3/dense_flipout_4/Normal/sample/strided_slice:output:0*
_output_shapes
:ë
:sequential_3/dense_flipout_4/Normal/sample/BroadcastArgs_1BroadcastArgs=sequential_3/dense_flipout_4/Normal/sample/BroadcastArgs:r0:0Csequential_3/dense_flipout_4/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
:sequential_3/dense_flipout_4/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:x
6sequential_3/dense_flipout_4/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ²
1sequential_3/dense_flipout_4/Normal/sample/concatConcatV2Csequential_3/dense_flipout_4/Normal/sample/concat/values_0:output:0?sequential_3/dense_flipout_4/Normal/sample/BroadcastArgs_1:r0:0?sequential_3/dense_flipout_4/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Dsequential_3/dense_flipout_4/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Fsequential_3/dense_flipout_4/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?â
Tsequential_3/dense_flipout_4/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal:sequential_3/dense_flipout_4/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0§
Csequential_3/dense_flipout_4/Normal/sample/normal/random_normal/mulMul]sequential_3/dense_flipout_4/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Osequential_3/dense_flipout_4/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
?sequential_3/dense_flipout_4/Normal/sample/normal/random_normalAddV2Gsequential_3/dense_flipout_4/Normal/sample/normal/random_normal/mul:z:0Msequential_3/dense_flipout_4/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:Û
.sequential_3/dense_flipout_4/Normal/sample/mulMulCsequential_3/dense_flipout_4/Normal/sample/normal/random_normal:z:02sequential_3/dense_flipout_4/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ì
0sequential_3/dense_flipout_4/Normal/sample/add_1AddV22sequential_3/dense_flipout_4/Normal/sample/mul:z:00sequential_3/dense_flipout_4/zeros_like:output:0*
T0*"
_output_shapes
:
8sequential_3/dense_flipout_4/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ß
2sequential_3/dense_flipout_4/Normal/sample/ReshapeReshape4sequential_3/dense_flipout_4/Normal/sample/add_1:z:0Asequential_3/dense_flipout_4/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
"sequential_3/dense_flipout_4/ShapeShape/sequential_3/dense_flipout_3/Relu:activations:0*
T0*
_output_shapes
:z
0sequential_3/dense_flipout_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
2sequential_3/dense_flipout_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ|
2sequential_3/dense_flipout_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
*sequential_3/dense_flipout_4/strided_sliceStridedSlice+sequential_3/dense_flipout_4/Shape:output:09sequential_3/dense_flipout_4/strided_slice/stack:output:0;sequential_3/dense_flipout_4/strided_slice/stack_1:output:0;sequential_3/dense_flipout_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Hsequential_3/dense_flipout_4/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Fsequential_3/dense_flipout_4/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Fsequential_3/dense_flipout_4/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿü
Bsequential_3/dense_flipout_4/rademacher/uniform/sanitize_seed/seedRandomUniformIntQsequential_3/dense_flipout_4/rademacher/uniform/sanitize_seed/seed/shape:output:0Osequential_3/dense_flipout_4/rademacher/uniform/sanitize_seed/seed/min:output:0Osequential_3/dense_flipout_4/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Lsequential_3/dense_flipout_4/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Lsequential_3/dense_flipout_4/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
esequential_3/dense_flipout_4/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterKsequential_3/dense_flipout_4/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Lsequential_3/dense_flipout_4/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :­
Hsequential_3/dense_flipout_4/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2+sequential_3/dense_flipout_4/Shape:output:0ksequential_3/dense_flipout_4/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0osequential_3/dense_flipout_4/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Usequential_3/dense_flipout_4/rademacher/uniform/stateless_random_uniform/alg:output:0Usequential_3/dense_flipout_4/rademacher/uniform/stateless_random_uniform/min:output:0Usequential_3/dense_flipout_4/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	o
-sequential_3/dense_flipout_4/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rï
+sequential_3/dense_flipout_4/rademacher/mulMul6sequential_3/dense_flipout_4/rademacher/mul/x:output:0Qsequential_3/dense_flipout_4/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-sequential_3/dense_flipout_4/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÍ
+sequential_3/dense_flipout_4/rademacher/subSub/sequential_3/dense_flipout_4/rademacher/mul:z:06sequential_3/dense_flipout_4/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
,sequential_3/dense_flipout_4/rademacher/CastCast/sequential_3/dense_flipout_4/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-sequential_3/dense_flipout_4/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :m
+sequential_3/dense_flipout_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : È
'sequential_3/dense_flipout_4/ExpandDims
ExpandDims6sequential_3/dense_flipout_4/ExpandDims/input:output:04sequential_3/dense_flipout_4/ExpandDims/dim:output:0*
T0*
_output_shapes
:j
(sequential_3/dense_flipout_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
#sequential_3/dense_flipout_4/concatConcatV23sequential_3/dense_flipout_4/strided_slice:output:00sequential_3/dense_flipout_4/ExpandDims:output:01sequential_3/dense_flipout_4/concat/axis:output:0*
N*
T0*
_output_shapes
:
Jsequential_3/dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Hsequential_3/dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Hsequential_3/dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Dsequential_3/dense_flipout_4/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntSsequential_3/dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Qsequential_3/dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/min:output:0Qsequential_3/dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Nsequential_3/dense_flipout_4/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Nsequential_3/dense_flipout_4/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
gsequential_3/dense_flipout_4/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterMsequential_3/dense_flipout_4/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Nsequential_3/dense_flipout_4/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :º
Jsequential_3/dense_flipout_4/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2,sequential_3/dense_flipout_4/concat:output:0msequential_3/dense_flipout_4/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0qsequential_3/dense_flipout_4/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Wsequential_3/dense_flipout_4/rademacher_1/uniform/stateless_random_uniform/alg:output:0Wsequential_3/dense_flipout_4/rademacher_1/uniform/stateless_random_uniform/min:output:0Wsequential_3/dense_flipout_4/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	q
/sequential_3/dense_flipout_4/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rõ
-sequential_3/dense_flipout_4/rademacher_1/mulMul8sequential_3/dense_flipout_4/rademacher_1/mul/x:output:0Ssequential_3/dense_flipout_4/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/sequential_3/dense_flipout_4/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÓ
-sequential_3/dense_flipout_4/rademacher_1/subSub1sequential_3/dense_flipout_4/rademacher_1/mul:z:08sequential_3/dense_flipout_4/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
.sequential_3/dense_flipout_4/rademacher_1/CastCast1sequential_3/dense_flipout_4/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
 sequential_3/dense_flipout_4/mulMul/sequential_3/dense_flipout_3/Relu:activations:00sequential_3/dense_flipout_4/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
#sequential_3/dense_flipout_4/MatMulMatMul$sequential_3/dense_flipout_4/mul:z:0;sequential_3/dense_flipout_4/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
"sequential_3/dense_flipout_4/mul_1Mul-sequential_3/dense_flipout_4/MatMul:product:02sequential_3/dense_flipout_4/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
4sequential_3/dense_flipout_4/MatMul_1/ReadVariableOpReadVariableOp=sequential_3_dense_flipout_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ð
%sequential_3/dense_flipout_4/MatMul_1MatMul/sequential_3/dense_flipout_3/Relu:activations:0<sequential_3/dense_flipout_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 sequential_3/dense_flipout_4/addAddV2/sequential_3/dense_flipout_4/MatMul_1:product:0&sequential_3/dense_flipout_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
hsequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¿
}sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ù
sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Å
sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_3_dense_flipout_4_independentdeterministic_constructed_at_dense_flipout_4_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Ë
sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:¸
vsequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ï
sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ñ
sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ñ
sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
~sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_sliceStridedSlicesequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/shape_as_tensor:output:0sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack:output:0sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskÅ
sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ç
sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ä
~sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Ë
sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ä
sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¾
|sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
wsequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concatConcatV2sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/values_0:output:0sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/values_2:output:0sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Á
|sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastToBroadcastTosequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOp:value:0sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:Ï
~sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¾
xsequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReshapeReshapesequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastTo:output:0sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:³
isequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
csequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/ReshapeReshapesequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/Reshape:output:0rsequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Reshape/shape:output:0*
T0*
_output_shapes
:õ
$sequential_3/dense_flipout_4/BiasAddBiasAdd$sequential_3/dense_flipout_4/add:z:0lsequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!sequential_3/dense_flipout_4/ReluRelu-sequential_3/dense_flipout_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpKsequential_3_dense_flipout_4_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0´
òsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:µ
ïsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
ísequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2øsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
ésequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogñsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
ësequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logìsequential_3_dense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217618*
T0*
_output_shapes
: ü
ésequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubísequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ïsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ó
ôsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp=sequential_3_dense_flipout_4_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
ísequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivüsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ìsequential_3_dense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217618*
T0*
_output_shapes

:
ïsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivñsequential_3_dense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xìsequential_3_dense_flipout_4_kullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217618*
T0*
_output_shapes

: 
÷sequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceñsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ósequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:±
ësequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ésequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulôsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ûsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:³
ísequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
ësequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulösequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ísequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
ësequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ïsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:³
ísequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ësequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulösequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ïsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:þ
ésequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ísequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ïsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:ü
ësequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subísequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ísequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:û
©sequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿç
sequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumïsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0²sequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: f
#sequential_3/dense_flipout_4/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6
!sequential_3/dense_flipout_4/CastCast,sequential_3/dense_flipout_4/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 
$sequential_3/dense_flipout_4/truedivRealDiv sequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0%sequential_3/dense_flipout_4/Cast:y:0*
T0*
_output_shapes
: 
.sequential_3/dense_flipout_4/divergence_kernelIdentity(sequential_3/dense_flipout_4/truediv:z:0*
T0*
_output_shapes
: |
'sequential_3/dense_flipout_5/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    z
7sequential_3/dense_flipout_5/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Î
Bsequential_3/dense_flipout_5/Normal/sample/Softplus/ReadVariableOpReadVariableOpKsequential_3_dense_flipout_5_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0´
3sequential_3/dense_flipout_5/Normal/sample/SoftplusSoftplusJsequential_3/dense_flipout_5/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:u
0sequential_3/dense_flipout_5/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Þ
.sequential_3/dense_flipout_5/Normal/sample/addAddV29sequential_3/dense_flipout_5/Normal/sample/add/x:output:0Asequential_3/dense_flipout_5/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
:sequential_3/dense_flipout_5/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      r
0sequential_3/dense_flipout_5/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
>sequential_3/dense_flipout_5/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@sequential_3/dense_flipout_5/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@sequential_3/dense_flipout_5/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
8sequential_3/dense_flipout_5/Normal/sample/strided_sliceStridedSliceCsequential_3/dense_flipout_5/Normal/sample/shape_as_tensor:output:0Gsequential_3/dense_flipout_5/Normal/sample/strided_slice/stack:output:0Isequential_3/dense_flipout_5/Normal/sample/strided_slice/stack_1:output:0Isequential_3/dense_flipout_5/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<sequential_3/dense_flipout_5/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      t
2sequential_3/dense_flipout_5/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
@sequential_3/dense_flipout_5/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_3/dense_flipout_5/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_3/dense_flipout_5/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
:sequential_3/dense_flipout_5/Normal/sample/strided_slice_1StridedSliceEsequential_3/dense_flipout_5/Normal/sample/shape_as_tensor_1:output:0Isequential_3/dense_flipout_5/Normal/sample/strided_slice_1/stack:output:0Ksequential_3/dense_flipout_5/Normal/sample/strided_slice_1/stack_1:output:0Ksequential_3/dense_flipout_5/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask~
;sequential_3/dense_flipout_5/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
=sequential_3/dense_flipout_5/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ð
8sequential_3/dense_flipout_5/Normal/sample/BroadcastArgsBroadcastArgsFsequential_3/dense_flipout_5/Normal/sample/BroadcastArgs/s0_1:output:0Asequential_3/dense_flipout_5/Normal/sample/strided_slice:output:0*
_output_shapes
:ë
:sequential_3/dense_flipout_5/Normal/sample/BroadcastArgs_1BroadcastArgs=sequential_3/dense_flipout_5/Normal/sample/BroadcastArgs:r0:0Csequential_3/dense_flipout_5/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
:sequential_3/dense_flipout_5/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:x
6sequential_3/dense_flipout_5/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ²
1sequential_3/dense_flipout_5/Normal/sample/concatConcatV2Csequential_3/dense_flipout_5/Normal/sample/concat/values_0:output:0?sequential_3/dense_flipout_5/Normal/sample/BroadcastArgs_1:r0:0?sequential_3/dense_flipout_5/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Dsequential_3/dense_flipout_5/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Fsequential_3/dense_flipout_5/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?â
Tsequential_3/dense_flipout_5/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal:sequential_3/dense_flipout_5/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0§
Csequential_3/dense_flipout_5/Normal/sample/normal/random_normal/mulMul]sequential_3/dense_flipout_5/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Osequential_3/dense_flipout_5/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
?sequential_3/dense_flipout_5/Normal/sample/normal/random_normalAddV2Gsequential_3/dense_flipout_5/Normal/sample/normal/random_normal/mul:z:0Msequential_3/dense_flipout_5/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:Û
.sequential_3/dense_flipout_5/Normal/sample/mulMulCsequential_3/dense_flipout_5/Normal/sample/normal/random_normal:z:02sequential_3/dense_flipout_5/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ì
0sequential_3/dense_flipout_5/Normal/sample/add_1AddV22sequential_3/dense_flipout_5/Normal/sample/mul:z:00sequential_3/dense_flipout_5/zeros_like:output:0*
T0*"
_output_shapes
:
8sequential_3/dense_flipout_5/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ß
2sequential_3/dense_flipout_5/Normal/sample/ReshapeReshape4sequential_3/dense_flipout_5/Normal/sample/add_1:z:0Asequential_3/dense_flipout_5/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
"sequential_3/dense_flipout_5/ShapeShape/sequential_3/dense_flipout_4/Relu:activations:0*
T0*
_output_shapes
:z
0sequential_3/dense_flipout_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
2sequential_3/dense_flipout_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ|
2sequential_3/dense_flipout_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
*sequential_3/dense_flipout_5/strided_sliceStridedSlice+sequential_3/dense_flipout_5/Shape:output:09sequential_3/dense_flipout_5/strided_slice/stack:output:0;sequential_3/dense_flipout_5/strided_slice/stack_1:output:0;sequential_3/dense_flipout_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Hsequential_3/dense_flipout_5/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Fsequential_3/dense_flipout_5/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Fsequential_3/dense_flipout_5/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿü
Bsequential_3/dense_flipout_5/rademacher/uniform/sanitize_seed/seedRandomUniformIntQsequential_3/dense_flipout_5/rademacher/uniform/sanitize_seed/seed/shape:output:0Osequential_3/dense_flipout_5/rademacher/uniform/sanitize_seed/seed/min:output:0Osequential_3/dense_flipout_5/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Lsequential_3/dense_flipout_5/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Lsequential_3/dense_flipout_5/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
esequential_3/dense_flipout_5/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterKsequential_3/dense_flipout_5/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Lsequential_3/dense_flipout_5/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :­
Hsequential_3/dense_flipout_5/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2+sequential_3/dense_flipout_5/Shape:output:0ksequential_3/dense_flipout_5/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0osequential_3/dense_flipout_5/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Usequential_3/dense_flipout_5/rademacher/uniform/stateless_random_uniform/alg:output:0Usequential_3/dense_flipout_5/rademacher/uniform/stateless_random_uniform/min:output:0Usequential_3/dense_flipout_5/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	o
-sequential_3/dense_flipout_5/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rï
+sequential_3/dense_flipout_5/rademacher/mulMul6sequential_3/dense_flipout_5/rademacher/mul/x:output:0Qsequential_3/dense_flipout_5/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-sequential_3/dense_flipout_5/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÍ
+sequential_3/dense_flipout_5/rademacher/subSub/sequential_3/dense_flipout_5/rademacher/mul:z:06sequential_3/dense_flipout_5/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
,sequential_3/dense_flipout_5/rademacher/CastCast/sequential_3/dense_flipout_5/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-sequential_3/dense_flipout_5/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :m
+sequential_3/dense_flipout_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : È
'sequential_3/dense_flipout_5/ExpandDims
ExpandDims6sequential_3/dense_flipout_5/ExpandDims/input:output:04sequential_3/dense_flipout_5/ExpandDims/dim:output:0*
T0*
_output_shapes
:j
(sequential_3/dense_flipout_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
#sequential_3/dense_flipout_5/concatConcatV23sequential_3/dense_flipout_5/strided_slice:output:00sequential_3/dense_flipout_5/ExpandDims:output:01sequential_3/dense_flipout_5/concat/axis:output:0*
N*
T0*
_output_shapes
:
Jsequential_3/dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Hsequential_3/dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Hsequential_3/dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Dsequential_3/dense_flipout_5/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntSsequential_3/dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Qsequential_3/dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/min:output:0Qsequential_3/dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Nsequential_3/dense_flipout_5/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Nsequential_3/dense_flipout_5/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
gsequential_3/dense_flipout_5/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterMsequential_3/dense_flipout_5/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Nsequential_3/dense_flipout_5/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :º
Jsequential_3/dense_flipout_5/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2,sequential_3/dense_flipout_5/concat:output:0msequential_3/dense_flipout_5/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0qsequential_3/dense_flipout_5/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Wsequential_3/dense_flipout_5/rademacher_1/uniform/stateless_random_uniform/alg:output:0Wsequential_3/dense_flipout_5/rademacher_1/uniform/stateless_random_uniform/min:output:0Wsequential_3/dense_flipout_5/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	q
/sequential_3/dense_flipout_5/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rõ
-sequential_3/dense_flipout_5/rademacher_1/mulMul8sequential_3/dense_flipout_5/rademacher_1/mul/x:output:0Ssequential_3/dense_flipout_5/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/sequential_3/dense_flipout_5/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÓ
-sequential_3/dense_flipout_5/rademacher_1/subSub1sequential_3/dense_flipout_5/rademacher_1/mul:z:08sequential_3/dense_flipout_5/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
.sequential_3/dense_flipout_5/rademacher_1/CastCast1sequential_3/dense_flipout_5/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
 sequential_3/dense_flipout_5/mulMul/sequential_3/dense_flipout_4/Relu:activations:00sequential_3/dense_flipout_5/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
#sequential_3/dense_flipout_5/MatMulMatMul$sequential_3/dense_flipout_5/mul:z:0;sequential_3/dense_flipout_5/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
"sequential_3/dense_flipout_5/mul_1Mul-sequential_3/dense_flipout_5/MatMul:product:02sequential_3/dense_flipout_5/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
4sequential_3/dense_flipout_5/MatMul_1/ReadVariableOpReadVariableOp=sequential_3_dense_flipout_5_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ð
%sequential_3/dense_flipout_5/MatMul_1MatMul/sequential_3/dense_flipout_4/Relu:activations:0<sequential_3/dense_flipout_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 sequential_3/dense_flipout_5/addAddV2/sequential_3/dense_flipout_5/MatMul_1:product:0&sequential_3/dense_flipout_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
hsequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¿
}sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ù
sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Å
sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_3_dense_flipout_5_independentdeterministic_constructed_at_dense_flipout_5_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Ë
sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:¸
vsequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ï
sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ñ
sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ñ
sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
~sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_sliceStridedSlicesequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/shape_as_tensor:output:0sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack:output:0sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskÅ
sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ç
sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ä
~sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Ë
sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ä
sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¾
|sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
wsequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concatConcatV2sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/values_0:output:0sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/values_2:output:0sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Á
|sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastToBroadcastTosequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOp:value:0sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:Ï
~sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¾
xsequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReshapeReshapesequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastTo:output:0sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:³
isequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
csequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/ReshapeReshapesequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/Reshape:output:0rsequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Reshape/shape:output:0*
T0*
_output_shapes
:õ
$sequential_3/dense_flipout_5/BiasAddBiasAdd$sequential_3/dense_flipout_5/add:z:0lsequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$sequential_3/dense_flipout_5/SoftmaxSoftmax-sequential_3/dense_flipout_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpKsequential_3_dense_flipout_5_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0´
òsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:µ
ïsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
ísequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2øsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
ésequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogñsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
ësequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logìsequential_3_dense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217754*
T0*
_output_shapes
: ü
ésequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubísequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ïsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ó
ôsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp=sequential_3_dense_flipout_5_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
ísequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivüsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ìsequential_3_dense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217754*
T0*
_output_shapes

:
ïsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivñsequential_3_dense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xìsequential_3_dense_flipout_5_kullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_217754*
T0*
_output_shapes

: 
÷sequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceñsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ósequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:±
ësequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ésequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulôsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ûsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:³
ísequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
ësequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulösequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ísequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
ësequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ïsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:³
ísequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ësequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulösequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ïsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:þ
ésequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ísequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ïsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:ü
ësequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subísequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ísequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:û
©sequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿç
sequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumïsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0²sequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: f
#sequential_3/dense_flipout_5/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6
!sequential_3/dense_flipout_5/CastCast,sequential_3/dense_flipout_5/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 
$sequential_3/dense_flipout_5/truedivRealDiv sequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0%sequential_3/dense_flipout_5/Cast:y:0*
T0*
_output_shapes
: 
.sequential_3/dense_flipout_5/divergence_kernelIdentity(sequential_3/dense_flipout_5/truediv:z:0*
T0*
_output_shapes
: }
IdentityIdentity.sequential_3/dense_flipout_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOp^sequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpõ^sequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp5^sequential_3/dense_flipout_3/MatMul_1/ReadVariableOpC^sequential_3/dense_flipout_3/Normal/sample/Softplus/ReadVariableOp^sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOp^sequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpõ^sequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp5^sequential_3/dense_flipout_4/MatMul_1/ReadVariableOpC^sequential_3/dense_flipout_4/Normal/sample/Softplus/ReadVariableOp^sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOp^sequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpõ^sequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp5^sequential_3/dense_flipout_5/MatMul_1/ReadVariableOpC^sequential_3/dense_flipout_5/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2
sequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOpsequential_3/dense_flipout_3/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_3/sample/Deterministic/sample/ReadVariableOp2
sequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2î
ôsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpôsequential_3/dense_flipout_3/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_3/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2l
4sequential_3/dense_flipout_3/MatMul_1/ReadVariableOp4sequential_3/dense_flipout_3/MatMul_1/ReadVariableOp2
Bsequential_3/dense_flipout_3/Normal/sample/Softplus/ReadVariableOpBsequential_3/dense_flipout_3/Normal/sample/Softplus/ReadVariableOp2
sequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOpsequential_3/dense_flipout_4/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOp2
sequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2î
ôsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpôsequential_3/dense_flipout_4/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2l
4sequential_3/dense_flipout_4/MatMul_1/ReadVariableOp4sequential_3/dense_flipout_4/MatMul_1/ReadVariableOp2
Bsequential_3/dense_flipout_4/Normal/sample/Softplus/ReadVariableOpBsequential_3/dense_flipout_4/Normal/sample/Softplus/ReadVariableOp2
sequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOpsequential_3/dense_flipout_5/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOp2
sequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2î
ôsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpôsequential_3/dense_flipout_5/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2l
4sequential_3/dense_flipout_5/MatMul_1/ReadVariableOp4sequential_3/dense_flipout_5/MatMul_1/ReadVariableOp2
Bsequential_3/dense_flipout_5/Normal/sample/Softplus/ReadVariableOpBsequential_3/dense_flipout_5/Normal/sample/Softplus/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2:
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
	
Ø
0__inference_dense_flipout_3_layer_call_fn_219552

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity¢StatefulPartitionedCall
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_3_layer_call_and_return_conditional_losses_217932o
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
­

"__inference__traced_restore_220262
file_prefixG
5assignvariableop_dense_flipout_3_kernel_posterior_loc:Y
Gassignvariableop_1_dense_flipout_3_kernel_posterior_untransformed_scale:C
5assignvariableop_2_dense_flipout_3_bias_posterior_loc:I
7assignvariableop_3_dense_flipout_4_kernel_posterior_loc:Y
Gassignvariableop_4_dense_flipout_4_kernel_posterior_untransformed_scale:C
5assignvariableop_5_dense_flipout_4_bias_posterior_loc:I
7assignvariableop_6_dense_flipout_5_kernel_posterior_loc:Y
Gassignvariableop_7_dense_flipout_5_kernel_posterior_untransformed_scale:C
5assignvariableop_8_dense_flipout_5_bias_posterior_loc:&
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: #
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: Q
?assignvariableop_18_adam_dense_flipout_3_kernel_posterior_loc_m:a
Oassignvariableop_19_adam_dense_flipout_3_kernel_posterior_untransformed_scale_m:K
=assignvariableop_20_adam_dense_flipout_3_bias_posterior_loc_m:Q
?assignvariableop_21_adam_dense_flipout_4_kernel_posterior_loc_m:a
Oassignvariableop_22_adam_dense_flipout_4_kernel_posterior_untransformed_scale_m:K
=assignvariableop_23_adam_dense_flipout_4_bias_posterior_loc_m:Q
?assignvariableop_24_adam_dense_flipout_5_kernel_posterior_loc_m:a
Oassignvariableop_25_adam_dense_flipout_5_kernel_posterior_untransformed_scale_m:K
=assignvariableop_26_adam_dense_flipout_5_bias_posterior_loc_m:Q
?assignvariableop_27_adam_dense_flipout_3_kernel_posterior_loc_v:a
Oassignvariableop_28_adam_dense_flipout_3_kernel_posterior_untransformed_scale_v:K
=assignvariableop_29_adam_dense_flipout_3_bias_posterior_loc_v:Q
?assignvariableop_30_adam_dense_flipout_4_kernel_posterior_loc_v:a
Oassignvariableop_31_adam_dense_flipout_4_kernel_posterior_untransformed_scale_v:K
=assignvariableop_32_adam_dense_flipout_4_bias_posterior_loc_v:Q
?assignvariableop_33_adam_dense_flipout_5_kernel_posterior_loc_v:a
Oassignvariableop_34_adam_dense_flipout_5_kernel_posterior_untransformed_scale_v:K
=assignvariableop_35_adam_dense_flipout_5_bias_posterior_loc_v:
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
: 
AssignVariableOpAssignVariableOp5assignvariableop_dense_flipout_3_kernel_posterior_locIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_1AssignVariableOpGassignvariableop_1_dense_flipout_3_kernel_posterior_untransformed_scaleIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_2AssignVariableOp5assignvariableop_2_dense_flipout_3_bias_posterior_locIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_3AssignVariableOp7assignvariableop_3_dense_flipout_4_kernel_posterior_locIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_4AssignVariableOpGassignvariableop_4_dense_flipout_4_kernel_posterior_untransformed_scaleIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_5AssignVariableOp5assignvariableop_5_dense_flipout_4_bias_posterior_locIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_6AssignVariableOp7assignvariableop_6_dense_flipout_5_kernel_posterior_locIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_7AssignVariableOpGassignvariableop_7_dense_flipout_5_kernel_posterior_untransformed_scaleIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_8AssignVariableOp5assignvariableop_8_dense_flipout_5_bias_posterior_locIdentity_8:output:0"/device:CPU:0*
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
:°
AssignVariableOp_18AssignVariableOp?assignvariableop_18_adam_dense_flipout_3_kernel_posterior_loc_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_19AssignVariableOpOassignvariableop_19_adam_dense_flipout_3_kernel_posterior_untransformed_scale_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_20AssignVariableOp=assignvariableop_20_adam_dense_flipout_3_bias_posterior_loc_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_21AssignVariableOp?assignvariableop_21_adam_dense_flipout_4_kernel_posterior_loc_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_22AssignVariableOpOassignvariableop_22_adam_dense_flipout_4_kernel_posterior_untransformed_scale_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_23AssignVariableOp=assignvariableop_23_adam_dense_flipout_4_bias_posterior_loc_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_24AssignVariableOp?assignvariableop_24_adam_dense_flipout_5_kernel_posterior_loc_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_25AssignVariableOpOassignvariableop_25_adam_dense_flipout_5_kernel_posterior_untransformed_scale_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_26AssignVariableOp=assignvariableop_26_adam_dense_flipout_5_bias_posterior_loc_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_27AssignVariableOp?assignvariableop_27_adam_dense_flipout_3_kernel_posterior_loc_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_28AssignVariableOpOassignvariableop_28_adam_dense_flipout_3_kernel_posterior_untransformed_scale_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_29AssignVariableOp=assignvariableop_29_adam_dense_flipout_3_bias_posterior_loc_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_30AssignVariableOp?assignvariableop_30_adam_dense_flipout_4_kernel_posterior_loc_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_31AssignVariableOpOassignvariableop_31_adam_dense_flipout_4_kernel_posterior_untransformed_scale_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_32AssignVariableOp=assignvariableop_32_adam_dense_flipout_4_bias_posterior_loc_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_33AssignVariableOp?assignvariableop_33_adam_dense_flipout_5_kernel_posterior_loc_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_34AssignVariableOpOassignvariableop_34_adam_dense_flipout_5_kernel_posterior_untransformed_scale_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_35AssignVariableOp=assignvariableop_35_adam_dense_flipout_5_bias_posterior_loc_vIdentity_35:output:0"/device:CPU:0*
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

»
-__inference_sequential_3_layer_call_fn_218669

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
identity¢StatefulPartitionedCall
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
GPU 2J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_218427o
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
Êú

K__inference_dense_flipout_4_layer_call_and_return_conditional_losses_219850

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:y
kindependentdeterministic_constructed_at_dense_flipout_4_sample_deterministic_sample_readvariableop_resource:Ô
Ïkullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219819Ù
Ôkullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOp¢äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

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
:ÿÿÿÿÿÿÿÿÿ
KIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :»
qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOpReadVariableOpkindependentdeterministic_constructed_at_dense_flipout_4_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
YIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ±
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ý
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_sliceStridedSlicelIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/shape_as_tensor:output:0pIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack_1:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ©
fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ë
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgsBroadcastArgsoIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:¦
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¡
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Â
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concatConcatV2lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/values_0:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastArgs:r0:0lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/values_2:output:0hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:è
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastToBroadcastTojIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOp:value:0cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:²
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      å
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReshapeReshapehIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/BroadcastTo:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:³
FIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/ReshapeReshapedIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/Reshape:output:0UIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0OIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ú
ÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusìKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ç
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ãKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ô
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:É
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÏkullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219819*
T0*
_output_shapes
: ¥
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:¹
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¹
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ïkullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219819*
T0*
_output_shapes

:°
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÔkullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÏkullbackleibler_independentnormal_constructed_at_dense_flipout_4_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219819*
T0*
_output_shapes

:É
ÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¸
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ÞKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @®
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ö
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?°
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:§
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¥
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Þ
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
zKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
: Ã
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
: °
NoOpNoOpc^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOpå^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpØ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2È
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOpbIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_4/sample/Deterministic/sample/ReadVariableOp2Î
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpäKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2´
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_4/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
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
Ïú

K__inference_dense_flipout_5_layer_call_and_return_conditional_losses_220007

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:y
kindependentdeterministic_constructed_at_dense_flipout_5_sample_deterministic_sample_readvariableop_resource:Ô
Ïkullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219976Ù
Ôkullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOp¢äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

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
:ÿÿÿÿÿÿÿÿÿ
KIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :»
qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOpReadVariableOpkindependentdeterministic_constructed_at_dense_flipout_5_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
YIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ±
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ý
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_sliceStridedSlicelIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/shape_as_tensor:output:0pIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack_1:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ©
fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ë
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgsBroadcastArgsoIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:¦
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¡
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Â
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concatConcatV2lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/values_0:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgs:r0:0lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/values_2:output:0hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:è
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastToBroadcastTojIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOp:value:0cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:²
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      å
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReshapeReshapehIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastTo:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:³
FIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/ReshapeReshapedIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/Reshape:output:0UIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0OIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ú
ÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusìKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ç
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ãKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ô
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:É
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÏkullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219976*
T0*
_output_shapes
: ¥
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:¹
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¹
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ïkullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219976*
T0*
_output_shapes

:°
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÔkullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÏkullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_219976*
T0*
_output_shapes

:É
ÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¸
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ÞKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @®
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ö
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?°
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:§
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¥
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Þ
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
zKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
: Ã
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
: °
NoOpNoOpc^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOpå^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpØ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2È
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOpbIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOp2Î
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpäKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2´
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
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
	
Ø
0__inference_dense_flipout_4_layer_call_fn_219709

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity¢StatefulPartitionedCall
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_4_layer_call_and_return_conditional_losses_218086o
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
æ
¬
H__inference_sequential_3_layer_call_and_return_conditional_losses_218544
input_2(
dense_flipout_3_218504:(
dense_flipout_3_218506:$
dense_flipout_3_218508:
dense_flipout_3_218510
dense_flipout_3_218512(
dense_flipout_4_218516:(
dense_flipout_4_218518:$
dense_flipout_4_218520:
dense_flipout_4_218522
dense_flipout_4_218524(
dense_flipout_5_218528:(
dense_flipout_5_218530:$
dense_flipout_5_218532:
dense_flipout_5_218534
dense_flipout_5_218536
identity

identity_1

identity_2

identity_3¢'dense_flipout_3/StatefulPartitionedCall¢'dense_flipout_4/StatefulPartitionedCall¢'dense_flipout_5/StatefulPartitionedCallÜ
'dense_flipout_3/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_flipout_3_218504dense_flipout_3_218506dense_flipout_3_218508dense_flipout_3_218510dense_flipout_3_218512*
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_3_layer_call_and_return_conditional_losses_217932
'dense_flipout_4/StatefulPartitionedCallStatefulPartitionedCall0dense_flipout_3/StatefulPartitionedCall:output:0dense_flipout_4_218516dense_flipout_4_218518dense_flipout_4_218520dense_flipout_4_218522dense_flipout_4_218524*
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_4_layer_call_and_return_conditional_losses_218086
'dense_flipout_5/StatefulPartitionedCallStatefulPartitionedCall0dense_flipout_4/StatefulPartitionedCall:output:0dense_flipout_5_218528dense_flipout_5_218530dense_flipout_5_218532dense_flipout_5_218534dense_flipout_5_218536*
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
GPU 2J 8 *T
fORM
K__inference_dense_flipout_5_layer_call_and_return_conditional_losses_218240
IdentityIdentity0dense_flipout_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp

Identity_1Identity0dense_flipout_3/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: p

Identity_2Identity0dense_flipout_4/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: p

Identity_3Identity0dense_flipout_5/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Ä
NoOpNoOp(^dense_flipout_3/StatefulPartitionedCall(^dense_flipout_4/StatefulPartitionedCall(^dense_flipout_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2R
'dense_flipout_3/StatefulPartitionedCall'dense_flipout_3/StatefulPartitionedCall2R
'dense_flipout_4/StatefulPartitionedCall'dense_flipout_4/StatefulPartitionedCall2R
'dense_flipout_5/StatefulPartitionedCall'dense_flipout_5/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2:
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
Ïú

K__inference_dense_flipout_5_layer_call_and_return_conditional_losses_218240

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:y
kindependentdeterministic_constructed_at_dense_flipout_5_sample_deterministic_sample_readvariableop_resource:Ô
Ïkullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218209Ù
Ôkullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOp¢äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

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
:ÿÿÿÿÿÿÿÿÿ
KIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :»
qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOpReadVariableOpkindependentdeterministic_constructed_at_dense_flipout_5_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
YIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ±
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ý
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_sliceStridedSlicelIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/shape_as_tensor:output:0pIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack_1:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ©
fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ë
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgsBroadcastArgsoIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:¦
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¡
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Â
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concatConcatV2lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/values_0:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastArgs:r0:0lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/values_2:output:0hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:è
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastToBroadcastTojIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOp:value:0cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:²
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      å
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReshapeReshapehIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/BroadcastTo:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:³
FIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/ReshapeReshapedIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/Reshape:output:0UIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0OIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ú
ÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusìKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ç
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ãKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ô
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:É
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÏkullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218209*
T0*
_output_shapes
: ¥
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:¹
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¹
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ïkullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218209*
T0*
_output_shapes

:°
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÔkullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÏkullbackleibler_independentnormal_constructed_at_dense_flipout_5_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_218209*
T0*
_output_shapes

:É
ÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¸
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ÞKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @®
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ö
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?°
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:§
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¥
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Þ
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
zKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
: Ã
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
: °
NoOpNoOpc^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOpå^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpØ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2È
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOpbIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_5/sample/Deterministic/sample/ReadVariableOp2Î
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpäKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2´
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_5/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
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

¼
-__inference_sequential_3_layer_call_fn_218293
input_2
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
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_218257o
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
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2:
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

:"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*²
serving_default
;
input_20
serving_default_input_2:0ÿÿÿÿÿÿÿÿÿC
dense_flipout_50
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ºr
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
2ÿ
-__inference_sequential_3_layer_call_fn_218293
-__inference_sequential_3_layer_call_fn_218631
-__inference_sequential_3_layer_call_fn_218669
-__inference_sequential_3_layer_call_fn_218501À
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
î2ë
H__inference_sequential_3_layer_call_and_return_conditional_losses_219084
H__inference_sequential_3_layer_call_and_return_conditional_losses_219499
H__inference_sequential_3_layer_call_and_return_conditional_losses_218544
H__inference_sequential_3_layer_call_and_return_conditional_losses_218587À
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
ÌBÉ
!__inference__wrapped_model_217784input_2"
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
6:42$dense_flipout_3/kernel_posterior_loc
F:D24dense_flipout_3/kernel_posterior_untransformed_scale
E
?_distribution
@_graph_parents"
_generic_user_object
E
A_distribution
B_graph_parents"
_generic_user_object
0:.2"dense_flipout_3/bias_posterior_loc
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
Ú2×
0__inference_dense_flipout_3_layer_call_fn_219552¢
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
õ2ò
K__inference_dense_flipout_3_layer_call_and_return_conditional_losses_219693¢
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
6:42$dense_flipout_4/kernel_posterior_loc
F:D24dense_flipout_4/kernel_posterior_untransformed_scale
E
L_distribution
M_graph_parents"
_generic_user_object
E
N_distribution
O_graph_parents"
_generic_user_object
0:.2"dense_flipout_4/bias_posterior_loc
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
Ú2×
0__inference_dense_flipout_4_layer_call_fn_219709¢
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
õ2ò
K__inference_dense_flipout_4_layer_call_and_return_conditional_losses_219850¢
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
6:42$dense_flipout_5/kernel_posterior_loc
F:D24dense_flipout_5/kernel_posterior_untransformed_scale
E
Y_distribution
Z_graph_parents"
_generic_user_object
E
[_distribution
\_graph_parents"
_generic_user_object
0:.2"dense_flipout_5/bias_posterior_loc
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
Ú2×
0__inference_dense_flipout_5_layer_call_fn_219866¢
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
õ2ò
K__inference_dense_flipout_5_layer_call_and_return_conditional_losses_220007¢
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
ËBÈ
$__inference_signature_wrapper_219536input_2"
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
;:92+Adam/dense_flipout_3/kernel_posterior_loc/m
K:I2;Adam/dense_flipout_3/kernel_posterior_untransformed_scale/m
5:32)Adam/dense_flipout_3/bias_posterior_loc/m
;:92+Adam/dense_flipout_4/kernel_posterior_loc/m
K:I2;Adam/dense_flipout_4/kernel_posterior_untransformed_scale/m
5:32)Adam/dense_flipout_4/bias_posterior_loc/m
;:92+Adam/dense_flipout_5/kernel_posterior_loc/m
K:I2;Adam/dense_flipout_5/kernel_posterior_untransformed_scale/m
5:32)Adam/dense_flipout_5/bias_posterior_loc/m
;:92+Adam/dense_flipout_3/kernel_posterior_loc/v
K:I2;Adam/dense_flipout_3/kernel_posterior_untransformed_scale/v
5:32)Adam/dense_flipout_3/bias_posterior_loc/v
;:92+Adam/dense_flipout_4/kernel_posterior_loc/v
K:I2;Adam/dense_flipout_4/kernel_posterior_untransformed_scale/v
5:32)Adam/dense_flipout_4/bias_posterior_loc/v
;:92+Adam/dense_flipout_5/kernel_posterior_loc/v
K:I2;Adam/dense_flipout_5/kernel_posterior_untransformed_scale/v
5:32)Adam/dense_flipout_5/bias_posterior_loc/v
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
Const_5²
!__inference__wrapped_model_217784('+0¢-
&¢#
!
input_2ÿÿÿÿÿÿÿÿÿ
ª "Aª>
<
dense_flipout_5)&
dense_flipout_5ÿÿÿÿÿÿÿÿÿ¾
K__inference_dense_flipout_3_layer_call_and_return_conditional_losses_219693o/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "3¢0

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
0__inference_dense_flipout_3_layer_call_fn_219552T/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¾
K__inference_dense_flipout_4_layer_call_and_return_conditional_losses_219850o/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "3¢0

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
0__inference_dense_flipout_4_layer_call_fn_219709T/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¾
K__inference_dense_flipout_5_layer_call_and_return_conditional_losses_220007o('+/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "3¢0

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
0__inference_dense_flipout_5_layer_call_fn_219866T('+/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿï
H__inference_sequential_3_layer_call_and_return_conditional_losses_218544¢('+8¢5
.¢+
!
input_2ÿÿÿÿÿÿÿÿÿ
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
1/2 ï
H__inference_sequential_3_layer_call_and_return_conditional_losses_218587¢('+8¢5
.¢+
!
input_2ÿÿÿÿÿÿÿÿÿ
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
1/2 î
H__inference_sequential_3_layer_call_and_return_conditional_losses_219084¡('+7¢4
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
1/2 î
H__inference_sequential_3_layer_call_and_return_conditional_losses_219499¡('+7¢4
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
1/2 
-__inference_sequential_3_layer_call_fn_218293k('+8¢5
.¢+
!
input_2ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_3_layer_call_fn_218501k('+8¢5
.¢+
!
input_2ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_3_layer_call_fn_218631j('+7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_3_layer_call_fn_218669j('+7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÀ
$__inference_signature_wrapper_219536('+;¢8
¢ 
1ª.
,
input_2!
input_2ÿÿÿÿÿÿÿÿÿ"Aª>
<
dense_flipout_5)&
dense_flipout_5ÿÿÿÿÿÿÿÿÿ