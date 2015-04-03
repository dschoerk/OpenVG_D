/* Converted to D from openvg.h by htod */
module openvg.vg;
/*
 * Copyright (c) 2007 Ivan Leben
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library in the file COPYING;
 * if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

//C     #ifndef _OPENVG_H
//C     #define _OPENVG_H

//C     #define OPENVG_VERSION_1_0_1	1

const OPENVG_VERSION_1_0_1 = 1;
/* Type definitions */
/* TODO: we can't use config.h in this header so there
   must be some other technique to assert the proper
   size of the basic types */

//C     typedef float               VGfloat;
extern (C):
alias float VGfloat;
//C     typedef char                VGbyte;
alias char VGbyte;
//C     typedef unsigned char       VGubyte;
alias ubyte VGubyte;
//C     typedef short               VGshort;
alias short VGshort;
//C     typedef int                 VGint;
alias int VGint;
//C     typedef unsigned int        VGuint;
alias uint VGuint;
//C     typedef unsigned int        VGbitfield;
alias uint VGbitfield;

//C     typedef enum {
//C       VG_FALSE = 0,
//C       VG_TRUE  = 1
//C     } VGboolean;
enum
{
    VG_FALSE,
    VG_TRUE,
}
alias int VGboolean;

//C     #define VG_MAXSHORT ((VGshort)((~((unsigned)0)) >> 1))
//C     #define VG_MAXINT ((VGint)((~((unsigned)0)) >> 1))

/* Define handle to be of same length as any pointer */

//C     typedef void * VGHandle;
alias void *VGHandle;
//C     #define VG_INVALID_HANDLE ((VGHandle)NULL)

/* Enumerations */

//C     typedef enum {
//C       VG_NO_ERROR                                 = 0,
//C       VG_BAD_HANDLE_ERROR                         = 0x1000,
//C       VG_ILLEGAL_ARGUMENT_ERROR                   = 0x1001,
//C       VG_OUT_OF_MEMORY_ERROR                      = 0x1002,
//C       VG_PATH_CAPABILITY_ERROR                    = 0x1003,
//C       VG_UNSUPPORTED_IMAGE_FORMAT_ERROR           = 0x1004,
//C       VG_UNSUPPORTED_PATH_FORMAT_ERROR            = 0x1005,
//C       VG_IMAGE_IN_USE_ERROR                       = 0x1006,
//C       VG_NO_CONTEXT_ERROR                         = 0x1007
//C     } VGErrorCode;
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

//C     typedef enum {
  /* Mode settings */
//C       VG_MATRIX_MODE                              = 0x1100,
//C       VG_FILL_RULE                                = 0x1101,
//C       VG_IMAGE_QUALITY                            = 0x1102,
//C       VG_RENDERING_QUALITY                        = 0x1103,
//C       VG_BLEND_MODE                               = 0x1104,
//C       VG_IMAGE_MODE                               = 0x1105,

  /* Scissoring rectangles */
//C       VG_SCISSOR_RECTS                            = 0x1106,

  /* Stroke parameters */
//C       VG_STROKE_LINE_WIDTH                        = 0x1110,
//C       VG_STROKE_CAP_STYLE                         = 0x1111,
//C       VG_STROKE_JOIN_STYLE                        = 0x1112,
//C       VG_STROKE_MITER_LIMIT                       = 0x1113,
//C       VG_STROKE_DASH_PATTERN                      = 0x1114,
//C       VG_STROKE_DASH_PHASE                        = 0x1115,
//C       VG_STROKE_DASH_PHASE_RESET                  = 0x1116,

  /* Edge fill color for VG_TILE_FILL tiling mode */
//C       VG_TILE_FILL_COLOR                          = 0x1120,

  /* Color for vgClear */
//C       VG_CLEAR_COLOR                              = 0x1121,

  /* Enable/disable alpha masking and scissoring */
//C       VG_MASKING                                  = 0x1130,
//C       VG_SCISSORING                               = 0x1131,

  /* Pixel layout information */
//C       VG_PIXEL_LAYOUT                             = 0x1140,
//C       VG_SCREEN_LAYOUT                            = 0x1141,

  /* Source format selection for image filters */
//C       VG_FILTER_FORMAT_LINEAR                     = 0x1150,
//C       VG_FILTER_FORMAT_PREMULTIPLIED              = 0x1151,

  /* Destination write enable mask for image filters */
//C       VG_FILTER_CHANNEL_MASK                      = 0x1152,

  /* Implementation limits (read-only) */
//C       VG_MAX_SCISSOR_RECTS                        = 0x1160,
//C       VG_MAX_DASH_COUNT                           = 0x1161,
//C       VG_MAX_KERNEL_SIZE                          = 0x1162,
//C       VG_MAX_SEPARABLE_KERNEL_SIZE                = 0x1163,
//C       VG_MAX_COLOR_RAMP_STOPS                     = 0x1164,
//C       VG_MAX_IMAGE_WIDTH                          = 0x1165,
//C       VG_MAX_IMAGE_HEIGHT                         = 0x1166,
//C       VG_MAX_IMAGE_PIXELS                         = 0x1167,
//C       VG_MAX_IMAGE_BYTES                          = 0x1168,
//C       VG_MAX_FLOAT                                = 0x1169,
//C       VG_MAX_GAUSSIAN_STD_DEVIATION               = 0x116A
//C     } VGParamType;
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

//C     typedef enum {
//C       VG_RENDERING_QUALITY_NONANTIALIASED         = 0x1200,
//C       VG_RENDERING_QUALITY_FASTER                 = 0x1201,
//C       VG_RENDERING_QUALITY_BETTER                 = 0x1202  /* Default */
//C     } VGRenderingQuality;
enum
{
    VG_RENDERING_QUALITY_NONANTIALIASED = 4608,
    VG_RENDERING_QUALITY_FASTER,
    VG_RENDERING_QUALITY_BETTER,
}
alias int VGRenderingQuality;

