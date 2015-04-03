/* Converted to D from vgu.h by htod */
module openvg_vguimport;
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
 */

//C     #ifndef _VGU_H
//C     #define _VGU_H

//C     #include "openvg.h"
import openvg_vgimport;

//C     #define VGU_VERSION_1_0		1
//C     #define VGU_VERSION_1_0_1	1
const VGU_VERSION_1_0 = 1;

const VGU_VERSION_1_0_1 = 1;
//C     #ifndef VGU_API_CALL
//C     #define VGU_API_CALL VG_API_CALL
//C     #endif
//alias VG_API_CALL VGU_API_CALL;

//C     typedef enum {
//C       VGU_NO_ERROR                                 = 0,
//C       VGU_BAD_HANDLE_ERROR                         = 0xF000,
//C       VGU_ILLEGAL_ARGUMENT_ERROR                   = 0xF001,
//C       VGU_OUT_OF_MEMORY_ERROR                      = 0xF002,
//C       VGU_PATH_CAPABILITY_ERROR                    = 0xF003,
//C       VGU_BAD_WARP_ERROR                           = 0xF004
//C     } VGUErrorCode;
enum
{
    VGU_NO_ERROR,
    VGU_BAD_HANDLE_ERROR = 61440,
    VGU_ILLEGAL_ARGUMENT_ERROR,
    VGU_OUT_OF_MEMORY_ERROR,
    VGU_PATH_CAPABILITY_ERROR,
    VGU_BAD_WARP_ERROR,
}
//extern (C):
alias int VGUErrorCode;

//C     typedef enum {
//C       VGU_ARC_OPEN                                 = 0xF100,
//C       VGU_ARC_CHORD                                = 0xF101,
//C       VGU_ARC_PIE                                  = 0xF102
//C     } VGUArcType;
enum
{
    VGU_ARC_OPEN = 61696,
    VGU_ARC_CHORD,
    VGU_ARC_PIE,
}
alias int VGUArcType;

//C     #ifdef __cplusplus 
//C     extern "C" { 
//C     #endif

//C     VGU_API_CALL VGUErrorCode vguLine(VGPath path,
//C     				  VGfloat x0, VGfloat y0,
//C     				  VGfloat x1, VGfloat y1);
extern (C) VGUErrorCode  vguLine(VGPath path, VGfloat x0, VGfloat y0, VGfloat x1, VGfloat y1);

//C     VGU_API_CALL VGUErrorCode vguPolygon(VGPath path,
//C     				    const VGfloat * points, VGint count,
//C     				    VGboolean closed);
extern (C) VGUErrorCode  vguPolygon(VGPath path, VGfloat *points, VGint count, VGboolean closed);

//C     VGU_API_CALL VGUErrorCode vguRect(VGPath path,
//C     				 VGfloat x, VGfloat y,
//C     				 VGfloat width, VGfloat height);
extern (C) VGUErrorCode  vguRect(VGPath path, VGfloat x, VGfloat y, VGfloat width, VGfloat height);

//C     VGU_API_CALL VGUErrorCode vguRoundRect(VGPath path,
//C     				      VGfloat x, VGfloat y,
//C     				      VGfloat width, VGfloat height,
//C     				      VGfloat arcWidth, VGfloat arcHeight);
extern (C) VGUErrorCode  vguRoundRect(VGPath path, VGfloat x, VGfloat y, VGfloat width, VGfloat height, VGfloat arcWidth, VGfloat arcHeight);
  
//C     VGU_API_CALL VGUErrorCode vguEllipse(VGPath path,
//C     				    VGfloat cx, VGfloat cy,
//C     				    VGfloat width, VGfloat height);
extern (C) VGUErrorCode  vguEllipse(VGPath path, VGfloat cx, VGfloat cy, VGfloat width, VGfloat height);

//C     VGU_API_CALL VGUErrorCode vguArc(VGPath path,
//C     				VGfloat x, VGfloat y,
//C     				VGfloat width, VGfloat height,
//C     				VGfloat startAngle, VGfloat angleExtent,
//C     				VGUArcType arcType);
extern (C) VGUErrorCode  vguArc(VGPath path, VGfloat x, VGfloat y, VGfloat width, VGfloat height, VGfloat startAngle, VGfloat angleExtent, VGUArcType arcType);

//C     VGU_API_CALL VGUErrorCode vguComputeWarpQuadToSquare(VGfloat sx0, VGfloat sy0,
//C                                                         VGfloat sx1, VGfloat sy1,
//C                                                         VGfloat sx2, VGfloat sy2,
//C                                                         VGfloat sx3, VGfloat sy3,
//C                                                         VGfloat * matrix);
extern (C) VGUErrorCode  vguComputeWarpQuadToSquare(VGfloat sx0, VGfloat sy0, VGfloat sx1, VGfloat sy1, VGfloat sx2, VGfloat sy2, VGfloat sx3, VGfloat sy3, VGfloat *matrix);

//C     VGU_API_CALL VGUErrorCode vguComputeWarpSquareToQuad(VGfloat dx0, VGfloat dy0,
//C                                                         VGfloat dx1, VGfloat dy1,
//C                                                         VGfloat dx2, VGfloat dy2,
//C                                                         VGfloat dx3, VGfloat dy3,
//C                                                         VGfloat * matrix);
extern (C) VGUErrorCode  vguComputeWarpSquareToQuad(VGfloat dx0, VGfloat dy0, VGfloat dx1, VGfloat dy1, VGfloat dx2, VGfloat dy2, VGfloat dx3, VGfloat dy3, VGfloat *matrix);

//C     VGU_API_CALL VGUErrorCode vguComputeWarpQuadToQuad(VGfloat dx0, VGfloat dy0,
//C                                                       VGfloat dx1, VGfloat dy1,
//C                                                       VGfloat dx2, VGfloat dy2,
//C                                                       VGfloat dx3, VGfloat dy3,
//C     												                          VGfloat sx0, VGfloat sy0,
//C                                                       VGfloat sx1, VGfloat sy1,
//C                                                       VGfloat sx2, VGfloat sy2,
//C                                                       VGfloat sx3, VGfloat sy3,
//C                                                       VGfloat * matrix);
extern (C) VGUErrorCode  vguComputeWarpQuadToQuad(VGfloat dx0, VGfloat dy0, VGfloat dx1, VGfloat dy1, VGfloat dx2, VGfloat dy2, VGfloat dx3, VGfloat dy3, VGfloat sx0, VGfloat sy0, VGfloat sx1, VGfloat sy1, VGfloat sx2, VGfloat sy2, VGfloat sx3, VGfloat sy3, VGfloat *matrix);

//C     #ifdef __cplusplus 
//C     } /* extern "C" */
//C     #endif

//C     #endif /* #ifndef _VGU_H */
