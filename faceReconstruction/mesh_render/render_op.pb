
<
shapePlaceholder*
shape:��*
dtype0
=
normalPlaceholder*
shape:��*
dtype0
<
colorPlaceholder*
dtype0*
shape:��
6
triPlaceholder*
dtype0*
shape:
��
3
Atan/xConst*
dtype0*
valueB
 *x��=

AtanAtanAtan/x*
T0
2
mul/xConst*
valueB
 *   @*
dtype0
 
mulMulmul/xAtan*
T0
4
mul_1/yConst*
dtype0*
valueB
 *  4C
#
mul_1Mulmulmul_1/y*
T0
6
	truediv/yConst*
valueB
 *�I@*
dtype0
-
truedivRealDivmul_1	truediv/y*
T0
;
Reshape/shapeConst*
valueB:*
dtype0
A
ReshapeReshapetruedivReshape/shape*
T0*
Tshape0
H
Reshape_1/shapeConst*!
valueB"   }�     *
dtype0
C
	Reshape_1ReshapeshapeReshape_1/shape*
T0*
Tshape0
H
Reshape_2/shapeConst*!
valueB"   }�     *
dtype0
D
	Reshape_2ReshapenormalReshape_2/shape*
T0*
Tshape0
H
Reshape_3/shapeConst*!
valueB"   }�     *
dtype0
C
	Reshape_3ReshapecolorReshape_3/shape*
T0*
Tshape0
>
ConstConst*!
valueB"           A*
dtype0
@
Const_1Const*
dtype0*!
valueB"            
@
Const_2Const*!
valueB"      �?    *
dtype0
@
Const_3Const*
dtype0*!
valueB"         P�G
H
Reshape_4/shapeConst*
dtype0*!
valueB"         
E
	Reshape_4ReshapeConst_3Reshape_4/shape*
T0*
Tshape0
G
Tile/multiplesConst*!
valueB"         *
dtype0
B
TileTile	Reshape_4Tile/multiples*
T0*

Tmultiples0
@
Const_4Const*
dtype0*!
valueB"            
H
Reshape_5/shapeConst*!
valueB"         *
dtype0
E
	Reshape_5ReshapeConst_4Reshape_5/shape*
T0*
Tshape0
I
Tile_1/multiplesConst*
dtype0*!
valueB"         
F
Tile_1Tile	Reshape_5Tile_1/multiples*
T0*

Tmultiples0
@
Const_5Const*!
valueB"  �?  �?  �?*
dtype0
D
Reshape_6/shapeConst*
valueB"      *
dtype0
E
	Reshape_6ReshapeConst_5Reshape_6/shape*
T0*
Tshape0
E
Tile_2/multiplesConst*
valueB"      *
dtype0
F
Tile_2Tile	Reshape_6Tile_2/multiples*

Tmultiples0*
T0
2
sub/yConst*
valueB
 *  �?*
dtype0