//C     typedef enum {
//C       VG_PIXEL_LAYOUT_UNKNOWN                     = 0x1300,
//C       VG_PIXEL_LAYOUT_RGB_VERTICAL                = 0x1301,
//C       VG_PIXEL_LAYOUT_BGR_VERTICAL                = 0x1302,
//C       VG_PIXEL_LAYOUT_RGB_HORIZONTAL              = 0x1303,
//C       VG_PIXEL_LAYOUT_BGR_HORIZONTAL              = 0x1304
//C     } VGPixelLayout;
enum
{
    VG_PIXEL_LAYOUT_UNKNOWN = 4864,
    VG_PIXEL_LAYOUT_RGB_VERTICAL,
    VG_PIXEL_LAYOUT_BGR_VERTICAL,
    VG_PIXEL_LAYOUT_RGB_HORIZONTAL,
    VG_PIXEL_LAYOUT_BGR_HORIZONTAL,
}
alias int VGPixelLayout;

//C     typedef enum {
//C       VG_MATRIX_PATH_USER_TO_SURFACE              = 0x1400,
//C       VG_MATRIX_IMAGE_USER_TO_SURFACE             = 0x1401,
//C       VG_MATRIX_FILL_PAINT_TO_USER                = 0x1402,
//C       VG_MATRIX_STROKE_PAINT_TO_USER              = 0x1403
//C     } VGMatrixMode;
enum
{
    VG_MATRIX_PATH_USER_TO_SURFACE = 5120,
    VG_MATRIX_IMAGE_USER_TO_SURFACE,
    VG_MATRIX_FILL_PAINT_TO_USER,
    VG_MATRIX_STROKE_PAINT_TO_USER,
}
alias int VGMatrixMode;

//C     typedef enum {
//C       VG_CLEAR_MASK                               = 0x1500,
//C       VG_FILL_MASK                                = 0x1501,
//C       VG_SET_MASK                                 = 0x1502,
//C       VG_UNION_MASK                               = 0x1503,
//C       VG_INTERSECT_MASK                           = 0x1504,
//C       VG_SUBTRACT_MASK                            = 0x1505
//C     } VGMaskOperation;
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

//C     #define VG_PATH_FORMAT_STANDARD 0

const VG_PATH_FORMAT_STANDARD = 0;
//C     typedef enum {
//C       VG_PATH_DATATYPE_S_8                        =  0,
//C       VG_PATH_DATATYPE_S_16                       =  1,
//C       VG_PATH_DATATYPE_S_32                       =  2,
//C       VG_PATH_DATATYPE_F                          =  3
//C     } VGPathDatatype;
enum
{
    VG_PATH_DATATYPE_S_8,
    VG_PATH_DATATYPE_S_16,
    VG_PATH_DATATYPE_S_32,
    VG_PATH_DATATYPE_F,
}
alias int VGPathDatatype;

//C     typedef enum {
//C       VG_ABSOLUTE                                 = 0,
//C       VG_RELATIVE                                 = 1
//C     } VGPathAbsRel;
enum
{
    VG_ABSOLUTE,
    VG_RELATIVE,
}
alias int VGPathAbsRel;

//C     typedef enum {
//C       VG_CLOSE_PATH                               = ( 0 << 1),
//C       VG_MOVE_TO                                  = ( 1 << 1),
//C       VG_LINE_TO                                  = ( 2 << 1),
//C       VG_HLINE_TO                                 = ( 3 << 1),
//C       VG_VLINE_TO                                 = ( 4 << 1),
//C       VG_QUAD_TO                                  = ( 5 << 1),
//C       VG_CUBIC_TO                                 = ( 6 << 1),
//C       VG_SQUAD_TO                                 = ( 7 << 1),
//C       VG_SCUBIC_TO                                = ( 8 << 1),
//C       VG_SCCWARC_TO                               = ( 9 << 1),
//C       VG_SCWARC_TO                                = (10 << 1),
//C       VG_LCCWARC_TO                               = (11 << 1),
//C       VG_LCWARC_TO                                = (12 << 1)
//C     } VGPathSegment;
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

//C     typedef enum {
//C       VG_MOVE_TO_ABS                              = VG_MOVE_TO    | VG_ABSOLUTE,
//C       VG_MOVE_TO_REL                              = VG_MOVE_TO    | VG_RELATIVE,
//C       VG_LINE_TO_ABS                              = VG_LINE_TO    | VG_ABSOLUTE,
//C       VG_LINE_TO_REL                              = VG_LINE_TO    | VG_RELATIVE,
//C       VG_HLINE_TO_ABS                             = VG_HLINE_TO   | VG_ABSOLUTE,
//C       VG_HLINE_TO_REL                             = VG_HLINE_TO   | VG_RELATIVE,
//C       VG_VLINE_TO_ABS                             = VG_VLINE_TO   | VG_ABSOLUTE,
//C       VG_VLINE_TO_REL                             = VG_VLINE_TO   | VG_RELATIVE,
//C       VG_QUAD_TO_ABS                              = VG_QUAD_TO    | VG_ABSOLUTE,
//C       VG_QUAD_TO_REL                              = VG_QUAD_TO    | VG_RELATIVE,
//C       VG_CUBIC_TO_ABS                             = VG_CUBIC_TO   | VG_ABSOLUTE,
//C       VG_CUBIC_TO_REL                             = VG_CUBIC_TO   | VG_RELATIVE,
//C       VG_SQUAD_TO_ABS                             = VG_SQUAD_TO   | VG_ABSOLUTE,
//C       VG_SQUAD_TO_REL                             = VG_SQUAD_TO   | VG_RELATIVE,
//C       VG_SCUBIC_TO_ABS                            = VG_SCUBIC_TO  | VG_ABSOLUTE,
//C       VG_SCUBIC_TO_REL                            = VG_SCUBIC_TO  | VG_RELATIVE,
//C       VG_SCCWARC_TO_ABS                           = VG_SCCWARC_TO | VG_ABSOLUTE,
//C       VG_SCCWARC_TO_REL                           = VG_SCCWARC_TO | VG_RELATIVE,
//C       VG_SCWARC_TO_ABS                            = VG_SCWARC_TO  | VG_ABSOLUTE,
//C       VG_SCWARC_TO_REL                            = VG_SCWARC_TO  | VG_RELATIVE,
//C       VG_LCCWARC_TO_ABS                           = VG_LCCWARC_TO | VG_ABSOLUTE,
//C       VG_LCCWARC_TO_REL                           = VG_LCCWARC_TO | VG_RELATIVE,
//C       VG_LCWARC_TO_ABS                            = VG_LCWARC_TO  | VG_ABSOLUTE,
//C       VG_LCWARC_TO_REL                            = VG_LCWARC_TO  | VG_RELATIVE
//C     } VGPathCommand;
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

