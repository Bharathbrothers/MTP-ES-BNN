ÿº&
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
 "serve*2.8.02v2.8.0-0-g3f878cff5b68ø¦%
¤
$dense_flipout_9/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$dense_flipout_9/kernel_posterior_loc

8dense_flipout_9/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp$dense_flipout_9/kernel_posterior_loc*
_output_shapes

:*
dtype0
Ä
4dense_flipout_9/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*E
shared_name64dense_flipout_9/kernel_posterior_untransformed_scale
½
Hdense_flipout_9/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp4dense_flipout_9/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

"dense_flipout_9/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"dense_flipout_9/bias_posterior_loc

6dense_flipout_9/bias_posterior_loc/Read/ReadVariableOpReadVariableOp"dense_flipout_9/bias_posterior_loc*
_output_shapes
:*
dtype0
¦
%dense_flipout_10/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%dense_flipout_10/kernel_posterior_loc

9dense_flipout_10/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp%dense_flipout_10/kernel_posterior_loc*
_output_shapes

:*
dtype0
Æ
5dense_flipout_10/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75dense_flipout_10/kernel_posterior_untransformed_scale
¿
Idense_flipout_10/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp5dense_flipout_10/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

#dense_flipout_10/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#dense_flipout_10/bias_posterior_loc

7dense_flipout_10/bias_posterior_loc/Read/ReadVariableOpReadVariableOp#dense_flipout_10/bias_posterior_loc*
_output_shapes
:*
dtype0
¦
%dense_flipout_11/kernel_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%dense_flipout_11/kernel_posterior_loc

9dense_flipout_11/kernel_posterior_loc/Read/ReadVariableOpReadVariableOp%dense_flipout_11/kernel_posterior_loc*
_output_shapes

:*
dtype0
Æ
5dense_flipout_11/kernel_posterior_untransformed_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75dense_flipout_11/kernel_posterior_untransformed_scale
¿
Idense_flipout_11/kernel_posterior_untransformed_scale/Read/ReadVariableOpReadVariableOp5dense_flipout_11/kernel_posterior_untransformed_scale*
_output_shapes

:*
dtype0

#dense_flipout_11/bias_posterior_locVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#dense_flipout_11/bias_posterior_loc

7dense_flipout_11/bias_posterior_loc/Read/ReadVariableOpReadVariableOp#dense_flipout_11/bias_posterior_loc*
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
+Adam/dense_flipout_9/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+Adam/dense_flipout_9/kernel_posterior_loc/m
«
?Adam/dense_flipout_9/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp+Adam/dense_flipout_9/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Ò
;Adam/dense_flipout_9/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*L
shared_name=;Adam/dense_flipout_9/kernel_posterior_untransformed_scale/m
Ë
OAdam/dense_flipout_9/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp;Adam/dense_flipout_9/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
ª
)Adam/dense_flipout_9/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/dense_flipout_9/bias_posterior_loc/m
£
=Adam/dense_flipout_9/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp)Adam/dense_flipout_9/bias_posterior_loc/m*
_output_shapes
:*
dtype0
´
,Adam/dense_flipout_10/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_10/kernel_posterior_loc/m
­
@Adam/dense_flipout_10/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_10/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Ô
<Adam/dense_flipout_10/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_10/kernel_posterior_untransformed_scale/m
Í
PAdam/dense_flipout_10/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_10/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_10/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_10/bias_posterior_loc/m
¥
>Adam/dense_flipout_10/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_10/bias_posterior_loc/m*
_output_shapes
:*
dtype0
´
,Adam/dense_flipout_11/kernel_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_11/kernel_posterior_loc/m
­
@Adam/dense_flipout_11/kernel_posterior_loc/m/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_11/kernel_posterior_loc/m*
_output_shapes

:*
dtype0
Ô
<Adam/dense_flipout_11/kernel_posterior_untransformed_scale/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_11/kernel_posterior_untransformed_scale/m
Í
PAdam/dense_flipout_11/kernel_posterior_untransformed_scale/m/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_11/kernel_posterior_untransformed_scale/m*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_11/bias_posterior_loc/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_11/bias_posterior_loc/m
¥
>Adam/dense_flipout_11/bias_posterior_loc/m/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_11/bias_posterior_loc/m*
_output_shapes
:*
dtype0
²
+Adam/dense_flipout_9/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+Adam/dense_flipout_9/kernel_posterior_loc/v
«
?Adam/dense_flipout_9/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp+Adam/dense_flipout_9/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Ò
;Adam/dense_flipout_9/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*L
shared_name=;Adam/dense_flipout_9/kernel_posterior_untransformed_scale/v
Ë
OAdam/dense_flipout_9/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp;Adam/dense_flipout_9/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
ª
)Adam/dense_flipout_9/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/dense_flipout_9/bias_posterior_loc/v
£
=Adam/dense_flipout_9/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp)Adam/dense_flipout_9/bias_posterior_loc/v*
_output_shapes
:*
dtype0
´
,Adam/dense_flipout_10/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_10/kernel_posterior_loc/v
­
@Adam/dense_flipout_10/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_10/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Ô
<Adam/dense_flipout_10/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_10/kernel_posterior_untransformed_scale/v
Í
PAdam/dense_flipout_10/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_10/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_10/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_10/bias_posterior_loc/v
¥
>Adam/dense_flipout_10/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_10/bias_posterior_loc/v*
_output_shapes
:*
dtype0
´
,Adam/dense_flipout_11/kernel_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/dense_flipout_11/kernel_posterior_loc/v
­
@Adam/dense_flipout_11/kernel_posterior_loc/v/Read/ReadVariableOpReadVariableOp,Adam/dense_flipout_11/kernel_posterior_loc/v*
_output_shapes

:*
dtype0
Ô
<Adam/dense_flipout_11/kernel_posterior_untransformed_scale/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*M
shared_name><Adam/dense_flipout_11/kernel_posterior_untransformed_scale/v
Í
PAdam/dense_flipout_11/kernel_posterior_untransformed_scale/v/Read/ReadVariableOpReadVariableOp<Adam/dense_flipout_11/kernel_posterior_untransformed_scale/v*
_output_shapes

:*
dtype0
¬
*Adam/dense_flipout_11/bias_posterior_loc/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/dense_flipout_11/bias_posterior_loc/v
¥
>Adam/dense_flipout_11/bias_posterior_loc/v/Read/ReadVariableOpReadVariableOp*Adam/dense_flipout_11/bias_posterior_loc/v*
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

:*
dtype0*
valueB*    