subSubtrisub/y*
T0
9
CastCastsub*
Truncate( *

DstT0*

SrcT0
8
ExpandDims/dimConst*
dtype0*
value	B : 
D

ExpandDims
ExpandDimsConstExpandDims/dim*

Tdim0*
T0
E
Tile_3/multiplesConst*
dtype0*
valueB"      
G
Tile_3Tile
ExpandDimsTile_3/multiples*

Tmultiples0*
T0
:
ExpandDims_1/dimConst*
value	B : *
dtype0
J
ExpandDims_1
ExpandDimsConst_1ExpandDims_1/dim*

Tdim0*
T0
E
Tile_4/multiplesConst*
dtype0*
valueB"      
I
Tile_4TileExpandDims_1Tile_4/multiples*

Tmultiples0*
T0
:
ExpandDims_2/dimConst*
value	B : *
dtype0
J
ExpandDims_2
ExpandDimsConst_2ExpandDims_2/dim*

Tdim0*
T0
E
Tile_5/multiplesConst*
valueB"      *
dtype0
I
Tile_5TileExpandDims_2Tile_5/multiples*

Tmultiples0*
T0
8
Const_6Const*
valueB*
�#<*
dtype0
8
Const_7Const*
valueB*  HB*
dtype0
5
concat/axisConst*
value	B :*
dtype0
^
concatConcatV2	Reshape_2	Reshape_1	Reshape_3concat/axis*

Tidx0*
T0*
N
%
sub_1SubTile_4Tile_3*
T0
&
norm/mulMulsub_1sub_1*
T0
H
norm/Sum/reduction_indicesConst*
valueB:*
dtype0
[
norm/SumSumnorm/mulnorm/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
$
	norm/SqrtSqrtnorm/Sum*
T0
/
	truediv_1RealDivsub_1	norm/Sqrt*
T0
*
CrossCross	truediv_1Tile_5*
T0
(

norm_1/mulMulCrossCross*
T0
J
norm_1/Sum/reduction_indicesConst*
valueB:*
dtype0
a

norm_1/SumSum
norm_1/mulnorm_1/Sum/reduction_indices*
T0*

Tidx0*
	keep_dims(
(
norm_1/SqrtSqrt
norm_1/Sum*
T0
1
	truediv_2RealDivCrossnorm_1/Sqrt*
T0
/
Cross_1Cross	truediv_2	truediv_1*
T0
H
Const_8Const*)
value B"              �?*
dtype0
H
Reshape_7/shapeConst*
dtype0*!
valueB"         
E
	Reshape_7ReshapeConst_8Reshape_7/shape*
T0*
Tshape0

NegNeg	truediv_1*
T0
?

zeros_likeConst*
valueB*    *
dtype0
P
stackPack	truediv_2Cross_1Neg
zeros_like*
T0*

axis*
N
7
concat_1/axisConst*
value	B :*
dtype0
S
concat_1ConcatV2stack	Reshape_7concat_1/axis*

Tidx0*
T0*
N
9
eye/onesConst*
dtype0*
valueB*  �?
/
eye/MatrixDiag
MatrixDiageye/ones*
T0
:
ExpandDims_3/dimConst*
value	B : *
dtype0
Q
ExpandDims_3
ExpandDimseye/MatrixDiagExpandDims_3/dim*

Tdim0*
T0
I
Tile_6/multiplesConst*
dtype0*!
valueB"         
I
Tile_6TileExpandDims_3Tile_6/multiples*

Tmultiples0*
T0

Neg_1NegTile_3*
T0
:
ExpandDims_4/dimConst*
value	B :*
dtype0
H
ExpandDims_4
ExpandDimsNeg_1ExpandDims_4/dim*

Tdim0*
T0
7
concat_2/axisConst*
value	B :*
dtype0
W
concat_2ConcatV2Tile_6ExpandDims_4concat_2/axis*

Tidx0*
T0*
N
H
Reshape_8/shapeConst*!
valueB"         *
dtype0
G
	Reshape_8Reshape	Reshape_7Reshape_8/shape*
T0*
Tshape0
7
concat_3/axisConst*
value	B :*
dtype0
V
concat_3ConcatV2concat_2	Reshape_8concat_3/axis*

Tidx0*
T0*
N
L
MatMulBatchMatMulconcat_1concat_3*
adj_x( *
adj_y( *
T0
4
mul_2/yConst*
valueB
 *5�<*
dtype0
'
mul_2MulReshapemul_2/y*
T0

TanTanmul_2*
T0
8
truediv_3/xConst*
dtype0*
valueB
 *  �?
/
	truediv_3RealDivtruediv_3/xTan*
T0
'
sub_2SubConst_7Const_6*
T0
%
addAddConst_7Const_6*
T0

Neg_2Negadd*
T0
+
	truediv_4RealDivNeg_2sub_2*
T0
'
mul_3MulConst_7Const_6*
T0
+
	truediv_5RealDivmul_3sub_2*
T0
4
mul_4/xConst*
dtype0*
valueB
 *   �
)
mul_4Mulmul_4/x	truediv_5*
T0
=
zeros_like_1Const*
valueB*    *
dtype0
8
truediv_6/yConst*
valueB
 *  �?*
dtype0
5
	truediv_6RealDiv	truediv_3truediv_6/y*
T0
=
ones_like/ShapeConst*
valueB:*
dtype0
<
ones_like/ConstConst*
valueB
 *  �?*
dtype0
N
	ones_likeFillones_like/Shapeones_like/Const*
T0*

index_type0
 
Neg_3Neg	ones_like*
T0
7
concat_4/axisConst*
value	B : *
dtype0
�
concat_4ConcatV2	truediv_6zeros_like_1zeros_like_1zeros_like_1zeros_like_1	truediv_3zeros_like_1zeros_like_1zeros_like_1zeros_like_1	truediv_4mul_4zeros_like_1zeros_like_1Neg_3zeros_like_1concat_4/axis*
N*

Tidx0*
T0
H
Reshape_9/shapeConst*!
valueB"      ����*
dtype0
F
	Reshape_9Reshapeconcat_4Reshape_9/shape*
T0*
Tshape0
G
transpose/permConst*!
valueB"          *
dtype0
G
	transpose	Transpose	Reshape_9transpose/perm*
T0*
Tperm0
M
MatMul_1BatchMatMul	transposeMatMul*
adj_x( *
adj_y( *
T0
@
Shape_1Const*!
valueB"   }�     *
dtype0
A
strided_slice/stackConst*
valueB: *
dtype0
C
strided_slice/stack_1Const*
dtype0*
valueB:
C
strided_slice/stack_2Const*
valueB:*
dtype0
�
strided_sliceStridedSliceShape_1strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
@
Shape_2Const*
dtype0*!
valueB"   }�     
C
strided_slice_1/stackConst*
valueB:*
dtype0
E
strided_slice_1/stack_1Const*
valueB:*
dtype0
E
strided_slice_1/stack_2Const*
dtype0*
valueB:
�
strided_slice_1StridedSliceShape_2strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0
7
ones/packed/2Const*
value	B :*
dtype0
`
ones/packedPackstrided_slicestrided_slice_1ones/packed/2*
T0*

axis *
N
7

ones/ConstConst*
valueB
 *  �?*
dtype0
@
onesFillones/packed
ones/Const*
T0*

index_type0
7
concat_5/axisConst*
value	B :*
dtype0
R
concat_5ConcatV2	Reshape_1onesconcat_5/axis*

Tidx0*
T0*
N
N
MatMul_2BatchMatMulconcat_5MatMul_1*
T0*
adj_x( *
adj_y(
5
range/startConst*
value	B : *
dtype0
5
range/limitConst*
value	B :*
dtype0
5
range/deltaConst*
dtype0*
value	B :
A
rangeRangerange/startrange/limitrange/delta*

Tidx0
>
map/TensorArray/sizeConst*
value	B :*
dtype0
�
map/TensorArrayTensorArrayV3map/TensorArray/size*
dtype0*
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*
tensor_array_name 
J
map/TensorArrayUnstack/ShapeConst*
valueB:*
dtype0
X
*map/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0
Z
,map/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
valueB:
Z
,map/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0
�
$map/TensorArrayUnstack/strided_sliceStridedSlicemap/TensorArrayUnstack/Shape*map/TensorArrayUnstack/strided_slice/stack,map/TensorArrayUnstack/strided_slice/stack_1,map/TensorArrayUnstack/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
L
"map/TensorArrayUnstack/range/startConst*
value	B : *
dtype0
L
"map/TensorArrayUnstack/range/deltaConst*
dtype0*
value	B :
�
map/TensorArrayUnstack/rangeRange"map/TensorArrayUnstack/range/start$map/TensorArrayUnstack/strided_slice"map/TensorArrayUnstack/range/delta*

Tidx0
�
>map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3map/TensorArraymap/TensorArrayUnstack/rangerangemap/TensorArray:1*
T0*
_class

loc:@range
3
	map/ConstConst*
value	B : *
dtype0
@
map/TensorArray_1/sizeConst*
value	B :*
dtype0
�
map/TensorArray_1TensorArrayV3map/TensorArray_1/size*
tensor_array_name *
dtype0*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
@
map/TensorArray_2/sizeConst*
value	B :*
dtype0
�
map/TensorArray_2TensorArrayV3map/TensorArray_2/size*
dtype0*
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*
tensor_array_name 
F
map/while/maximum_iterationsConst*
dtype0*
value	B :
E
map/while/iteration_counterConst*
value	B : *
dtype0
�
map/while/EnterEntermap/while/iteration_counter*
T0*
is_constant( *
parallel_iterations
*'

frame_namemap/while/while_context
�
map/while/Enter_1Enter	map/Const*
parallel_iterations
*'

frame_namemap/while/while_context*
T0*
is_constant( 
�
map/while/Enter_2Entermap/TensorArray_1:1*
T0*
is_constant( *
parallel_iterations
*'

frame_namemap/while/while_context
�
map/while/Enter_3Entermap/TensorArray_2:1*
T0*
is_constant( *
parallel_iterations
*'

frame_namemap/while/while_context
T
map/while/MergeMergemap/while/Entermap/while/NextIteration*
T0*
N
Z
map/while/Merge_1Mergemap/while/Enter_1map/while/NextIteration_1*
T0*
N
Z
map/while/Merge_2Mergemap/while/Enter_2map/while/NextIteration_2*
T0*
N
Z
map/while/Merge_3Mergemap/while/Enter_3map/while/NextIteration_3*
N*
T0
F
map/while/LessLessmap/while/Mergemap/while/Less/Enter*
T0
�
map/while/Less/EnterEntermap/while/maximum_iterations*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context
N
map/while/Less_1/yConst^map/while/Merge*
value	B :*
dtype0
H
map/while/Less_1Lessmap/while/Merge_1map/while/Less_1/y*
T0
D
map/while/LogicalAnd
LogicalAndmap/while/Lessmap/while/Less_1
4
map/while/LoopCondLoopCondmap/while/LogicalAnd
l
map/while/SwitchSwitchmap/while/Mergemap/while/LoopCond*
T0*"
_class
loc:@map/while/Merge
r
map/while/Switch_1Switchmap/while/Merge_1map/while/LoopCond*
T0*$
_class
loc:@map/while/Merge_1
r
map/while/Switch_2Switchmap/while/Merge_2map/while/LoopCond*
T0*$
_class
loc:@map/while/Merge_2
r
map/while/Switch_3Switchmap/while/Merge_3map/while/LoopCond*
T0*$
_class
loc:@map/while/Merge_3
;
map/while/IdentityIdentitymap/while/Switch:1*
T0
?
map/while/Identity_1Identitymap/while/Switch_1:1*
T0
?
map/while/Identity_2Identitymap/while/Switch_2:1*
T0
?
map/while/Identity_3Identitymap/while/Switch_3:1*
T0
N
map/while/add/yConst^map/while/Identity*
value	B :*
dtype0
B
map/while/addAddmap/while/Identitymap/while/add/y*
T0
�
map/while/TensorArrayReadV3TensorArrayReadV3!map/while/TensorArrayReadV3/Entermap/while/Identity_1#map/while/TensorArrayReadV3/Enter_1*
dtype0
�
!map/while/TensorArrayReadV3/EnterEntermap/TensorArray*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context
�
#map/while/TensorArrayReadV3/Enter_1Enter>map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context
P
map/while/add_1/yConst^map/while/Identity*
value	B :*
dtype0
O
map/while/add_1Addmap/while/TensorArrayReadV3map/while/add_1/y*
T0
^
map/while/strided_slice/stack/1Const^map/while/Identity*
dtype0*
value	B : 
^
map/while/strided_slice/stack/2Const^map/while/Identity*
value	B : *
dtype0
�
map/while/strided_slice/stackPackmap/while/TensorArrayReadV3map/while/strided_slice/stack/1map/while/strided_slice/stack/2*
N*
T0*

axis 
`
!map/while/strided_slice/stack_1/1Const^map/while/Identity*
value	B : *
dtype0
`
!map/while/strided_slice/stack_1/2Const^map/while/Identity*
dtype0*
value	B : 
�
map/while/strided_slice/stack_1Packmap/while/add_1!map/while/strided_slice/stack_1/1!map/while/strided_slice/stack_1/2*
T0*

axis *
N
m
map/while/strided_slice/stack_2Const^map/while/Identity*!
valueB"         *
dtype0
�
map/while/strided_sliceStridedSlicemap/while/strided_slice/Entermap/while/strided_slice/stackmap/while/strided_slice/stack_1map/while/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask
�
map/while/strided_slice/EnterEnterMatMul_2*
parallel_iterations
*'

frame_namemap/while/while_context*
T0*
is_constant(
�
map/while/RasterizeTrianglesRasterizeTrianglesmap/while/strided_slice"map/while/RasterizeTriangles/Enter*
image_width�*
image_height�
�
"map/while/RasterizeTriangles/EnterEnterCast*
parallel_iterations
*'

frame_namemap/while/while_context*
T0*
is_constant(
c
map/while/Reshape/shapeConst^map/while/Identity*
dtype0*
valueB:
���������
l
map/while/ReshapeReshapemap/while/RasterizeTriangles:1map/while/Reshape/shape*
T0*
Tshape0
V
map/while/GatherV2/axisConst^map/while/Identity*
value	B : *
dtype0
�
map/while/GatherV2GatherV2"map/while/RasterizeTriangles/Entermap/while/Reshapemap/while/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0
P
map/while/mul/yConst^map/while/Identity*
valueB	 :��*
dtype0
K
map/while/mulMulmap/while/TensorArrayReadV3map/while/mul/y*
T0
B
map/while/Add_2Addmap/while/GatherV2map/while/mul*
T0
c
map/while/Reshape_1/shapeConst^map/while/Identity*
valueB"����   *
dtype0
n
map/while/Reshape_1Reshapemap/while/RasterizeTrianglesmap/while/Reshape_1/shape*
T0*
Tshape0
�
-map/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33map/while/TensorArrayWrite/TensorArrayWriteV3/Entermap/while/Identity_1map/while/Reshape_1map/while/Identity_2*
T0*&
_class
loc:@map/while/Reshape_1
�
3map/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntermap/TensorArray_1*
T0*
is_constant(*&
_class
loc:@map/while/Reshape_1*
parallel_iterations
*'

frame_namemap/while/while_context
�
/map/while/TensorArrayWrite_1/TensorArrayWriteV3TensorArrayWriteV35map/while/TensorArrayWrite_1/TensorArrayWriteV3/Entermap/while/Identity_1map/while/Add_2map/while/Identity_3*
T0*"
_class
loc:@map/while/Add_2
�
5map/while/TensorArrayWrite_1/TensorArrayWriteV3/EnterEntermap/TensorArray_2*
T0*
is_constant(*"
_class
loc:@map/while/Add_2*
parallel_iterations
*'

frame_namemap/while/while_context
P
map/while/add_3/yConst^map/while/Identity*
dtype0*
value	B :
H
map/while/add_3Addmap/while/Identity_1map/while/add_3/y*
T0
@
map/while/NextIterationNextIterationmap/while/add*
T0
D
map/while/NextIteration_1NextIterationmap/while/add_3*
T0
b
map/while/NextIteration_2NextIteration-map/while/TensorArrayWrite/TensorArrayWriteV3*
T0
d
map/while/NextIteration_3NextIteration/map/while/TensorArrayWrite_1/TensorArrayWriteV3*
T0
5
map/while/Exit_2Exitmap/while/Switch_2*
T0
5
map/while/Exit_3Exitmap/while/Switch_3*
T0
�
&map/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3map/TensorArray_1map/while/Exit_2*$
_class
loc:@map/TensorArray_1
p
 map/TensorArrayStack/range/startConst*
value	B : *$
_class
loc:@map/TensorArray_1*
dtype0
p
 map/TensorArrayStack/range/deltaConst*
dtype0*
value	B :*$
_class
loc:@map/TensorArray_1
�
map/TensorArrayStack/rangeRange map/TensorArrayStack/range/start&map/TensorArrayStack/TensorArraySizeV3 map/TensorArrayStack/range/delta*$
_class
loc:@map/TensorArray_1*

Tidx0
�
(map/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3map/TensorArray_1map/TensorArrayStack/rangemap/while/Exit_2*
dtype0*$
element_shape:���������*$
_class
loc:@map/TensorArray_1
�
(map/TensorArrayStack_1/TensorArraySizeV3TensorArraySizeV3map/TensorArray_2map/while/Exit_3*$
_class
loc:@map/TensorArray_2
r
"map/TensorArrayStack_1/range/startConst*
dtype0*
value	B : *$
_class
loc:@map/TensorArray_2
r
"map/TensorArrayStack_1/range/deltaConst*
value	B :*$
_class
loc:@map/TensorArray_2*
dtype0
�
map/TensorArrayStack_1/rangeRange"map/TensorArrayStack_1/range/start(map/TensorArrayStack_1/TensorArraySizeV3"map/TensorArrayStack_1/range/delta*$
_class
loc:@map/TensorArray_2*

Tidx0
�
*map/TensorArrayStack_1/TensorArrayGatherV3TensorArrayGatherV3map/TensorArray_2map/TensorArrayStack_1/rangemap/while/Exit_3*$
element_shape:���������*$
_class
loc:@map/TensorArray_2*
dtype0
E
Reshape_10/shapeConst*
dtype0*
valueB"����   
h

Reshape_10Reshape(map/TensorArrayStack/TensorArrayGatherV3Reshape_10/shape*
T0*
Tshape0
E
Reshape_11/shapeConst*
valueB"����   *
dtype0
j

Reshape_11Reshape*map/TensorArrayStack_1/TensorArrayGatherV3Reshape_11/shape*
T0*
Tshape0
E
Reshape_12/shapeConst*
dtype0*
valueB"}�  ����
F

Reshape_12ReshapeconcatReshape_12/shape*
T0*
Tshape0
7
GatherV2/axisConst*
value	B : *
dtype0
g
GatherV2GatherV2
Reshape_12
Reshape_11GatherV2/axis*
Taxis0*
Tindices0*
Tparams0
:
ExpandDims_5/dimConst*
value	B :*
dtype0
M
ExpandDims_5
ExpandDims
Reshape_10ExpandDims_5/dim*

Tdim0*
T0
-
Mul_5MulGatherV2ExpandDims_5*
T0
?
Sum/reduction_indicesConst*
dtype0*
value	B :
N
SumSumMul_5Sum/reduction_indices*
T0*

Tidx0*
	keep_dims( 
M
Reshape_13/shapeConst*%
valueB"   �   �   ����*
dtype0
C

Reshape_13ReshapeSumReshape_13/shape*
T0*
Tshape0
4
mul_6/xConst*
valueB
 *   @*
dtype0
*
mul_6Mulmul_6/x
Reshape_10*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
R
Sum_1Summul_6Sum_1/reduction_indices*
T0*

Tidx0*
	keep_dims( 
D
clip_by_value/Minimum/yConst*
valueB
 *  �?*
dtype0
I
clip_by_value/MinimumMinimumSum_1clip_by_value/Minimum/y*
T0
<
clip_by_value/yConst*
valueB
 *    *
dtype0
I
clip_by_valueMaximumclip_by_value/Minimumclip_by_value/y*
T0
M
Reshape_14/shapeConst*
dtype0*%
valueB"   �   �      
M

Reshape_14Reshapeclip_by_valueReshape_14/shape*
T0*
Tshape0
-
mul_7Mul
Reshape_14
Reshape_13*
T0
4
sub_3/xConst*
valueB
 *  �?*
dtype0
*
sub_3Subsub_3/x
Reshape_14*
T0
X
mul_8/yConst*
dtype0*9
value0B.	"$  ��  ��  ��  ��  ��  ��  ��  ��  ��
%
mul_8Mulsub_3mul_8/y*
T0
#
add_1Addmul_7mul_8*
T0
R
strided_slice_2/stackConst*%
valueB"                *
dtype0
T
strided_slice_2/stack_1Const*%
valueB"               *
dtype0
T
strided_slice_2/stack_2Const*%
valueB"            *
dtype0
�
strided_slice_2StridedSliceadd_1strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
7
l2_normalize/SquareSquarestrided_slice_2*
T0
L
"l2_normalize/Sum/reduction_indicesConst*
value	B :*
dtype0
v
l2_normalize/SumSuml2_normalize/Square"l2_normalize/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
C
l2_normalize/Maximum/yConst*
valueB
 *̼�+*
dtype0
R
l2_normalize/MaximumMaximuml2_normalize/Suml2_normalize/Maximum/y*
T0
:
l2_normalize/RsqrtRsqrtl2_normalize/Maximum*
T0
A
l2_normalizeMulstrided_slice_2l2_normalize/Rsqrt*
T0
R
strided_slice_3/stackConst*%
valueB"               *
dtype0
T
strided_slice_3/stack_1Const*%
valueB"               *
dtype0
T
strided_slice_3/stack_2Const*%
valueB"            *
dtype0
�
strided_slice_3StridedSliceadd_1strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
R
strided_slice_4/stackConst*%
valueB"               *
dtype0
T
strided_slice_4/stack_1Const*%
valueB"            	   *
dtype0
T
strided_slice_4/stack_2Const*
dtype0*%
valueB"            
�
strided_slice_4StridedSliceadd_1strided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
;
GreaterEqual/yConst*
valueB
 *    *
dtype0
F
GreaterEqualGreaterEqualstrided_slice_4GreaterEqual/y*
T0
?
Any/reduction_indicesConst*
value	B :*
dtype0
L
AnyAnyGreaterEqualAny/reduction_indices*

Tidx0*
	keep_dims( 
;
Cast_1CastAny*

SrcT0
*
Truncate( *

DstT0
I
Reshape_15/shapeConst*
dtype0*!
valueB"   ����   
L

Reshape_15Reshapel2_normalizeReshape_15/shape*
T0*
Tshape0
I
Reshape_16/shapeConst*!
valueB"   ����   *
dtype0
F

Reshape_16ReshapeCast_1Reshape_16/shape*
T0*
Tshape0
I
Reshape_17/shapeConst*!
valueB"   ����   *
dtype0
O

Reshape_17Reshapestrided_slice_4Reshape_17/shape*
T0*
Tshape0
N
zeros/shape_as_tensorConst*!
valueB"    �     *
dtype0
8
zeros/ConstConst*
valueB
 *    *
dtype0
L
zerosFillzeros/shape_as_tensorzeros/Const*
T0*

index_type0
:
ExpandDims_6/dimConst*
value	B :*
dtype0
I
ExpandDims_6
ExpandDimsTile_2ExpandDims_6/dim*

Tdim0*
T0
/
mul_9MulExpandDims_6
Reshape_17*
T0
#
Add_2Addzerosmul_9*
T0
I
Reshape_18/shapeConst*!
valueB"   ����   *
dtype0
O

Reshape_18Reshapestrided_slice_3Reshape_18/shape*
T0*
Tshape0
9
stack_1Pack
Reshape_18*
N*
T0*

axis
:
ExpandDims_7/dimConst*
value	B :*
dtype0
G
ExpandDims_7
ExpandDimsTileExpandDims_7/dim*

Tdim0*
T0
,
sub_4SubExpandDims_7stack_1*
T0
/
l2_normalize_1/SquareSquaresub_4*
T0
N
$l2_normalize_1/Sum/reduction_indicesConst*
value	B :*
dtype0
|
l2_normalize_1/SumSuml2_normalize_1/Square$l2_normalize_1/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
E
l2_normalize_1/Maximum/yConst*
dtype0*
valueB
 *̼�+
X
l2_normalize_1/MaximumMaximuml2_normalize_1/Suml2_normalize_1/Maximum/y*
T0
>
l2_normalize_1/RsqrtRsqrtl2_normalize_1/Maximum*
T0
;
l2_normalize_1Mulsub_4l2_normalize_1/Rsqrt*
T0
:
ExpandDims_8/dimConst*
value	B :*
dtype0
M
ExpandDims_8
ExpandDims
Reshape_15ExpandDims_8/dim*

Tdim0*
T0
4
mul_10MulExpandDims_8l2_normalize_1*
T0
A
Sum_2/reduction_indicesConst*
value	B :*
dtype0
S
Sum_2Summul_10Sum_2/reduction_indices*

Tidx0*
	keep_dims( *
T0
F
clip_by_value_1/Minimum/yConst*
valueB
 *  �?*
dtype0
M
clip_by_value_1/MinimumMinimumSum_2clip_by_value_1/Minimum/y*
T0
>
clip_by_value_1/yConst*
valueB
 *    *
dtype0
O
clip_by_value_1Maximumclip_by_value_1/Minimumclip_by_value_1/y*
T0
:
ExpandDims_9/dimConst*
value	B :*
dtype0
M
ExpandDims_9
ExpandDims
Reshape_17ExpandDims_9/dim*

Tdim0*
T0
;
ExpandDims_10/dimConst*
value	B :*
dtype0
T
ExpandDims_10
ExpandDimsclip_by_value_1ExpandDims_10/dim*
T0*

Tdim0
3
mul_11MulExpandDims_9ExpandDims_10*
T0
;
ExpandDims_11/dimConst*
dtype0*
value	B :
K
ExpandDims_11
ExpandDimsTile_1ExpandDims_11/dim*

Tdim0*
T0
-
mul_12Mulmul_11ExpandDims_11*
T0
A
Sum_3/reduction_indicesConst*
dtype0*
value	B :
S
Sum_3Summul_12Sum_3/reduction_indices*
T0*

Tidx0*
	keep_dims( 
#
Add_3AddAdd_2Sum_3*
T0
M
Reshape_19/shapeConst*%
valueB"   �   �      *
dtype0
E

Reshape_19ReshapeAdd_3Reshape_19/shape*
T0*
Tshape0
M
Reshape_20/shapeConst*
dtype0*%
valueB"   �   �      
J

Reshape_20Reshape
Reshape_16Reshape_20/shape*
T0*
Tshape0
6
	Greater/yConst*
dtype0*
valueB
 *   ?
2
GreaterGreater
Reshape_20	Greater/y*
T0
7
concat_6/axisConst*
value	B :*
dtype0
\
concat_6ConcatV2GreaterGreaterGreaterconcat_6/axis*

Tidx0*
T0
*
N
Y
zeros_like_2/shape_as_tensorConst*
dtype0*%
valueB"   �   �      
?
zeros_like_2/ConstConst*
valueB
 *    *
dtype0
a
zeros_like_2Fillzeros_like_2/shape_as_tensorzeros_like_2/Const*
T0*

index_type0
=
SelectSelectconcat_6
Reshape_19zeros_like_2*
T0
7
concat_7/axisConst*
value	B :*
dtype0
U
concat_7ConcatV2Select
Reshape_20concat_7/axis*
T0*
N*

Tidx0
<
ReverseV2/axisConst*
valueB:*
dtype0
E
	ReverseV2	ReverseV2concat_7ReverseV2/axis*
T0*

Tidx0
*

render_imgIdentity	ReverseV2*
T0 