//C     typedef VGHandle VGPath;
alias VGHandle VGPath;

//C     typedef enum {
//C       VG_PATH_CAPABILITY_APPEND_FROM              = (1 <<  0),
//C       VG_PATH_CAPABILITY_APPEND_TO                = (1 <<  1),
//C       VG_PATH_CAPABILITY_MODIFY                   = (1 <<  2),
//C       VG_PATH_CAPABILITY_TRANSFORM_FROM           = (1 <<  3),
//C       VG_PATH_CAPABILITY_TRANSFORM_TO             = (1 <<  4),
//C       VG_PATH_CAPABILITY_INTERPOLATE_FROM         = (1 <<  5),
//C       VG_PATH_CAPABILITY_INTERPOLATE_TO           = (1 <<  6),
//C       VG_PATH_CAPABILITY_PATH_LENGTH              = (1 <<  7),
//C       VG_PATH_CAPABILITY_POINT_ALONG_PATH         = (1 <<  8),
//C       VG_PATH_CAPABILITY_TANGENT_ALONG_PATH       = (1 <<  9),
//C       VG_PATH_CAPABILITY_PATH_BOUNDS              = (1 << 10),
//C       VG_PATH_CAPABILITY_PATH_TRANSFORMED_BOUNDS  = (1 << 11),
//C       VG_PATH_CAPABILITY_ALL                      = (1 << 12) - 1
//C     } VGPathCapabilities;
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

//C     typedef enum {
//C       VG_PATH_FORMAT                              = 0x1600,
//C       VG_PATH_DATATYPE                            = 0x1601,
//C       VG_PATH_SCALE                               = 0x1602,
//C       VG_PATH_BIAS                                = 0x1603,
//C       VG_PATH_NUM_SEGMENTS                        = 0x1604,
//C       VG_PATH_NUM_COORDS                          = 0x1605
//C     } VGPathParamType;
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

//C     typedef enum {
//C       VG_CAP_BUTT                                 = 0x1700,
//C       VG_CAP_ROUND                                = 0x1701,
//C       VG_CAP_SQUARE                               = 0x1702
//C     } VGCapStyle;
enum
{
    VG_CAP_BUTT = 5888,
    VG_CAP_ROUND,
    VG_CAP_SQUARE,
}
alias int VGCapStyle;

//C     typedef enum {
//C       VG_JOIN_MITER                               = 0x1800,
//C       VG_JOIN_ROUND                               = 0x1801,
//C       VG_JOIN_BEVEL                               = 0x1802
//C     } VGJoinStyle;
enum
{
    VG_JOIN_MITER = 6144,
    VG_JOIN_ROUND,
    VG_JOIN_BEVEL,
}
alias int VGJoinStyle;

//C     typedef enum {
//C       VG_EVEN_ODD                                 = 0x1900,
//C       VG_NON_ZERO                                 = 0x1901
//C     } VGFillRule;
enum
{
    VG_EVEN_ODD = 6400,
    VG_NON_ZERO,
}
alias int VGFillRule;

//C     typedef enum {
//C       VG_STROKE_PATH                              = (1 << 0),
//C       VG_FILL_PATH                                = (1 << 1)
//C     } VGPaintMode;
enum
{
    VG_STROKE_PATH = 1,
    VG_FILL_PATH,
}
alias int VGPaintMode;

//C     typedef VGHandle VGPaint;
alias VGHandle VGPaint;

//C     typedef enum {
  /* Color paint parameters */
//C       VG_PAINT_TYPE                               = 0x1A00,
//C       VG_PAINT_COLOR                              = 0x1A01,
//C       VG_PAINT_COLOR_RAMP_SPREAD_MODE             = 0x1A02,
//C       VG_PAINT_COLOR_RAMP_PREMULTIPLIED           = 0x1A07,
//C       VG_PAINT_COLOR_RAMP_STOPS                   = 0x1A03,

  /* Linear gradient paint parameters */
//C       VG_PAINT_LINEAR_GRADIENT                    = 0x1A04,

  /* Radial gradient paint parameters */
//C       VG_PAINT_RADIAL_GRADIENT                    = 0x1A05,

  /* Pattern paint parameters */
//C       VG_PAINT_PATTERN_TILING_MODE                = 0x1A06
//C     } VGPaintParamType;
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

