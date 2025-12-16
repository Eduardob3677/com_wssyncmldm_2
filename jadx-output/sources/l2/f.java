package l2;

import m2.C0707a;

/* loaded from: classes.dex */
public final class f implements i {

    /* renamed from: a, reason: collision with root package name */
    public final j f8093a;

    /* renamed from: b, reason: collision with root package name */
    public final u1.i f8094b;

    public f(j jVar, u1.i iVar) {
        this.f8093a = jVar;
        this.f8094b = iVar;
    }

    @Override // l2.i
    public final boolean a(C0707a c0707a) {
        if (c0707a.f8267b != 4 || this.f8093a.a(c0707a)) {
            return false;
        }
        String str = c0707a.f8268c;
        if (str == null) {
            throw new NullPointerException("Null token");
        }
        this.f8094b.b(new C0642a(str, c0707a.f8270e, c0707a.f));
        return true;
    }

    @Override // l2.i
    public final boolean b(Exception exc) {
        this.f8094b.c(exc);
        return true;
    }
}
