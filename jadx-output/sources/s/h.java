package s;

import h0.AbstractC0432c;
import java.util.ArrayList;
import k.Q0;
import r.C0765b;

/* loaded from: classes.dex */
public final class h extends C0827d {
    public float k0 = -1.0f;
    public int l0 = -1;
    public int m0 = -1;
    public C0826c n0 = this.f8896D;
    public int o0 = 0;

    /* renamed from: p0, reason: collision with root package name */
    public boolean f9002p0;

    public h() {
        this.f8903L.clear();
        this.f8903L.add(this.n0);
        int length = this.f8902K.length;
        for (int i5 = 0; i5 < length; i5++) {
            this.f8902K[i5] = this.n0;
        }
    }

    @Override // s.C0827d
    public final void J(r.c cVar, boolean z4) {
        if (this.f8905N == null) {
            return;
        }
        C0826c c0826c = this.n0;
        cVar.getClass();
        int iN = r.c.n(c0826c);
        if (this.o0 == 1) {
            this.f8910S = iN;
            this.f8911T = 0;
            E(this.f8905N.k());
            H(0);
            return;
        }
        this.f8910S = 0;
        this.f8911T = iN;
        H(this.f8905N.n());
        E(0);
    }

    public final void K(int i5) {
        this.n0.l(i5);
        this.f9002p0 = true;
    }

    public final void L(int i5) {
        if (this.o0 == i5) {
            return;
        }
        this.o0 = i5;
        ArrayList arrayList = this.f8903L;
        arrayList.clear();
        if (this.o0 == 1) {
            this.n0 = this.f8895C;
        } else {
            this.n0 = this.f8896D;
        }
        arrayList.add(this.n0);
        C0826c[] c0826cArr = this.f8902K;
        int length = c0826cArr.length;
        for (int i6 = 0; i6 < length; i6++) {
            c0826cArr[i6] = this.n0;
        }
    }

    @Override // s.C0827d
    public final void b(r.c cVar, boolean z4) {
        e eVar = (e) this.f8905N;
        if (eVar == null) {
            return;
        }
        Object objI = eVar.i(2);
        Object objI2 = eVar.i(4);
        C0827d c0827d = this.f8905N;
        boolean z5 = c0827d != null && c0827d.f8935j0[0] == 2;
        if (this.o0 == 0) {
            objI = eVar.i(3);
            objI2 = eVar.i(5);
            C0827d c0827d2 = this.f8905N;
            z5 = c0827d2 != null && c0827d2.f8935j0[1] == 2;
        }
        if (this.f9002p0) {
            C0826c c0826c = this.n0;
            if (c0826c.f8887c) {
                r.f fVarK = cVar.k(c0826c);
                cVar.d(fVarK, this.n0.d());
                if (this.l0 != -1) {
                    if (z5) {
                        cVar.f(cVar.k(objI2), fVarK, 0, 5);
                    }
                } else if (this.m0 != -1 && z5) {
                    r.f fVarK2 = cVar.k(objI2);
                    cVar.f(fVarK, cVar.k(objI), 0, 5);
                    cVar.f(fVarK2, fVarK, 0, 5);
                }
                this.f9002p0 = false;
                return;
            }
        }
        if (this.l0 != -1) {
            r.f fVarK3 = cVar.k(this.n0);
            cVar.e(fVarK3, cVar.k(objI), this.l0, 8);
            if (z5) {
                cVar.f(cVar.k(objI2), fVarK3, 0, 5);
                return;
            }
            return;
        }
        if (this.m0 != -1) {
            r.f fVarK4 = cVar.k(this.n0);
            r.f fVarK5 = cVar.k(objI2);
            cVar.e(fVarK4, fVarK5, -this.m0, 8);
            if (z5) {
                cVar.f(fVarK4, cVar.k(objI), 0, 5);
                cVar.f(fVarK5, fVarK4, 0, 5);
                return;
            }
            return;
        }
        if (this.k0 != -1.0f) {
            r.f fVarK6 = cVar.k(this.n0);
            r.f fVarK7 = cVar.k(objI2);
            float f = this.k0;
            C0765b c0765bL = cVar.l();
            c0765bL.f8721d.j(fVarK6, -1.0f);
            c0765bL.f8721d.j(fVarK7, f);
            cVar.c(c0765bL);
        }
    }

    @Override // s.C0827d
    public final boolean c() {
        return true;
    }

    @Override // s.C0827d
    public final C0826c i(int i5) {
        switch (Q0.f(i5)) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
            case 3:
                if (this.o0 == 1) {
                    return this.n0;
                }
                break;
            case 2:
            case 4:
                if (this.o0 == 0) {
                    return this.n0;
                }
                break;
        }
        throw new AssertionError(AbstractC0432c.l(i5));
    }

    @Override // s.C0827d
    public final boolean w() {
        return this.f9002p0;
    }

    @Override // s.C0827d
    public final boolean x() {
        return this.f9002p0;
    }
}