//C     typedef enum {
//C       VG_PAINT_TYPE_COLOR                         = 0x1B00,
//C       VG_PAINT_TYPE_LINEAR_GRADIENT               = 0x1B01,
//C       VG_PAINT_TYPE_RADIAL_GRADIENT               = 0x1B02,
//C       VG_PAINT_TYPE_PATTERN                       = 0x1B03
//C     } VGPaintType;
enum
{
    VG_PAINT_TYPE_COLOR = 6912,
    VG_PAINT_TYPE_LINEAR_GRADIENT,
    VG_PAINT_TYPE_RADIAL_GRADIENT,
    VG_PAINT_TYPE_PATTERN,
}
alias int VGPaintType;

//C     typedef enum {
//C       VG_COLOR_RAMP_SPREAD_PAD                    = 0x1C00,
//C       VG_COLOR_RAMP_SPREAD_REPEAT                 = 0x1C01,
//C       VG_COLOR_RAMP_SPREAD_REFLECT                = 0x1C02
//C     } VGColorRampSpreadMode;
enum
{
    VG_COLOR_RAMP_SPREAD_PAD = 7168,
    VG_COLOR_RAMP_SPREAD_REPEAT,
    VG_COLOR_RAMP_SPREAD_REFLECT,
}
alias int VGColorRampSpreadMode;

//C     typedef enum {
//C       VG_TILE_FILL                                = 0x1D00,
//C       VG_TILE_PAD                                 = 0x1D01,
//C       VG_TILE_REPEAT                              = 0x1D02,
//C       VG_TILE_REFLECT                             = 0x1D03
//C     } VGTilingMode;
enum
{
    VG_TILE_FILL = 7424,
    VG_TILE_PAD,
    VG_TILE_REPEAT,
    VG_TILE_REFLECT,
}
alias int VGTilingMode;

//C     typedef enum {
  /* RGB{A,X} channel ordering */
//C       VG_sRGBX_8888                               =  0,
//C       VG_sRGBA_8888                               =  1,
//C       VG_sRGBA_8888_PRE                           =  2,
//C       VG_sRGB_565                                 =  3,
//C       VG_sRGBA_5551                               =  4,
//C       VG_sRGBA_4444                               =  5,
//C       VG_sL_8                                     =  6,
//C       VG_lRGBX_8888                               =  7,
//C       VG_lRGBA_8888                               =  8,
//C       VG_lRGBA_8888_PRE                           =  9,
//C       VG_lL_8                                     = 10,
//C       VG_A_8                                      = 11,
//C       VG_BW_1                                     = 12,

  /* {A,X}RGB channel ordering */
//C       VG_sXRGB_8888                               =  0 | (1 << 6),
//C       VG_sARGB_8888                               =  1 | (1 << 6),
//C       VG_sARGB_8888_PRE                           =  2 | (1 << 6),
//C       VG_sARGB_1555                               =  4 | (1 << 6),
//C       VG_sARGB_4444                               =  5 | (1 << 6),
//C       VG_lXRGB_8888                               =  7 | (1 << 6),
//C       VG_lARGB_8888                               =  8 | (1 << 6),
//C       VG_lARGB_8888_PRE                           =  9 | (1 << 6),

  /* BGR{A,X} channel ordering */
//C       VG_sBGRX_8888                               =  0 | (1 << 7),
//C       VG_sBGRA_8888                               =  1 | (1 << 7),
//C       VG_sBGRA_8888_PRE                           =  2 | (1 << 7),
//C       VG_sBGR_565                                 =  3 | (1 << 7),
//C       VG_sBGRA_5551                               =  4 | (1 << 7),
//C       VG_sBGRA_4444                               =  5 | (1 << 7),
//C       VG_lBGRX_8888                               =  7 | (1 << 7),
//C       VG_lBGRA_8888                               =  8 | (1 << 7),
//C       VG_lBGRA_8888_PRE                           =  9 | (1 << 7),

  /* {A,X}BGR channel ordering */
//C       VG_sXBGR_8888                               =  0 | (1 << 6) | (1 << 7),
//C       VG_sABGR_8888                               =  1 | (1 << 6) | (1 << 7),
//C       VG_sABGR_8888_PRE                           =  2 | (1 << 6) | (1 << 7),
//C       VG_sABGR_1555                               =  4 | (1 << 6) | (1 << 7),
//C       VG_sABGR_4444                               =  5 | (1 << 6) | (1 << 7),
//C       VG_lXBGR_8888                               =  7 | (1 << 6) | (1 << 7),
//C       VG_lABGR_8888                               =  8 | (1 << 6) | (1 << 7),
//C       VG_lABGR_8888_PRE                           =  9 | (1 << 6) | (1 << 7)
//C     } VGImageFormat;
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

//C     typedef VGHandle VGImage;
alias VGHandle VGImage;

//C     typedef enum {
//C       VG_IMAGE_QUALITY_NONANTIALIASED             = (1 << 0),
//C       VG_IMAGE_QUALITY_FASTER                     = (1 << 1),
//C       VG_IMAGE_QUALITY_BETTER                     = (1 << 2)
//C     } VGImageQuality;
enum
{
    VG_IMAGE_QUALITY_NONANTIALIASED = 1,
    VG_IMAGE_QUALITY_FASTER,
    VG_IMAGE_QUALITY_BETTER = 4,
}
alias int VGImageQuality;

//C     typedef enum {
//C       VG_IMAGE_FORMAT                             = 0x1E00,
//C       VG_IMAGE_WIDTH                              = 0x1E01,
//C       VG_IMAGE_HEIGHT                             = 0x1E02
//C     } VGImageParamType;
enum
{
    VG_IMAGE_FORMAT = 7680,
    VG_IMAGE_WIDTH,
    VG_IMAGE_HEIGHT,
}
alias int VGImageParamType;

