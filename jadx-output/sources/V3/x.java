package V3;

import h4.AbstractC0468v;
import h4.AbstractC0472z;
import r3.InterfaceC0802e;
import r3.InterfaceC0821x;

/* loaded from: classes.dex */
public final class x extends n {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2811b = 0;

    public x(byte b3) {
        super(Byte.valueOf(b3));
    }

    @Override // V3.g
    public final AbstractC0468v a(InterfaceC0821x interfaceC0821x) {
        switch (this.f2811b) {
            case 0:
                d3.i.e("module", interfaceC0821x);
                InterfaceC0802e interfaceC0802eE = o4.a.e(interfaceC0821x, o3.m.f8494R);
                AbstractC0472z abstractC0472zQ = interfaceC0802eE != null ? interfaceC0802eE.q() : null;
                return abstractC0472zQ == null ? j4.i.c(j4.h.f7619B, "UByte") : abstractC0472zQ;
            case 1:
                d3.i.e("module", interfaceC0821x);
                InterfaceC0802e interfaceC0802eE2 = o4.a.e(interfaceC0821x, o3.m.f8496T);
                AbstractC0472z abstractC0472zQ2 = interfaceC0802eE2 != null ? interfaceC0802eE2.q() : null;
                return abstractC0472zQ2 == null ? j4.i.c(j4.h.f7619B, "UInt") : abstractC0472zQ2;
            case 2:
                d3.i.e("module", interfaceC0821x);
                InterfaceC0802e interfaceC0802eE3 = o4.a.e(interfaceC0821x, o3.m.f8497U);
                AbstractC0472z abstractC0472zQ3 = interfaceC0802eE3 != null ? interfaceC0802eE3.q() : null;
                return abstractC0472zQ3 == null ? j4.i.c(j4.h.f7619B, "ULong") : abstractC0472zQ3;
            default:
                d3.i.e("module", interfaceC0821x);
                InterfaceC0802e interfaceC0802eE4 = o4.a.e(interfaceC0821x, o3.m.f8495S);
                AbstractC0472z abstractC0472zQ4 = interfaceC0802eE4 != null ? interfaceC0802eE4.q() : null;
                return abstractC0472zQ4 == null ? j4.i.c(j4.h.f7619B, "UShort") : abstractC0472zQ4;
        }
    }

    @Override // V3.g
    public final String toString() {
        switch (this.f2811b) {
            case 0:
                return ((Number) this.f2797a).intValue() + ".toUByte()";
            case 1:
                return ((Number) this.f2797a).intValue() + ".toUInt()";
            case 2:
                return ((Number) this.f2797a).longValue() + ".toULong()";
            default:
                return ((Number) this.f2797a).intValue() + ".toUShort()";
        }
    }

    public x(short s5) {
        super(Short.valueOf(s5));
    }

    public x(int i5) {
        super(Integer.valueOf(i5));
    }

    public x(long j3) {
        super(Long.valueOf(j3));
    }
}
