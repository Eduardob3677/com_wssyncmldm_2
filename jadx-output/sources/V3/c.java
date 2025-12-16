package V3;

import h4.AbstractC0468v;
import h4.AbstractC0472z;
import o3.AbstractC0732i;
import o3.EnumC0734k;
import r3.InterfaceC0821x;

/* loaded from: classes.dex */
public final class c extends g {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2794b = 1;

    public /* synthetic */ c(Object obj) {
        super(obj);
    }

    @Override // V3.g
    public final AbstractC0468v a(InterfaceC0821x interfaceC0821x) {
        switch (this.f2794b) {
            case 0:
                d3.i.e("module", interfaceC0821x);
                AbstractC0732i abstractC0732iG = interfaceC0821x.g();
                abstractC0732iG.getClass();
                AbstractC0472z abstractC0472zS = abstractC0732iG.s(EnumC0734k.BOOLEAN);
                if (abstractC0472zS != null) {
                    return abstractC0472zS;
                }
                AbstractC0732i.a(63);
                throw null;
            case 1:
                d3.i.e("module", interfaceC0821x);
                AbstractC0732i abstractC0732iG2 = interfaceC0821x.g();
                abstractC0732iG2.getClass();
                AbstractC0472z abstractC0472zS2 = abstractC0732iG2.s(EnumC0734k.DOUBLE);
                if (abstractC0472zS2 != null) {
                    return abstractC0472zS2;
                }
                AbstractC0732i.a(61);
                throw null;
            default:
                d3.i.e("module", interfaceC0821x);
                AbstractC0732i abstractC0732iG3 = interfaceC0821x.g();
                abstractC0732iG3.getClass();
                AbstractC0472z abstractC0472zS3 = abstractC0732iG3.s(EnumC0734k.FLOAT);
                if (abstractC0472zS3 != null) {
                    return abstractC0472zS3;
                }
                AbstractC0732i.a(60);
                throw null;
        }
    }

    @Override // V3.g
    public String toString() {
        switch (this.f2794b) {
            case 1:
                return ((Number) this.f2797a).doubleValue() + ".toDouble()";
            case 2:
                return ((Number) this.f2797a).floatValue() + ".toFloat()";
            default:
                return super.toString();
        }
    }

    public c(boolean z4) {
        super(Boolean.valueOf(z4));
    }

    public c(double d2) {
        super(Double.valueOf(d2));
    }

    public c(float f) {
        super(Float.valueOf(f));
    }
}