//C     typedef enum {
//C       VG_DRAW_IMAGE_NORMAL                        = 0x1F00,
//C       VG_DRAW_IMAGE_MULTIPLY                      = 0x1F01,
//C       VG_DRAW_IMAGE_STENCIL                       = 0x1F02
//C     } VGImageMode;
enum
{
    VG_DRAW_IMAGE_NORMAL = 7936,
    VG_DRAW_IMAGE_MULTIPLY,
    VG_DRAW_IMAGE_STENCIL,
}
alias int VGImageMode;

//C     typedef enum {
//C       VG_RED                                      = (1 << 3),
//C       VG_GREEN                                    = (1 << 2),
//C       VG_BLUE                                     = (1 << 1),
//C       VG_ALPHA                                    = (1 << 0)
//C     } VGImageChannel;
enum
{
    VG_RED = 8,
    VG_GREEN = 4,
    VG_BLUE = 2,
    VG_ALPHA = 1,
}
alias int VGImageChannel;

//C     typedef enum {
//C       VG_BLEND_SRC                                = 0x2000,
//C       VG_BLEND_SRC_OVER                           = 0x2001,
//C       VG_BLEND_DST_OVER                           = 0x2002,
//C       VG_BLEND_SRC_IN                             = 0x2003,
//C       VG_BLEND_DST_IN                             = 0x2004,
//C       VG_BLEND_MULTIPLY                           = 0x2005,
//C       VG_BLEND_SCREEN                             = 0x2006,
//C       VG_BLEND_DARKEN                             = 0x2007,
//C       VG_BLEND_LIGHTEN                            = 0x2008,
//C       VG_BLEND_ADDITIVE                           = 0x2009,
//C       VG_BLEND_SRC_OUT_SH                         = 0x200A,
//C       VG_BLEND_DST_OUT_SH                         = 0x200B,
//C       VG_BLEND_SRC_ATOP_SH                        = 0x200C,
//C       VG_BLEND_DST_ATOP_SH                        = 0x200D
//C     } VGBlendMode;
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

//C     typedef enum {
//C       VG_IMAGE_FORMAT_QUERY                       = 0x2100,
//C       VG_PATH_DATATYPE_QUERY                      = 0x2101
//C     } VGHardwareQueryType;
enum
{
    VG_IMAGE_FORMAT_QUERY = 8448,
    VG_PATH_DATATYPE_QUERY,
}
alias int VGHardwareQueryType;

//C     typedef enum {
//C       VG_HARDWARE_ACCELERATED                     = 0x2200,
//C       VG_HARDWARE_UNACCELERATED                   = 0x2201
//C     } VGHardwareQueryResult;
enum
{
    VG_HARDWARE_ACCELERATED = 8704,
    VG_HARDWARE_UNACCELERATED,
}
alias int VGHardwareQueryResult;

//C     typedef enum {
//C       VG_VENDOR                                   = 0x2300,
//C       VG_RENDERER                                 = 0x2301,
//C       VG_VERSION                                  = 0x2302,
//C       VG_EXTENSIONS                               = 0x2303
//C     } VGStringID;
enum
{
    VG_VENDOR = 8960,
    VG_RENDERER,
    VG_VERSION,
    VG_EXTENSIONS,
}
alias int VGStringID;

/* Function Prototypes */

//C     #if defined(_WIN32) || defined(__VC32__)
//C     #	if defined(VG_API_EXPORT)
//C     #		define VG_API_CALL __declspec(dllexport)
//C     #	else
//C     #		define VG_API_CALL __declspec(dllimport)
//C     #	endif
//C     #else
//C     #	define VG_API_CALL extern
//C     #endif

//C     #if defined (__cplusplus)
//C     extern "C" {
//C     #endif

//C     VG_API_CALL void vgTest();
void  vgTest();
//C     VG_API_CALL VGErrorCode vgGetError(void);
extern (C) VGErrorCode  vgGetError();

//C     VG_API_CALL void vgFlush(void);
extern (C) void  vgFlush();
//C     VG_API_CALL void vgFinish(void);
extern (C) void  vgFinish();

/* Getters and Setters */
//C     VG_API_CALL void vgSetf (VGParamType type, VGfloat value);
extern (C) void  vgSetf(VGParamType type, VGfloat value);
//C     VG_API_CALL void vgSeti (VGParamType type, VGint value);
extern (C) void  vgSeti(VGParamType type, VGint value);
//C     VG_API_CALL void vgSetfv(VGParamType type, VGint count,
//C                              const VGfloat * values);
extern (C) void  vgSetfv(VGParamType type, VGint count, VGfloat *values);

//C     VG_API_CALL void vgSetiv(VGParamType type, VGint count,
//C                              const VGint * values);
extern (C) void  vgSetiv(VGParamType type, VGint count, VGint *values);
  
//C     VG_API_CALL VGfloat vgGetf(VGParamType type);
extern (C) VGfloat  vgGetf(VGParamType type);
//C     VG_API_CALL VGint   vgGeti(VGParamType type);
extern (C) VGint  vgGeti(VGParamType type);
//C     VG_API_CALL VGint   vgGetVectorSize(VGParamType type);
extern (C) VGint  vgGetVectorSize(VGParamType type);
//C     VG_API_CALL void    vgGetfv(VGParamType type, VGint count, VGfloat * values);
extern (C) void  vgGetfv(VGParamType type, VGint count, VGfloat *values);
//C     VG_API_CALL void    vgGetiv(VGParamType type, VGint count, VGint * values);
extern (C) void  vgGetiv(VGParamType type, VGint count, VGint *values);

