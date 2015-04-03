module openvg;

public import openvg.vg;
public import openvg.vgu;

// simplified functions for calling in D
void vgSetfv(VGParamType type, const(VGfloat[]) values)
{
	openvg.vg.vgSetfv(type, cast(int)values.length, cast(VGfloat*)values);
}