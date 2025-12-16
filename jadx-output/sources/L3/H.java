package L3;

import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;

/* loaded from: classes.dex */
public final class H extends AbstractC0089k implements R3.A {

    /* renamed from: d, reason: collision with root package name */
    public int f1422d;

    /* renamed from: e, reason: collision with root package name */
    public int f1423e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public I f1424g;

    public static H g() {
        H h5 = new H();
        h5.f1423e = -1;
        h5.f1424g = I.PACKAGE;
        return h5;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        J jF = f();
        if (jF.b()) {
            return jF;
        }
        throw new A0.c();
    }

    public final Object clone() {
        H hG = g();
        hG.h(f());
        return hG;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        J j3 = null;
        try {
            try {
                J.f1430k.getClass();
                h(new J(c0084f));
                return this;
            } catch (C0098u e5) {
                J j5 = (J) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    j3 = j5;
                    if (j3 != null) {
                        h(j3);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (j3 != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        h((J) abstractC0095q);
        return this;
    }

    public final J f() {
        J j3 = new J(this);
        int i5 = this.f1422d;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        j3.f1433e = this.f1423e;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        j3.f = this.f;
        if ((i5 & 4) == 4) {
            i6 |= 4;
        }
        j3.f1434g = this.f1424g;
        j3.f1432d = i6;
        return j3;
    }

    public final void h(J j3) {
        if (j3 == J.f1429j) {
            return;
        }
        int i5 = j3.f1432d;
        if ((i5 & 1) == 1) {
            int i6 = j3.f1433e;
            this.f1422d = 1 | this.f1422d;
            this.f1423e = i6;
        }
        if ((i5 & 2) == 2) {
            int i7 = j3.f;
            this.f1422d = 2 | this.f1422d;
            this.f = i7;
        }
        if ((i5 & 4) == 4) {
            I i8 = j3.f1434g;
            i8.getClass();
            this.f1422d = 4 | this.f1422d;
            this.f1424g = i8;
        }
        this.f2400c = this.f2400c.m(j3.f1431c);
    }
}
