package s;

import com.google.android.gms.internal.p000firebaseauthapi.a5;
import java.util.ArrayList;
import t.C0853b;

/* loaded from: classes.dex */
public final class g extends i {

    /* renamed from: A0, reason: collision with root package name */
    public int f8976A0;
    public int B0;

    /* renamed from: C0, reason: collision with root package name */
    public int f8977C0;

    /* renamed from: D0, reason: collision with root package name */
    public float f8978D0;

    /* renamed from: E0, reason: collision with root package name */
    public float f8979E0;

    /* renamed from: F0, reason: collision with root package name */
    public float f8980F0;

    /* renamed from: G0, reason: collision with root package name */
    public float f8981G0;

    /* renamed from: H0, reason: collision with root package name */
    public float f8982H0;

    /* renamed from: I0, reason: collision with root package name */
    public float f8983I0;

    /* renamed from: J0, reason: collision with root package name */
    public int f8984J0;

    /* renamed from: K0, reason: collision with root package name */
    public int f8985K0;

    /* renamed from: L0, reason: collision with root package name */
    public int f8986L0;

    /* renamed from: M0, reason: collision with root package name */
    public int f8987M0;

    /* renamed from: N0, reason: collision with root package name */
    public int f8988N0;
    public int O0;

    /* renamed from: P0, reason: collision with root package name */
    public int f8989P0;

    /* renamed from: Q0, reason: collision with root package name */
    public ArrayList f8990Q0;

    /* renamed from: R0, reason: collision with root package name */
    public C0827d[] f8991R0;

    /* renamed from: S0, reason: collision with root package name */
    public C0827d[] f8992S0;

    /* renamed from: T0, reason: collision with root package name */
    public int[] f8993T0;

    /* renamed from: U0, reason: collision with root package name */
    public C0827d[] f8994U0;

    /* renamed from: V0, reason: collision with root package name */
    public int f8995V0;
    public int m0;
    public int n0;
    public int o0;

    /* renamed from: p0, reason: collision with root package name */
    public int f8996p0;
    public int q0;
    public int r0;
    public boolean s0;
    public int t0;
    public int u0;

    /* renamed from: v0, reason: collision with root package name */
    public C0853b f8997v0;

    /* renamed from: w0, reason: collision with root package name */
    public a5 f8998w0;

    /* renamed from: x0, reason: collision with root package name */
    public int f8999x0;

    /* renamed from: y0, reason: collision with root package name */
    public int f9000y0;

    /* renamed from: z0, reason: collision with root package name */
    public int f9001z0;

    @Override // s.i
    public final void L() {
        for (int i5 = 0; i5 < this.l0; i5++) {
            C0827d c0827d = this.k0[i5];
            if (c0827d != null) {
                c0827d.f8950z = true;
            }
        }
    }

    public final int M(C0827d c0827d, int i5) {
        if (c0827d == null) {
            return 0;
        }
        int[] iArr = c0827d.f8935j0;
        if (iArr[1] == 3) {
            int i6 = c0827d.f8938m;
            if (i6 == 0) {
                return 0;
            }
            if (i6 == 2) {
                int i7 = (int) (c0827d.f8944t * i5);
                if (i7 != c0827d.k()) {
                    c0827d.f8929g = true;
                    O(iArr[0], c0827d.n(), 1, i7, c0827d);
                }
                return i7;
            }
            if (i6 == 1) {
                return c0827d.k();
            }
            if (i6 == 3) {
                return (int) ((c0827d.n() * c0827d.f8908Q) + 0.5f);
            }
        }
        return c0827d.k();
    }

    public final int N(C0827d c0827d, int i5) {
        if (c0827d == null) {
            return 0;
        }
        int[] iArr = c0827d.f8935j0;
        if (iArr[0] == 3) {
            int i6 = c0827d.f8937l;
            if (i6 == 0) {
                return 0;
            }
            if (i6 == 2) {
                int i7 = (int) (c0827d.f8941q * i5);
                if (i7 != c0827d.n()) {
                    c0827d.f8929g = true;
                    O(1, i7, iArr[1], c0827d.k(), c0827d);
                }
                return i7;
            }
            if (i6 == 1) {
                return c0827d.n();
            }
            if (i6 == 3) {
                return (int) ((c0827d.k() * c0827d.f8908Q) + 0.5f);
            }
        }
        return c0827d.n();
    }

