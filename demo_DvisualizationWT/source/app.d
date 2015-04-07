/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2014 Devisualization (Richard Andrew Cattermole)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
module test.main;
import devisualization.window.window;
import devisualization.window.interfaces.context;
import derelict.opengl3.gl;
import std.stdio;
import core.thread;
import openvg;
import std.range;
import std.random;

void checkVg()
{
	auto err = vgGetError();
	writeln(err);
}

VGubyte[] segs = [
    VG_MOVE_TO, VG_LINE_TO_REL, VG_LINE_TO_REL, VG_LINE_TO_REL,
    VG_LINE_TO_REL, VG_LINE_TO_REL, VG_LINE_TO_REL, VG_LINE_TO_REL,
    VG_LINE_TO_REL, VG_LINE_TO_REL, VG_CLOSE_PATH ];
	
VGfloat[] data = [
0,50, 15,-40, 45,0, -35,-20,
15,-40, -40,30, -40,-30, 15,40,
-35,20, 45,0 ];

VGfloat[] cstroke = [0.5,0.2,0.8, 0.6];
VGfloat[] cfill = [0.3,1.0,0.0, 0.6];

VGfloat phase=0.0f;

VGint jindex = 0;
VGint jsize = 3;
VGint[] joins = [
VG_JOIN_MITER,
VG_JOIN_BEVEL,
VG_JOIN_ROUND
];

VGint cindex = 2;
VGint csize = 3;
VGint[] caps = [
VG_CAP_BUTT,
VG_CAP_SQUARE,
VG_CAP_ROUND
];

VGfloat sx=1.0f, sy=1.0f;

VGfloat startX=0.0f;
VGfloat startY=0.0f;
VGfloat clickX=0.0f;
VGfloat clickY=0.0f;

struct shape
{
	float scale;
	float x;
	float y;
}
shape[] shapes;

VGPath testPath;

void init()
{
	DerelictGL3.reload();
	
	VGboolean vgCtxSucc = vgCreateContextSH(640, 480);
	if(!vgCtxSucc)
		writeln("failed to create VG context");
	
	testPath = vgCreatePath(VG_PATH_FORMAT_STANDARD, VG_PATH_DATATYPE_F, 1,0,0,0, VG_PATH_CAPABILITY_ALL);

	vgAppendPathData(testPath, cast(int)segs.length, cast(ubyte*)segs, cast(void*)data);
	

	auto testStroke = vgCreatePaint();
	vgSetParameterfv(testStroke, VG_PAINT_COLOR, 4, cast(float*)cstroke);
	vgSetPaint(testStroke, VG_STROKE_PATH);

	auto testFill = vgCreatePaint();
	vgSetParameterfv(testFill, VG_PAINT_COLOR, 4, cast(float*)cfill);
	vgSetPaint(testFill, VG_FILL_PATH);

	foreach(i; iota(0,1))
	{
		float scale = uniform(0.1, 1);
		float x = uniform(0,640);
		float y = uniform(0,480);
		
		shapes ~= shape(scale, x, y);
	}
	
	int major;
	int minor;
	glGetIntegerv(GL_MAJOR_VERSION, &major);
	glGetIntegerv(GL_MAJOR_VERSION, &minor);
	writeln("OpenGL Context Version ",major,".",minor);
}

void main() 
{ 
	DerelictGL3.load();
	Window window = new Window(640, 480, "My window!"w, WindowContextType.Opengl   );
	window.show();
	
	window.addOnDraw((Windowable window2) 
	{
		VGfloat[] cc = [0,0,0,1];
		VGfloat[] dash = [10,15,0,15];

		vgSetfv(VG_CLEAR_COLOR, cc);
		vgClear(0,0,640,480);

		//vgSetfv(VG_STROKE_DASH_PATTERN, dash);
		//vgSeti(VG_STROKE_DASH_PHASE_RESET, VG_TRUE);
		//vgSetf(VG_STROKE_DASH_PHASE, phase);

		vgSetf(VG_STROKE_LINE_WIDTH, 5.0f);
		vgSetf(VG_STROKE_JOIN_STYLE, joins[jindex]);
		vgSetf(VG_STROKE_CAP_STYLE, caps[cindex]);

		vgLoadIdentity();
		

		foreach(shape s; shapes)
		{
			vgLoadIdentity();
			vgTranslate(s.x,s.y);
			vgScale(s.scale, s.scale);
			vgDrawPath(testPath, VG_FILL_PATH);
			vgDrawPath(testPath, VG_STROKE_PATH);
		}
	});
	
	bool hitContext;
	while(true) {
		import core.thread : Thread;
		import core.time : dur;
		Window.messageLoopIteration();

		IContext context = window.context;
		if (window.hasBeenClosed)
			break;
		else if (context !is null) {
			if (!hitContext) {
				context.activate;
				
				writeln("has context");
				writeln("type: ", context.type);
				writeln("toolkit version: ", context.toolkitVersion);
				writeln("shading language version: ", context.shadingLanguageVersion);
				
				init();
					
				hitContext = true;
			}

			window.onDraw;
			context.swapBuffers;
		}
		
		Thread.sleep(dur!"msecs"(25));
	}
}