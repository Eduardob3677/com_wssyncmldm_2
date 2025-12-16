package V3;

import h4.AbstractC0468v;
import r3.InterfaceC0821x;

/* loaded from: classes.dex */
public final class j extends g {

    /* renamed from: b, reason: collision with root package name */
    public final String f2801b;

    public j(String str) {
        super(Q2.k.f2225a);
        this.f2801b = str;
    }

    @Override // V3.g
    public final AbstractC0468v a(InterfaceC0821x interfaceC0821x) {
        d3.i.e("module", interfaceC0821x);
        return j4.i.c(j4.h.f7640v, this.f2801b);
    }

    @Override // V3.g
    public final Object b() {
        throw new UnsupportedOperationException();
    }

    @Override // V3.g
    public final String toString() {
        return this.f2801b;
    }
}
