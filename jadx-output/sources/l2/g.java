package l2;

import m2.C0707a;

/* loaded from: classes.dex */
public final class g implements i {

    /* renamed from: a, reason: collision with root package name */
    public final u1.i f8095a;

    public g(u1.i iVar) {
        this.f8095a = iVar;
    }

    @Override // l2.i
    public final boolean a(C0707a c0707a) {
        int i5 = c0707a.f8267b;
        if (i5 != 3 && i5 != 4 && i5 != 5) {
            return false;
        }
        this.f8095a.d(c0707a.f8266a);
        return true;
    }

    @Override // l2.i
    public final boolean b(Exception exc) {
        return false;
    }
}
