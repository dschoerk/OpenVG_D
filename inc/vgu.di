// D import file generated from 'openvg\vgu.d'
module openvg.vgu;
import openvg.vg;
const VGU_VERSION_1_0 = 1;
const VGU_VERSION_1_0_1 = 1;
enum 
{
	VGU_NO_ERROR,
	VGU_BAD_HANDLE_ERROR = 61440,
	VGU_ILLEGAL_ARGUMENT_ERROR,
	VGU_OUT_OF_MEMORY_ERROR,
	VGU_PATH_CAPABILITY_ERROR,
	VGU_BAD_WARP_ERROR,
}
alias int VGUErrorCode;
enum 
{
	VGU_ARC_OPEN = 61696,
	VGU_ARC_CHORD,
	VGU_ARC_PIE,
}
alias int VGUArcType;
extern (C) VGUErrorCode vguLine(VGPath path, VGfloat x0, VGfloat y0, VGfloat x1, VGfloat y1);

extern (C) VGUErrorCode vguPolygon(VGPath path, VGfloat* points, VGint count, VGboolean closed);

extern (C) VGUErrorCode vguRect(VGPath path, VGfloat x, VGfloat y, VGfloat width, VGfloat height);

extern (C) VGUErrorCode vguRoundRect(VGPath path, VGfloat x, VGfloat y, VGfloat width, VGfloat height, VGfloat arcWidth, VGfloat arcHeight);

extern (C) VGUErrorCode vguEllipse(VGPath path, VGfloat cx, VGfloat cy, VGfloat width, VGfloat height);

extern (C) VGUErrorCode vguArc(VGPath path, VGfloat x, VGfloat y, VGfloat width, VGfloat height, VGfloat startAngle, VGfloat angleExtent, VGUArcType arcType);

extern (C) VGUErrorCode vguComputeWarpQuadToSquare(VGfloat sx0, VGfloat sy0, VGfloat sx1, VGfloat sy1, VGfloat sx2, VGfloat sy2, VGfloat sx3, VGfloat sy3, VGfloat* matrix);

extern (C) VGUErrorCode vguComputeWarpSquareToQuad(VGfloat dx0, VGfloat dy0, VGfloat dx1, VGfloat dy1, VGfloat dx2, VGfloat dy2, VGfloat dx3, VGfloat dy3, VGfloat* matrix);

extern (C) VGUErrorCode vguComputeWarpQuadToQuad(VGfloat dx0, VGfloat dy0, VGfloat dx1, VGfloat dy1, VGfloat dx2, VGfloat dy2, VGfloat dx3, VGfloat dy3, VGfloat sx0, VGfloat sy0, VGfloat sx1, VGfloat sy1, VGfloat sx2, VGfloat sy2, VGfloat sx3, VGfloat sy3, VGfloat* matrix);