    public final void O(int i5, int i6, int i7, int i8, C0827d c0827d) {
        a5 a5Var;
        C0827d c0827d2;
        while (true) {
            a5Var = this.f8998w0;
            if (a5Var != null || (c0827d2 = this.f8905N) == null) {
                break;
            } else {
                this.f8998w0 = ((e) c0827d2).n0;
            }
        }
        C0853b c0853b = this.f8997v0;
        c0853b.f9077a = i5;
        c0853b.f9078b = i7;
        c0853b.f9079c = i6;
        c0853b.f9080d = i8;
        a5Var.b(c0827d, c0853b);
        c0827d.H(c0853b.f9081e);
        c0827d.E(c0853b.f);
        c0827d.f8949y = c0853b.f9083h;
        c0827d.B(c0853b.f9082g);
    }

    @Override // s.C0827d
    public final void b(r.c cVar, boolean z4) {
        C0827d c0827d;
        super.b(cVar, z4);
        C0827d c0827d2 = this.f8905N;
        boolean z5 = c0827d2 != null ? ((e) c0827d2).o0 : false;
        int i5 = this.f8988N0;
        ArrayList arrayList = this.f8990Q0;
        if (i5 != 0) {
            if (i5 == 1) {
                int size = arrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    ((f) arrayList.get(i6)).b(i6, z5, i6 == size + (-1));
                    i6++;
                }
            } else if (i5 == 2 && this.f8993T0 != null && this.f8992S0 != null && this.f8991R0 != null) {
                for (int i7 = 0; i7 < this.f8995V0; i7++) {
                    this.f8994U0[i7].z();
                }
                int[] iArr = this.f8993T0;
                int i8 = iArr[0];
                int i9 = iArr[1];
                C0827d c0827d3 = null;
                for (int i10 = 0; i10 < i8; i10++) {
                    C0827d c0827d4 = this.f8992S0[z5 ? (i8 - i10) - 1 : i10];
                    if (c0827d4 != null && c0827d4.f8919a0 != 8) {
                        C0826c c0826c = c0827d4.f8895C;
                        if (i10 == 0) {
                            c0827d4.f(c0826c, this.f8895C, this.q0);
                            c0827d4.f8923c0 = this.f8999x0;
                            c0827d4.f8915X = this.f8978D0;
                        }
                        if (i10 == i8 - 1) {
                            c0827d4.f(c0827d4.E, this.E, this.r0);
                        }
                        if (i10 > 0) {
                            c0827d4.f(c0826c, c0827d3.E, this.f8984J0);
                            c0827d3.f(c0827d3.E, c0826c, 0);
                        }
                        c0827d3 = c0827d4;
                    }
                }
                for (int i11 = 0; i11 < i9; i11++) {
                    C0827d c0827d5 = this.f8991R0[i11];
                    if (c0827d5 != null && c0827d5.f8919a0 != 8) {
                        C0826c c0826c2 = c0827d5.f8896D;
                        if (i11 == 0) {
                            c0827d5.f(c0826c2, this.f8896D, this.m0);
                            c0827d5.f8925d0 = this.f9000y0;
                            c0827d5.f8916Y = this.f8979E0;
                        }
                        if (i11 == i9 - 1) {
                            c0827d5.f(c0827d5.f8897F, this.f8897F, this.n0);
                        }
                        if (i11 > 0) {
                            c0827d5.f(c0826c2, c0827d3.f8897F, this.f8985K0);
                            c0827d3.f(c0827d3.f8897F, c0826c2, 0);
                        }
                        c0827d3 = c0827d5;
                    }
                }
                for (int i12 = 0; i12 < i8; i12++) {
                    for (int i13 = 0; i13 < i9; i13++) {
                        int i14 = (i13 * i8) + i12;
                        if (this.f8989P0 == 1) {
                            i14 = (i12 * i9) + i13;
                        }
                        C0827d[] c0827dArr = this.f8994U0;
                        if (i14 < c0827dArr.length && (c0827d = c0827dArr[i14]) != null && c0827d.f8919a0 != 8) {
                            C0827d c0827d6 = this.f8992S0[i12];
                            C0827d c0827d7 = this.f8991R0[i13];
                            if (c0827d != c0827d6) {
                                c0827d.f(c0827d.f8895C, c0827d6.f8895C, 0);
                                c0827d.f(c0827d.E, c0827d6.E, 0);
                            }
                            if (c0827d != c0827d7) {
                                c0827d.f(c0827d.f8896D, c0827d7.f8896D, 0);
                                c0827d.f(c0827d.f8897F, c0827d7.f8897F, 0);
                            }
                        }
                    }
                }
            }
        } else if (arrayList.size() > 0) {
            ((f) arrayList.get(0)).b(0, z5, true);
        }
        this.s0 = false;
    }
}