//C     VG_API_CALL void vgSetParameterf(VGHandle object,
//C                                      VGint paramType,
//C                                      VGfloat value);
extern (C) void  vgSetParameterf(VGHandle object, VGint paramType, VGfloat value);
//C     VG_API_CALL void vgSetParameteri(VGHandle object,
//C                                      VGint paramType,
//C                                      VGint value);
extern (C) void  vgSetParameteri(VGHandle object, VGint paramType, VGint value);
//C     VG_API_CALL void vgSetParameterfv(VGHandle object,
//C                                       VGint paramType,
//C                                       VGint count, const VGfloat * values);
extern (C) void  vgSetParameterfv(VGHandle object, VGint paramType, VGint count, VGfloat *values);
//C     VG_API_CALL void vgSetParameteriv(VGHandle object,
//C                                       VGint paramType,
//C                                       VGint count, const VGint * values);
extern (C) void  vgSetParameteriv(VGHandle object, VGint paramType, VGint count, VGint *values);

//C     VG_API_CALL VGfloat vgGetParameterf(VGHandle object,
//C                                         VGint paramType);
extern (C) VGfloat  vgGetParameterf(VGHandle object, VGint paramType);
//C     VG_API_CALL VGint vgGetParameteri(VGHandle object,
//C                                       VGint paramType);
extern (C) VGint  vgGetParameteri(VGHandle object, VGint paramType);
//C     VG_API_CALL VGint vgGetParameterVectorSize(VGHandle object,
//C                                                VGint paramType);
extern (C) VGint  vgGetParameterVectorSize(VGHandle object, VGint paramType);
//C     VG_API_CALL void vgGetParameterfv(VGHandle object,
//C                                       VGint paramType,
//C                                       VGint count, VGfloat * values);
extern (C) void  vgGetParameterfv(VGHandle object, VGint paramType, VGint count, VGfloat *values);
//C     VG_API_CALL void vgGetParameteriv(VGHandle object,
//C                                       VGint paramType,
//C                                       VGint count, VGint * values);
extern (C) void  vgGetParameteriv(VGHandle object, VGint paramType, VGint count, VGint *values);

/* Matrix Manipulation */
//C     VG_API_CALL void vgLoadIdentity(void);
extern (C) void  vgLoadIdentity();
//C     VG_API_CALL void vgLoadMatrix(const VGfloat * m);
extern (C) void  vgLoadMatrix(VGfloat *m);
//C     VG_API_CALL void vgGetMatrix(VGfloat * m);
extern (C) void  vgGetMatrix(VGfloat *m);
//C     VG_API_CALL void vgMultMatrix(const VGfloat * m);
extern (C) void  vgMultMatrix(VGfloat *m);
//C     VG_API_CALL void vgTranslate(VGfloat tx, VGfloat ty);
extern (C) void  vgTranslate(VGfloat tx, VGfloat ty);
//C     VG_API_CALL void vgScale(VGfloat sx, VGfloat sy);
extern (C) void  vgScale(VGfloat sx, VGfloat sy);
//C     VG_API_CALL void vgShear(VGfloat shx, VGfloat shy);
extern (C) void  vgShear(VGfloat shx, VGfloat shy);
//C     VG_API_CALL void vgRotate(VGfloat angle);
extern (C) void  vgRotate(VGfloat angle);

/* Masking and Clearing */
//C     VG_API_CALL void vgMask(VGImage mask, VGMaskOperation operation,
//C                             VGint x, VGint y, VGint width, VGint height);
extern (C) void  vgMask(VGImage mask, VGMaskOperation operation, VGint x, VGint y, VGint width, VGint height);
//C     VG_API_CALL void vgClear(VGint x, VGint y, VGint width, VGint height);
extern (C) void  vgClear(VGint x, VGint y, VGint width, VGint height);

/* Paths */
//C     VG_API_CALL VGPath vgCreatePath(VGint pathFormat,
//C                                     VGPathDatatype datatype,
//C                                     VGfloat scale, VGfloat bias,
//C                                     VGint segmentCapacityHint,
//C                                     VGint coordCapacityHint,
//C                                     VGbitfield capabilities);
extern (C) VGPath  vgCreatePath(VGint pathFormat, VGPathDatatype datatype, VGfloat scale, VGfloat bias, VGint segmentCapacityHint, VGint coordCapacityHint, VGbitfield capabilities);
//C     VG_API_CALL void vgClearPath(VGPath path, VGbitfield capabilities);
extern (C) void  vgClearPath(VGPath path, VGbitfield capabilities);
//C     VG_API_CALL void vgDestroyPath(VGPath path);
extern (C) void  vgDestroyPath(VGPath path);
//C     VG_API_CALL void vgRemovePathCapabilities(VGPath path,
//C                                               VGbitfield capabilities);
extern (C) void  vgRemovePathCapabilities(VGPath path, VGbitfield capabilities);
//C     VG_API_CALL VGbitfield vgGetPathCapabilities(VGPath path);
extern (C) VGbitfield  vgGetPathCapabilities(VGPath path);
//C     VG_API_CALL void vgAppendPath(VGPath dstPath, VGPath srcPath);
extern (C) void  vgAppendPath(VGPath dstPath, VGPath srcPath);
//C     VG_API_CALL void vgAppendPathData(VGPath dstPath,
//C                                       VGint numSegments,
//C                                       const VGubyte * pathSegments,
//C                                       const void * pathData);
extern (C) void  vgAppendPathData(VGPath dstPath, VGint numSegments, VGubyte *pathSegments, void *pathData);
//C     VG_API_CALL void vgModifyPathCoords(VGPath dstPath, VGint startIndex,
//C                                         VGint numSegments,
//C                                         const void * pathData);
extern (C) void  vgModifyPathCoords(VGPath dstPath, VGint startIndex, VGint numSegments, void *pathData);
//C     VG_API_CALL void vgTransformPath(VGPath dstPath, VGPath srcPath);
extern (C) void  vgTransformPath(VGPath dstPath, VGPath srcPath);
//C     VG_API_CALL VGboolean vgInterpolatePath(VGPath dstPath,
//C                                             VGPath startPath,
//C                                             VGPath endPath,
//C                                             VGfloat amount);
extern (C) VGboolean  vgInterpolatePath(VGPath dstPath, VGPath startPath, VGPath endPath, VGfloat amount);
//C     VG_API_CALL VGfloat vgPathLength(VGPath path,
//C                                      VGint startSegment, VGint numSegments);
extern (C) VGfloat  vgPathLength(VGPath path, VGint startSegment, VGint numSegments);
//C     VG_API_CALL void vgPointAlongPath(VGPath path,
//C                                       VGint startSegment, VGint numSegments,
//C                                       VGfloat distance,
//C                                       VGfloat * x, VGfloat * y,
//C                                       VGfloat * tangentX, VGfloat * tangentY);
extern (C) void  vgPointAlongPath(VGPath path, VGint startSegment, VGint numSegments, VGfloat distance, VGfloat *x, VGfloat *y, VGfloat *tangentX, VGfloat *tangentY);
//C     VG_API_CALL void vgPathBounds(VGPath path,
//C                                   VGfloat * minX, VGfloat * minY,
//C                                   VGfloat * width, VGfloat * height);
extern (C) void  vgPathBounds(VGPath path, VGfloat *minX, VGfloat *minY, VGfloat *width, VGfloat *height);
//C     VG_API_CALL void vgPathTransformedBounds(VGPath path,
//C                                              VGfloat * minX, VGfloat * minY,
//C                                              VGfloat * width, VGfloat * height);
extern (C) void  vgPathTransformedBounds(VGPath path, VGfloat *minX, VGfloat *minY, VGfloat *width, VGfloat *height);
//C     VG_API_CALL void vgDrawPath(VGPath path, VGbitfield paintModes);
extern (C) void  vgDrawPath(VGPath path, VGbitfield paintModes);