NoOpNoOp
ÂL
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*ûK
valueñKBîK BçK
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
VARIABLE_VALUE$dense_flipout_9/kernel_posterior_locDlayer_with_weights-0/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE4dense_flipout_9/kernel_posterior_untransformed_scaleTlayer_with_weights-0/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
?_distribution
@_graph_parents*
)
A_distribution
B_graph_parents* 
~x
VARIABLE_VALUE"dense_flipout_9/bias_posterior_locBlayer_with_weights-0/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUE%dense_flipout_10/kernel_posterior_locDlayer_with_weights-1/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
¤
VARIABLE_VALUE5dense_flipout_10/kernel_posterior_untransformed_scaleTlayer_with_weights-1/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
L_distribution
M_graph_parents*
)
N_distribution
O_graph_parents* 
y
VARIABLE_VALUE#dense_flipout_10/bias_posterior_locBlayer_with_weights-1/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUE%dense_flipout_11/kernel_posterior_locDlayer_with_weights-2/kernel_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
¤
VARIABLE_VALUE5dense_flipout_11/kernel_posterior_untransformed_scaleTlayer_with_weights-2/kernel_posterior_untransformed_scale/.ATTRIBUTES/VARIABLE_VALUE*
+
Y_distribution
Z_graph_parents*
)
[_distribution
\_graph_parents* 
y
VARIABLE_VALUE#dense_flipout_11/bias_posterior_locBlayer_with_weights-2/bias_posterior_loc/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUE+Adam/dense_flipout_9/kernel_posterior_loc/m`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Æ¿
VARIABLE_VALUE;Adam/dense_flipout_9/kernel_posterior_untransformed_scale/mplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¢
VARIABLE_VALUE)Adam/dense_flipout_9/bias_posterior_loc/m^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_10/kernel_posterior_loc/m`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ÇÀ
VARIABLE_VALUE<Adam/dense_flipout_10/kernel_posterior_untransformed_scale/mplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_10/bias_posterior_loc/m^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_11/kernel_posterior_loc/m`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ÇÀ
VARIABLE_VALUE<Adam/dense_flipout_11/kernel_posterior_untransformed_scale/mplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_11/bias_posterior_loc/m^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUE+Adam/dense_flipout_9/kernel_posterior_loc/v`layer_with_weights-0/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Æ¿
VARIABLE_VALUE;Adam/dense_flipout_9/kernel_posterior_untransformed_scale/vplayer_with_weights-0/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¢
VARIABLE_VALUE)Adam/dense_flipout_9/bias_posterior_loc/v^layer_with_weights-0/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_10/kernel_posterior_loc/v`layer_with_weights-1/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ÇÀ
VARIABLE_VALUE<Adam/dense_flipout_10/kernel_posterior_untransformed_scale/vplayer_with_weights-1/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_10/bias_posterior_loc/v^layer_with_weights-1/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
§ 
VARIABLE_VALUE,Adam/dense_flipout_11/kernel_posterior_loc/v`layer_with_weights-2/kernel_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ÇÀ
VARIABLE_VALUE<Adam/dense_flipout_11/kernel_posterior_untransformed_scale/vplayer_with_weights-2/kernel_posterior_untransformed_scale/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUE*Adam/dense_flipout_11/bias_posterior_loc/v^layer_with_weights-2/bias_posterior_loc/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_4Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_44dense_flipout_9/kernel_posterior_untransformed_scale$dense_flipout_9/kernel_posterior_loc"dense_flipout_9/bias_posterior_locConstConst_15dense_flipout_10/kernel_posterior_untransformed_scale%dense_flipout_10/kernel_posterior_loc#dense_flipout_10/bias_posterior_locConst_2Const_35dense_flipout_11/kernel_posterior_untransformed_scale%dense_flipout_11/kernel_posterior_loc#dense_flipout_11/bias_posterior_locConst_4Const_5*
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
%__inference_signature_wrapper_1270349
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename8dense_flipout_9/kernel_posterior_loc/Read/ReadVariableOpHdense_flipout_9/kernel_posterior_untransformed_scale/Read/ReadVariableOp6dense_flipout_9/bias_posterior_loc/Read/ReadVariableOp9dense_flipout_10/kernel_posterior_loc/Read/ReadVariableOpIdense_flipout_10/kernel_posterior_untransformed_scale/Read/ReadVariableOp7dense_flipout_10/bias_posterior_loc/Read/ReadVariableOp9dense_flipout_11/kernel_posterior_loc/Read/ReadVariableOpIdense_flipout_11/kernel_posterior_untransformed_scale/Read/ReadVariableOp7dense_flipout_11/bias_posterior_loc/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp?Adam/dense_flipout_9/kernel_posterior_loc/m/Read/ReadVariableOpOAdam/dense_flipout_9/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp=Adam/dense_flipout_9/bias_posterior_loc/m/Read/ReadVariableOp@Adam/dense_flipout_10/kernel_posterior_loc/m/Read/ReadVariableOpPAdam/dense_flipout_10/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp>Adam/dense_flipout_10/bias_posterior_loc/m/Read/ReadVariableOp@Adam/dense_flipout_11/kernel_posterior_loc/m/Read/ReadVariableOpPAdam/dense_flipout_11/kernel_posterior_untransformed_scale/m/Read/ReadVariableOp>Adam/dense_flipout_11/bias_posterior_loc/m/Read/ReadVariableOp?Adam/dense_flipout_9/kernel_posterior_loc/v/Read/ReadVariableOpOAdam/dense_flipout_9/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp=Adam/dense_flipout_9/bias_posterior_loc/v/Read/ReadVariableOp@Adam/dense_flipout_10/kernel_posterior_loc/v/Read/ReadVariableOpPAdam/dense_flipout_10/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp>Adam/dense_flipout_10/bias_posterior_loc/v/Read/ReadVariableOp@Adam/dense_flipout_11/kernel_posterior_loc/v/Read/ReadVariableOpPAdam/dense_flipout_11/kernel_posterior_untransformed_scale/v/Read/ReadVariableOp>Adam/dense_flipout_11/bias_posterior_loc/v/Read/ReadVariableOpConst_6*1
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
 __inference__traced_save_1270956
°
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename$dense_flipout_9/kernel_posterior_loc4dense_flipout_9/kernel_posterior_untransformed_scale"dense_flipout_9/bias_posterior_loc%dense_flipout_10/kernel_posterior_loc5dense_flipout_10/kernel_posterior_untransformed_scale#dense_flipout_10/bias_posterior_loc%dense_flipout_11/kernel_posterior_loc5dense_flipout_11/kernel_posterior_untransformed_scale#dense_flipout_11/bias_posterior_loc	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1+Adam/dense_flipout_9/kernel_posterior_loc/m;Adam/dense_flipout_9/kernel_posterior_untransformed_scale/m)Adam/dense_flipout_9/bias_posterior_loc/m,Adam/dense_flipout_10/kernel_posterior_loc/m<Adam/dense_flipout_10/kernel_posterior_untransformed_scale/m*Adam/dense_flipout_10/bias_posterior_loc/m,Adam/dense_flipout_11/kernel_posterior_loc/m<Adam/dense_flipout_11/kernel_posterior_untransformed_scale/m*Adam/dense_flipout_11/bias_posterior_loc/m+Adam/dense_flipout_9/kernel_posterior_loc/v;Adam/dense_flipout_9/kernel_posterior_untransformed_scale/v)Adam/dense_flipout_9/bias_posterior_loc/v,Adam/dense_flipout_10/kernel_posterior_loc/v<Adam/dense_flipout_10/kernel_posterior_untransformed_scale/v*Adam/dense_flipout_10/bias_posterior_loc/v,Adam/dense_flipout_11/kernel_posterior_loc/v<Adam/dense_flipout_11/kernel_posterior_untransformed_scale/v*Adam/dense_flipout_11/bias_posterior_loc/v*0
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
#__inference__traced_restore_1271074Ó#
½û

M__inference_dense_flipout_11_layer_call_and_return_conditional_losses_1270819

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_11_sample_deterministic_sample_readvariableop_resource:Ö
Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270788Ú
Õkullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOp¢åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

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
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¼
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_11_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ª
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB î
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:ë
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      è
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:¶
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ü
ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusíKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ê
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÜKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ö
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Ì
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÑkullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270788*
T0*
_output_shapes
: ¨
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:º
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivàKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270788*
T0*
_output_shapes

:´
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÕkullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÑkullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270788*
T0*
_output_shapes

:Ì
ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ø
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ª
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ß
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOpæ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpÙ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2Ê
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOp2Ð
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpåKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2¶
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
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
å
´
%__inference_signature_wrapper_1270349
input_4
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
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_1268600o
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
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4:
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

:
	
Ú
2__inference_dense_flipout_10_layer_call_fn_1270521

inputs
unknown:
	unknown_0:
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
M__inference_dense_flipout_10_layer_call_and_return_conditional_losses_1268901o
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
%:ÿÿÿÿÿÿÿÿÿ: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
	
Ú
2__inference_dense_flipout_11_layer_call_fn_1270678

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
M__inference_dense_flipout_11_layer_call_and_return_conditional_losses_1269055o
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
[
À
 __inference__traced_save_1270956
file_prefixC
?savev2_dense_flipout_9_kernel_posterior_loc_read_readvariableopS
Osavev2_dense_flipout_9_kernel_posterior_untransformed_scale_read_readvariableopA
=savev2_dense_flipout_9_bias_posterior_loc_read_readvariableopD
@savev2_dense_flipout_10_kernel_posterior_loc_read_readvariableopT
Psavev2_dense_flipout_10_kernel_posterior_untransformed_scale_read_readvariableopB
>savev2_dense_flipout_10_bias_posterior_loc_read_readvariableopD
@savev2_dense_flipout_11_kernel_posterior_loc_read_readvariableopT
Psavev2_dense_flipout_11_kernel_posterior_untransformed_scale_read_readvariableopB
>savev2_dense_flipout_11_bias_posterior_loc_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopJ
Fsavev2_adam_dense_flipout_9_kernel_posterior_loc_m_read_readvariableopZ
Vsavev2_adam_dense_flipout_9_kernel_posterior_untransformed_scale_m_read_readvariableopH
Dsavev2_adam_dense_flipout_9_bias_posterior_loc_m_read_readvariableopK
Gsavev2_adam_dense_flipout_10_kernel_posterior_loc_m_read_readvariableop[
Wsavev2_adam_dense_flipout_10_kernel_posterior_untransformed_scale_m_read_readvariableopI
Esavev2_adam_dense_flipout_10_bias_posterior_loc_m_read_readvariableopK
Gsavev2_adam_dense_flipout_11_kernel_posterior_loc_m_read_readvariableop[
Wsavev2_adam_dense_flipout_11_kernel_posterior_untransformed_scale_m_read_readvariableopI
Esavev2_adam_dense_flipout_11_bias_posterior_loc_m_read_readvariableopJ
Fsavev2_adam_dense_flipout_9_kernel_posterior_loc_v_read_readvariableopZ
Vsavev2_adam_dense_flipout_9_kernel_posterior_untransformed_scale_v_read_readvariableopH
Dsavev2_adam_dense_flipout_9_bias_posterior_loc_v_read_readvariableopK
Gsavev2_adam_dense_flipout_10_kernel_posterior_loc_v_read_readvariableop[
Wsavev2_adam_dense_flipout_10_kernel_posterior_untransformed_scale_v_read_readvariableopI
Esavev2_adam_dense_flipout_10_bias_posterior_loc_v_read_readvariableopK
Gsavev2_adam_dense_flipout_11_kernel_posterior_loc_v_read_readvariableop[
Wsavev2_adam_dense_flipout_11_kernel_posterior_untransformed_scale_v_read_readvariableopI
Esavev2_adam_dense_flipout_11_bias_posterior_loc_v_read_readvariableop
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
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0?savev2_dense_flipout_9_kernel_posterior_loc_read_readvariableopOsavev2_dense_flipout_9_kernel_posterior_untransformed_scale_read_readvariableop=savev2_dense_flipout_9_bias_posterior_loc_read_readvariableop@savev2_dense_flipout_10_kernel_posterior_loc_read_readvariableopPsavev2_dense_flipout_10_kernel_posterior_untransformed_scale_read_readvariableop>savev2_dense_flipout_10_bias_posterior_loc_read_readvariableop@savev2_dense_flipout_11_kernel_posterior_loc_read_readvariableopPsavev2_dense_flipout_11_kernel_posterior_untransformed_scale_read_readvariableop>savev2_dense_flipout_11_bias_posterior_loc_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopFsavev2_adam_dense_flipout_9_kernel_posterior_loc_m_read_readvariableopVsavev2_adam_dense_flipout_9_kernel_posterior_untransformed_scale_m_read_readvariableopDsavev2_adam_dense_flipout_9_bias_posterior_loc_m_read_readvariableopGsavev2_adam_dense_flipout_10_kernel_posterior_loc_m_read_readvariableopWsavev2_adam_dense_flipout_10_kernel_posterior_untransformed_scale_m_read_readvariableopEsavev2_adam_dense_flipout_10_bias_posterior_loc_m_read_readvariableopGsavev2_adam_dense_flipout_11_kernel_posterior_loc_m_read_readvariableopWsavev2_adam_dense_flipout_11_kernel_posterior_untransformed_scale_m_read_readvariableopEsavev2_adam_dense_flipout_11_bias_posterior_loc_m_read_readvariableopFsavev2_adam_dense_flipout_9_kernel_posterior_loc_v_read_readvariableopVsavev2_adam_dense_flipout_9_kernel_posterior_untransformed_scale_v_read_readvariableopDsavev2_adam_dense_flipout_9_bias_posterior_loc_v_read_readvariableopGsavev2_adam_dense_flipout_10_kernel_posterior_loc_v_read_readvariableopWsavev2_adam_dense_flipout_10_kernel_posterior_untransformed_scale_v_read_readvariableopEsavev2_adam_dense_flipout_10_bias_posterior_loc_v_read_readvariableopGsavev2_adam_dense_flipout_11_kernel_posterior_loc_v_read_readvariableopWsavev2_adam_dense_flipout_11_kernel_posterior_untransformed_scale_v_read_readvariableopEsavev2_adam_dense_flipout_11_bias_posterior_loc_v_read_readvariableopsavev2_const_6"/device:CPU:0*
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
: :::::::::: : : : : : : : : ::::::::::::::::::: 2(
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

::$ 

_output_shapes

:: 

_output_shapes
::$ 

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

::$# 

_output_shapes

:: $

_output_shapes
::%

_output_shapes
: 
ª
Ç
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269072

inputs)
dense_flipout_9_1268748:)
dense_flipout_9_1268750:%
dense_flipout_9_1268752:
dense_flipout_9_1268754
dense_flipout_9_1268756*
dense_flipout_10_1268902:*
dense_flipout_10_1268904:&
dense_flipout_10_1268906:
dense_flipout_10_1268908
dense_flipout_10_1268910*
dense_flipout_11_1269056:*
dense_flipout_11_1269058:&
dense_flipout_11_1269060:
dense_flipout_11_1269062
dense_flipout_11_1269064
identity

identity_1

identity_2

identity_3¢(dense_flipout_10/StatefulPartitionedCall¢(dense_flipout_11/StatefulPartitionedCall¢'dense_flipout_9/StatefulPartitionedCallá
'dense_flipout_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_flipout_9_1268748dense_flipout_9_1268750dense_flipout_9_1268752dense_flipout_9_1268754dense_flipout_9_1268756*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_9_layer_call_and_return_conditional_losses_1268747
(dense_flipout_10/StatefulPartitionedCallStatefulPartitionedCall0dense_flipout_9/StatefulPartitionedCall:output:0dense_flipout_10_1268902dense_flipout_10_1268904dense_flipout_10_1268906dense_flipout_10_1268908dense_flipout_10_1268910*
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
M__inference_dense_flipout_10_layer_call_and_return_conditional_losses_1268901
(dense_flipout_11/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_10/StatefulPartitionedCall:output:0dense_flipout_11_1269056dense_flipout_11_1269058dense_flipout_11_1269060dense_flipout_11_1269062dense_flipout_11_1269064*
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
M__inference_dense_flipout_11_layer_call_and_return_conditional_losses_1269055
IdentityIdentity1dense_flipout_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp

Identity_1Identity0dense_flipout_9/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_10/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_11/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Æ
NoOpNoOp)^dense_flipout_10/StatefulPartitionedCall)^dense_flipout_11/StatefulPartitionedCall(^dense_flipout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2T
(dense_flipout_10/StatefulPartitionedCall(dense_flipout_10/StatefulPartitionedCall2T
(dense_flipout_11/StatefulPartitionedCall(dense_flipout_11/StatefulPartitionedCall2R
'dense_flipout_9/StatefulPartitionedCall'dense_flipout_9/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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

:
ª
Ç
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269242

inputs)
dense_flipout_9_1269202:)
dense_flipout_9_1269204:%
dense_flipout_9_1269206:
dense_flipout_9_1269208
dense_flipout_9_1269210*
dense_flipout_10_1269214:*
dense_flipout_10_1269216:&
dense_flipout_10_1269218:
dense_flipout_10_1269220
dense_flipout_10_1269222*
dense_flipout_11_1269226:*
dense_flipout_11_1269228:&
dense_flipout_11_1269230:
dense_flipout_11_1269232
dense_flipout_11_1269234
identity

identity_1

identity_2

identity_3¢(dense_flipout_10/StatefulPartitionedCall¢(dense_flipout_11/StatefulPartitionedCall¢'dense_flipout_9/StatefulPartitionedCallá
'dense_flipout_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_flipout_9_1269202dense_flipout_9_1269204dense_flipout_9_1269206dense_flipout_9_1269208dense_flipout_9_1269210*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_9_layer_call_and_return_conditional_losses_1268747
(dense_flipout_10/StatefulPartitionedCallStatefulPartitionedCall0dense_flipout_9/StatefulPartitionedCall:output:0dense_flipout_10_1269214dense_flipout_10_1269216dense_flipout_10_1269218dense_flipout_10_1269220dense_flipout_10_1269222*
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
M__inference_dense_flipout_10_layer_call_and_return_conditional_losses_1268901
(dense_flipout_11/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_10/StatefulPartitionedCall:output:0dense_flipout_11_1269226dense_flipout_11_1269228dense_flipout_11_1269230dense_flipout_11_1269232dense_flipout_11_1269234*
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
M__inference_dense_flipout_11_layer_call_and_return_conditional_losses_1269055
IdentityIdentity1dense_flipout_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp

Identity_1Identity0dense_flipout_9/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_10/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_11/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Æ
NoOpNoOp)^dense_flipout_10/StatefulPartitionedCall)^dense_flipout_11/StatefulPartitionedCall(^dense_flipout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2T
(dense_flipout_10/StatefulPartitionedCall(dense_flipout_10/StatefulPartitionedCall2T
(dense_flipout_11/StatefulPartitionedCall(dense_flipout_11/StatefulPartitionedCall2R
'dense_flipout_9/StatefulPartitionedCall'dense_flipout_9/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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

:
	
Ù
1__inference_dense_flipout_9_layer_call_fn_1270365

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2
	unknown_3
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_9_layer_call_and_return_conditional_losses_1268747o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
­
È
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269402
input_4)
dense_flipout_9_1269362:)
dense_flipout_9_1269364:%
dense_flipout_9_1269366:
dense_flipout_9_1269368
dense_flipout_9_1269370*
dense_flipout_10_1269374:*
dense_flipout_10_1269376:&
dense_flipout_10_1269378:
dense_flipout_10_1269380
dense_flipout_10_1269382*
dense_flipout_11_1269386:*
dense_flipout_11_1269388:&
dense_flipout_11_1269390:
dense_flipout_11_1269392
dense_flipout_11_1269394
identity

identity_1

identity_2

identity_3¢(dense_flipout_10/StatefulPartitionedCall¢(dense_flipout_11/StatefulPartitionedCall¢'dense_flipout_9/StatefulPartitionedCallâ
'dense_flipout_9/StatefulPartitionedCallStatefulPartitionedCallinput_4dense_flipout_9_1269362dense_flipout_9_1269364dense_flipout_9_1269366dense_flipout_9_1269368dense_flipout_9_1269370*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_9_layer_call_and_return_conditional_losses_1268747
(dense_flipout_10/StatefulPartitionedCallStatefulPartitionedCall0dense_flipout_9/StatefulPartitionedCall:output:0dense_flipout_10_1269374dense_flipout_10_1269376dense_flipout_10_1269378dense_flipout_10_1269380dense_flipout_10_1269382*
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
M__inference_dense_flipout_10_layer_call_and_return_conditional_losses_1268901
(dense_flipout_11/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_10/StatefulPartitionedCall:output:0dense_flipout_11_1269386dense_flipout_11_1269388dense_flipout_11_1269390dense_flipout_11_1269392dense_flipout_11_1269394*
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
M__inference_dense_flipout_11_layer_call_and_return_conditional_losses_1269055
IdentityIdentity1dense_flipout_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp

Identity_1Identity0dense_flipout_9/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_10/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_11/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Æ
NoOpNoOp)^dense_flipout_10/StatefulPartitionedCall)^dense_flipout_11/StatefulPartitionedCall(^dense_flipout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2T
(dense_flipout_10/StatefulPartitionedCall(dense_flipout_10/StatefulPartitionedCall2T
(dense_flipout_11/StatefulPartitionedCall(dense_flipout_11/StatefulPartitionedCall2R
'dense_flipout_9/StatefulPartitionedCall'dense_flipout_9/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4:
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

:
ûù

L__inference_dense_flipout_9_layer_call_and_return_conditional_losses_1268747

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:y
kindependentdeterministic_constructed_at_dense_flipout_9_sample_deterministic_sample_readvariableop_resource:Õ
Ðkullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268716Ù
Ôkullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOp¢äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

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
:*
dtype0Ð
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:¶
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
:ÿÿÿÿÿÿÿÿÿ*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
KIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :»
qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOpReadVariableOpkindependentdeterministic_constructed_at_dense_flipout_9_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
YIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ±
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ý
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_sliceStridedSlicelIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/shape_as_tensor:output:0pIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack_1:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ©
fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ë
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgsBroadcastArgsoIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:¦
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¡
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Â
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concatConcatV2lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/values_0:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgs:r0:0lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/values_2:output:0hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:è
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastToBroadcastTojIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOp:value:0cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:²
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      å
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReshapeReshapehIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastTo:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:³
FIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/ReshapeReshapedIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/Reshape:output:0UIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0OIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ú
ÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusìKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ç
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ãKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ô
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Ê
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÐkullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268716*
T0*
_output_shapes
: ¥
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:¹
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0º
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ðkullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268716*
T0*
_output_shapes

:±
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÔkullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÐkullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268716*
T0*
_output_shapes

:É
ÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¸
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ÞKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @®
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ö
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?°
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:§
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¥
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Þ
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
zKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: °
NoOpNoOpc^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOpå^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpØ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2È
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOpbIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOp2Î
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpäKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2´
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
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

:
¸û

M__inference_dense_flipout_10_layer_call_and_return_conditional_losses_1270662

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_10_sample_deterministic_sample_readvariableop_resource:Ö
Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270631Ú
Õkullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOp¢åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

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
:*
dtype0Ð
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:¶
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
:ÿÿÿÿÿÿÿÿÿ*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
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
:ÿÿÿÿÿÿÿÿÿk
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

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¼
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_10_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ª
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB î
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:ë
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      è
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:¶
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ü
ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusíKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ê
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÜKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ö
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Ì
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÑkullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270631*
T0*
_output_shapes
: ¨
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:º
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivàKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270631*
T0*
_output_shapes

:´
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÕkullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÑkullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270631*
T0*
_output_shapes

:Ì
ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ø
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ª
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ß
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOpæ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpÙ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2Ê
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOp2Ð
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpåKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2¶
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
­
È
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269359
input_4)
dense_flipout_9_1269319:)
dense_flipout_9_1269321:%
dense_flipout_9_1269323:
dense_flipout_9_1269325
dense_flipout_9_1269327*
dense_flipout_10_1269331:*
dense_flipout_10_1269333:&
dense_flipout_10_1269335:
dense_flipout_10_1269337
dense_flipout_10_1269339*
dense_flipout_11_1269343:*
dense_flipout_11_1269345:&
dense_flipout_11_1269347:
dense_flipout_11_1269349
dense_flipout_11_1269351
identity

identity_1

identity_2

identity_3¢(dense_flipout_10/StatefulPartitionedCall¢(dense_flipout_11/StatefulPartitionedCall¢'dense_flipout_9/StatefulPartitionedCallâ
'dense_flipout_9/StatefulPartitionedCallStatefulPartitionedCallinput_4dense_flipout_9_1269319dense_flipout_9_1269321dense_flipout_9_1269323dense_flipout_9_1269325dense_flipout_9_1269327*
Tin

2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_dense_flipout_9_layer_call_and_return_conditional_losses_1268747
(dense_flipout_10/StatefulPartitionedCallStatefulPartitionedCall0dense_flipout_9/StatefulPartitionedCall:output:0dense_flipout_10_1269331dense_flipout_10_1269333dense_flipout_10_1269335dense_flipout_10_1269337dense_flipout_10_1269339*
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
M__inference_dense_flipout_10_layer_call_and_return_conditional_losses_1268901
(dense_flipout_11/StatefulPartitionedCallStatefulPartitionedCall1dense_flipout_10/StatefulPartitionedCall:output:0dense_flipout_11_1269343dense_flipout_11_1269345dense_flipout_11_1269347dense_flipout_11_1269349dense_flipout_11_1269351*
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
M__inference_dense_flipout_11_layer_call_and_return_conditional_losses_1269055
IdentityIdentity1dense_flipout_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp

Identity_1Identity0dense_flipout_9/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_2Identity1dense_flipout_10/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: q

Identity_3Identity1dense_flipout_11/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: Æ
NoOpNoOp)^dense_flipout_10/StatefulPartitionedCall)^dense_flipout_11/StatefulPartitionedCall(^dense_flipout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2T
(dense_flipout_10/StatefulPartitionedCall(dense_flipout_10/StatefulPartitionedCall2T
(dense_flipout_11/StatefulPartitionedCall(dense_flipout_11/StatefulPartitionedCall2R
'dense_flipout_9/StatefulPartitionedCall'dense_flipout_9/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4:
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

:
ûù

L__inference_dense_flipout_9_layer_call_and_return_conditional_losses_1270505

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:y
kindependentdeterministic_constructed_at_dense_flipout_9_sample_deterministic_sample_readvariableop_resource:Õ
Ðkullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270474Ù
Ôkullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOp¢äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

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
:*
dtype0Ð
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:¶
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
:ÿÿÿÿÿÿÿÿÿ*
dtype0	T
rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher_1/mulMulrademacher_1/mul/x:output:06rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R|
rademacher_1/subSubrademacher_1/mul:z:0rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
rademacher_1/CastCastrademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
mulMulinputsrademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
MatMulMatMulmul:z:0Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
mul_1MulMatMul:product:0rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
KIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :»
qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOpReadVariableOpkindependentdeterministic_constructed_at_dense_flipout_9_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
YIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ±
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:³
iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ý
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_sliceStridedSlicelIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/shape_as_tensor:output:0pIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack_1:output:0rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ©
fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ë
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgsBroadcastArgsoIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:­
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:¦
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¡
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Â
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concatConcatV2lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/values_0:output:0fIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgs:r0:0lIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/values_2:output:0hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:è
_IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastToBroadcastTojIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOp:value:0cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:²
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      å
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReshapeReshapehIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastTo:output:0jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:³
FIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/ReshapeReshapedIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/Reshape:output:0UIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0OIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ú
ÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusìKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ç
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ãKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ô
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Ê
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÐkullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270474*
T0*
_output_shapes
: ¥
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:¹
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0º
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ðkullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270474*
T0*
_output_shapes

:±
ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÔkullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÐkullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270474*
T0*
_output_shapes

:É
ÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÔKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¸
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMul×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ÞKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @®
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ö
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?°
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÙKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:§
ÌKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¥
ÎKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÐKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Þ
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
zKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÒKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identitydivergence_kernel:output:0^NoOp*
T0*
_output_shapes
: °
NoOpNoOpc^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOpå^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpØ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2È
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOpbIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOp2Î
äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpäKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2´
×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
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

:

¼
.__inference_sequential_5_layer_call_fn_1269446

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
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity¢StatefulPartitionedCall
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
GPU 2J 8 *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269072o
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
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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

:
Ò
«
#__inference__traced_restore_1271074
file_prefixG
5assignvariableop_dense_flipout_9_kernel_posterior_loc:Y
Gassignvariableop_1_dense_flipout_9_kernel_posterior_untransformed_scale:C
5assignvariableop_2_dense_flipout_9_bias_posterior_loc:J
8assignvariableop_3_dense_flipout_10_kernel_posterior_loc:Z
Hassignvariableop_4_dense_flipout_10_kernel_posterior_untransformed_scale:D
6assignvariableop_5_dense_flipout_10_bias_posterior_loc:J
8assignvariableop_6_dense_flipout_11_kernel_posterior_loc:Z
Hassignvariableop_7_dense_flipout_11_kernel_posterior_untransformed_scale:D
6assignvariableop_8_dense_flipout_11_bias_posterior_loc:&
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: #
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: Q
?assignvariableop_18_adam_dense_flipout_9_kernel_posterior_loc_m:a
Oassignvariableop_19_adam_dense_flipout_9_kernel_posterior_untransformed_scale_m:K
=assignvariableop_20_adam_dense_flipout_9_bias_posterior_loc_m:R
@assignvariableop_21_adam_dense_flipout_10_kernel_posterior_loc_m:b
Passignvariableop_22_adam_dense_flipout_10_kernel_posterior_untransformed_scale_m:L
>assignvariableop_23_adam_dense_flipout_10_bias_posterior_loc_m:R
@assignvariableop_24_adam_dense_flipout_11_kernel_posterior_loc_m:b
Passignvariableop_25_adam_dense_flipout_11_kernel_posterior_untransformed_scale_m:L
>assignvariableop_26_adam_dense_flipout_11_bias_posterior_loc_m:Q
?assignvariableop_27_adam_dense_flipout_9_kernel_posterior_loc_v:a
Oassignvariableop_28_adam_dense_flipout_9_kernel_posterior_untransformed_scale_v:K
=assignvariableop_29_adam_dense_flipout_9_bias_posterior_loc_v:R
@assignvariableop_30_adam_dense_flipout_10_kernel_posterior_loc_v:b
Passignvariableop_31_adam_dense_flipout_10_kernel_posterior_untransformed_scale_v:L
>assignvariableop_32_adam_dense_flipout_10_bias_posterior_loc_v:R
@assignvariableop_33_adam_dense_flipout_11_kernel_posterior_loc_v:b
Passignvariableop_34_adam_dense_flipout_11_kernel_posterior_untransformed_scale_v:L
>assignvariableop_35_adam_dense_flipout_11_bias_posterior_loc_v:
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
AssignVariableOpAssignVariableOp5assignvariableop_dense_flipout_9_kernel_posterior_locIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_1AssignVariableOpGassignvariableop_1_dense_flipout_9_kernel_posterior_untransformed_scaleIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_2AssignVariableOp5assignvariableop_2_dense_flipout_9_bias_posterior_locIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_3AssignVariableOp8assignvariableop_3_dense_flipout_10_kernel_posterior_locIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_4AssignVariableOpHassignvariableop_4_dense_flipout_10_kernel_posterior_untransformed_scaleIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_5AssignVariableOp6assignvariableop_5_dense_flipout_10_bias_posterior_locIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_6AssignVariableOp8assignvariableop_6_dense_flipout_11_kernel_posterior_locIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_7AssignVariableOpHassignvariableop_7_dense_flipout_11_kernel_posterior_untransformed_scaleIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_8AssignVariableOp6assignvariableop_8_dense_flipout_11_bias_posterior_locIdentity_8:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp?assignvariableop_18_adam_dense_flipout_9_kernel_posterior_loc_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_19AssignVariableOpOassignvariableop_19_adam_dense_flipout_9_kernel_posterior_untransformed_scale_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_20AssignVariableOp=assignvariableop_20_adam_dense_flipout_9_bias_posterior_loc_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_dense_flipout_10_kernel_posterior_loc_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_22AssignVariableOpPassignvariableop_22_adam_dense_flipout_10_kernel_posterior_untransformed_scale_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_23AssignVariableOp>assignvariableop_23_adam_dense_flipout_10_bias_posterior_loc_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_24AssignVariableOp@assignvariableop_24_adam_dense_flipout_11_kernel_posterior_loc_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_25AssignVariableOpPassignvariableop_25_adam_dense_flipout_11_kernel_posterior_untransformed_scale_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_dense_flipout_11_bias_posterior_loc_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_27AssignVariableOp?assignvariableop_27_adam_dense_flipout_9_kernel_posterior_loc_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_28AssignVariableOpOassignvariableop_28_adam_dense_flipout_9_kernel_posterior_untransformed_scale_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_29AssignVariableOp=assignvariableop_29_adam_dense_flipout_9_bias_posterior_loc_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_dense_flipout_10_kernel_posterior_loc_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_31AssignVariableOpPassignvariableop_31_adam_dense_flipout_10_kernel_posterior_untransformed_scale_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_dense_flipout_10_bias_posterior_loc_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_33AssignVariableOp@assignvariableop_33_adam_dense_flipout_11_kernel_posterior_loc_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_34AssignVariableOpPassignvariableop_34_adam_dense_flipout_11_kernel_posterior_untransformed_scale_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_dense_flipout_11_bias_posterior_loc_vIdentity_35:output:0"/device:CPU:0*
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

½
.__inference_sequential_5_layer_call_fn_1269316
input_4
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
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269242o
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
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4:
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

:

¼
.__inference_sequential_5_layer_call_fn_1269484

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
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity¢StatefulPartitionedCall
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
GPU 2J 8 *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269242o
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
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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

:
â¸
"
I__inference_sequential_5_layer_call_and_return_conditional_losses_1270312

inputsP
>dense_flipout_9_normal_sample_softplus_readvariableop_resource:B
0dense_flipout_9_matmul_1_readvariableop_resource:j
\dense_flipout_9_independentdeterministic_sample_deterministic_sample_readvariableop_resource:å
àdense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270007é
ädense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_10_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_10_matmul_1_readvariableop_resource:k
]dense_flipout_10_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ç
âdense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270143ë
ædense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_11_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_11_matmul_1_readvariableop_resource:k
]dense_flipout_11_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ç
âdense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270279ë
ædense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1

identity_2

identity_3¢Tdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ödense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢édense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢(dense_flipout_10/MatMul_1/ReadVariableOp¢6dense_flipout_10/Normal/sample/Softplus/ReadVariableOp¢Tdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ödense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢édense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢(dense_flipout_11/MatMul_1/ReadVariableOp¢6dense_flipout_11/Normal/sample/Softplus/ReadVariableOp¢Sdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ôdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢çdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢'dense_flipout_9/MatMul_1/ReadVariableOp¢5dense_flipout_9/Normal/sample/Softplus/ReadVariableOpo
dense_flipout_9/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    m
*dense_flipout_9/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ´
5dense_flipout_9/Normal/sample/Softplus/ReadVariableOpReadVariableOp>dense_flipout_9_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
&dense_flipout_9/Normal/sample/SoftplusSoftplus=dense_flipout_9/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:h
#dense_flipout_9/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4·
!dense_flipout_9/Normal/sample/addAddV2,dense_flipout_9/Normal/sample/add/x:output:04dense_flipout_9/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:~
-dense_flipout_9/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      e
#dense_flipout_9/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : {
1dense_flipout_9/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_flipout_9/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_flipout_9/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
+dense_flipout_9/Normal/sample/strided_sliceStridedSlice6dense_flipout_9/Normal/sample/shape_as_tensor:output:0:dense_flipout_9/Normal/sample/strided_slice/stack:output:0<dense_flipout_9/Normal/sample/strided_slice/stack_1:output:0<dense_flipout_9/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
/dense_flipout_9/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      g
%dense_flipout_9/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : }
3dense_flipout_9/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_flipout_9/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_flipout_9/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
-dense_flipout_9/Normal/sample/strided_slice_1StridedSlice8dense_flipout_9/Normal/sample/shape_as_tensor_1:output:0<dense_flipout_9/Normal/sample/strided_slice_1/stack:output:0>dense_flipout_9/Normal/sample/strided_slice_1/stack_1:output:0>dense_flipout_9/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskq
.dense_flipout_9/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB s
0dense_flipout_9/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB É
+dense_flipout_9/Normal/sample/BroadcastArgsBroadcastArgs9dense_flipout_9/Normal/sample/BroadcastArgs/s0_1:output:04dense_flipout_9/Normal/sample/strided_slice:output:0*
_output_shapes
:Ä
-dense_flipout_9/Normal/sample/BroadcastArgs_1BroadcastArgs0dense_flipout_9/Normal/sample/BroadcastArgs:r0:06dense_flipout_9/Normal/sample/strided_slice_1:output:0*
_output_shapes
:w
-dense_flipout_9/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:k
)dense_flipout_9/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : þ
$dense_flipout_9/Normal/sample/concatConcatV26dense_flipout_9/Normal/sample/concat/values_0:output:02dense_flipout_9/Normal/sample/BroadcastArgs_1:r0:02dense_flipout_9/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:|
7dense_flipout_9/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
9dense_flipout_9/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
Gdense_flipout_9/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal-dense_flipout_9/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
6dense_flipout_9/Normal/sample/normal/random_normal/mulMulPdense_flipout_9/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Bdense_flipout_9/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:æ
2dense_flipout_9/Normal/sample/normal/random_normalAddV2:dense_flipout_9/Normal/sample/normal/random_normal/mul:z:0@dense_flipout_9/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:´
!dense_flipout_9/Normal/sample/mulMul6dense_flipout_9/Normal/sample/normal/random_normal:z:0%dense_flipout_9/Normal/sample/add:z:0*
T0*"
_output_shapes
:¥
#dense_flipout_9/Normal/sample/add_1AddV2%dense_flipout_9/Normal/sample/mul:z:0#dense_flipout_9/zeros_like:output:0*
T0*"
_output_shapes
:|
+dense_flipout_9/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
%dense_flipout_9/Normal/sample/ReshapeReshape'dense_flipout_9/Normal/sample/add_1:z:04dense_flipout_9/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:K
dense_flipout_9/ShapeShapeinputs*
T0*
_output_shapes
:m
#dense_flipout_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
%dense_flipout_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%dense_flipout_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
dense_flipout_9/strided_sliceStridedSlicedense_flipout_9/Shape:output:0,dense_flipout_9/strided_slice/stack:output:0.dense_flipout_9/strided_slice/stack_1:output:0.dense_flipout_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
;dense_flipout_9/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
9dense_flipout_9/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
9dense_flipout_9/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÈ
5dense_flipout_9/rademacher/uniform/sanitize_seed/seedRandomUniformIntDdense_flipout_9/rademacher/uniform/sanitize_seed/seed/shape:output:0Bdense_flipout_9/rademacher/uniform/sanitize_seed/seed/min:output:0Bdense_flipout_9/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
?dense_flipout_9/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?dense_flipout_9/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rç
Xdense_flipout_9/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter>dense_flipout_9/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
?dense_flipout_9/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ò
;dense_flipout_9/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_9/Shape:output:0^dense_flipout_9/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0bdense_flipout_9/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Hdense_flipout_9/rademacher/uniform/stateless_random_uniform/alg:output:0Hdense_flipout_9/rademacher/uniform/stateless_random_uniform/min:output:0Hdense_flipout_9/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	b
 dense_flipout_9/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÈ
dense_flipout_9/rademacher/mulMul)dense_flipout_9/rademacher/mul/x:output:0Ddense_flipout_9/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_9/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¦
dense_flipout_9/rademacher/subSub"dense_flipout_9/rademacher/mul:z:0)dense_flipout_9/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_9/rademacher/CastCast"dense_flipout_9/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_9/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :`
dense_flipout_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¡
dense_flipout_9/ExpandDims
ExpandDims)dense_flipout_9/ExpandDims/input:output:0'dense_flipout_9/ExpandDims/dim:output:0*
T0*
_output_shapes
:]
dense_flipout_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
dense_flipout_9/concatConcatV2&dense_flipout_9/strided_slice:output:0#dense_flipout_9/ExpandDims:output:0$dense_flipout_9/concat/axis:output:0*
N*
T0*
_output_shapes
:
=dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
;dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
;dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÐ
7dense_flipout_9/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntFdense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Ddense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/min:output:0Ddense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Adense_flipout_9/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Adense_flipout_9/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rë
Zdense_flipout_9/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter@dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Adense_flipout_9/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ß
=dense_flipout_9/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_9/concat:output:0`dense_flipout_9/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ddense_flipout_9/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Jdense_flipout_9/rademacher_1/uniform/stateless_random_uniform/alg:output:0Jdense_flipout_9/rademacher_1/uniform/stateless_random_uniform/min:output:0Jdense_flipout_9/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	d
"dense_flipout_9/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÎ
 dense_flipout_9/rademacher_1/mulMul+dense_flipout_9/rademacher_1/mul/x:output:0Fdense_flipout_9/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"dense_flipout_9/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¬
 dense_flipout_9/rademacher_1/subSub$dense_flipout_9/rademacher_1/mul:z:0+dense_flipout_9/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_flipout_9/rademacher_1/CastCast$dense_flipout_9/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
dense_flipout_9/mulMulinputs#dense_flipout_9/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_9/MatMulMatMuldense_flipout_9/mul:z:0.dense_flipout_9/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_9/mul_1Mul dense_flipout_9/MatMul:product:0%dense_flipout_9/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'dense_flipout_9/MatMul_1/ReadVariableOpReadVariableOp0dense_flipout_9_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
dense_flipout_9/MatMul_1MatMulinputs/dense_flipout_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_9/addAddV2"dense_flipout_9/MatMul_1:product:0dense_flipout_9/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
<dense_flipout_9/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¬
bdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ì
Sdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp\dense_flipout_9_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Tdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Jdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ¢
Xdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¤
Zdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¤
Zdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
Rdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice]dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0adense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0cdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0cdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Udense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Wdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ¾
Rdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgs`dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0[dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Tdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Tdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Pdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Kdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2]dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Wdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0]dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Ydense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:»
Pdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo[dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Tdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:£
Rdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
Ldense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeYdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0[dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
=dense_flipout_9/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
7dense_flipout_9/IndependentDeterministic/sample/ReshapeReshapeUdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Fdense_flipout_9/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:¯
dense_flipout_9/BiasAddBiasAdddense_flipout_9/add:z:0@dense_flipout_9/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
ôdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp>dense_flipout_9_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ådense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusüdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:¨
âdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4÷
àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ëdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ódense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ô
Üdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogädense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ê
Þdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logàdense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270007*
T0*
_output_shapes
: Õ
Üdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubàdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0âdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ù
çdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp0dense_flipout_9_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ê
àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivïdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0àdense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270007*
T0*
_output_shapes

:á
âdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivädense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xàdense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270007*
T0*
_output_shapes

:ù
êdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceädense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ædense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¤
Þdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?è
Üdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulçdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0îdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¦
àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @Þ
Þdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulédense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ö
Þdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1âdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?à
Þdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulédense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0âdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:×
Üdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0âdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Õ
Þdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subàdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:î
dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÀ
dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumâdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0¥dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Y
dense_flipout_9/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6m
dense_flipout_9/CastCastdense_flipout_9/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ó
dense_flipout_9/truedivRealDivdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_9/Cast:y:0*
T0*
_output_shapes
: k
!dense_flipout_9/divergence_kernelIdentitydense_flipout_9/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_10/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_10/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¶
6dense_flipout_10/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_10_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_10/Normal/sample/SoftplusSoftplus>dense_flipout_10/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_10/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4º
"dense_flipout_10/Normal/sample/addAddV2-dense_flipout_10/Normal/sample/add/x:output:05dense_flipout_10/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_10/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_10/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_10/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_10/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_10/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
,dense_flipout_10/Normal/sample/strided_sliceStridedSlice7dense_flipout_10/Normal/sample/shape_as_tensor:output:0;dense_flipout_10/Normal/sample/strided_slice/stack:output:0=dense_flipout_10/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_10/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_10/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_10/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_10/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_10/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_10/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
.dense_flipout_10/Normal/sample/strided_slice_1StridedSlice9dense_flipout_10/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_10/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_10/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_10/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_10/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_10/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ì
,dense_flipout_10/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_10/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_10/Normal/sample/strided_slice:output:0*
_output_shapes
:Ç
.dense_flipout_10/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_10/Normal/sample/BroadcastArgs:r0:07dense_flipout_10/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_10/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_10/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_10/Normal/sample/concatConcatV27dense_flipout_10/Normal/sample/concat/values_0:output:03dense_flipout_10/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_10/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_10/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_10/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ê
Hdense_flipout_10/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_10/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_10/Normal/sample/normal/random_normal/mulMulQdense_flipout_10/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_10/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:é
3dense_flipout_10/Normal/sample/normal/random_normalAddV2;dense_flipout_10/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_10/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_10/Normal/sample/mulMul7dense_flipout_10/Normal/sample/normal/random_normal:z:0&dense_flipout_10/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_10/Normal/sample/add_1AddV2&dense_flipout_10/Normal/sample/mul:z:0$dense_flipout_10/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_10/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_10/Normal/sample/ReshapeReshape(dense_flipout_10/Normal/sample/add_1:z:05dense_flipout_10/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:f
dense_flipout_10/ShapeShape dense_flipout_9/BiasAdd:output:0*
T0*
_output_shapes
:n
$dense_flipout_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿp
&dense_flipout_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
dense_flipout_10/strided_sliceStridedSlicedense_flipout_10/Shape:output:0-dense_flipout_10/strided_slice/stack:output:0/dense_flipout_10/strided_slice/stack_1:output:0/dense_flipout_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_10/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_10/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
:dense_flipout_10/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÌ
6dense_flipout_10/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_10/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_10/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_10/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_10/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_10/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Ré
Ydense_flipout_10/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_10/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_10/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ù
<dense_flipout_10/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_10/Shape:output:0_dense_flipout_10/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_10/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_10/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_10/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_10/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	c
!dense_flipout_10/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RË
dense_flipout_10/rademacher/mulMul*dense_flipout_10/rademacher/mul/x:output:0Edense_flipout_10/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_10/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_10/rademacher/subSub#dense_flipout_10/rademacher/mul:z:0*dense_flipout_10/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_flipout_10/rademacher/CastCast#dense_flipout_10/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_10/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_10/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¤
dense_flipout_10/ExpandDims
ExpandDims*dense_flipout_10/ExpandDims/input:output:0(dense_flipout_10/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_flipout_10/concatConcatV2'dense_flipout_10/strided_slice:output:0$dense_flipout_10/ExpandDims:output:0%dense_flipout_10/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
<dense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÔ
8dense_flipout_10/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_10/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_10/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rí
[dense_flipout_10/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_10/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_10/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :æ
>dense_flipout_10/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_10/concat:output:0adense_flipout_10/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_10/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_10/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_10/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_10/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	e
#dense_flipout_10/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÑ
!dense_flipout_10/rademacher_1/mulMul,dense_flipout_10/rademacher_1/mul/x:output:0Gdense_flipout_10/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#dense_flipout_10/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¯
!dense_flipout_10/rademacher_1/subSub%dense_flipout_10/rademacher_1/mul:z:0,dense_flipout_10/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_flipout_10/rademacher_1/CastCast%dense_flipout_10/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_10/mulMul dense_flipout_9/BiasAdd:output:0$dense_flipout_10/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_10/MatMulMatMuldense_flipout_10/mul:z:0/dense_flipout_10/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_10/mul_1Mul!dense_flipout_10/MatMul:product:0&dense_flipout_10/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(dense_flipout_10/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_10_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0©
dense_flipout_10/MatMul_1MatMul dense_flipout_9/BiasAdd:output:00dense_flipout_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_10/addAddV2#dense_flipout_10/MatMul_1:product:0dense_flipout_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=dense_flipout_10/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:î
Tdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_10_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¥
[dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¥
[dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Á
Sdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
Ldense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
Qdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:¤
Sdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_10/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_10/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_10/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_10/BiasAddBiasAdddense_flipout_10/add:z:0Adense_flipout_10/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
dense_flipout_10/ReluRelu!dense_flipout_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
ödense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_10_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
çdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusþdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ª
ädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ý
âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ídense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0õdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ø
Þdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogædense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:î
àdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logâdense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270143*
T0*
_output_shapes
: Û
Þdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubâdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ü
édense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_10_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ð
âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivñdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0âdense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270143*
T0*
_output_shapes

:ç
ädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivædense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xâdense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270143*
T0*
_output_shapes

:ÿ
ìdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceædense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0èdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?î
Þdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulédense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ðdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @ä
àdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulëdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ú
àdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?æ
àdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulëdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:Ý
Þdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Û
àdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subâdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ð
dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÆ
dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_10/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6o
dense_flipout_10/CastCast dense_flipout_10/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ÷
dense_flipout_10/truedivRealDivdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_10/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_10/divergence_kernelIdentitydense_flipout_10/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_11/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_11/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¶
6dense_flipout_11/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_11_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_11/Normal/sample/SoftplusSoftplus>dense_flipout_11/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_11/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4º
"dense_flipout_11/Normal/sample/addAddV2-dense_flipout_11/Normal/sample/add/x:output:05dense_flipout_11/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_11/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_11/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_11/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_11/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_11/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
,dense_flipout_11/Normal/sample/strided_sliceStridedSlice7dense_flipout_11/Normal/sample/shape_as_tensor:output:0;dense_flipout_11/Normal/sample/strided_slice/stack:output:0=dense_flipout_11/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_11/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_11/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_11/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_11/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_11/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_11/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
.dense_flipout_11/Normal/sample/strided_slice_1StridedSlice9dense_flipout_11/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_11/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_11/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_11/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_11/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_11/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ì
,dense_flipout_11/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_11/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_11/Normal/sample/strided_slice:output:0*
_output_shapes
:Ç
.dense_flipout_11/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_11/Normal/sample/BroadcastArgs:r0:07dense_flipout_11/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_11/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_11/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_11/Normal/sample/concatConcatV27dense_flipout_11/Normal/sample/concat/values_0:output:03dense_flipout_11/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_11/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_11/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_11/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ê
Hdense_flipout_11/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_11/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_11/Normal/sample/normal/random_normal/mulMulQdense_flipout_11/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_11/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:é
3dense_flipout_11/Normal/sample/normal/random_normalAddV2;dense_flipout_11/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_11/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_11/Normal/sample/mulMul7dense_flipout_11/Normal/sample/normal/random_normal:z:0&dense_flipout_11/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_11/Normal/sample/add_1AddV2&dense_flipout_11/Normal/sample/mul:z:0$dense_flipout_11/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_11/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_11/Normal/sample/ReshapeReshape(dense_flipout_11/Normal/sample/add_1:z:05dense_flipout_11/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:i
dense_flipout_11/ShapeShape#dense_flipout_10/Relu:activations:0*
T0*
_output_shapes
:n
$dense_flipout_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿp
&dense_flipout_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
dense_flipout_11/strided_sliceStridedSlicedense_flipout_11/Shape:output:0-dense_flipout_11/strided_slice/stack:output:0/dense_flipout_11/strided_slice/stack_1:output:0/dense_flipout_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_11/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_11/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
:dense_flipout_11/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÌ
6dense_flipout_11/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_11/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_11/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_11/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_11/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_11/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Ré
Ydense_flipout_11/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_11/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_11/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ù
<dense_flipout_11/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_11/Shape:output:0_dense_flipout_11/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_11/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_11/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_11/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_11/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	c
!dense_flipout_11/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RË
dense_flipout_11/rademacher/mulMul*dense_flipout_11/rademacher/mul/x:output:0Edense_flipout_11/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_11/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_11/rademacher/subSub#dense_flipout_11/rademacher/mul:z:0*dense_flipout_11/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_flipout_11/rademacher/CastCast#dense_flipout_11/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_11/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_11/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¤
dense_flipout_11/ExpandDims
ExpandDims*dense_flipout_11/ExpandDims/input:output:0(dense_flipout_11/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_flipout_11/concatConcatV2'dense_flipout_11/strided_slice:output:0$dense_flipout_11/ExpandDims:output:0%dense_flipout_11/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
<dense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÔ
8dense_flipout_11/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_11/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_11/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rí
[dense_flipout_11/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_11/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_11/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :æ
>dense_flipout_11/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_11/concat:output:0adense_flipout_11/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_11/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_11/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_11/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_11/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	e
#dense_flipout_11/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÑ
!dense_flipout_11/rademacher_1/mulMul,dense_flipout_11/rademacher_1/mul/x:output:0Gdense_flipout_11/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#dense_flipout_11/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¯
!dense_flipout_11/rademacher_1/subSub%dense_flipout_11/rademacher_1/mul:z:0,dense_flipout_11/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_flipout_11/rademacher_1/CastCast%dense_flipout_11/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_11/mulMul#dense_flipout_10/Relu:activations:0$dense_flipout_11/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_11/MatMulMatMuldense_flipout_11/mul:z:0/dense_flipout_11/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_11/mul_1Mul!dense_flipout_11/MatMul:product:0&dense_flipout_11/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(dense_flipout_11/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¬
dense_flipout_11/MatMul_1MatMul#dense_flipout_10/Relu:activations:00dense_flipout_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_11/addAddV2#dense_flipout_11/MatMul_1:product:0dense_flipout_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=dense_flipout_11/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:î
Tdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_11_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¥
[dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¥
[dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Á
Sdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
Ldense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
Qdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:¤
Sdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_11/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_11/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_11/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_11/BiasAddBiasAdddense_flipout_11/add:z:0Adense_flipout_11/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dense_flipout_11/SoftmaxSoftmax!dense_flipout_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
ödense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_11_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
çdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusþdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ª
ädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ý
âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ídense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0õdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ø
Þdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogædense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:î
àdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logâdense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270279*
T0*
_output_shapes
: Û
Þdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubâdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ü
édense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ð
âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivñdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0âdense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270279*
T0*
_output_shapes

:ç
ädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivædense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xâdense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1270279*
T0*
_output_shapes

:ÿ
ìdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceædense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0èdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?î
Þdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulédense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ðdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @ä
àdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulëdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ú
àdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?æ
àdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulëdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:Ý
Þdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Û
àdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subâdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ð
dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÆ
dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_11/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6o
dense_flipout_11/CastCast dense_flipout_11/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ÷
dense_flipout_11/truedivRealDivdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_11/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_11/divergence_kernelIdentitydense_flipout_11/truediv:z:0*
T0*
_output_shapes
: q
IdentityIdentity"dense_flipout_11/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj

Identity_1Identity*dense_flipout_9/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_2Identity+dense_flipout_10/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_3Identity+dense_flipout_11/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ¥
NoOpNoOpU^dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp÷^dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpê^dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_10/MatMul_1/ReadVariableOp7^dense_flipout_10/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp÷^dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpê^dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_11/MatMul_1/ReadVariableOp7^dense_flipout_11/Normal/sample/Softplus/ReadVariableOpT^dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpõ^dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpè^dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp(^dense_flipout_9/MatMul_1/ReadVariableOp6^dense_flipout_9/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2¬
Tdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ò
ödense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpödense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ø
édense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpédense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_10/MatMul_1/ReadVariableOp(dense_flipout_10/MatMul_1/ReadVariableOp2p
6dense_flipout_10/Normal/sample/Softplus/ReadVariableOp6dense_flipout_10/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ò
ödense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpödense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ø
édense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpédense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_11/MatMul_1/ReadVariableOp(dense_flipout_11/MatMul_1/ReadVariableOp2p
6dense_flipout_11/Normal/sample/Softplus/ReadVariableOp6dense_flipout_11/Normal/sample/Softplus/ReadVariableOp2ª
Sdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpSdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2î
ôdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpôdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ô
çdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpçdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2R
'dense_flipout_9/MatMul_1/ReadVariableOp'dense_flipout_9/MatMul_1/ReadVariableOp2n
5dense_flipout_9/Normal/sample/Softplus/ReadVariableOp5dense_flipout_9/Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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

:
¸û

M__inference_dense_flipout_10_layer_call_and_return_conditional_losses_1268901

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_10_sample_deterministic_sample_readvariableop_resource:Ö
Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268870Ú
Õkullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOp¢åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

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
:*
dtype0Ð
&Normal/sample/normal/random_normal/mulMul@Normal/sample/normal/random_normal/RandomStandardNormal:output:02Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:¶
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
:ÿÿÿÿÿÿÿÿÿ*
dtype0	R
rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 R
rademacher/mulMulrademacher/mul/x:output:04rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rv
rademacher/subSubrademacher/mul:z:0rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
rademacher/CastCastrademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
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
:ÿÿÿÿÿÿÿÿÿk
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

:*
dtype0m
MatMul_1MatMulinputsMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
addAddV2MatMul_1:product:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¼
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_10_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ª
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB î
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:ë
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      è
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:¶
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ü
ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusíKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ê
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÜKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ö
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Ì
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÑkullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268870*
T0*
_output_shapes
: ¨
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:º
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivàKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268870*
T0*
_output_shapes

:´
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÕkullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÑkullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268870*
T0*
_output_shapes

:Ì
ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ø
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ª
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ß
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOpæ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpÙ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2Ê
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOp2Ð
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpåKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2¶
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2N
%Normal/sample/Softplus/ReadVariableOp%Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :$ 

_output_shapes

:
â¸
"
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269898

inputsP
>dense_flipout_9_normal_sample_softplus_readvariableop_resource:B
0dense_flipout_9_matmul_1_readvariableop_resource:j
\dense_flipout_9_independentdeterministic_sample_deterministic_sample_readvariableop_resource:å
àdense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269593é
ädense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_10_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_10_matmul_1_readvariableop_resource:k
]dense_flipout_10_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ç
âdense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269729ë
ædense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xQ
?dense_flipout_11_normal_sample_softplus_readvariableop_resource:C
1dense_flipout_11_matmul_1_readvariableop_resource:k
]dense_flipout_11_independentdeterministic_sample_deterministic_sample_readvariableop_resource:ç
âdense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269865ë
ædense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1

identity_2

identity_3¢Tdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ödense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢édense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢(dense_flipout_10/MatMul_1/ReadVariableOp¢6dense_flipout_10/Normal/sample/Softplus/ReadVariableOp¢Tdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ödense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢édense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢(dense_flipout_11/MatMul_1/ReadVariableOp¢6dense_flipout_11/Normal/sample/Softplus/ReadVariableOp¢Sdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp¢ôdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢çdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢'dense_flipout_9/MatMul_1/ReadVariableOp¢5dense_flipout_9/Normal/sample/Softplus/ReadVariableOpo
dense_flipout_9/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    m
*dense_flipout_9/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ´
5dense_flipout_9/Normal/sample/Softplus/ReadVariableOpReadVariableOp>dense_flipout_9_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
&dense_flipout_9/Normal/sample/SoftplusSoftplus=dense_flipout_9/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:h
#dense_flipout_9/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4·
!dense_flipout_9/Normal/sample/addAddV2,dense_flipout_9/Normal/sample/add/x:output:04dense_flipout_9/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:~
-dense_flipout_9/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      e
#dense_flipout_9/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : {
1dense_flipout_9/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_flipout_9/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_flipout_9/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
+dense_flipout_9/Normal/sample/strided_sliceStridedSlice6dense_flipout_9/Normal/sample/shape_as_tensor:output:0:dense_flipout_9/Normal/sample/strided_slice/stack:output:0<dense_flipout_9/Normal/sample/strided_slice/stack_1:output:0<dense_flipout_9/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
/dense_flipout_9/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      g
%dense_flipout_9/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : }
3dense_flipout_9/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_flipout_9/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_flipout_9/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
-dense_flipout_9/Normal/sample/strided_slice_1StridedSlice8dense_flipout_9/Normal/sample/shape_as_tensor_1:output:0<dense_flipout_9/Normal/sample/strided_slice_1/stack:output:0>dense_flipout_9/Normal/sample/strided_slice_1/stack_1:output:0>dense_flipout_9/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskq
.dense_flipout_9/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB s
0dense_flipout_9/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB É
+dense_flipout_9/Normal/sample/BroadcastArgsBroadcastArgs9dense_flipout_9/Normal/sample/BroadcastArgs/s0_1:output:04dense_flipout_9/Normal/sample/strided_slice:output:0*
_output_shapes
:Ä
-dense_flipout_9/Normal/sample/BroadcastArgs_1BroadcastArgs0dense_flipout_9/Normal/sample/BroadcastArgs:r0:06dense_flipout_9/Normal/sample/strided_slice_1:output:0*
_output_shapes
:w
-dense_flipout_9/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:k
)dense_flipout_9/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : þ
$dense_flipout_9/Normal/sample/concatConcatV26dense_flipout_9/Normal/sample/concat/values_0:output:02dense_flipout_9/Normal/sample/BroadcastArgs_1:r0:02dense_flipout_9/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:|
7dense_flipout_9/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
9dense_flipout_9/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
Gdense_flipout_9/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal-dense_flipout_9/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
6dense_flipout_9/Normal/sample/normal/random_normal/mulMulPdense_flipout_9/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Bdense_flipout_9/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:æ
2dense_flipout_9/Normal/sample/normal/random_normalAddV2:dense_flipout_9/Normal/sample/normal/random_normal/mul:z:0@dense_flipout_9/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:´
!dense_flipout_9/Normal/sample/mulMul6dense_flipout_9/Normal/sample/normal/random_normal:z:0%dense_flipout_9/Normal/sample/add:z:0*
T0*"
_output_shapes
:¥
#dense_flipout_9/Normal/sample/add_1AddV2%dense_flipout_9/Normal/sample/mul:z:0#dense_flipout_9/zeros_like:output:0*
T0*"
_output_shapes
:|
+dense_flipout_9/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
%dense_flipout_9/Normal/sample/ReshapeReshape'dense_flipout_9/Normal/sample/add_1:z:04dense_flipout_9/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:K
dense_flipout_9/ShapeShapeinputs*
T0*
_output_shapes
:m
#dense_flipout_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
%dense_flipout_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%dense_flipout_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
dense_flipout_9/strided_sliceStridedSlicedense_flipout_9/Shape:output:0,dense_flipout_9/strided_slice/stack:output:0.dense_flipout_9/strided_slice/stack_1:output:0.dense_flipout_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
;dense_flipout_9/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
9dense_flipout_9/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
9dense_flipout_9/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÈ
5dense_flipout_9/rademacher/uniform/sanitize_seed/seedRandomUniformIntDdense_flipout_9/rademacher/uniform/sanitize_seed/seed/shape:output:0Bdense_flipout_9/rademacher/uniform/sanitize_seed/seed/min:output:0Bdense_flipout_9/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
?dense_flipout_9/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?dense_flipout_9/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rç
Xdense_flipout_9/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter>dense_flipout_9/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
?dense_flipout_9/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ò
;dense_flipout_9/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_9/Shape:output:0^dense_flipout_9/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0bdense_flipout_9/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Hdense_flipout_9/rademacher/uniform/stateless_random_uniform/alg:output:0Hdense_flipout_9/rademacher/uniform/stateless_random_uniform/min:output:0Hdense_flipout_9/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	b
 dense_flipout_9/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÈ
dense_flipout_9/rademacher/mulMul)dense_flipout_9/rademacher/mul/x:output:0Ddense_flipout_9/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_9/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¦
dense_flipout_9/rademacher/subSub"dense_flipout_9/rademacher/mul:z:0)dense_flipout_9/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_9/rademacher/CastCast"dense_flipout_9/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 dense_flipout_9/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :`
dense_flipout_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¡
dense_flipout_9/ExpandDims
ExpandDims)dense_flipout_9/ExpandDims/input:output:0'dense_flipout_9/ExpandDims/dim:output:0*
T0*
_output_shapes
:]
dense_flipout_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
dense_flipout_9/concatConcatV2&dense_flipout_9/strided_slice:output:0#dense_flipout_9/ExpandDims:output:0$dense_flipout_9/concat/axis:output:0*
N*
T0*
_output_shapes
:
=dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
;dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
;dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÐ
7dense_flipout_9/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntFdense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Ddense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/min:output:0Ddense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Adense_flipout_9/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Adense_flipout_9/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rë
Zdense_flipout_9/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter@dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Adense_flipout_9/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :ß
=dense_flipout_9/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_9/concat:output:0`dense_flipout_9/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ddense_flipout_9/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Jdense_flipout_9/rademacher_1/uniform/stateless_random_uniform/alg:output:0Jdense_flipout_9/rademacher_1/uniform/stateless_random_uniform/min:output:0Jdense_flipout_9/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	d
"dense_flipout_9/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÎ
 dense_flipout_9/rademacher_1/mulMul+dense_flipout_9/rademacher_1/mul/x:output:0Fdense_flipout_9/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"dense_flipout_9/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¬
 dense_flipout_9/rademacher_1/subSub$dense_flipout_9/rademacher_1/mul:z:0+dense_flipout_9/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_flipout_9/rademacher_1/CastCast$dense_flipout_9/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
dense_flipout_9/mulMulinputs#dense_flipout_9/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_9/MatMulMatMuldense_flipout_9/mul:z:0.dense_flipout_9/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_9/mul_1Mul dense_flipout_9/MatMul:product:0%dense_flipout_9/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'dense_flipout_9/MatMul_1/ReadVariableOpReadVariableOp0dense_flipout_9_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
dense_flipout_9/MatMul_1MatMulinputs/dense_flipout_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_9/addAddV2"dense_flipout_9/MatMul_1:product:0dense_flipout_9/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
<dense_flipout_9/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¬
bdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:ì
Sdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp\dense_flipout_9_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Tdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Jdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ¢
Xdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¤
Zdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¤
Zdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
Rdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice]dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0adense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0cdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0cdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Udense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Wdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ¾
Rdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgs`dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0[dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Tdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Tdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Pdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Kdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2]dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Wdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0]dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Ydense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:»
Pdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo[dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Tdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:£
Rdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¸
Ldense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeYdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0[dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
=dense_flipout_9/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
7dense_flipout_9/IndependentDeterministic/sample/ReshapeReshapeUdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Fdense_flipout_9/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:¯
dense_flipout_9/BiasAddBiasAdddense_flipout_9/add:z:0@dense_flipout_9/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
ôdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp>dense_flipout_9_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
ådense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusüdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:¨
âdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4÷
àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ëdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0ódense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ô
Üdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogädense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:ê
Þdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logàdense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269593*
T0*
_output_shapes
: Õ
Üdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubàdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0âdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ù
çdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp0dense_flipout_9_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ê
àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivïdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0àdense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269593*
T0*
_output_shapes

:á
âdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivädense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xàdense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269593*
T0*
_output_shapes

:ù
êdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceädense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ædense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¤
Þdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?è
Üdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulçdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0îdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¦
àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @Þ
Þdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulédense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ö
Þdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1âdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?à
Þdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulédense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0âdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:×
Üdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0âdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Õ
Þdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subàdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0àdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:î
dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÀ
dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumâdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0¥dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Y
dense_flipout_9/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6m
dense_flipout_9/CastCastdense_flipout_9/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ó
dense_flipout_9/truedivRealDivdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_9/Cast:y:0*
T0*
_output_shapes
: k
!dense_flipout_9/divergence_kernelIdentitydense_flipout_9/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_10/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_10/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¶
6dense_flipout_10/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_10_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_10/Normal/sample/SoftplusSoftplus>dense_flipout_10/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_10/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4º
"dense_flipout_10/Normal/sample/addAddV2-dense_flipout_10/Normal/sample/add/x:output:05dense_flipout_10/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_10/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_10/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_10/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_10/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_10/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
,dense_flipout_10/Normal/sample/strided_sliceStridedSlice7dense_flipout_10/Normal/sample/shape_as_tensor:output:0;dense_flipout_10/Normal/sample/strided_slice/stack:output:0=dense_flipout_10/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_10/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_10/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_10/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_10/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_10/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_10/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
.dense_flipout_10/Normal/sample/strided_slice_1StridedSlice9dense_flipout_10/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_10/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_10/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_10/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_10/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_10/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ì
,dense_flipout_10/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_10/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_10/Normal/sample/strided_slice:output:0*
_output_shapes
:Ç
.dense_flipout_10/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_10/Normal/sample/BroadcastArgs:r0:07dense_flipout_10/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_10/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_10/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_10/Normal/sample/concatConcatV27dense_flipout_10/Normal/sample/concat/values_0:output:03dense_flipout_10/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_10/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_10/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_10/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ê
Hdense_flipout_10/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_10/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_10/Normal/sample/normal/random_normal/mulMulQdense_flipout_10/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_10/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:é
3dense_flipout_10/Normal/sample/normal/random_normalAddV2;dense_flipout_10/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_10/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_10/Normal/sample/mulMul7dense_flipout_10/Normal/sample/normal/random_normal:z:0&dense_flipout_10/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_10/Normal/sample/add_1AddV2&dense_flipout_10/Normal/sample/mul:z:0$dense_flipout_10/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_10/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_10/Normal/sample/ReshapeReshape(dense_flipout_10/Normal/sample/add_1:z:05dense_flipout_10/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:f
dense_flipout_10/ShapeShape dense_flipout_9/BiasAdd:output:0*
T0*
_output_shapes
:n
$dense_flipout_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿp
&dense_flipout_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
dense_flipout_10/strided_sliceStridedSlicedense_flipout_10/Shape:output:0-dense_flipout_10/strided_slice/stack:output:0/dense_flipout_10/strided_slice/stack_1:output:0/dense_flipout_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_10/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_10/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
:dense_flipout_10/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÌ
6dense_flipout_10/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_10/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_10/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_10/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_10/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_10/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Ré
Ydense_flipout_10/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_10/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_10/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ù
<dense_flipout_10/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_10/Shape:output:0_dense_flipout_10/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_10/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_10/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_10/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_10/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	c
!dense_flipout_10/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RË
dense_flipout_10/rademacher/mulMul*dense_flipout_10/rademacher/mul/x:output:0Edense_flipout_10/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_10/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_10/rademacher/subSub#dense_flipout_10/rademacher/mul:z:0*dense_flipout_10/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_flipout_10/rademacher/CastCast#dense_flipout_10/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_10/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_10/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¤
dense_flipout_10/ExpandDims
ExpandDims*dense_flipout_10/ExpandDims/input:output:0(dense_flipout_10/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_flipout_10/concatConcatV2'dense_flipout_10/strided_slice:output:0$dense_flipout_10/ExpandDims:output:0%dense_flipout_10/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
<dense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÔ
8dense_flipout_10/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_10/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_10/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rí
[dense_flipout_10/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_10/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_10/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :æ
>dense_flipout_10/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_10/concat:output:0adense_flipout_10/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_10/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_10/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_10/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_10/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	e
#dense_flipout_10/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÑ
!dense_flipout_10/rademacher_1/mulMul,dense_flipout_10/rademacher_1/mul/x:output:0Gdense_flipout_10/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#dense_flipout_10/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¯
!dense_flipout_10/rademacher_1/subSub%dense_flipout_10/rademacher_1/mul:z:0,dense_flipout_10/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_flipout_10/rademacher_1/CastCast%dense_flipout_10/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_10/mulMul dense_flipout_9/BiasAdd:output:0$dense_flipout_10/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_10/MatMulMatMuldense_flipout_10/mul:z:0/dense_flipout_10/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_10/mul_1Mul!dense_flipout_10/MatMul:product:0&dense_flipout_10/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(dense_flipout_10/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_10_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0©
dense_flipout_10/MatMul_1MatMul dense_flipout_9/BiasAdd:output:00dense_flipout_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_10/addAddV2#dense_flipout_10/MatMul_1:product:0dense_flipout_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=dense_flipout_10/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:î
Tdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_10_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¥
[dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¥
[dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Á
Sdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
Ldense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
Qdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:¤
Sdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_10/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_10/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_10/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_10/BiasAddBiasAdddense_flipout_10/add:z:0Adense_flipout_10/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
dense_flipout_10/ReluRelu!dense_flipout_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
ödense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_10_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
çdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusþdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ª
ädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ý
âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ídense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0õdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ø
Þdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogædense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:î
àdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logâdense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269729*
T0*
_output_shapes
: Û
Þdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubâdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ü
édense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_10_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ð
âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivñdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0âdense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269729*
T0*
_output_shapes

:ç
ädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivædense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xâdense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269729*
T0*
_output_shapes

:ÿ
ìdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceædense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0èdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?î
Þdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulédense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ðdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @ä
àdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulëdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ú
àdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?æ
àdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulëdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:Ý
Þdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Û
àdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subâdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0âdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ð
dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÆ
dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumädense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_10/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6o
dense_flipout_10/CastCast dense_flipout_10/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ÷
dense_flipout_10/truedivRealDivdense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_10/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_10/divergence_kernelIdentitydense_flipout_10/truediv:z:0*
T0*
_output_shapes
: p
dense_flipout_11/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    n
+dense_flipout_11/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¶
6dense_flipout_11/Normal/sample/Softplus/ReadVariableOpReadVariableOp?dense_flipout_11_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
'dense_flipout_11/Normal/sample/SoftplusSoftplus>dense_flipout_11/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:i
$dense_flipout_11/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4º
"dense_flipout_11/Normal/sample/addAddV2-dense_flipout_11/Normal/sample/add/x:output:05dense_flipout_11/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
.dense_flipout_11/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      f
$dense_flipout_11/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : |
2dense_flipout_11/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_flipout_11/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_flipout_11/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
,dense_flipout_11/Normal/sample/strided_sliceStridedSlice7dense_flipout_11/Normal/sample/shape_as_tensor:output:0;dense_flipout_11/Normal/sample/strided_slice/stack:output:0=dense_flipout_11/Normal/sample/strided_slice/stack_1:output:0=dense_flipout_11/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
0dense_flipout_11/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      h
&dense_flipout_11/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : ~
4dense_flipout_11/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6dense_flipout_11/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6dense_flipout_11/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
.dense_flipout_11/Normal/sample/strided_slice_1StridedSlice9dense_flipout_11/Normal/sample/shape_as_tensor_1:output:0=dense_flipout_11/Normal/sample/strided_slice_1/stack:output:0?dense_flipout_11/Normal/sample/strided_slice_1/stack_1:output:0?dense_flipout_11/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskr
/dense_flipout_11/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB t
1dense_flipout_11/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ì
,dense_flipout_11/Normal/sample/BroadcastArgsBroadcastArgs:dense_flipout_11/Normal/sample/BroadcastArgs/s0_1:output:05dense_flipout_11/Normal/sample/strided_slice:output:0*
_output_shapes
:Ç
.dense_flipout_11/Normal/sample/BroadcastArgs_1BroadcastArgs1dense_flipout_11/Normal/sample/BroadcastArgs:r0:07dense_flipout_11/Normal/sample/strided_slice_1:output:0*
_output_shapes
:x
.dense_flipout_11/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:l
*dense_flipout_11/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%dense_flipout_11/Normal/sample/concatConcatV27dense_flipout_11/Normal/sample/concat/values_0:output:03dense_flipout_11/Normal/sample/BroadcastArgs_1:r0:03dense_flipout_11/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:}
8dense_flipout_11/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
:dense_flipout_11/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ê
Hdense_flipout_11/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal.dense_flipout_11/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0
7dense_flipout_11/Normal/sample/normal/random_normal/mulMulQdense_flipout_11/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Cdense_flipout_11/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:é
3dense_flipout_11/Normal/sample/normal/random_normalAddV2;dense_flipout_11/Normal/sample/normal/random_normal/mul:z:0Adense_flipout_11/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:·
"dense_flipout_11/Normal/sample/mulMul7dense_flipout_11/Normal/sample/normal/random_normal:z:0&dense_flipout_11/Normal/sample/add:z:0*
T0*"
_output_shapes
:¨
$dense_flipout_11/Normal/sample/add_1AddV2&dense_flipout_11/Normal/sample/mul:z:0$dense_flipout_11/zeros_like:output:0*
T0*"
_output_shapes
:}
,dense_flipout_11/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
&dense_flipout_11/Normal/sample/ReshapeReshape(dense_flipout_11/Normal/sample/add_1:z:05dense_flipout_11/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:i
dense_flipout_11/ShapeShape#dense_flipout_10/Relu:activations:0*
T0*
_output_shapes
:n
$dense_flipout_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
&dense_flipout_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿp
&dense_flipout_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
dense_flipout_11/strided_sliceStridedSlicedense_flipout_11/Shape:output:0-dense_flipout_11/strided_slice/stack:output:0/dense_flipout_11/strided_slice/stack_1:output:0/dense_flipout_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<dense_flipout_11/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
:dense_flipout_11/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
:dense_flipout_11/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÌ
6dense_flipout_11/rademacher/uniform/sanitize_seed/seedRandomUniformIntEdense_flipout_11/rademacher/uniform/sanitize_seed/seed/shape:output:0Cdense_flipout_11/rademacher/uniform/sanitize_seed/seed/min:output:0Cdense_flipout_11/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
@dense_flipout_11/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
@dense_flipout_11/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Ré
Ydense_flipout_11/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?dense_flipout_11/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
@dense_flipout_11/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Ù
<dense_flipout_11/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2dense_flipout_11/Shape:output:0_dense_flipout_11/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0cdense_flipout_11/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Idense_flipout_11/rademacher/uniform/stateless_random_uniform/alg:output:0Idense_flipout_11/rademacher/uniform/stateless_random_uniform/min:output:0Idense_flipout_11/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	c
!dense_flipout_11/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RË
dense_flipout_11/rademacher/mulMul*dense_flipout_11/rademacher/mul/x:output:0Edense_flipout_11/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_11/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R©
dense_flipout_11/rademacher/subSub#dense_flipout_11/rademacher/mul:z:0*dense_flipout_11/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_flipout_11/rademacher/CastCast#dense_flipout_11/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!dense_flipout_11/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :a
dense_flipout_11/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¤
dense_flipout_11/ExpandDims
ExpandDims*dense_flipout_11/ExpandDims/input:output:0(dense_flipout_11/ExpandDims/dim:output:0*
T0*
_output_shapes
:^
dense_flipout_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_flipout_11/concatConcatV2'dense_flipout_11/strided_slice:output:0$dense_flipout_11/ExpandDims:output:0%dense_flipout_11/concat/axis:output:0*
N*
T0*
_output_shapes
:
>dense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
<dense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
<dense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿÔ
8dense_flipout_11/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntGdense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Edense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/min:output:0Edense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Bdense_flipout_11/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Bdense_flipout_11/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 Rí
[dense_flipout_11/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterAdense_flipout_11/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Bdense_flipout_11/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :æ
>dense_flipout_11/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2 dense_flipout_11/concat:output:0adense_flipout_11/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0edense_flipout_11/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Kdense_flipout_11/rademacher_1/uniform/stateless_random_uniform/alg:output:0Kdense_flipout_11/rademacher_1/uniform/stateless_random_uniform/min:output:0Kdense_flipout_11/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	e
#dense_flipout_11/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 RÑ
!dense_flipout_11/rademacher_1/mulMul,dense_flipout_11/rademacher_1/mul/x:output:0Gdense_flipout_11/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#dense_flipout_11/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R¯
!dense_flipout_11/rademacher_1/subSub%dense_flipout_11/rademacher_1/mul:z:0,dense_flipout_11/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"dense_flipout_11/rademacher_1/CastCast%dense_flipout_11/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_11/mulMul#dense_flipout_10/Relu:activations:0$dense_flipout_11/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_11/MatMulMatMuldense_flipout_11/mul:z:0/dense_flipout_11/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_11/mul_1Mul!dense_flipout_11/MatMul:product:0&dense_flipout_11/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(dense_flipout_11/MatMul_1/ReadVariableOpReadVariableOp1dense_flipout_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¬
dense_flipout_11/MatMul_1MatMul#dense_flipout_10/Relu:activations:00dense_flipout_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_flipout_11/addAddV2#dense_flipout_11/MatMul_1:product:0dense_flipout_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=dense_flipout_11/IndependentDeterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :­
cdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:î
Tdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpReadVariableOp]dense_flipout_11_independentdeterministic_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0
Udense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Kdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : £
Ydense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¥
[dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¥
[dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:·
Sdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_sliceStridedSlice^dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/shape_as_tensor:output:0bdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack:output:0ddense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_1:output:0ddense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Vdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
Xdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Á
Sdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgsBroadcastArgsadense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0\dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:
Udense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Udense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB 
Qdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
Ldense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concatConcatV2^dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat/values_0:output:0Xdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastArgs:r0:0^dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat/values_2:output:0Zdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:¾
Qdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastToBroadcastTo\dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp:value:0Udense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:¤
Sdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      »
Mdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReshapeReshapeZdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/BroadcastTo:output:0\dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
>dense_flipout_11/IndependentDeterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
8dense_flipout_11/IndependentDeterministic/sample/ReshapeReshapeVdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/Reshape:output:0Gdense_flipout_11/IndependentDeterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes
:²
dense_flipout_11/BiasAddBiasAdddense_flipout_11/add:z:0Adense_flipout_11/IndependentDeterministic/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dense_flipout_11/SoftmaxSoftmax!dense_flipout_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
ödense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp?dense_flipout_11_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0
çdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusþdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:ª
ädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4ý
âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ídense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0õdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:ø
Þdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogædense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:î
àdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logâdense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269865*
T0*
_output_shapes
: Û
Þdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubâdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:Ü
édense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp1dense_flipout_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ð
âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivñdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0âdense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269865*
T0*
_output_shapes

:ç
ädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivædense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xâdense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269865*
T0*
_output_shapes

:ÿ
ìdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceædense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0èdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:¦
àdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?î
Þdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulédense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ðdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:¨
âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @ä
àdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulëdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ú
àdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:¨
âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?æ
àdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulëdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:Ý
Þdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:Û
àdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subâdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0âdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ð
dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿÆ
dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumädense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0§dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: Z
dense_flipout_11/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6o
dense_flipout_11/CastCast dense_flipout_11/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ÷
dense_flipout_11/truedivRealDivdense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0dense_flipout_11/Cast:y:0*
T0*
_output_shapes
: m
"dense_flipout_11/divergence_kernelIdentitydense_flipout_11/truediv:z:0*
T0*
_output_shapes
: q
IdentityIdentity"dense_flipout_11/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj

Identity_1Identity*dense_flipout_9/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_2Identity+dense_flipout_10/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: k

Identity_3Identity+dense_flipout_11/divergence_kernel:output:0^NoOp*
T0*
_output_shapes
: ¥
NoOpNoOpU^dense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp÷^dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpê^dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_10/MatMul_1/ReadVariableOp7^dense_flipout_10/Normal/sample/Softplus/ReadVariableOpU^dense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp÷^dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpê^dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp)^dense_flipout_11/MatMul_1/ReadVariableOp7^dense_flipout_11/Normal/sample/Softplus/ReadVariableOpT^dense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpõ^dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpè^dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp(^dense_flipout_9/MatMul_1/ReadVariableOp6^dense_flipout_9/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2¬
Tdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_10/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ò
ödense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpödense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ø
édense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpédense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_10/MatMul_1/ReadVariableOp(dense_flipout_10/MatMul_1/ReadVariableOp2p
6dense_flipout_10/Normal/sample/Softplus/ReadVariableOp6dense_flipout_10/Normal/sample/Softplus/ReadVariableOp2¬
Tdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpTdense_flipout_11/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2ò
ödense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpödense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ø
édense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpédense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2T
(dense_flipout_11/MatMul_1/ReadVariableOp(dense_flipout_11/MatMul_1/ReadVariableOp2p
6dense_flipout_11/Normal/sample/Softplus/ReadVariableOp6dense_flipout_11/Normal/sample/Softplus/ReadVariableOp2ª
Sdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOpSdense_flipout_9/IndependentDeterministic/sample/Deterministic/sample/ReadVariableOp2î
ôdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpôdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2Ô
çdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpçdense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2R
'dense_flipout_9/MatMul_1/ReadVariableOp'dense_flipout_9/MatMul_1/ReadVariableOp2n
5dense_flipout_9/Normal/sample/Softplus/ReadVariableOp5dense_flipout_9/Normal/sample/Softplus/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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

:

½
.__inference_sequential_5_layer_call_fn_1269108
input_4
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
	unknown_9:

unknown_10:

unknown_11:

unknown_12

unknown_13
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269072o
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
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4:
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

:
½û

M__inference_dense_flipout_11_layer_call_and_return_conditional_losses_1269055

inputs@
.normal_sample_softplus_readvariableop_resource:2
 matmul_1_readvariableop_resource:z
lindependentdeterministic_constructed_at_dense_flipout_11_sample_deterministic_sample_readvariableop_resource:Ö
Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269024Ú
Õkullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity

identity_1¢cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOp¢åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢MatMul_1/ReadVariableOp¢%Normal/sample/Softplus/ReadVariableOp_

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
LIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB £
aIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :¼
rIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOpReadVariableOplindependentdeterministic_constructed_at_dense_flipout_11_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
ZIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : ²
hIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:´
jIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_sliceStridedSlicemIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/shape_as_tensor:output:0qIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack_1:output:0sIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask¨
eIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB ª
gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB î
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgsBroadcastArgspIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:®
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:§
dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¢
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
[IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concatConcatV2mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/values_0:output:0gIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgs:r0:0mIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/values_2:output:0iIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:ë
`IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastToBroadcastTokIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOp:value:0dIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:³
bIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      è
\IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReshapeReshapeiIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastTo:output:0kIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
MIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:¶
GIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/ReshapeReshapeeIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/Reshape:output:0VIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Reshape/shape:output:0*
T0*
_output_shapes
:
BiasAddBiasAddadd:z:0PIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOp.normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0ü
ÖKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplusíKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Ê
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2ÜKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0äKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:Ö
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:Ì
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1LogÑkullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269024*
T0*
_output_shapes
: ¨
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:º
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0½
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivàKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0Ñkullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269024*
T0*
_output_shapes

:´
ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivÕkullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xÑkullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1269024*
T0*
_output_shapes

:Ì
ÛKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceÕKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0×KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ßKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @±
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:Ø
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:
ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2MulÚKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:ª
ÍKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:¨
ÏKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1SubÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ÑKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ß
KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿ
{KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumÓKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
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
truedivRealDivKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0Cast:y:0*
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
NoOpNoOpd^IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOpæ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpÙ^KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp^MatMul_1/ReadVariableOp&^Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : :2Ê
cIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOpcIndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOp2Ð
åKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpåKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2¶
ØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpØKullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp22
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
®
ý%
"__inference__wrapped_model_1268600
input_4]
Ksequential_5_dense_flipout_9_normal_sample_softplus_readvariableop_resource:O
=sequential_5_dense_flipout_9_matmul_1_readvariableop_resource:
sequential_5_dense_flipout_9_independentdeterministic_constructed_at_dense_flipout_9_sample_deterministic_sample_readvariableop_resource:ò
ísequential_5_dense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268298ö
ñsequential_5_dense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x^
Lsequential_5_dense_flipout_10_normal_sample_softplus_readvariableop_resource:P
>sequential_5_dense_flipout_10_matmul_1_readvariableop_resource:
sequential_5_dense_flipout_10_independentdeterministic_constructed_at_dense_flipout_10_sample_deterministic_sample_readvariableop_resource:ô
ïsequential_5_dense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268434ø
ósequential_5_dense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x^
Lsequential_5_dense_flipout_11_normal_sample_softplus_readvariableop_resource:P
>sequential_5_dense_flipout_11_matmul_1_readvariableop_resource:
sequential_5_dense_flipout_11_independentdeterministic_constructed_at_dense_flipout_11_sample_deterministic_sample_readvariableop_resource:ô
ïsequential_5_dense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268570ø
ósequential_5_dense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_x
identity¢sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOp¢sequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ösequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢5sequential_5/dense_flipout_10/MatMul_1/ReadVariableOp¢Csequential_5/dense_flipout_10/Normal/sample/Softplus/ReadVariableOp¢sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOp¢sequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ösequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢5sequential_5/dense_flipout_11/MatMul_1/ReadVariableOp¢Csequential_5/dense_flipout_11/Normal/sample/Softplus/ReadVariableOp¢sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOp¢sequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp¢ôsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp¢4sequential_5/dense_flipout_9/MatMul_1/ReadVariableOp¢Bsequential_5/dense_flipout_9/Normal/sample/Softplus/ReadVariableOp|
'sequential_5/dense_flipout_9/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    z
7sequential_5/dense_flipout_9/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Î
Bsequential_5/dense_flipout_9/Normal/sample/Softplus/ReadVariableOpReadVariableOpKsequential_5_dense_flipout_9_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0´
3sequential_5/dense_flipout_9/Normal/sample/SoftplusSoftplusJsequential_5/dense_flipout_9/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:u
0sequential_5/dense_flipout_9/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4Þ
.sequential_5/dense_flipout_9/Normal/sample/addAddV29sequential_5/dense_flipout_9/Normal/sample/add/x:output:0Asequential_5/dense_flipout_9/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
:sequential_5/dense_flipout_9/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      r
0sequential_5/dense_flipout_9/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
>sequential_5/dense_flipout_9/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@sequential_5/dense_flipout_9/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@sequential_5/dense_flipout_9/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
8sequential_5/dense_flipout_9/Normal/sample/strided_sliceStridedSliceCsequential_5/dense_flipout_9/Normal/sample/shape_as_tensor:output:0Gsequential_5/dense_flipout_9/Normal/sample/strided_slice/stack:output:0Isequential_5/dense_flipout_9/Normal/sample/strided_slice/stack_1:output:0Isequential_5/dense_flipout_9/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<sequential_5/dense_flipout_9/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      t
2sequential_5/dense_flipout_9/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
@sequential_5/dense_flipout_9/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_5/dense_flipout_9/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_5/dense_flipout_9/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
:sequential_5/dense_flipout_9/Normal/sample/strided_slice_1StridedSliceEsequential_5/dense_flipout_9/Normal/sample/shape_as_tensor_1:output:0Isequential_5/dense_flipout_9/Normal/sample/strided_slice_1/stack:output:0Ksequential_5/dense_flipout_9/Normal/sample/strided_slice_1/stack_1:output:0Ksequential_5/dense_flipout_9/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask~
;sequential_5/dense_flipout_9/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
=sequential_5/dense_flipout_9/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ð
8sequential_5/dense_flipout_9/Normal/sample/BroadcastArgsBroadcastArgsFsequential_5/dense_flipout_9/Normal/sample/BroadcastArgs/s0_1:output:0Asequential_5/dense_flipout_9/Normal/sample/strided_slice:output:0*
_output_shapes
:ë
:sequential_5/dense_flipout_9/Normal/sample/BroadcastArgs_1BroadcastArgs=sequential_5/dense_flipout_9/Normal/sample/BroadcastArgs:r0:0Csequential_5/dense_flipout_9/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
:sequential_5/dense_flipout_9/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:x
6sequential_5/dense_flipout_9/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ²
1sequential_5/dense_flipout_9/Normal/sample/concatConcatV2Csequential_5/dense_flipout_9/Normal/sample/concat/values_0:output:0?sequential_5/dense_flipout_9/Normal/sample/BroadcastArgs_1:r0:0?sequential_5/dense_flipout_9/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Dsequential_5/dense_flipout_9/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Fsequential_5/dense_flipout_9/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?â
Tsequential_5/dense_flipout_9/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal:sequential_5/dense_flipout_9/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0§
Csequential_5/dense_flipout_9/Normal/sample/normal/random_normal/mulMul]sequential_5/dense_flipout_9/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Osequential_5/dense_flipout_9/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
?sequential_5/dense_flipout_9/Normal/sample/normal/random_normalAddV2Gsequential_5/dense_flipout_9/Normal/sample/normal/random_normal/mul:z:0Msequential_5/dense_flipout_9/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:Û
.sequential_5/dense_flipout_9/Normal/sample/mulMulCsequential_5/dense_flipout_9/Normal/sample/normal/random_normal:z:02sequential_5/dense_flipout_9/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ì
0sequential_5/dense_flipout_9/Normal/sample/add_1AddV22sequential_5/dense_flipout_9/Normal/sample/mul:z:00sequential_5/dense_flipout_9/zeros_like:output:0*
T0*"
_output_shapes
:
8sequential_5/dense_flipout_9/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ß
2sequential_5/dense_flipout_9/Normal/sample/ReshapeReshape4sequential_5/dense_flipout_9/Normal/sample/add_1:z:0Asequential_5/dense_flipout_9/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:Y
"sequential_5/dense_flipout_9/ShapeShapeinput_4*
T0*
_output_shapes
:z
0sequential_5/dense_flipout_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
2sequential_5/dense_flipout_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ|
2sequential_5/dense_flipout_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
*sequential_5/dense_flipout_9/strided_sliceStridedSlice+sequential_5/dense_flipout_9/Shape:output:09sequential_5/dense_flipout_9/strided_slice/stack:output:0;sequential_5/dense_flipout_9/strided_slice/stack_1:output:0;sequential_5/dense_flipout_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Hsequential_5/dense_flipout_9/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Fsequential_5/dense_flipout_9/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Fsequential_5/dense_flipout_9/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿü
Bsequential_5/dense_flipout_9/rademacher/uniform/sanitize_seed/seedRandomUniformIntQsequential_5/dense_flipout_9/rademacher/uniform/sanitize_seed/seed/shape:output:0Osequential_5/dense_flipout_9/rademacher/uniform/sanitize_seed/seed/min:output:0Osequential_5/dense_flipout_9/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Lsequential_5/dense_flipout_9/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Lsequential_5/dense_flipout_9/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
esequential_5/dense_flipout_9/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterKsequential_5/dense_flipout_9/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Lsequential_5/dense_flipout_9/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :­
Hsequential_5/dense_flipout_9/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2+sequential_5/dense_flipout_9/Shape:output:0ksequential_5/dense_flipout_9/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0osequential_5/dense_flipout_9/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Usequential_5/dense_flipout_9/rademacher/uniform/stateless_random_uniform/alg:output:0Usequential_5/dense_flipout_9/rademacher/uniform/stateless_random_uniform/min:output:0Usequential_5/dense_flipout_9/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	o
-sequential_5/dense_flipout_9/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rï
+sequential_5/dense_flipout_9/rademacher/mulMul6sequential_5/dense_flipout_9/rademacher/mul/x:output:0Qsequential_5/dense_flipout_9/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-sequential_5/dense_flipout_9/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÍ
+sequential_5/dense_flipout_9/rademacher/subSub/sequential_5/dense_flipout_9/rademacher/mul:z:06sequential_5/dense_flipout_9/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
,sequential_5/dense_flipout_9/rademacher/CastCast/sequential_5/dense_flipout_9/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-sequential_5/dense_flipout_9/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :m
+sequential_5/dense_flipout_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : È
'sequential_5/dense_flipout_9/ExpandDims
ExpandDims6sequential_5/dense_flipout_9/ExpandDims/input:output:04sequential_5/dense_flipout_9/ExpandDims/dim:output:0*
T0*
_output_shapes
:j
(sequential_5/dense_flipout_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
#sequential_5/dense_flipout_9/concatConcatV23sequential_5/dense_flipout_9/strided_slice:output:00sequential_5/dense_flipout_9/ExpandDims:output:01sequential_5/dense_flipout_9/concat/axis:output:0*
N*
T0*
_output_shapes
:
Jsequential_5/dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Hsequential_5/dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Hsequential_5/dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Dsequential_5/dense_flipout_9/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntSsequential_5/dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Qsequential_5/dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/min:output:0Qsequential_5/dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Nsequential_5/dense_flipout_9/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Nsequential_5/dense_flipout_9/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
gsequential_5/dense_flipout_9/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterMsequential_5/dense_flipout_9/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Nsequential_5/dense_flipout_9/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :º
Jsequential_5/dense_flipout_9/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2,sequential_5/dense_flipout_9/concat:output:0msequential_5/dense_flipout_9/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0qsequential_5/dense_flipout_9/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Wsequential_5/dense_flipout_9/rademacher_1/uniform/stateless_random_uniform/alg:output:0Wsequential_5/dense_flipout_9/rademacher_1/uniform/stateless_random_uniform/min:output:0Wsequential_5/dense_flipout_9/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	q
/sequential_5/dense_flipout_9/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rõ
-sequential_5/dense_flipout_9/rademacher_1/mulMul8sequential_5/dense_flipout_9/rademacher_1/mul/x:output:0Ssequential_5/dense_flipout_9/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/sequential_5/dense_flipout_9/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÓ
-sequential_5/dense_flipout_9/rademacher_1/subSub1sequential_5/dense_flipout_9/rademacher_1/mul:z:08sequential_5/dense_flipout_9/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
.sequential_5/dense_flipout_9/rademacher_1/CastCast1sequential_5/dense_flipout_9/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 sequential_5/dense_flipout_9/mulMulinput_40sequential_5/dense_flipout_9/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
#sequential_5/dense_flipout_9/MatMulMatMul$sequential_5/dense_flipout_9/mul:z:0;sequential_5/dense_flipout_9/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
"sequential_5/dense_flipout_9/mul_1Mul-sequential_5/dense_flipout_9/MatMul:product:02sequential_5/dense_flipout_9/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
4sequential_5/dense_flipout_9/MatMul_1/ReadVariableOpReadVariableOp=sequential_5_dense_flipout_9_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0¨
%sequential_5/dense_flipout_9/MatMul_1MatMulinput_4<sequential_5/dense_flipout_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 sequential_5/dense_flipout_9/addAddV2/sequential_5/dense_flipout_9/MatMul_1:product:0&sequential_5/dense_flipout_9/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
hsequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ¿
}sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Ù
sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Å
sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_5_dense_flipout_9_independentdeterministic_constructed_at_dense_flipout_9_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Ë
sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:¸
vsequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ï
sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ñ
sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ñ
sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
~sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_sliceStridedSlicesequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/shape_as_tensor:output:0sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack:output:0sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskÅ
sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB Ç
sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ä
~sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Ë
sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Ä
sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB ¾
|sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
wsequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concatConcatV2sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/values_0:output:0sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/values_2:output:0sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Á
|sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastToBroadcastTosequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOp:value:0sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:Ï
~sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¾
xsequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReshapeReshapesequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/BroadcastTo:output:0sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:³
isequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
csequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/ReshapeReshapesequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/Reshape:output:0rsequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Reshape/shape:output:0*
T0*
_output_shapes
:õ
$sequential_5/dense_flipout_9/BiasAddBiasAdd$sequential_5/dense_flipout_9/add:z:0lsequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpKsequential_5_dense_flipout_9_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0´
òsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:µ
ïsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4
ísequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2øsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
ésequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogñsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
ësequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logísequential_5_dense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268298*
T0*
_output_shapes
: ü
ésequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubísequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ïsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ó
ôsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp=sequential_5_dense_flipout_9_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
ísequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivüsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ísequential_5_dense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268298*
T0*
_output_shapes

:
ïsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivñsequential_5_dense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xísequential_5_dense_flipout_9_kullbackleibler_independentnormal_constructed_at_dense_flipout_9_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268298*
T0*
_output_shapes

: 
÷sequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceñsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0ósequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:±
ësequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ésequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulôsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ûsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:³
ísequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
ësequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Mulösequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ísequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
ësequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ïsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:³
ísequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ësequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Mulösequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ïsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:þ
ésequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ísequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ïsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:ü
ësequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subísequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ísequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:û
©sequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿç
sequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumïsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0²sequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: f
#sequential_5/dense_flipout_9/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6
!sequential_5/dense_flipout_9/CastCast,sequential_5/dense_flipout_9/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 
$sequential_5/dense_flipout_9/truedivRealDiv sequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0%sequential_5/dense_flipout_9/Cast:y:0*
T0*
_output_shapes
: 
.sequential_5/dense_flipout_9/divergence_kernelIdentity(sequential_5/dense_flipout_9/truediv:z:0*
T0*
_output_shapes
: }
(sequential_5/dense_flipout_10/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    {
8sequential_5/dense_flipout_10/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ð
Csequential_5/dense_flipout_10/Normal/sample/Softplus/ReadVariableOpReadVariableOpLsequential_5_dense_flipout_10_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0¶
4sequential_5/dense_flipout_10/Normal/sample/SoftplusSoftplusKsequential_5/dense_flipout_10/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:v
1sequential_5/dense_flipout_10/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4á
/sequential_5/dense_flipout_10/Normal/sample/addAddV2:sequential_5/dense_flipout_10/Normal/sample/add/x:output:0Bsequential_5/dense_flipout_10/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
;sequential_5/dense_flipout_10/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      s
1sequential_5/dense_flipout_10/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
?sequential_5/dense_flipout_10/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_5/dense_flipout_10/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_5/dense_flipout_10/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
9sequential_5/dense_flipout_10/Normal/sample/strided_sliceStridedSliceDsequential_5/dense_flipout_10/Normal/sample/shape_as_tensor:output:0Hsequential_5/dense_flipout_10/Normal/sample/strided_slice/stack:output:0Jsequential_5/dense_flipout_10/Normal/sample/strided_slice/stack_1:output:0Jsequential_5/dense_flipout_10/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
=sequential_5/dense_flipout_10/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      u
3sequential_5/dense_flipout_10/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
Asequential_5/dense_flipout_10/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Csequential_5/dense_flipout_10/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Csequential_5/dense_flipout_10/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
;sequential_5/dense_flipout_10/Normal/sample/strided_slice_1StridedSliceFsequential_5/dense_flipout_10/Normal/sample/shape_as_tensor_1:output:0Jsequential_5/dense_flipout_10/Normal/sample/strided_slice_1/stack:output:0Lsequential_5/dense_flipout_10/Normal/sample/strided_slice_1/stack_1:output:0Lsequential_5/dense_flipout_10/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<sequential_5/dense_flipout_10/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
>sequential_5/dense_flipout_10/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ó
9sequential_5/dense_flipout_10/Normal/sample/BroadcastArgsBroadcastArgsGsequential_5/dense_flipout_10/Normal/sample/BroadcastArgs/s0_1:output:0Bsequential_5/dense_flipout_10/Normal/sample/strided_slice:output:0*
_output_shapes
:î
;sequential_5/dense_flipout_10/Normal/sample/BroadcastArgs_1BroadcastArgs>sequential_5/dense_flipout_10/Normal/sample/BroadcastArgs:r0:0Dsequential_5/dense_flipout_10/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
;sequential_5/dense_flipout_10/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:y
7sequential_5/dense_flipout_10/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¶
2sequential_5/dense_flipout_10/Normal/sample/concatConcatV2Dsequential_5/dense_flipout_10/Normal/sample/concat/values_0:output:0@sequential_5/dense_flipout_10/Normal/sample/BroadcastArgs_1:r0:0@sequential_5/dense_flipout_10/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Esequential_5/dense_flipout_10/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gsequential_5/dense_flipout_10/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ä
Usequential_5/dense_flipout_10/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal;sequential_5/dense_flipout_10/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0ª
Dsequential_5/dense_flipout_10/Normal/sample/normal/random_normal/mulMul^sequential_5/dense_flipout_10/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Psequential_5/dense_flipout_10/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
@sequential_5/dense_flipout_10/Normal/sample/normal/random_normalAddV2Hsequential_5/dense_flipout_10/Normal/sample/normal/random_normal/mul:z:0Nsequential_5/dense_flipout_10/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:Þ
/sequential_5/dense_flipout_10/Normal/sample/mulMulDsequential_5/dense_flipout_10/Normal/sample/normal/random_normal:z:03sequential_5/dense_flipout_10/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ï
1sequential_5/dense_flipout_10/Normal/sample/add_1AddV23sequential_5/dense_flipout_10/Normal/sample/mul:z:01sequential_5/dense_flipout_10/zeros_like:output:0*
T0*"
_output_shapes
:
9sequential_5/dense_flipout_10/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      â
3sequential_5/dense_flipout_10/Normal/sample/ReshapeReshape5sequential_5/dense_flipout_10/Normal/sample/add_1:z:0Bsequential_5/dense_flipout_10/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
#sequential_5/dense_flipout_10/ShapeShape-sequential_5/dense_flipout_9/BiasAdd:output:0*
T0*
_output_shapes
:{
1sequential_5/dense_flipout_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
3sequential_5/dense_flipout_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ}
3sequential_5/dense_flipout_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
+sequential_5/dense_flipout_10/strided_sliceStridedSlice,sequential_5/dense_flipout_10/Shape:output:0:sequential_5/dense_flipout_10/strided_slice/stack:output:0<sequential_5/dense_flipout_10/strided_slice/stack_1:output:0<sequential_5/dense_flipout_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Isequential_5/dense_flipout_10/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Gsequential_5/dense_flipout_10/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Gsequential_5/dense_flipout_10/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Csequential_5/dense_flipout_10/rademacher/uniform/sanitize_seed/seedRandomUniformIntRsequential_5/dense_flipout_10/rademacher/uniform/sanitize_seed/seed/shape:output:0Psequential_5/dense_flipout_10/rademacher/uniform/sanitize_seed/seed/min:output:0Psequential_5/dense_flipout_10/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Msequential_5/dense_flipout_10/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Msequential_5/dense_flipout_10/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
fsequential_5/dense_flipout_10/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterLsequential_5/dense_flipout_10/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Msequential_5/dense_flipout_10/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :´
Isequential_5/dense_flipout_10/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2,sequential_5/dense_flipout_10/Shape:output:0lsequential_5/dense_flipout_10/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0psequential_5/dense_flipout_10/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Vsequential_5/dense_flipout_10/rademacher/uniform/stateless_random_uniform/alg:output:0Vsequential_5/dense_flipout_10/rademacher/uniform/stateless_random_uniform/min:output:0Vsequential_5/dense_flipout_10/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	p
.sequential_5/dense_flipout_10/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rò
,sequential_5/dense_flipout_10/rademacher/mulMul7sequential_5/dense_flipout_10/rademacher/mul/x:output:0Rsequential_5/dense_flipout_10/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
.sequential_5/dense_flipout_10/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÐ
,sequential_5/dense_flipout_10/rademacher/subSub0sequential_5/dense_flipout_10/rademacher/mul:z:07sequential_5/dense_flipout_10/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-sequential_5/dense_flipout_10/rademacher/CastCast0sequential_5/dense_flipout_10/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
.sequential_5/dense_flipout_10/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :n
,sequential_5/dense_flipout_10/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Ë
(sequential_5/dense_flipout_10/ExpandDims
ExpandDims7sequential_5/dense_flipout_10/ExpandDims/input:output:05sequential_5/dense_flipout_10/ExpandDims/dim:output:0*
T0*
_output_shapes
:k
)sequential_5/dense_flipout_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : û
$sequential_5/dense_flipout_10/concatConcatV24sequential_5/dense_flipout_10/strided_slice:output:01sequential_5/dense_flipout_10/ExpandDims:output:02sequential_5/dense_flipout_10/concat/axis:output:0*
N*
T0*
_output_shapes
:
Ksequential_5/dense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Isequential_5/dense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Isequential_5/dense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Esequential_5/dense_flipout_10/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntTsequential_5/dense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Rsequential_5/dense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/min:output:0Rsequential_5/dense_flipout_10/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Osequential_5/dense_flipout_10/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Osequential_5/dense_flipout_10/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
hsequential_5/dense_flipout_10/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterNsequential_5/dense_flipout_10/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Osequential_5/dense_flipout_10/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Á
Ksequential_5/dense_flipout_10/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2-sequential_5/dense_flipout_10/concat:output:0nsequential_5/dense_flipout_10/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0rsequential_5/dense_flipout_10/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Xsequential_5/dense_flipout_10/rademacher_1/uniform/stateless_random_uniform/alg:output:0Xsequential_5/dense_flipout_10/rademacher_1/uniform/stateless_random_uniform/min:output:0Xsequential_5/dense_flipout_10/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	r
0sequential_5/dense_flipout_10/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rø
.sequential_5/dense_flipout_10/rademacher_1/mulMul9sequential_5/dense_flipout_10/rademacher_1/mul/x:output:0Tsequential_5/dense_flipout_10/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0sequential_5/dense_flipout_10/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÖ
.sequential_5/dense_flipout_10/rademacher_1/subSub2sequential_5/dense_flipout_10/rademacher_1/mul:z:09sequential_5/dense_flipout_10/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
/sequential_5/dense_flipout_10/rademacher_1/CastCast2sequential_5/dense_flipout_10/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
!sequential_5/dense_flipout_10/mulMul-sequential_5/dense_flipout_9/BiasAdd:output:01sequential_5/dense_flipout_10/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
$sequential_5/dense_flipout_10/MatMulMatMul%sequential_5/dense_flipout_10/mul:z:0<sequential_5/dense_flipout_10/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
#sequential_5/dense_flipout_10/mul_1Mul.sequential_5/dense_flipout_10/MatMul:product:03sequential_5/dense_flipout_10/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
5sequential_5/dense_flipout_10/MatMul_1/ReadVariableOpReadVariableOp>sequential_5_dense_flipout_10_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ð
&sequential_5/dense_flipout_10/MatMul_1MatMul-sequential_5/dense_flipout_9/BiasAdd:output:0=sequential_5/dense_flipout_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
!sequential_5/dense_flipout_10/addAddV20sequential_5/dense_flipout_10/MatMul_1:product:0'sequential_5/dense_flipout_10/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
jsequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Á
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Û
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Ê
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_5_dense_flipout_10_independentdeterministic_constructed_at_dense_flipout_10_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Í
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:º
xsequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ñ
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ó
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ó
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_sliceStridedSlicesequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/shape_as_tensor:output:0sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack:output:0sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskÇ
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB É
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ë
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Í
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Æ
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB À
~sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : á
ysequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concatConcatV2sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/values_0:output:0sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/values_2:output:0sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ç
~sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastToBroadcastTosequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOp:value:0sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:Ò
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ä
zsequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReshapeReshapesequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/BroadcastTo:output:0sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:µ
ksequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
esequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/ReshapeReshapesequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/Reshape:output:0tsequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Reshape/shape:output:0*
T0*
_output_shapes
:ù
%sequential_5/dense_flipout_10/BiasAddBiasAdd%sequential_5/dense_flipout_10/add:z:0nsequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"sequential_5/dense_flipout_10/ReluRelu.sequential_5/dense_flipout_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpLsequential_5_dense_flipout_10_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0¸
ôsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:·
ñsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4¤
ïsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2úsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
ësequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogósequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
ísequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logïsequential_5_dense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268434*
T0*
_output_shapes
: 
ësequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubïsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ñsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ö
ösequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp>sequential_5_dense_flipout_10_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
ïsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivþsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ïsequential_5_dense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268434*
T0*
_output_shapes

:
ñsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivósequential_5_dense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xïsequential_5_dense_flipout_10_kullbackleibler_independentnormal_constructed_at_dense_flipout_10_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268434*
T0*
_output_shapes

:¦
ùsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceósequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0õsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:³
ísequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ësequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulösequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ýsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:µ
ïsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
ísequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Muløsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ïsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
ísequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ñsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:µ
ïsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ísequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Muløsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ñsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:
ësequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ïsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ñsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:
ísequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subïsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ïsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ý
«sequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿí
sequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumñsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0´sequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: g
$sequential_5/dense_flipout_10/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6
"sequential_5/dense_flipout_10/CastCast-sequential_5/dense_flipout_10/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 
%sequential_5/dense_flipout_10/truedivRealDiv¢sequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0&sequential_5/dense_flipout_10/Cast:y:0*
T0*
_output_shapes
: 
/sequential_5/dense_flipout_10/divergence_kernelIdentity)sequential_5/dense_flipout_10/truediv:z:0*
T0*
_output_shapes
: }
(sequential_5/dense_flipout_11/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    {
8sequential_5/dense_flipout_11/Normal/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Ð
Csequential_5/dense_flipout_11/Normal/sample/Softplus/ReadVariableOpReadVariableOpLsequential_5_dense_flipout_11_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0¶
4sequential_5/dense_flipout_11/Normal/sample/SoftplusSoftplusKsequential_5/dense_flipout_11/Normal/sample/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:v
1sequential_5/dense_flipout_11/Normal/sample/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4á
/sequential_5/dense_flipout_11/Normal/sample/addAddV2:sequential_5/dense_flipout_11/Normal/sample/add/x:output:0Bsequential_5/dense_flipout_11/Normal/sample/Softplus:activations:0*
T0*
_output_shapes

:
;sequential_5/dense_flipout_11/Normal/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"      s
1sequential_5/dense_flipout_11/Normal/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
?sequential_5/dense_flipout_11/Normal/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_5/dense_flipout_11/Normal/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_5/dense_flipout_11/Normal/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
9sequential_5/dense_flipout_11/Normal/sample/strided_sliceStridedSliceDsequential_5/dense_flipout_11/Normal/sample/shape_as_tensor:output:0Hsequential_5/dense_flipout_11/Normal/sample/strided_slice/stack:output:0Jsequential_5/dense_flipout_11/Normal/sample/strided_slice/stack_1:output:0Jsequential_5/dense_flipout_11/Normal/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
=sequential_5/dense_flipout_11/Normal/sample/shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB"      u
3sequential_5/dense_flipout_11/Normal/sample/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 
Asequential_5/dense_flipout_11/Normal/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Csequential_5/dense_flipout_11/Normal/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Csequential_5/dense_flipout_11/Normal/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
;sequential_5/dense_flipout_11/Normal/sample/strided_slice_1StridedSliceFsequential_5/dense_flipout_11/Normal/sample/shape_as_tensor_1:output:0Jsequential_5/dense_flipout_11/Normal/sample/strided_slice_1/stack:output:0Lsequential_5/dense_flipout_11/Normal/sample/strided_slice_1/stack_1:output:0Lsequential_5/dense_flipout_11/Normal/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<sequential_5/dense_flipout_11/Normal/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
>sequential_5/dense_flipout_11/Normal/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB ó
9sequential_5/dense_flipout_11/Normal/sample/BroadcastArgsBroadcastArgsGsequential_5/dense_flipout_11/Normal/sample/BroadcastArgs/s0_1:output:0Bsequential_5/dense_flipout_11/Normal/sample/strided_slice:output:0*
_output_shapes
:î
;sequential_5/dense_flipout_11/Normal/sample/BroadcastArgs_1BroadcastArgs>sequential_5/dense_flipout_11/Normal/sample/BroadcastArgs:r0:0Dsequential_5/dense_flipout_11/Normal/sample/strided_slice_1:output:0*
_output_shapes
:
;sequential_5/dense_flipout_11/Normal/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:y
7sequential_5/dense_flipout_11/Normal/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¶
2sequential_5/dense_flipout_11/Normal/sample/concatConcatV2Dsequential_5/dense_flipout_11/Normal/sample/concat/values_0:output:0@sequential_5/dense_flipout_11/Normal/sample/BroadcastArgs_1:r0:0@sequential_5/dense_flipout_11/Normal/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:
Esequential_5/dense_flipout_11/Normal/sample/normal/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gsequential_5/dense_flipout_11/Normal/sample/normal/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ä
Usequential_5/dense_flipout_11/Normal/sample/normal/random_normal/RandomStandardNormalRandomStandardNormal;sequential_5/dense_flipout_11/Normal/sample/concat:output:0*
T0*"
_output_shapes
:*
dtype0ª
Dsequential_5/dense_flipout_11/Normal/sample/normal/random_normal/mulMul^sequential_5/dense_flipout_11/Normal/sample/normal/random_normal/RandomStandardNormal:output:0Psequential_5/dense_flipout_11/Normal/sample/normal/random_normal/stddev:output:0*
T0*"
_output_shapes
:
@sequential_5/dense_flipout_11/Normal/sample/normal/random_normalAddV2Hsequential_5/dense_flipout_11/Normal/sample/normal/random_normal/mul:z:0Nsequential_5/dense_flipout_11/Normal/sample/normal/random_normal/mean:output:0*
T0*"
_output_shapes
:Þ
/sequential_5/dense_flipout_11/Normal/sample/mulMulDsequential_5/dense_flipout_11/Normal/sample/normal/random_normal:z:03sequential_5/dense_flipout_11/Normal/sample/add:z:0*
T0*"
_output_shapes
:Ï
1sequential_5/dense_flipout_11/Normal/sample/add_1AddV23sequential_5/dense_flipout_11/Normal/sample/mul:z:01sequential_5/dense_flipout_11/zeros_like:output:0*
T0*"
_output_shapes
:
9sequential_5/dense_flipout_11/Normal/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      â
3sequential_5/dense_flipout_11/Normal/sample/ReshapeReshape5sequential_5/dense_flipout_11/Normal/sample/add_1:z:0Bsequential_5/dense_flipout_11/Normal/sample/Reshape/shape:output:0*
T0*
_output_shapes

:
#sequential_5/dense_flipout_11/ShapeShape0sequential_5/dense_flipout_10/Relu:activations:0*
T0*
_output_shapes
:{
1sequential_5/dense_flipout_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
3sequential_5/dense_flipout_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ}
3sequential_5/dense_flipout_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
+sequential_5/dense_flipout_11/strided_sliceStridedSlice,sequential_5/dense_flipout_11/Shape:output:0:sequential_5/dense_flipout_11/strided_slice/stack:output:0<sequential_5/dense_flipout_11/strided_slice/stack_1:output:0<sequential_5/dense_flipout_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Isequential_5/dense_flipout_11/rademacher/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Gsequential_5/dense_flipout_11/rademacher/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Gsequential_5/dense_flipout_11/rademacher/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Csequential_5/dense_flipout_11/rademacher/uniform/sanitize_seed/seedRandomUniformIntRsequential_5/dense_flipout_11/rademacher/uniform/sanitize_seed/seed/shape:output:0Psequential_5/dense_flipout_11/rademacher/uniform/sanitize_seed/seed/min:output:0Psequential_5/dense_flipout_11/rademacher/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Msequential_5/dense_flipout_11/rademacher/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Msequential_5/dense_flipout_11/rademacher/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
fsequential_5/dense_flipout_11/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterLsequential_5/dense_flipout_11/rademacher/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Msequential_5/dense_flipout_11/rademacher/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :´
Isequential_5/dense_flipout_11/rademacher/uniform/stateless_random_uniformStatelessRandomUniformIntV2,sequential_5/dense_flipout_11/Shape:output:0lsequential_5/dense_flipout_11/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0psequential_5/dense_flipout_11/rademacher/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Vsequential_5/dense_flipout_11/rademacher/uniform/stateless_random_uniform/alg:output:0Vsequential_5/dense_flipout_11/rademacher/uniform/stateless_random_uniform/min:output:0Vsequential_5/dense_flipout_11/rademacher/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	p
.sequential_5/dense_flipout_11/rademacher/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rò
,sequential_5/dense_flipout_11/rademacher/mulMul7sequential_5/dense_flipout_11/rademacher/mul/x:output:0Rsequential_5/dense_flipout_11/rademacher/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
.sequential_5/dense_flipout_11/rademacher/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÐ
,sequential_5/dense_flipout_11/rademacher/subSub0sequential_5/dense_flipout_11/rademacher/mul:z:07sequential_5/dense_flipout_11/rademacher/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-sequential_5/dense_flipout_11/rademacher/CastCast0sequential_5/dense_flipout_11/rademacher/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
.sequential_5/dense_flipout_11/ExpandDims/inputConst*
_output_shapes
: *
dtype0*
value	B :n
,sequential_5/dense_flipout_11/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Ë
(sequential_5/dense_flipout_11/ExpandDims
ExpandDims7sequential_5/dense_flipout_11/ExpandDims/input:output:05sequential_5/dense_flipout_11/ExpandDims/dim:output:0*
T0*
_output_shapes
:k
)sequential_5/dense_flipout_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : û
$sequential_5/dense_flipout_11/concatConcatV24sequential_5/dense_flipout_11/strided_slice:output:01sequential_5/dense_flipout_11/ExpandDims:output:02sequential_5/dense_flipout_11/concat/axis:output:0*
N*
T0*
_output_shapes
:
Ksequential_5/dense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Isequential_5/dense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/minConst*
_output_shapes
: *
dtype0*
valueB :
øÿÿÿÿ
Isequential_5/dense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/maxConst*
_output_shapes
: *
dtype0*
valueB :ÿÿÿÿ
Esequential_5/dense_flipout_11/rademacher_1/uniform/sanitize_seed/seedRandomUniformIntTsequential_5/dense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/shape:output:0Rsequential_5/dense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/min:output:0Rsequential_5/dense_flipout_11/rademacher_1/uniform/sanitize_seed/seed/max:output:0*
T0*

Tout0*
_output_shapes
:
Osequential_5/dense_flipout_11/rademacher_1/uniform/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Osequential_5/dense_flipout_11/rademacher_1/uniform/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R
hsequential_5/dense_flipout_11/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterNsequential_5/dense_flipout_11/rademacher_1/uniform/sanitize_seed/seed:output:0*
Tseed0* 
_output_shapes
::
Osequential_5/dense_flipout_11/rademacher_1/uniform/stateless_random_uniform/algConst*
_output_shapes
: *
dtype0*
value	B :Á
Ksequential_5/dense_flipout_11/rademacher_1/uniform/stateless_random_uniformStatelessRandomUniformIntV2-sequential_5/dense_flipout_11/concat:output:0nsequential_5/dense_flipout_11/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0rsequential_5/dense_flipout_11/rademacher_1/uniform/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Xsequential_5/dense_flipout_11/rademacher_1/uniform/stateless_random_uniform/alg:output:0Xsequential_5/dense_flipout_11/rademacher_1/uniform/stateless_random_uniform/min:output:0Xsequential_5/dense_flipout_11/rademacher_1/uniform/stateless_random_uniform/max:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	r
0sequential_5/dense_flipout_11/rademacher_1/mul/xConst*
_output_shapes
: *
dtype0	*
value	B	 Rø
.sequential_5/dense_flipout_11/rademacher_1/mulMul9sequential_5/dense_flipout_11/rademacher_1/mul/x:output:0Tsequential_5/dense_flipout_11/rademacher_1/uniform/stateless_random_uniform:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0sequential_5/dense_flipout_11/rademacher_1/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 RÖ
.sequential_5/dense_flipout_11/rademacher_1/subSub2sequential_5/dense_flipout_11/rademacher_1/mul:z:09sequential_5/dense_flipout_11/rademacher_1/sub/y:output:0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
/sequential_5/dense_flipout_11/rademacher_1/CastCast2sequential_5/dense_flipout_11/rademacher_1/sub:z:0*

DstT0*

SrcT0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
!sequential_5/dense_flipout_11/mulMul0sequential_5/dense_flipout_10/Relu:activations:01sequential_5/dense_flipout_11/rademacher/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
$sequential_5/dense_flipout_11/MatMulMatMul%sequential_5/dense_flipout_11/mul:z:0<sequential_5/dense_flipout_11/Normal/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
#sequential_5/dense_flipout_11/mul_1Mul.sequential_5/dense_flipout_11/MatMul:product:03sequential_5/dense_flipout_11/rademacher_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
5sequential_5/dense_flipout_11/MatMul_1/ReadVariableOpReadVariableOp>sequential_5_dense_flipout_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ó
&sequential_5/dense_flipout_11/MatMul_1MatMul0sequential_5/dense_flipout_10/Relu:activations:0=sequential_5/dense_flipout_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
!sequential_5/dense_flipout_11/addAddV20sequential_5/dense_flipout_11/MatMul_1:product:0'sequential_5/dense_flipout_11/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
jsequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB Á
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
value	B :Û
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/expand_to_vector/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:Ê
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOpReadVariableOpsequential_5_dense_flipout_11_independentdeterministic_constructed_at_dense_flipout_11_sample_deterministic_sample_readvariableop_resource*
_output_shapes
:*
dtype0Í
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:º
xsequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : Ñ
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ó
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ó
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_sliceStridedSlicesequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/shape_as_tensor:output:0sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack:output:0sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack_1:output:0sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskÇ
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB É
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ë
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgsBroadcastArgssequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgs/s0_1:output:0sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/strided_slice:output:0*
_output_shapes
:Í
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:Æ
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB À
~sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : á
ysequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concatConcatV2sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/values_0:output:0sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastArgs:r0:0sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/values_2:output:0sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ç
~sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastToBroadcastTosequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOp:value:0sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/concat:output:0*
T0*
_output_shapes

:Ò
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ä
zsequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReshapeReshapesequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/BroadcastTo:output:0sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/Reshape/shape:output:0*
T0*
_output_shapes

:µ
ksequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
esequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/ReshapeReshapesequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/Reshape:output:0tsequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Reshape/shape:output:0*
T0*
_output_shapes
:ù
%sequential_5/dense_flipout_11/BiasAddBiasAdd%sequential_5/dense_flipout_11/add:z:0nsequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_5/dense_flipout_11/SoftmaxSoftmax.sequential_5/dense_flipout_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpReadVariableOpLsequential_5_dense_flipout_11_normal_sample_softplus_readvariableop_resource*
_output_shapes

:*
dtype0¸
ôsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/SoftplusSoftplussequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp:value:0*
T0*
_output_shapes

:·
ñsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   4¤
ïsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/addAddV2úsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add/x:output:0sequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus:activations:0*
T0*
_output_shapes

:
ësequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/LogLogósequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/add:z:0*
T0*
_output_shapes

:
ísequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1Logïsequential_5_dense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268570*
T0*
_output_shapes
: 
ësequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/subSubïsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log:y:0ñsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log_1:y:0*
T0*
_output_shapes

:ö
ösequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpReadVariableOp>sequential_5_dense_flipout_11_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
ïsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truedivRealDivþsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp:value:0ïsequential_5_dense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268570*
T0*
_output_shapes

:
ñsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1RealDivósequential_5_dense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_truediv_1_xïsequential_5_dense_flipout_11_kullbackleibler_independentnormal_constructed_at_dense_flipout_11_kullbackleibler_a_independentnormal_kullbackleibler_b_kullbackleibler_normal_kullbackleibler_a_normal_kullbackleibler_b_kullbackleibler_1268570*
T0*
_output_shapes

:¦
ùsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifferenceSquaredDifferenceósequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv:z:0õsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/truediv_1:z:0*
T0*
_output_shapes

:³
ísequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ësequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mulMulösequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul/x:output:0ýsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/SquaredDifference:z:0*
T0*
_output_shapes

:µ
ïsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
ísequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1Muløsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1/x:output:0ïsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:
ísequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1Expm1ñsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_1:z:0*
T0*
_output_shapes

:µ
ïsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ísequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2Muløsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2/x:output:0ñsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Expm1:y:0*
T0*
_output_shapes

:
ësequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/addAddV2ïsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul:z:0ñsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/mul_2:z:0*
T0*
_output_shapes

:
ísequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1Subïsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/add:z:0ïsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub:z:0*
T0*
_output_shapes

:ý
«sequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿþÿÿÿí
sequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/SumSumñsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/sub_1:z:0´sequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum/reduction_indices:output:0*
T0*
_output_shapes
: g
$sequential_5/dense_flipout_11/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :Ø6
"sequential_5/dense_flipout_11/CastCast-sequential_5/dense_flipout_11/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 
%sequential_5/dense_flipout_11/truedivRealDiv¢sequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/Sum:output:0&sequential_5/dense_flipout_11/Cast:y:0*
T0*
_output_shapes
: 
/sequential_5/dense_flipout_11/divergence_kernelIdentity)sequential_5/dense_flipout_11/truediv:z:0*
T0*
_output_shapes
: ~
IdentityIdentity/sequential_5/dense_flipout_11/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
NoOpNoOp^sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOp^sequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp÷^sequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp6^sequential_5/dense_flipout_10/MatMul_1/ReadVariableOpD^sequential_5/dense_flipout_10/Normal/sample/Softplus/ReadVariableOp^sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOp^sequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp÷^sequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp6^sequential_5/dense_flipout_11/MatMul_1/ReadVariableOpD^sequential_5/dense_flipout_11/Normal/sample/Softplus/ReadVariableOp^sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOp^sequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpõ^sequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp5^sequential_5/dense_flipout_9/MatMul_1/ReadVariableOpC^sequential_5/dense_flipout_9/Normal/sample/Softplus/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:ÿÿÿÿÿÿÿÿÿ: : : : :: : : : :: : : : :2
sequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOpsequential_5/dense_flipout_10/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_10/sample/Deterministic/sample/ReadVariableOp2
sequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2ò
ösequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpösequential_5/dense_flipout_10/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_10/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2n
5sequential_5/dense_flipout_10/MatMul_1/ReadVariableOp5sequential_5/dense_flipout_10/MatMul_1/ReadVariableOp2
Csequential_5/dense_flipout_10/Normal/sample/Softplus/ReadVariableOpCsequential_5/dense_flipout_10/Normal/sample/Softplus/ReadVariableOp2
sequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOpsequential_5/dense_flipout_11/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_11/sample/Deterministic/sample/ReadVariableOp2
sequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2ò
ösequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpösequential_5/dense_flipout_11/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_11/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2n
5sequential_5/dense_flipout_11/MatMul_1/ReadVariableOp5sequential_5/dense_flipout_11/MatMul_1/ReadVariableOp2
Csequential_5/dense_flipout_11/Normal/sample/Softplus/ReadVariableOpCsequential_5/dense_flipout_11/Normal/sample/Softplus/ReadVariableOp2
sequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOpsequential_5/dense_flipout_9/IndependentDeterministic_CONSTRUCTED_AT_dense_flipout_9/sample/Deterministic/sample/ReadVariableOp2
sequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOpsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/Log/Softplus/ReadVariableOp2î
ôsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOpôsequential_5/dense_flipout_9/KullbackLeibler/IndependentNormal_CONSTRUCTED_AT_dense_flipout_9/KullbackLeibler_a/IndependentNormal/KullbackLeibler_b/KullbackLeibler/Normal/KullbackLeibler_a/Normal/KullbackLeibler_b/KullbackLeibler/ReadVariableOp2l
4sequential_5/dense_flipout_9/MatMul_1/ReadVariableOp4sequential_5/dense_flipout_9/MatMul_1/ReadVariableOp2
Bsequential_5/dense_flipout_9/Normal/sample/Softplus/ReadVariableOpBsequential_5/dense_flipout_9/Normal/sample/Softplus/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4:
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

:"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*³
serving_default
;
input_40
serving_default_input_4:0ÿÿÿÿÿÿÿÿÿD
dense_flipout_110
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ør
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
2
.__inference_sequential_5_layer_call_fn_1269108
.__inference_sequential_5_layer_call_fn_1269446
.__inference_sequential_5_layer_call_fn_1269484
.__inference_sequential_5_layer_call_fn_1269316À
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
ò2ï
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269898
I__inference_sequential_5_layer_call_and_return_conditional_losses_1270312
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269359
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269402À
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
ÍBÊ
"__inference__wrapped_model_1268600input_4"
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
6:42$dense_flipout_9/kernel_posterior_loc
F:D24dense_flipout_9/kernel_posterior_untransformed_scale
E
?_distribution
@_graph_parents"
_generic_user_object
E
A_distribution
B_graph_parents"
_generic_user_object
0:.2"dense_flipout_9/bias_posterior_loc
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
Û2Ø
1__inference_dense_flipout_9_layer_call_fn_1270365¢
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
ö2ó
L__inference_dense_flipout_9_layer_call_and_return_conditional_losses_1270505¢
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
7:52%dense_flipout_10/kernel_posterior_loc
G:E25dense_flipout_10/kernel_posterior_untransformed_scale
E
L_distribution
M_graph_parents"
_generic_user_object
E
N_distribution
O_graph_parents"
_generic_user_object
1:/2#dense_flipout_10/bias_posterior_loc
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
2__inference_dense_flipout_10_layer_call_fn_1270521¢
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
M__inference_dense_flipout_10_layer_call_and_return_conditional_losses_1270662¢
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
7:52%dense_flipout_11/kernel_posterior_loc
G:E25dense_flipout_11/kernel_posterior_untransformed_scale
E
Y_distribution
Z_graph_parents"
_generic_user_object
E
[_distribution
\_graph_parents"
_generic_user_object
1:/2#dense_flipout_11/bias_posterior_loc
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
2__inference_dense_flipout_11_layer_call_fn_1270678¢
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
M__inference_dense_flipout_11_layer_call_and_return_conditional_losses_1270819¢
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
ÌBÉ
%__inference_signature_wrapper_1270349input_4"
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
;:92+Adam/dense_flipout_9/kernel_posterior_loc/m
K:I2;Adam/dense_flipout_9/kernel_posterior_untransformed_scale/m
5:32)Adam/dense_flipout_9/bias_posterior_loc/m
<::2,Adam/dense_flipout_10/kernel_posterior_loc/m
L:J2<Adam/dense_flipout_10/kernel_posterior_untransformed_scale/m
6:42*Adam/dense_flipout_10/bias_posterior_loc/m
<::2,Adam/dense_flipout_11/kernel_posterior_loc/m
L:J2<Adam/dense_flipout_11/kernel_posterior_untransformed_scale/m
6:42*Adam/dense_flipout_11/bias_posterior_loc/m
;:92+Adam/dense_flipout_9/kernel_posterior_loc/v
K:I2;Adam/dense_flipout_9/kernel_posterior_untransformed_scale/v
5:32)Adam/dense_flipout_9/bias_posterior_loc/v
<::2,Adam/dense_flipout_10/kernel_posterior_loc/v
L:J2<Adam/dense_flipout_10/kernel_posterior_untransformed_scale/v
6:42*Adam/dense_flipout_10/bias_posterior_loc/v
<::2,Adam/dense_flipout_11/kernel_posterior_loc/v
L:J2<Adam/dense_flipout_11/kernel_posterior_untransformed_scale/v
6:42*Adam/dense_flipout_11/bias_posterior_loc/v
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
Const_5µ
"__inference__wrapped_model_1268600('+0¢-
&¢#
!
input_4ÿÿÿÿÿÿÿÿÿ
ª "Cª@
>
dense_flipout_11*'
dense_flipout_11ÿÿÿÿÿÿÿÿÿÀ
M__inference_dense_flipout_10_layer_call_and_return_conditional_losses_1270662o/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "3¢0

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
2__inference_dense_flipout_10_layer_call_fn_1270521T/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ
M__inference_dense_flipout_11_layer_call_and_return_conditional_losses_1270819o('+/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "3¢0

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
2__inference_dense_flipout_11_layer_call_fn_1270678T('+/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¿
L__inference_dense_flipout_9_layer_call_and_return_conditional_losses_1270505o/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "3¢0

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
1__inference_dense_flipout_9_layer_call_fn_1270365T/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿð
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269359¢('+8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿ
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
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269402¢('+8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿ
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
1/2 ï
I__inference_sequential_5_layer_call_and_return_conditional_losses_1269898¡('+7¢4
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
1/2 ï
I__inference_sequential_5_layer_call_and_return_conditional_losses_1270312¡('+7¢4
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
1/2 
.__inference_sequential_5_layer_call_fn_1269108k('+8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_5_layer_call_fn_1269316k('+8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_5_layer_call_fn_1269446j('+7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_5_layer_call_fn_1269484j('+7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÃ
%__inference_signature_wrapper_1270349('+;¢8
¢ 
1ª.
,
input_4!
input_4ÿÿÿÿÿÿÿÿÿ"Cª@
>
dense_flipout_11*'
dense_flipout_11ÿÿÿÿÿÿÿÿÿ