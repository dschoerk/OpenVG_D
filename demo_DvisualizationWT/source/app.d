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

void main() 
{
	Window window = new Window(800, 600, "My window!"w, WindowContextType.Opengl);
	window.show();
	
	Thread.sleep(500.msecs);
	
	
	window.addOnDraw((Windowable window2) {
		//writeln("drawing");
		
/*		Window window = cast(Window)window2;
        IContext context = window.context;
        if (context !is null) {
            writeln("has context");
            writeln("type: ", context.type);
            writeln("toolkit version: ", context.toolkitVersion);
            writeln("shading language version: ", context.shadingLanguageVersion);
        } else {
            //writeln("has not got context");
			return;
        }*/


		if(cast(void*)glClearColor !is null)
		{
			//glClearColor(1,0,0,1);
			//glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		}else
		{
			writeln("no gl context");
		}
		
		/*glLoadIdentity();
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		glColor3f(0f, 1f, 0f);

		glBegin(GL_TRIANGLES);
		glVertex2f(-100, -100);
		glVertex2f(100, -100);
		glVertex2f(100, 100);

		glVertex2f(-100, -100);
		glVertex2f(-100, 100);
		glVertex2f(100, 100);
		glEnd();*/
	});

  while(true) {
    import core.thread : Thread;
    import core.time : dur;
    Window.messageLoopIteration();

    if (window.hasBeenClosed)
        break;
    else
        window.onDraw();
    //Thread.sleep(dur!"msecs"(25));
  }
}