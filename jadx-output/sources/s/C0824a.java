package s;

import h0.AbstractC0432c;
import r.C0765b;

/* renamed from: s.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0824a extends i {
    public int m0;
    public boolean n0;
    public int o0;

    /* renamed from: p0, reason: collision with root package name */
    public boolean f8869p0;

    public final boolean M() {
        int i5;
        int i6;
        int i7;
        boolean z4 = true;
        int i8 = 0;
        while (true) {
            i5 = this.l0;
            if (i8 >= i5) {
                break;
            }
            C0827d c0827d = this.k0[i8];
            if ((this.n0 || c0827d.c()) && ((((i6 = this.m0) == 0 || i6 == 1) && !c0827d.w()) || (((i7 = this.m0) == 2 || i7 == 3) && !c0827d.x()))) {
                z4 = false;
            }
            i8++;
        }
        if (!z4 || i5 <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z5 = false;
        for (int i9 = 0; i9 < this.l0; i9++) {
            C0827d c0827d2 = this.k0[i9];
            if (this.n0 || c0827d2.c()) {
                if (!z5) {
                    int i10 = this.m0;
                    if (i10 == 0) {
                        iMax = c0827d2.i(2).d();
                    } else if (i10 == 1) {
                        iMax = c0827d2.i(4).d();
                    } else if (i10 == 2) {
                        iMax = c0827d2.i(3).d();
                    } else if (i10 == 3) {
                        iMax = c0827d2.i(5).d();
                    }
                    z5 = true;
                }
                int i11 = this.m0;
                if (i11 == 0) {
                    iMax = Math.min(iMax, c0827d2.i(2).d());
                } else if (i11 == 1) {
                    iMax = Math.max(iMax, c0827d2.i(4).d());
                } else if (i11 == 2) {
                    iMax = Math.min(iMax, c0827d2.i(3).d());
                } else if (i11 == 3) {
                    iMax = Math.max(iMax, c0827d2.i(5).d());
                }
            }
        }
        int i12 = iMax + this.o0;
        int i13 = this.m0;
        if (i13 == 0 || i13 == 1) {
            C(i12, i12);
        } else {
            D(i12, i12);
        }
        this.f8869p0 = true;
        return true;
    }

    public final int N() {
        int i5 = this.m0;
        if (i5 == 0 || i5 == 1) {
            return 0;
        }
        return (i5 == 2 || i5 == 3) ? 1 : -1;
    }

    @Override // s.C0827d
    public final void b(r.c cVar, boolean z4) {
        boolean z5;
        int i5;
        int i6;
        C0826c[] c0826cArr = this.f8902K;
        C0826c c0826c = this.f8895C;
        c0826cArr[0] = c0826c;
        C0826c c0826c2 = this.f8896D;
        int i7 = 2;
        c0826cArr[2] = c0826c2;
        C0826c c0826c3 = this.E;
        c0826cArr[1] = c0826c3;
        C0826c c0826c4 = this.f8897F;
        c0826cArr[3] = c0826c4;
        for (C0826c c0826c5 : c0826cArr) {
            c0826c5.f8892i = cVar.k(c0826c5);
        }
        int i8 = this.m0;
        if (i8 < 0 || i8 >= 4) {
            return;
        }
        C0826c c0826c6 = c0826cArr[i8];
        if (!this.f8869p0) {
            M();
        }
        if (this.f8869p0) {
            this.f8869p0 = false;
            int i9 = this.m0;
            if (i9 == 0 || i9 == 1) {
                cVar.d(c0826c.f8892i, this.f8910S);
                cVar.d(c0826c3.f8892i, this.f8910S);
                return;
            } else {
                if (i9 == 2 || i9 == 3) {
                    cVar.d(c0826c2.f8892i, this.f8911T);
                    cVar.d(c0826c4.f8892i, this.f8911T);
                    return;
                }
                return;
            }
        }
        for (int i10 = 0; i10 < this.l0; i10++) {
            C0827d c0827d = this.k0[i10];
            if ((this.n0 || c0827d.c()) && ((((i6 = this.m0) == 0 || i6 == 1) && c0827d.f8935j0[0] == 3 && c0827d.f8895C.f != null && c0827d.E.f != null) || ((i6 == 2 || i6 == 3) && c0827d.f8935j0[1] == 3 && c0827d.f8896D.f != null && c0827d.f8897F.f != null))) {
                z5 = true;
                break;
            }
        }
        z5 = false;
        boolean z6 = c0826c.g() || c0826c3.g();
        boolean z7 = c0826c2.g() || c0826c4.g();
        int i11 = (z5 || !(((i5 = this.m0) == 0 && z6) || ((i5 == 2 && z7) || ((i5 == 1 && z6) || (i5 == 3 && z7))))) ? 4 : 5;
        int i12 = 0;
        while (i12 < this.l0) {
            C0827d c0827d2 = this.k0[i12];
            if (this.n0 || c0827d2.c()) {
                r.f fVarK = cVar.k(c0827d2.f8902K[this.m0]);
                int i13 = this.m0;
                C0826c c0826c7 = c0827d2.f8902K[i13];
                c0826c7.f8892i = fVarK;
                C0826c c0826c8 = c0826c7.f;
                int i14 = (c0826c8 == null || c0826c8.f8888d != this) ? 0 : c0826c7.f8890g;
                if (i13 == 0 || i13 == i7) {
                    r.f fVar = c0826c6.f8892i;
                    int i15 = this.o0 - i14;
                    C0765b c0765bL = cVar.l();
                    r.f fVarM = cVar.m();
                    fVarM.f8746d = 0;
                    c0765bL.c(fVar, fVarK, fVarM, i15);
                    cVar.c(c0765bL);
                } else {
                    r.f fVar2 = c0826c6.f8892i;
                    int i16 = this.o0 + i14;
                    C0765b c0765bL2 = cVar.l();
                    r.f fVarM2 = cVar.m();
                    fVarM2.f8746d = 0;
                    c0765bL2.b(fVar2, fVarK, fVarM2, i16);
                    cVar.c(c0765bL2);
                }
                cVar.e(c0826c6.f8892i, fVarK, this.o0 + i14, i11);
            }
            i12++;
            i7 = 2;
        }
        int i17 = this.m0;
        if (i17 == 0) {
            cVar.e(c0826c3.f8892i, c0826c.f8892i, 0, 8);
            cVar.e(c0826c.f8892i, this.f8905N.E.f8892i, 0, 4);
            cVar.e(c0826c.f8892i, this.f8905N.f8895C.f8892i, 0, 0);
            return;
        }
        if (i17 == 1) {
            cVar.e(c0826c.f8892i, c0826c3.f8892i, 0, 8);
            cVar.e(c0826c.f8892i, this.f8905N.f8895C.f8892i, 0, 4);
            cVar.e(c0826c.f8892i, this.f8905N.E.f8892i, 0, 0);
        } else if (i17 == 2) {
            cVar.e(c0826c4.f8892i, c0826c2.f8892i, 0, 8);
            cVar.e(c0826c2.f8892i, this.f8905N.f8897F.f8892i, 0, 4);
            cVar.e(c0826c2.f8892i, this.f8905N.f8896D.f8892i, 0, 0);
        } else if (i17 == 3) {
            cVar.e(c0826c2.f8892i, c0826c4.f8892i, 0, 8);
            cVar.e(c0826c2.f8892i, this.f8905N.f8896D.f8892i, 0, 4);
            cVar.e(c0826c2.f8892i, this.f8905N.f8897F.f8892i, 0, 0);
        }
    }

    @Override // s.C0827d
    public final boolean c() {
        return true;
    }

    @Override // s.C0827d
    public final String toString() {
        String strW = B.f.w(new StringBuilder("[Barrier] "), this.f8921b0, " {");
        for (int i5 = 0; i5 < this.l0; i5++) {
            C0827d c0827d = this.k0[i5];
            if (i5 > 0) {
                strW = AbstractC0432c.h(strW, ", ");
            }
            strW = strW + c0827d.f8921b0;
        }
        return AbstractC0432c.h(strW, "}");
    }

    @Override // s.C0827d
    public final boolean w() {
        return this.f8869p0;
    }

    @Override // s.C0827d
    public final boolean x() {
        return this.f8869p0;
    }
}
