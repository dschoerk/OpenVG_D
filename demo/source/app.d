module app;

import std.stdio;
import std.random;
import std.range;
import derelict.glfw3.glfw3;
import derelict.opengl3.gl;
import openvg;


void checkVg()
{
	auto err = vgGetError();
	writeln(err);
}

void main()
{
	DerelictGL3.load();
	DerelictGLFW3.load();
	
	if (!glfwInit())
		throw new Exception("Failed to initialize GLFW3");
	scope(exit) glfwTerminate();
	
	glfwWindowHint(GLFW_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_VERSION_MINOR, 3);
    //glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
	auto window = glfwCreateWindow(640, 480, "My Title", null, null);
	assert(window !is null, "Window creation failed");
	glfwMakeContextCurrent(window);
 
	auto vers = DerelictGL3.reload();
	
	VGboolean vgCtxSucc = vgCreateContextSH(640, 480);
	
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
	checkVg();
	auto testPath = vgCreatePath(VG_PATH_FORMAT_STANDARD, VG_PATH_DATATYPE_F, 1,0,0,0, VG_PATH_CAPABILITY_ALL);
//	checkVg();

	vgAppendPathData(testPath, cast(int)segs.length, cast(ubyte*)segs, cast(void*)data);
	

	auto testStroke = vgCreatePaint();
	vgSetParameterfv(testStroke, VG_PAINT_COLOR, 4, cast(float*)cstroke);
	vgSetPaint(testStroke, VG_STROKE_PATH);

	auto testFill = vgCreatePaint();
	vgSetParameterfv(testFill, VG_PAINT_COLOR, 4, cast(float*)cfill);
	vgSetPaint(testFill, VG_FILL_PATH);

// demo vars
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
	foreach(i; iota(0,10000))
	{
		float scale = uniform(0.1, 1);
		float x = uniform(0,640);
		float y = uniform(0,480);
		
		shapes ~= shape(scale, x, y);
	}
	
	writeln(shapes.length);
	
	float time = 0;
	while (true)  
	{
		float dtime = glfwGetTime() - time;
		time = glfwGetTime();
	
		if ( glfwGetKey( window, GLFW_KEY_ESCAPE ) == GLFW_PRESS )
			break;
			
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
			//vgDrawPath(testPath, VG_FILL_PATH);
			vgDrawPath(testPath, VG_STROKE_PATH);
		}	
 
		glfwSwapBuffers(window);
		glfwPollEvents();
		
		writeln(1/dtime);
	}
}