/* Paint */
//C     VG_API_CALL VGPaint vgCreatePaint(void);
extern (C) VGPaint  vgCreatePaint();
//C     VG_API_CALL void vgDestroyPaint(VGPaint paint);
extern (C) void  vgDestroyPaint(VGPaint paint);
//C     VG_API_CALL void vgSetPaint(VGPaint paint, VGbitfield paintModes);
extern (C) void  vgSetPaint(VGPaint paint, VGbitfield paintModes);
//C     VG_API_CALL VGPaint vgGetPaint(VGPaintMode paintMode);
extern (C) VGPaint  vgGetPaint(VGPaintMode paintMode);
//C     VG_API_CALL void vgSetColor(VGPaint paint, VGuint rgba);
extern (C) void  vgSetColor(VGPaint paint, VGuint rgba);
//C     VG_API_CALL VGuint vgGetColor(VGPaint paint);
extern (C) VGuint  vgGetColor(VGPaint paint);
//C     VG_API_CALL void vgPaintPattern(VGPaint paint, VGImage pattern);
extern (C) void  vgPaintPattern(VGPaint paint, VGImage pattern);

/* Images */
//C     VG_API_CALL VGImage vgCreateImage(VGImageFormat format,
//C                                       VGint width, VGint height,
//C                                       VGbitfield allowedQuality);
extern (C) VGImage  vgCreateImage(VGImageFormat format, VGint width, VGint height, VGbitfield allowedQuality);
//C     VG_API_CALL void vgDestroyImage(VGImage image);
extern (C) void  vgDestroyImage(VGImage image);
//C     VG_API_CALL void vgClearImage(VGImage image,
//C                                   VGint x, VGint y, VGint width, VGint height);
extern (C) void  vgClearImage(VGImage image, VGint x, VGint y, VGint width, VGint height);
//C     VG_API_CALL void vgImageSubData(VGImage image,
//C                                     const void * data, VGint dataStride,
//C                                     VGImageFormat dataFormat,
//C                                     VGint x, VGint y, VGint width, VGint height);
extern (C) void  vgImageSubData(VGImage image, void *data, VGint dataStride, VGImageFormat dataFormat, VGint x, VGint y, VGint width, VGint height);
//C     VG_API_CALL void vgGetImageSubData(VGImage image,
//C                                        void * data, VGint dataStride,
//C                                        VGImageFormat dataFormat,
//C                                        VGint x, VGint y,
//C                                        VGint width, VGint height);
extern (C) void  vgGetImageSubData(VGImage image, void *data, VGint dataStride, VGImageFormat dataFormat, VGint x, VGint y, VGint width, VGint height);
//C     VG_API_CALL VGImage vgChildImage(VGImage parent,
//C                                      VGint x, VGint y, VGint width, VGint height);
extern (C) VGImage  vgChildImage(VGImage parent, VGint x, VGint y, VGint width, VGint height);
//C     VG_API_CALL VGImage vgGetParent(VGImage image); 
extern (C) VGImage  vgGetParent(VGImage image);
//C     VG_API_CALL void vgCopyImage(VGImage dst, VGint dx, VGint dy,
//C                                  VGImage src, VGint sx, VGint sy,
//C                                  VGint width, VGint height,
//C                                  VGboolean dither);
extern (C) void  vgCopyImage(VGImage dst, VGint dx, VGint dy, VGImage src, VGint sx, VGint sy, VGint width, VGint height, VGboolean dither);
//C     VG_API_CALL void vgDrawImage(VGImage image);
extern (C) void  vgDrawImage(VGImage image);
//C     VG_API_CALL void vgSetPixels(VGint dx, VGint dy,
//C                                  VGImage src, VGint sx, VGint sy,
//C                                  VGint width, VGint height);
extern (C) void  vgSetPixels(VGint dx, VGint dy, VGImage src, VGint sx, VGint sy, VGint width, VGint height);
//C     VG_API_CALL void vgWritePixels(const void * data, VGint dataStride,
//C                                    VGImageFormat dataFormat,
//C                                    VGint dx, VGint dy,
//C                                    VGint width, VGint height);
extern (C) void  vgWritePixels(void *data, VGint dataStride, VGImageFormat dataFormat, VGint dx, VGint dy, VGint width, VGint height);
//C     VG_API_CALL void vgGetPixels(VGImage dst, VGint dx, VGint dy,
//C                                  VGint sx, VGint sy,
//C                                  VGint width, VGint height);
extern (C) void  vgGetPixels(VGImage dst, VGint dx, VGint dy, VGint sx, VGint sy, VGint width, VGint height);
//C     VG_API_CALL void vgReadPixels(void * data, VGint dataStride,
//C                                   VGImageFormat dataFormat,
//C                                   VGint sx, VGint sy,
//C                                   VGint width, VGint height);
extern (C) void  vgReadPixels(void *data, VGint dataStride, VGImageFormat dataFormat, VGint sx, VGint sy, VGint width, VGint height);
//C     VG_API_CALL void vgCopyPixels(VGint dx, VGint dy,
//C                                   VGint sx, VGint sy,
//C                                   VGint width, VGint height);
extern (C) void  vgCopyPixels(VGint dx, VGint dy, VGint sx, VGint sy, VGint width, VGint height);

