package h4;

import r3.InterfaceC0789Q;

/* loaded from: classes.dex */
public final class M {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0789Q f7035a;

    /* renamed from: b, reason: collision with root package name */
    public final F3.a f7036b;

    public M(InterfaceC0789Q interfaceC0789Q, F3.a aVar) {
        d3.i.e("typeParameter", interfaceC0789Q);
        d3.i.e("typeAttr", aVar);
        this.f7035a = interfaceC0789Q;
        this.f7036b = aVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof M)) {
            return false;
        }
        M m5 = (M) obj;
        return d3.i.a(m5.f7035a, this.f7035a) && d3.i.a(m5.f7036b, this.f7036b);
    }

    public final int hashCode() {
        int iHashCode = this.f7035a.hashCode();
        return this.f7036b.hashCode() + (iHashCode * 31) + iHashCode;
    }

    public final String toString() {
        return "DataToEraseUpperBound(typeParameter=" + this.f7035a + ", typeAttr=" + this.f7036b + ')';
    }
}
