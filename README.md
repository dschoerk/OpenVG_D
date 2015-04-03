# OpenVG_D
Bindings for OpenVG (ShivaVG) to the D Programming Language

This project provides a simple interface to OpenVG, a vector graphics library specified by Khronos. The D Interface was created automatically created by htod, and afterwards refined manually. The native library was built using msvc2013x64, all needed binaries to build and run the demo are included for windows x64. 

![Demo Screenshot](screenshot.png)

https://www.khronos.org/openvg/
https://github.com/Quoturnix/ShivaVG
http://dlang.org/htod.html

source: https://github.com/oggs91/OpenVG_D

building:
build with dub -> dub -a x86_64
build with dmd -> dmd openvg\package.d openvg/vg.d openvg/vgu.d -w -m64 -lib -ofdopenvg -H

usage:
interface files (*.di) are built by -H flag of dmd, those files can be used instead of the library sourcecode
you have to link openvg/OpenVG.lib and openvg/dopenvg.lib