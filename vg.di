// D import file generated from 'openvg\vg.d'
module openvg.vg;
const OPENVG_VERSION_1_0_1 = 1;
extern (C) 
{
	alias float VGfloat;
	alias char VGbyte;
	alias ubyte VGubyte;
	alias short VGshort;
	alias int VGint;
	alias uint VGuint;
	alias uint VGbitfield;
	enum 
	{
		VG_FALSE,
		VG_TRUE,
	}
	alias int VGboolean;
	alias void* VGHandle;
	enum 
	{
		VG_NO_ERROR,
		VG_BAD_HANDLE_ERROR = 4096,
		VG_ILLEGAL_ARGUMENT_ERROR,
		VG_OUT_OF_MEMORY_ERROR,
		VG_PATH_CAPABILITY_ERROR,
		VG_UNSUPPORTED_IMAGE_FORMAT_ERROR,
		VG_UNSUPPORTED_PATH_FORMAT_ERROR,
		VG_IMAGE_IN_USE_ERROR,
		VG_NO_CONTEXT_ERROR,
	}
	alias int VGErrorCode;
	enum 
	{
		VG_MATRIX_MODE = 4352,
		VG_FILL_RULE,
		VG_IMAGE_QUALITY,
		VG_RENDERING_QUALITY,
		VG_BLEND_MODE,
		VG_IMAGE_MODE,
		VG_SCISSOR_RECTS,
		VG_STROKE_LINE_WIDTH = 4368,
		VG_STROKE_CAP_STYLE,
		VG_STROKE_JOIN_STYLE,
		VG_STROKE_MITER_LIMIT,
		VG_STROKE_DASH_PATTERN,
		VG_STROKE_DASH_PHASE,
		VG_STROKE_DASH_PHASE_RESET,
		VG_TILE_FILL_COLOR = 4384,
		VG_CLEAR_COLOR,
		VG_MASKING = 4400,
		VG_SCISSORING,
		VG_PIXEL_LAYOUT = 4416,
		VG_SCREEN_LAYOUT,
		VG_FILTER_FORMAT_LINEAR = 4432,
		VG_FILTER_FORMAT_PREMULTIPLIED,
		VG_FILTER_CHANNEL_MASK,
		VG_MAX_SCISSOR_RECTS = 4448,
		VG_MAX_DASH_COUNT,
		VG_MAX_KERNEL_SIZE,
		VG_MAX_SEPARABLE_KERNEL_SIZE,
		VG_MAX_COLOR_RAMP_STOPS,
		VG_MAX_IMAGE_WIDTH,
		VG_MAX_IMAGE_HEIGHT,
		VG_MAX_IMAGE_PIXELS,
		VG_MAX_IMAGE_BYTES,
		VG_MAX_FLOAT,
		VG_MAX_GAUSSIAN_STD_DEVIATION,
	}
	alias int VGParamType;
	enum 
	{
		VG_RENDERING_QUALITY_NONANTIALIASED = 4608,
		VG_RENDERING_QUALITY_FASTER,
		VG_RENDERING_QUALITY_BETTER,
	}
	alias int VGRenderingQuality;
	enum 
	{
		VG_PIXEL_LAYOUT_UNKNOWN = 4864,
		VG_PIXEL_LAYOUT_RGB_VERTICAL,
		VG_PIXEL_LAYOUT_BGR_VERTICAL,
		VG_PIXEL_LAYOUT_RGB_HORIZONTAL,
		VG_PIXEL_LAYOUT_BGR_HORIZONTAL,
	}
	alias int VGPixelLayout;
	enum 
	{
		VG_MATRIX_PATH_USER_TO_SURFACE = 5120,
		VG_MATRIX_IMAGE_USER_TO_SURFACE,
		VG_MATRIX_FILL_PAINT_TO_USER,
		VG_MATRIX_STROKE_PAINT_TO_USER,
	}
	alias int VGMatrixMode;
	enum 
	{
		VG_CLEAR_MASK = 5376,
		VG_FILL_MASK,
		VG_SET_MASK,
		VG_UNION_MASK,
		VG_INTERSECT_MASK,
		VG_SUBTRACT_MASK,
	}
	alias int VGMaskOperation;
	const VG_PATH_FORMAT_STANDARD = 0;
	enum 
	{
		VG_PATH_DATATYPE_S_8,
		VG_PATH_DATATYPE_S_16,
		VG_PATH_DATATYPE_S_32,
		VG_PATH_DATATYPE_F,
	}
	alias int VGPathDatatype;
	enum 
	{
		VG_ABSOLUTE,
		VG_RELATIVE,
	}
	alias int VGPathAbsRel;
	enum 
	{
		VG_CLOSE_PATH,
		VG_MOVE_TO = 2,
		VG_LINE_TO = 4,
		VG_HLINE_TO = 6,
		VG_VLINE_TO = 8,
		VG_QUAD_TO = 10,
		VG_CUBIC_TO = 12,
		VG_SQUAD_TO = 14,
		VG_SCUBIC_TO = 16,
		VG_SCCWARC_TO = 18,
		VG_SCWARC_TO = 20,
		VG_LCCWARC_TO = 22,
		VG_LCWARC_TO = 24,
	}
	alias int VGPathSegment;
	enum 
	{
		VG_MOVE_TO_ABS = 2,
		VG_MOVE_TO_REL,
		VG_LINE_TO_ABS,
		VG_LINE_TO_REL,
		VG_HLINE_TO_ABS,
		VG_HLINE_TO_REL,
		VG_VLINE_TO_ABS,
		VG_VLINE_TO_REL,
		VG_QUAD_TO_ABS,
		VG_QUAD_TO_REL,
		VG_CUBIC_TO_ABS,
		VG_CUBIC_TO_REL,
		VG_SQUAD_TO_ABS,
		VG_SQUAD_TO_REL,
		VG_SCUBIC_TO_ABS,
		VG_SCUBIC_TO_REL,
		VG_SCCWARC_TO_ABS,
		VG_SCCWARC_TO_REL,
		VG_SCWARC_TO_ABS,
		VG_SCWARC_TO_REL,
		VG_LCCWARC_TO_ABS,
		VG_LCCWARC_TO_REL,
		VG_LCWARC_TO_ABS,
		VG_LCWARC_TO_REL,
	}
	alias int VGPathCommand;
	alias VGHandle VGPath;
	enum 
	{
		VG_PATH_CAPABILITY_APPEND_FROM = 1,
		VG_PATH_CAPABILITY_APPEND_TO,
		VG_PATH_CAPABILITY_MODIFY = 4,
		VG_PATH_CAPABILITY_TRANSFORM_FROM = 8,
		VG_PATH_CAPABILITY_TRANSFORM_TO = 16,
		VG_PATH_CAPABILITY_INTERPOLATE_FROM = 32,
		VG_PATH_CAPABILITY_INTERPOLATE_TO = 64,
		VG_PATH_CAPABILITY_PATH_LENGTH = 128,
		VG_PATH_CAPABILITY_POINT_ALONG_PATH = 256,
		VG_PATH_CAPABILITY_TANGENT_ALONG_PATH = 512,
		VG_PATH_CAPABILITY_PATH_BOUNDS = 1024,
		VG_PATH_CAPABILITY_PATH_TRANSFORMED_BOUNDS = 2048,
		VG_PATH_CAPABILITY_ALL = 4095,
	}
	alias int VGPathCapabilities;
	enum 
	{
		VG_PATH_FORMAT = 5632,
		VG_PATH_DATATYPE,
		VG_PATH_SCALE,
		VG_PATH_BIAS,
		VG_PATH_NUM_SEGMENTS,
		VG_PATH_NUM_COORDS,
	}
	alias int VGPathParamType;
	enum 
	{
		VG_CAP_BUTT = 5888,
		VG_CAP_ROUND,
		VG_CAP_SQUARE,
	}
	alias int VGCapStyle;
	enum 
	{
		VG_JOIN_MITER = 6144,
		VG_JOIN_ROUND,
		VG_JOIN_BEVEL,
	}
	alias int VGJoinStyle;
	enum 
	{
		VG_EVEN_ODD = 6400,
		VG_NON_ZERO,
	}
	alias int VGFillRule;
	enum 
	{
		VG_STROKE_PATH = 1,
		VG_FILL_PATH,
	}
	alias int VGPaintMode;
	alias VGHandle VGPaint;
	enum 
	{
		VG_PAINT_TYPE = 6656,
		VG_PAINT_COLOR,
		VG_PAINT_COLOR_RAMP_SPREAD_MODE,
		VG_PAINT_COLOR_RAMP_PREMULTIPLIED = 6663,
		VG_PAINT_COLOR_RAMP_STOPS = 6659,
		VG_PAINT_LINEAR_GRADIENT,
		VG_PAINT_RADIAL_GRADIENT,
		VG_PAINT_PATTERN_TILING_MODE,
	}
	alias int VGPaintParamType;
	enum 
	{
		VG_PAINT_TYPE_COLOR = 6912,
		VG_PAINT_TYPE_LINEAR_GRADIENT,
		VG_PAINT_TYPE_RADIAL_GRADIENT,
		VG_PAINT_TYPE_PATTERN,
	}
	alias int VGPaintType;
	enum 
	{
		VG_COLOR_RAMP_SPREAD_PAD = 7168,
		VG_COLOR_RAMP_SPREAD_REPEAT,
		VG_COLOR_RAMP_SPREAD_REFLECT,
	}
	alias int VGColorRampSpreadMode;
	enum 
	{
		VG_TILE_FILL = 7424,
		VG_TILE_PAD,
		VG_TILE_REPEAT,
		VG_TILE_REFLECT,
	}
	alias int VGTilingMode;
	enum 
	{
		VG_sRGBX_8888,
		VG_sRGBA_8888,
		VG_sRGBA_8888_PRE,
		VG_sRGB_565,
		VG_sRGBA_5551,
		VG_sRGBA_4444,
		VG_sL_8,
		VG_lRGBX_8888,
		VG_lRGBA_8888,
		VG_lRGBA_8888_PRE,
		VG_lL_8,
		VG_A_8,
		VG_BW_1,
		VG_sXRGB_8888 = 64,
		VG_sARGB_8888,
		VG_sARGB_8888_PRE,
		VG_sARGB_1555 = 68,
		VG_sARGB_4444,
		VG_lXRGB_8888 = 71,
		VG_lARGB_8888,
		VG_lARGB_8888_PRE,
		VG_sBGRX_8888 = 128,
		VG_sBGRA_8888,
		VG_sBGRA_8888_PRE,
		VG_sBGR_565,
		VG_sBGRA_5551,
		VG_sBGRA_4444,
		VG_lBGRX_8888 = 135,
		VG_lBGRA_8888,
		VG_lBGRA_8888_PRE,
		VG_sXBGR_8888 = 192,
		VG_sABGR_8888,
		VG_sABGR_8888_PRE,
		VG_sABGR_1555 = 196,
		VG_sABGR_4444,
		VG_lXBGR_8888 = 199,
		VG_lABGR_8888,
		VG_lABGR_8888_PRE,
	}
	alias int VGImageFormat;
	alias VGHandle VGImage;
	enum 
	{
		VG_IMAGE_QUALITY_NONANTIALIASED = 1,
		VG_IMAGE_QUALITY_FASTER,
		VG_IMAGE_QUALITY_BETTER = 4,
	}
	alias int VGImageQuality;
	enum 
	{
		VG_IMAGE_FORMAT = 7680,
		VG_IMAGE_WIDTH,
		VG_IMAGE_HEIGHT,
	}
	alias int VGImageParamType;
	enum 
	{
		VG_DRAW_IMAGE_NORMAL = 7936,
		VG_DRAW_IMAGE_MULTIPLY,
		VG_DRAW_IMAGE_STENCIL,
	}
	alias int VGImageMode;
	enum 
	{
		VG_RED = 8,
		VG_GREEN = 4,
		VG_BLUE = 2,
		VG_ALPHA = 1,
	}
	alias int VGImageChannel;
	enum 
	{
		VG_BLEND_SRC = 8192,
		VG_BLEND_SRC_OVER,
		VG_BLEND_DST_OVER,
		VG_BLEND_SRC_IN,
		VG_BLEND_DST_IN,
		VG_BLEND_MULTIPLY,
		VG_BLEND_SCREEN,
		VG_BLEND_DARKEN,
		VG_BLEND_LIGHTEN,
		VG_BLEND_ADDITIVE,
		VG_BLEND_SRC_OUT_SH,
		VG_BLEND_DST_OUT_SH,
		VG_BLEND_SRC_ATOP_SH,
		VG_BLEND_DST_ATOP_SH,
	}
	alias int VGBlendMode;
	enum 
	{
		VG_IMAGE_FORMAT_QUERY = 8448,
		VG_PATH_DATATYPE_QUERY,
	}
	alias int VGHardwareQueryType;
	enum 
	{
		VG_HARDWARE_ACCELERATED = 8704,
		VG_HARDWARE_UNACCELERATED,
	}
	alias int VGHardwareQueryResult;
	enum 
	{
		VG_VENDOR = 8960,
		VG_RENDERER,
		VG_VERSION,
		VG_EXTENSIONS,
	}
	alias int VGStringID;
	void vgTest();
	extern (C) VGErrorCode vgGetError();

	extern (C) void vgFlush();

	extern (C) void vgFinish();

	extern (C) void vgSetf(VGParamType type, VGfloat value);

	extern (C) void vgSeti(VGParamType type, VGint value);

	extern (C) void vgSetfv(VGParamType type, VGint count, VGfloat* values);

	extern (C) void vgSetiv(VGParamType type, VGint count, VGint* values);

	extern (C) VGfloat vgGetf(VGParamType type);

	extern (C) VGint vgGeti(VGParamType type);

	extern (C) VGint vgGetVectorSize(VGParamType type);

	extern (C) void vgGetfv(VGParamType type, VGint count, VGfloat* values);

	extern (C) void vgGetiv(VGParamType type, VGint count, VGint* values);

	extern (C) void vgSetParameterf(VGHandle object, VGint paramType, VGfloat value);

	extern (C) void vgSetParameteri(VGHandle object, VGint paramType, VGint value);

	extern (C) void vgSetParameterfv(VGHandle object, VGint paramType, VGint count, VGfloat* values);

	extern (C) void vgSetParameteriv(VGHandle object, VGint paramType, VGint count, VGint* values);

	extern (C) VGfloat vgGetParameterf(VGHandle object, VGint paramType);

	extern (C) VGint vgGetParameteri(VGHandle object, VGint paramType);

	extern (C) VGint vgGetParameterVectorSize(VGHandle object, VGint paramType);

	extern (C) void vgGetParameterfv(VGHandle object, VGint paramType, VGint count, VGfloat* values);

	extern (C) void vgGetParameteriv(VGHandle object, VGint paramType, VGint count, VGint* values);

	extern (C) void vgLoadIdentity();

	extern (C) void vgLoadMatrix(VGfloat* m);

	extern (C) void vgGetMatrix(VGfloat* m);

	extern (C) void vgMultMatrix(VGfloat* m);

	extern (C) void vgTranslate(VGfloat tx, VGfloat ty);

	extern (C) void vgScale(VGfloat sx, VGfloat sy);

	extern (C) void vgShear(VGfloat shx, VGfloat shy);

	extern (C) void vgRotate(VGfloat angle);

	extern (C) void vgMask(VGImage mask, VGMaskOperation operation, VGint x, VGint y, VGint width, VGint height);

	extern (C) void vgClear(VGint x, VGint y, VGint width, VGint height);

	extern (C) VGPath vgCreatePath(VGint pathFormat, VGPathDatatype datatype, VGfloat scale, VGfloat bias, VGint segmentCapacityHint, VGint coordCapacityHint, VGbitfield capabilities);

	extern (C) void vgClearPath(VGPath path, VGbitfield capabilities);

	extern (C) void vgDestroyPath(VGPath path);

	extern (C) void vgRemovePathCapabilities(VGPath path, VGbitfield capabilities);

	extern (C) VGbitfield vgGetPathCapabilities(VGPath path);

	extern (C) void vgAppendPath(VGPath dstPath, VGPath srcPath);

	extern (C) void vgAppendPathData(VGPath dstPath, VGint numSegments, VGubyte* pathSegments, void* pathData);

	extern (C) void vgModifyPathCoords(VGPath dstPath, VGint startIndex, VGint numSegments, void* pathData);

	extern (C) void vgTransformPath(VGPath dstPath, VGPath srcPath);

	extern (C) VGboolean vgInterpolatePath(VGPath dstPath, VGPath startPath, VGPath endPath, VGfloat amount);

	extern (C) VGfloat vgPathLength(VGPath path, VGint startSegment, VGint numSegments);

	extern (C) void vgPointAlongPath(VGPath path, VGint startSegment, VGint numSegments, VGfloat distance, VGfloat* x, VGfloat* y, VGfloat* tangentX, VGfloat* tangentY);

	extern (C) void vgPathBounds(VGPath path, VGfloat* minX, VGfloat* minY, VGfloat* width, VGfloat* height);

	extern (C) void vgPathTransformedBounds(VGPath path, VGfloat* minX, VGfloat* minY, VGfloat* width, VGfloat* height);

	extern (C) void vgDrawPath(VGPath path, VGbitfield paintModes);

	extern (C) VGPaint vgCreatePaint();

	extern (C) void vgDestroyPaint(VGPaint paint);

	extern (C) void vgSetPaint(VGPaint paint, VGbitfield paintModes);

	extern (C) VGPaint vgGetPaint(VGPaintMode paintMode);

	extern (C) void vgSetColor(VGPaint paint, VGuint rgba);

	extern (C) VGuint vgGetColor(VGPaint paint);

	extern (C) void vgPaintPattern(VGPaint paint, VGImage pattern);

	extern (C) VGImage vgCreateImage(VGImageFormat format, VGint width, VGint height, VGbitfield allowedQuality);

	extern (C) void vgDestroyImage(VGImage image);

	extern (C) void vgClearImage(VGImage image, VGint x, VGint y, VGint width, VGint height);

	extern (C) void vgImageSubData(VGImage image, void* data, VGint dataStride, VGImageFormat dataFormat, VGint x, VGint y, VGint width, VGint height);

	extern (C) void vgGetImageSubData(VGImage image, void* data, VGint dataStride, VGImageFormat dataFormat, VGint x, VGint y, VGint width, VGint height);

	extern (C) VGImage vgChildImage(VGImage parent, VGint x, VGint y, VGint width, VGint height);

	extern (C) VGImage vgGetParent(VGImage image);

	extern (C) void vgCopyImage(VGImage dst, VGint dx, VGint dy, VGImage src, VGint sx, VGint sy, VGint width, VGint height, VGboolean dither);

	extern (C) void vgDrawImage(VGImage image);

	extern (C) void vgSetPixels(VGint dx, VGint dy, VGImage src, VGint sx, VGint sy, VGint width, VGint height);

	extern (C) void vgWritePixels(void* data, VGint dataStride, VGImageFormat dataFormat, VGint dx, VGint dy, VGint width, VGint height);

	extern (C) void vgGetPixels(VGImage dst, VGint dx, VGint dy, VGint sx, VGint sy, VGint width, VGint height);

	extern (C) void vgReadPixels(void* data, VGint dataStride, VGImageFormat dataFormat, VGint sx, VGint sy, VGint width, VGint height);

	extern (C) void vgCopyPixels(VGint dx, VGint dy, VGint sx, VGint sy, VGint width, VGint height);

	extern (C) void vgColorMatrix(VGImage dst, VGImage src, VGfloat* matrix);

	extern (C) void vgConvolve(VGImage dst, VGImage src, VGint kernelWidth, VGint kernelHeight, VGint shiftX, VGint shiftY, VGshort* kernel, VGfloat scale, VGfloat bias, VGTilingMode tilingMode);

	extern (C) void vgSeparableConvolve(VGImage dst, VGImage src, VGint kernelWidth, VGint kernelHeight, VGint shiftX, VGint shiftY, VGshort* kernelX, VGshort* kernelY, VGfloat scale, VGfloat bias, VGTilingMode tilingMode);

	extern (C) void vgGaussianBlur(VGImage dst, VGImage src, VGfloat stdDeviationX, VGfloat stdDeviationY, VGTilingMode tilingMode);

	extern (C) void vgLookup(VGImage dst, VGImage src, VGubyte* redLUT, VGubyte* greenLUT, VGubyte* blueLUT, VGubyte* alphaLUT, VGboolean outputLinear, VGboolean outputPremultiplied);

	extern (C) void vgLookupSingle(VGImage dst, VGImage src, VGuint* lookupTable, VGImageChannel sourceChannel, VGboolean outputLinear, VGboolean outputPremultiplied);

	extern (C) VGHardwareQueryResult vgHardwareQuery(VGHardwareQueryType key, VGint setting);

	extern (C) VGubyte* vgGetString(VGStringID name);

	const OVG_SH_blend_src_out = 1;
	const OVG_SH_blend_dst_out = 1;
	const OVG_SH_blend_src_atop = 1;
	const OVG_SH_blend_dst_atop = 1;
	extern (C) VGboolean vgCreateContextSH(VGint width, VGint height);

	extern (C) void vgResizeSurfaceSH(VGint width, VGint height);

	extern (C) void vgDestroyContextSH();

}
