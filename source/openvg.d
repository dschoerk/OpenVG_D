module openvg;

public import openvg_vgimport;
alias vg = openvg_vgimport;
public import openvg_vguimport;
alias vgu = openvg_vguimport;

// simplified functions for calling in D

void vgSetfv(VGParamType type, const(VGfloat[]) values)
{
	vg.vgSetfv(type, cast(int)values.length, cast(VGfloat*)values);
}