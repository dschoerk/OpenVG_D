module openvg;

public import vg;
public import vgu;

// simplified functions for calling in D
void vgSetfv(VGParamType type, const(VGfloat[]) values)
{
	vg.vgSetfv(type, cast(int)values.length, cast(VGfloat*)values);
}