/* Image Filters */
//C     VG_API_CALL void vgColorMatrix(VGImage dst, VGImage src,
//C                                    const VGfloat * matrix);
extern (C) void  vgColorMatrix(VGImage dst, VGImage src, VGfloat *matrix);
//C     VG_API_CALL void vgConvolve(VGImage dst, VGImage src,
//C                                 VGint kernelWidth, VGint kernelHeight,
//C                                 VGint shiftX, VGint shiftY,
//C                                 const VGshort * kernel,
//C                                 VGfloat scale,
//C                                 VGfloat bias,
//C                                 VGTilingMode tilingMode);
extern (C) void  vgConvolve(VGImage dst, VGImage src, VGint kernelWidth, VGint kernelHeight, VGint shiftX, VGint shiftY, VGshort *kernel, VGfloat scale, VGfloat bias, VGTilingMode tilingMode);
//C     VG_API_CALL void vgSeparableConvolve(VGImage dst, VGImage src,
//C                                          VGint kernelWidth,
//C                                          VGint kernelHeight,
//C                                          VGint shiftX, VGint shiftY,
//C                                          const VGshort * kernelX,
//C                                          const VGshort * kernelY,
//C                                          VGfloat scale,
//C                                          VGfloat bias,
//C                                          VGTilingMode tilingMode);
extern (C) void  vgSeparableConvolve(VGImage dst, VGImage src, VGint kernelWidth, VGint kernelHeight, VGint shiftX, VGint shiftY, VGshort *kernelX, VGshort *kernelY, VGfloat scale, VGfloat bias, VGTilingMode tilingMode);
//C     VG_API_CALL void vgGaussianBlur(VGImage dst, VGImage src,
//C                                     VGfloat stdDeviationX,
//C                                     VGfloat stdDeviationY,
//C                                     VGTilingMode tilingMode);
extern (C) void  vgGaussianBlur(VGImage dst, VGImage src, VGfloat stdDeviationX, VGfloat stdDeviationY, VGTilingMode tilingMode);
//C     VG_API_CALL void vgLookup(VGImage dst, VGImage src,
//C                               const VGubyte * redLUT,
//C                               const VGubyte * greenLUT,
//C                               const VGubyte * blueLUT,
//C                               const VGubyte * alphaLUT,
//C                               VGboolean outputLinear,
//C                               VGboolean outputPremultiplied);
extern (C) void  vgLookup(VGImage dst, VGImage src, VGubyte *redLUT, VGubyte *greenLUT, VGubyte *blueLUT, VGubyte *alphaLUT, VGboolean outputLinear, VGboolean outputPremultiplied);
//C     VG_API_CALL void vgLookupSingle(VGImage dst, VGImage src,
//C                                     const VGuint * lookupTable,
//C                                     VGImageChannel sourceChannel,
//C                                     VGboolean outputLinear,
//C                                     VGboolean outputPremultiplied);
extern (C) void  vgLookupSingle(VGImage dst, VGImage src, VGuint *lookupTable, VGImageChannel sourceChannel, VGboolean outputLinear, VGboolean outputPremultiplied);

/* Hardware Queries */
//C     VG_API_CALL VGHardwareQueryResult vgHardwareQuery(VGHardwareQueryType key,
//C                                                       VGint setting);
extern (C) VGHardwareQueryResult  vgHardwareQuery(VGHardwareQueryType key, VGint setting);

/* Renderer and Extension Information */
//C     VG_API_CALL const VGubyte * vgGetString(VGStringID name);
extern (C) VGubyte * vgGetString(VGStringID name);

/* Extensions */

//C     #define OVG_SH_blend_src_out          1
//C     #define OVG_SH_blend_dst_out          1
const OVG_SH_blend_src_out = 1;
//C     #define OVG_SH_blend_src_atop         1
const OVG_SH_blend_dst_out = 1;
//C     #define OVG_SH_blend_dst_atop         1
const OVG_SH_blend_src_atop = 1;

const OVG_SH_blend_dst_atop = 1;
//C     VG_API_CALL VGboolean vgCreateContextSH(VGint width, VGint height);
extern (C) VGboolean  vgCreateContextSH(VGint width, VGint height);
//C     VG_API_CALL void vgResizeSurfaceSH(VGint width, VGint height);
extern (C) void  vgResizeSurfaceSH(VGint width, VGint height);
//C     VG_API_CALL void vgDestroyContextSH(void);
extern (C) void  vgDestroyContextSH();


//C     #if defined (__cplusplus)
//C     } /* extern "C" */
//C     #endif
//C     #endif /* _OPENVG_H */
