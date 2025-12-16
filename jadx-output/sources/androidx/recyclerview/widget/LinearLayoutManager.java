package androidx.recyclerview.widget;

import Z0.j;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.PathInterpolator;
import androidx.emoji2.text.f;
import com.google.android.gms.internal.p000firebaseauthapi.b5;
import com.samsung.android.knox.ex.peripheral.PeripheralConstants;
import j0.C0546s;
import j0.C0547t;
import j0.C0548u;
import j0.C0549v;
import j0.I;
import j0.J;
import j0.K;
import j0.P;
import j0.W;
import j0.X;
import j0.b0;
import j0.r;
import java.util.List;

/* loaded from: classes.dex */
public class LinearLayoutManager extends J implements W {

    /* renamed from: A, reason: collision with root package name */
    public final r f4755A;

    /* renamed from: B, reason: collision with root package name */
    public final C0546s f4756B;

    /* renamed from: C, reason: collision with root package name */
    public final int f4757C;

    /* renamed from: D, reason: collision with root package name */
    public final int[] f4758D;

    /* renamed from: q, reason: collision with root package name */
    public C0547t f4760q;

    /* renamed from: r, reason: collision with root package name */
    public f f4761r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f4762s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f4763t;

    /* renamed from: z, reason: collision with root package name */
    public C0548u f4769z;

    /* renamed from: p, reason: collision with root package name */
    public int f4759p = 1;

    /* renamed from: u, reason: collision with root package name */
    public boolean f4764u = false;

    /* renamed from: v, reason: collision with root package name */
    public boolean f4765v = false;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f4766w = true;

    /* renamed from: x, reason: collision with root package name */
    public int f4767x = -1;

    /* renamed from: y, reason: collision with root package name */
    public int f4768y = Integer.MIN_VALUE;

    public LinearLayoutManager(int i5) {
        this.f4763t = false;
        new PathInterpolator(0.22f, 0.5f, 0.0f, 1.0f);
        this.f4769z = null;
        this.f4755A = new r();
        this.f4756B = new C0546s();
        this.f4757C = 2;
        this.f4758D = new int[2];
        c1(i5);
        c(null);
        if (this.f4763t) {
            this.f4763t = false;
            n0();
        }
    }

    @Override // j0.J
    public boolean B0() {
        return this.f4769z == null && this.f4762s == this.f4765v;
    }

    public void C0(X x4, int[] iArr) {
        int i5;
        int iL = x4.f7378a != -1 ? this.f4761r.l() : 0;
        if (this.f4760q.f == -1) {
            i5 = 0;
        } else {
            i5 = iL;
            iL = 0;
        }
        iArr[0] = iL;
        iArr[1] = i5;
    }

    public void D0(X x4, C0547t c0547t, b5 b5Var) {
        int i5 = c0547t.f7569d;
        if (i5 < 0 || i5 >= x4.b()) {
            return;
        }
        b5Var.a(i5, Math.max(0, c0547t.f7571g));
    }

    public final int E0(X x4) {
        if (v() == 0) {
            return 0;
        }
        I0();
        f fVar = this.f4761r;
        boolean z4 = !this.f4766w;
        return j.r(x4, fVar, L0(z4), K0(z4), this, this.f4766w);
    }

    public final int F0(X x4) {
        if (v() == 0) {
            return 0;
        }
        I0();
        f fVar = this.f4761r;
        boolean z4 = !this.f4766w;
        return j.s(x4, fVar, L0(z4), K0(z4), this, this.f4766w, this.f4764u);
    }

    public final int G0(X x4) {
        if (v() == 0) {
            return 0;
        }
        I0();
        f fVar = this.f4761r;
        boolean z4 = !this.f4766w;
        return j.t(x4, fVar, L0(z4), K0(z4), this, this.f4766w);
    }

    public final int H0(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 17 ? i5 != 33 ? i5 != 66 ? (i5 == 130 && this.f4759p == 1) ? 1 : Integer.MIN_VALUE : this.f4759p == 0 ? 1 : Integer.MIN_VALUE : this.f4759p == 1 ? -1 : Integer.MIN_VALUE : this.f4759p == 0 ? -1 : Integer.MIN_VALUE : (this.f4759p != 1 && V0()) ? -1 : 1 : (this.f4759p != 1 && V0()) ? 1 : -1;
    }

    public final void I0() {
        if (this.f4760q == null) {
            C0547t c0547t = new C0547t();
            c0547t.f7566a = true;
            c0547t.f7572h = 0;
            c0547t.f7573i = 0;
            c0547t.f7575k = null;
            this.f4760q = c0547t;
        }
    }

    @Override // j0.J
    public final boolean J() {
        return true;
    }

    public final int J0(P p4, C0547t c0547t, X x4, boolean z4) {
        int i5;
        int i6 = c0547t.f7568c;
        int i7 = c0547t.f7571g;
        if (i7 != Integer.MIN_VALUE) {
            if (i6 < 0) {
                c0547t.f7571g = i7 + i6;
            }
            Y0(p4, c0547t);
        }
        int i8 = c0547t.f7568c + c0547t.f7572h;
        while (true) {
            if ((!c0547t.f7576l && i8 <= 0) || (i5 = c0547t.f7569d) < 0 || i5 >= x4.b()) {
                break;
            }
            C0546s c0546s = this.f4756B;
            c0546s.f7562a = 0;
            c0546s.f7563b = false;
            c0546s.f7564c = false;
            c0546s.f7565d = false;
            W0(p4, x4, c0547t, c0546s);
            if (!c0546s.f7563b) {
                int i9 = c0547t.f7567b;
                int i10 = c0546s.f7562a;
                c0547t.f7567b = (c0547t.f * i10) + i9;
                if (!c0546s.f7564c || c0547t.f7575k != null || !x4.f7383g) {
                    c0547t.f7568c -= i10;
                    i8 -= i10;
                }
                int i11 = c0547t.f7571g;
                if (i11 != Integer.MIN_VALUE) {
                    int i12 = i11 + i10;
                    c0547t.f7571g = i12;
                    int i13 = c0547t.f7568c;
                    if (i13 < 0) {
                        c0547t.f7571g = i12 + i13;
                    }
                    Y0(p4, c0547t);
                }
                if (z4 && c0546s.f7565d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i6 - c0547t.f7568c;
    }

    public final View K0(boolean z4) {
        return this.f4764u ? P0(0, z4, v()) : P0(v() - 1, z4, -1);
    }

    public final View L0(boolean z4) {
        return this.f4764u ? P0(v() - 1, z4, -1) : P0(0, z4, v());
    }

    public final int M0() {
        View viewP0 = P0(0, false, v());
        if (viewP0 == null) {
            return -1;
        }
        return J.F(viewP0);
    }

    public final int N0() {
        View viewP0 = P0(v() - 1, false, -1);
        if (viewP0 == null) {
            return -1;
        }
        return J.F(viewP0);
    }

    public final View O0(int i5, int i6) {
        int i7;
        int i8;
        I0();
        if (i6 <= i5 && i6 >= i5) {
            return u(i5);
        }
        if (this.f4761r.e(u(i5)) < this.f4761r.k()) {
            i7 = 16644;
            i8 = 16388;
        } else {
            i7 = 4161;
            i8 = PeripheralConstants.ErrorCode.ERROR_PERIPHERAL_NOT_FOUND;
        }
        return this.f4759p == 0 ? this.f7341c.o(i5, i6, i7, i8) : this.f7342d.o(i5, i6, i7, i8);
    }

    public final View P0(int i5, boolean z4, int i6) {
        I0();
        int i7 = z4 ? 24579 : 320;
        return this.f4759p == 0 ? this.f7341c.o(i5, i6, i7, 320) : this.f7342d.o(i5, i6, i7, 320);
    }

    @Override // j0.J
    public final void Q(RecyclerView recyclerView) {
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View Q0(P p4, X x4, boolean z4, boolean z5) {
        int i5;
        int i6;
        int i7;
        I0();
        int iMax = Math.max(v(), 0);
        if (z5) {
            i6 = iMax - 1;
            i5 = -1;
            i7 = -1;
        } else {
            i5 = iMax;
            i6 = 0;
            i7 = 1;
        }
        int iB = x4.b();
        int iK = this.f4761r.k();
        int iG = this.f4761r.g();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i6 != i5) {
            View viewU = u(i6);
            int iF = J.F(viewU);
            if (iF >= 0 && iF < iB) {
                int iE = this.f4761r.e(viewU);
                int iB2 = this.f4761r.b(viewU);
                if (!((K) viewU.getLayoutParams()).f7352a.j()) {
                    boolean z6 = iB2 <= iK && iE < iK;
                    boolean z7 = iE >= iG && iB2 > iG;
                    if (!z6 && !z7) {
                        return viewU;
                    }
                    if (z4) {
                        if (z7) {
                            view2 = viewU;
                        } else if (view == null) {
                            view = viewU;
                        }
                    } else if (!z6) {
                        if (view == null) {
                        }
                    }
                } else if (view3 == null) {
                    view3 = viewU;
                }
            }
            i6 += i7;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    @Override // j0.J
    public View R(View view, int i5, P p4, X x4) {
        int iH0;
        a1();
        if (v() == 0 || (iH0 = H0(i5)) == Integer.MIN_VALUE) {
            return null;
        }
        I0();
        e1(iH0, (int) (this.f4761r.l() * 0.33333334f), false, x4);
        C0547t c0547t = this.f4760q;
        c0547t.f7571g = Integer.MIN_VALUE;
        c0547t.f7566a = false;
        J0(p4, c0547t, x4, true);
        View viewO0 = iH0 == -1 ? this.f4764u ? O0(v() - 1, -1) : O0(0, v()) : this.f4764u ? O0(0, v()) : O0(v() - 1, -1);
        View viewU0 = iH0 == -1 ? U0() : T0();
        if (!viewU0.hasFocusable()) {
            return viewO0;
        }
        if (viewO0 == null) {
            return null;
        }
        return viewU0;
    }

    public final int R0(int i5, P p4, X x4, boolean z4) {
        int iG;
        int iG2 = this.f4761r.g() - i5;
        if (iG2 <= 0) {
            return 0;
        }
        int i6 = -b1(-iG2, p4, x4);
        int i7 = i5 + i6;
        if (!z4 || (iG = this.f4761r.g() - i7) <= 0) {
            return i6;
        }
        this.f4761r.p(iG);
        return iG + i6;
    }

    @Override // j0.J
    public final void S(AccessibilityEvent accessibilityEvent) {
        super.S(accessibilityEvent);
        if (v() > 0) {
            accessibilityEvent.setFromIndex(M0());
            accessibilityEvent.setToIndex(N0());
        }
    }

    public final int S0(int i5, P p4, X x4, boolean z4) {
        int iK;
        int iK2 = i5 - this.f4761r.k();
        if (iK2 <= 0) {
            return 0;
        }
        int i6 = -b1(iK2, p4, x4);
        int i7 = i5 + i6;
        if (!z4 || (iK = i7 - this.f4761r.k()) <= 0) {
            return i6;
        }
        this.f4761r.p(-iK);
        return i6 - iK;
    }

    public final View T0() {
        return u(this.f4764u ? 0 : v() - 1);
    }

    public final View U0() {
        return u(this.f4764u ? v() - 1 : 0);
    }

    public final boolean V0() {
        return A() == 1;
    }

    public void W0(P p4, X x4, C0547t c0547t, C0546s c0546s) {
        int iE;
        int i5;
        int iD;
        int i6;
        int iD2;
        View viewB = c0547t.b(p4);
        if (viewB == null) {
            c0546s.f7563b = true;
            return;
        }
        K k5 = (K) viewB.getLayoutParams();
        if (c0547t.f7575k == null) {
            if (this.f4764u == (c0547t.f == -1)) {
                b(viewB, -1, false);
            } else {
                b(viewB, 0, false);
            }
        } else {
            if (this.f4764u == (c0547t.f == -1)) {
                b(viewB, -1, true);
            } else {
                b(viewB, 0, true);
            }
        }
        K k6 = (K) viewB.getLayoutParams();
        Rect rectX = this.f7340b.X(viewB);
        int i7 = rectX.left + rectX.right;
        int i8 = rectX.top + rectX.bottom;
        int iW = J.w(d(), this.n, this.f7349l, D() + C() + ((ViewGroup.MarginLayoutParams) k6).leftMargin + ((ViewGroup.MarginLayoutParams) k6).rightMargin + i7, ((ViewGroup.MarginLayoutParams) k6).width);
        int iW2 = J.w(e(), this.f7351o, this.f7350m, B() + E() + ((ViewGroup.MarginLayoutParams) k6).topMargin + ((ViewGroup.MarginLayoutParams) k6).bottomMargin + i8, ((ViewGroup.MarginLayoutParams) k6).height);
        if (w0(viewB, iW, iW2, k6)) {
            viewB.measure(iW, iW2);
        }
        c0546s.f7562a = this.f4761r.c(viewB);
        if (this.f4759p == 1) {
            if (V0()) {
                iD = this.n - D();
                iD2 = iD - this.f4761r.d(viewB);
            } else {
                int iC = C();
                iD = this.f4761r.d(viewB) + iC;
                iD2 = iC;
            }
            if (c0547t.f == -1) {
                i6 = c0547t.f7567b;
                iE = i6 - c0546s.f7562a;
            } else {
                iE = c0547t.f7567b;
                i6 = c0546s.f7562a + iE;
            }
        } else {
            iE = E();
            int iD3 = this.f4761r.d(viewB) + iE;
            if (c0547t.f == -1) {
                iD = c0547t.f7567b;
                i5 = iD - c0546s.f7562a;
            } else {
                i5 = c0547t.f7567b;
                iD = c0546s.f7562a + i5;
            }
            int i9 = i5;
            i6 = iD3;
            iD2 = i9;
        }
        J.L(viewB, iD2, iE, iD, i6);
        if (k5.f7352a.j() || k5.f7352a.m()) {
            c0546s.f7564c = true;
        }
        c0546s.f7565d = viewB.hasFocusable();
    }

    public void X0(P p4, X x4, r rVar, int i5) {
    }

    public final void Y0(P p4, C0547t c0547t) {
        if (!c0547t.f7566a || c0547t.f7576l) {
            return;
        }
        int i5 = c0547t.f7571g;
        int i6 = c0547t.f7573i;
        if (c0547t.f == -1) {
            int iV = v();
            if (i5 < 0) {
                return;
            }
            int iF = (this.f4761r.f() - i5) + i6;
            if (this.f4764u) {
                for (int i7 = 0; i7 < iV; i7++) {
                    View viewU = u(i7);
                    if (this.f4761r.e(viewU) < iF || this.f4761r.o(viewU) < iF) {
                        Z0(p4, 0, i7);
                        return;
                    }
                }
                return;
            }
            int i8 = iV - 1;
            for (int i9 = i8; i9 >= 0; i9--) {
                View viewU2 = u(i9);
                if (this.f4761r.e(viewU2) < iF || this.f4761r.o(viewU2) < iF) {
                    Z0(p4, i8, i9);
                    return;
                }
            }
            return;
        }
        if (i5 < 0) {
            return;
        }
        int i10 = i5 - i6;
        int iV2 = v();
        if (!this.f4764u) {
            for (int i11 = 0; i11 < iV2; i11++) {
                View viewU3 = u(i11);
                if (this.f4761r.b(viewU3) > i10 || this.f4761r.n(viewU3) > i10) {
                    Z0(p4, 0, i11);
                    return;
                }
            }
            return;
        }
        int i12 = iV2 - 1;
        for (int i13 = i12; i13 >= 0; i13--) {
            View viewU4 = u(i13);
            if (this.f4761r.b(viewU4) > i10 || this.f4761r.n(viewU4) > i10) {
                Z0(p4, i12, i13);
                return;
            }
        }
    }

    public final void Z0(P p4, int i5, int i6) {
        if (i5 == i6) {
            return;
        }
        if (i6 <= i5) {
            while (i5 > i6) {
                View viewU = u(i5);
                l0(i5);
                p4.h(viewU);
                i5--;
            }
            return;
        }
        for (int i7 = i6 - 1; i7 >= i5; i7--) {
            View viewU2 = u(i7);
            l0(i7);
            p4.h(viewU2);
        }
    }

    @Override // j0.W
    public final PointF a(int i5) {
        if (v() == 0) {
            return null;
        }
        int i6 = (i5 < J.F(u(0))) != this.f4764u ? -1 : 1;
        return this.f4759p == 0 ? new PointF(i6, 0.0f) : new PointF(0.0f, i6);
    }

    public final void a1() {
        if (this.f4759p == 1 || !V0()) {
            this.f4764u = this.f4763t;
        } else {
            this.f4764u = !this.f4763t;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0188  */
    @Override // j0.J
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b0(P p4, X x4) {
        View focusedChild;
        View focusedChild2;
        View viewQ0;
        int i5;
        int i6;
        int i7;
        List list;
        int i8;
        int i9;
        int iR0;
        int i10;
        View viewQ;
        int iE;
        int iG;
        int i11;
        int i12 = -1;
        if (!(this.f4769z == null && this.f4767x == -1) && x4.b() == 0) {
            i0(p4);
            return;
        }
        C0548u c0548u = this.f4769z;
        if (c0548u != null && (i11 = c0548u.f7577c) >= 0) {
            this.f4767x = i11;
        }
        I0();
        this.f4760q.f7566a = false;
        a1();
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f7339a.l(focusedChild)) {
            focusedChild = null;
        }
        r rVar = this.f4755A;
        if (!rVar.f7561e || this.f4767x != -1 || this.f4769z != null) {
            rVar.d();
            rVar.f7560d = this.f4764u ^ this.f4765v;
            if (x4.f7383g || (i5 = this.f4767x) == -1) {
                if (v() != 0) {
                    RecyclerView recyclerView2 = this.f7340b;
                    if (recyclerView2 == null || (focusedChild2 = recyclerView2.getFocusedChild()) == null || this.f7339a.l(focusedChild2)) {
                        focusedChild2 = null;
                    }
                    if (focusedChild2 != null) {
                        K k5 = (K) focusedChild2.getLayoutParams();
                        if (k5.f7352a.j() || k5.f7352a.c() < 0 || k5.f7352a.c() >= x4.b()) {
                            boolean z4 = this.f4762s;
                            boolean z5 = this.f4765v;
                            if (z4 == z5 && (viewQ0 = Q0(p4, x4, rVar.f7560d, z5)) != null) {
                                rVar.b(J.F(viewQ0), viewQ0);
                                if (!x4.f7383g && B0()) {
                                    int iE2 = this.f4761r.e(viewQ0);
                                    int iB = this.f4761r.b(viewQ0);
                                    int iK = this.f4761r.k();
                                    int iG2 = this.f4761r.g();
                                    boolean z6 = iB <= iK && iE2 < iK;
                                    boolean z7 = iE2 >= iG2 && iB > iG2;
                                    if (z6 || z7) {
                                        if (rVar.f7560d) {
                                            iK = iG2;
                                        }
                                        rVar.f7559c = iK;
                                    }
                                }
                            } else {
                                rVar.a();
                                rVar.f7558b = this.f4765v ? x4.b() - 1 : 0;
                            }
                        } else {
                            rVar.c(J.F(focusedChild2), focusedChild2);
                        }
                        rVar.f7561e = true;
                    }
                }
            } else if (i5 < 0 || i5 >= x4.b()) {
                this.f4767x = -1;
                this.f4768y = Integer.MIN_VALUE;
                if (v() != 0) {
                }
            } else {
                int i13 = this.f4767x;
                rVar.f7558b = i13;
                C0548u c0548u2 = this.f4769z;
                if (c0548u2 != null && c0548u2.f7577c >= 0) {
                    boolean z8 = c0548u2.f7579e;
                    rVar.f7560d = z8;
                    if (z8) {
                        rVar.f7559c = this.f4761r.g() - this.f4769z.f7578d;
                    } else {
                        rVar.f7559c = this.f4761r.k() + this.f4769z.f7578d;
                    }
                } else if (this.f4768y == Integer.MIN_VALUE) {
                    View viewQ2 = q(i13);
                    if (viewQ2 == null) {
                        if (v() > 0) {
                            rVar.f7560d = (this.f4767x < J.F(u(0))) == this.f4764u;
                        }
                        rVar.a();
                    } else if (this.f4761r.c(viewQ2) > this.f4761r.l()) {
                        rVar.a();
                    } else if (this.f4761r.e(viewQ2) - this.f4761r.k() < 0) {
                        rVar.f7559c = this.f4761r.k();
                        rVar.f7560d = false;
                    } else if (this.f4761r.g() - this.f4761r.b(viewQ2) < 0) {
                        rVar.f7559c = this.f4761r.g();
                        rVar.f7560d = true;
                    } else {
                        rVar.f7559c = rVar.f7560d ? this.f4761r.m() + this.f4761r.b(viewQ2) : this.f4761r.e(viewQ2);
                    }
                } else {
                    boolean z9 = this.f4764u;
                    rVar.f7560d = z9;
                    if (z9) {
                        rVar.f7559c = this.f4761r.g() - this.f4768y;
                    } else {
                        rVar.f7559c = this.f4761r.k() + this.f4768y;
                    }
                }
                rVar.f7561e = true;
            }
        } else if (focusedChild != null && (this.f4761r.e(focusedChild) >= this.f4761r.g() || this.f4761r.b(focusedChild) <= this.f4761r.k())) {
            rVar.c(J.F(focusedChild), focusedChild);
        }
        C0547t c0547t = this.f4760q;
        c0547t.f = c0547t.f7574j >= 0 ? 1 : -1;
        int[] iArr = this.f4758D;
        iArr[0] = 0;
        iArr[1] = 0;
        C0(x4, iArr);
        int iK2 = this.f4761r.k() + Math.max(0, iArr[0]);
        int iH = this.f4761r.h() + Math.max(0, iArr[1]);
        if (x4.f7383g && (i10 = this.f4767x) != -1 && this.f4768y != Integer.MIN_VALUE && (viewQ = q(i10)) != null) {
            if (this.f4764u) {
                iG = this.f4761r.g() - this.f4761r.b(viewQ);
                iE = this.f4768y;
            } else {
                iE = this.f4761r.e(viewQ) - this.f4761r.k();
                iG = this.f4768y;
            }
            int i14 = iG - iE;
            if (i14 > 0) {
                iK2 += i14;
            } else {
                iH -= i14;
            }
        }
        if (!rVar.f7560d ? !this.f4764u : this.f4764u) {
            i12 = 1;
        }
        X0(p4, x4, rVar, i12);
        p(p4);
        this.f4760q.f7576l = this.f4761r.i() == 0 && this.f4761r.f() == 0;
        this.f4760q.getClass();
        this.f4760q.f7573i = 0;
        if (rVar.f7560d) {
            g1(rVar.f7558b, rVar.f7559c);
            C0547t c0547t2 = this.f4760q;
            c0547t2.f7572h = iK2;
            J0(p4, c0547t2, x4, false);
            C0547t c0547t3 = this.f4760q;
            i7 = c0547t3.f7567b;
            int i15 = c0547t3.f7569d;
            int i16 = c0547t3.f7568c;
            if (i16 > 0) {
                iH += i16;
            }
            f1(rVar.f7558b, rVar.f7559c);
            C0547t c0547t4 = this.f4760q;
            c0547t4.f7572h = iH;
            c0547t4.f7569d += c0547t4.f7570e;
            J0(p4, c0547t4, x4, false);
            C0547t c0547t5 = this.f4760q;
            i6 = c0547t5.f7567b;
            int i17 = c0547t5.f7568c;
            if (i17 > 0) {
                g1(i15, i7);
                C0547t c0547t6 = this.f4760q;
                c0547t6.f7572h = i17;
                J0(p4, c0547t6, x4, false);
                i7 = this.f4760q.f7567b;
            }
        } else {
            f1(rVar.f7558b, rVar.f7559c);
            C0547t c0547t7 = this.f4760q;
            c0547t7.f7572h = iH;
            J0(p4, c0547t7, x4, false);
            C0547t c0547t8 = this.f4760q;
            i6 = c0547t8.f7567b;
            int i18 = c0547t8.f7569d;
            int i19 = c0547t8.f7568c;
            if (i19 > 0) {
                iK2 += i19;
            }
            g1(rVar.f7558b, rVar.f7559c);
            C0547t c0547t9 = this.f4760q;
            c0547t9.f7572h = iK2;
            c0547t9.f7569d += c0547t9.f7570e;
            J0(p4, c0547t9, x4, false);
            C0547t c0547t10 = this.f4760q;
            int i20 = c0547t10.f7567b;
            int i21 = c0547t10.f7568c;
            if (i21 > 0) {
                f1(i18, i6);
                C0547t c0547t11 = this.f4760q;
                c0547t11.f7572h = i21;
                J0(p4, c0547t11, x4, false);
                i6 = this.f4760q.f7567b;
            }
            i7 = i20;
        }
        if (v() > 0) {
            if (this.f4764u ^ this.f4765v) {
                int iR02 = R0(i6, p4, x4, true);
                i8 = i7 + iR02;
                i9 = i6 + iR02;
                iR0 = S0(i8, p4, x4, false);
            } else {
                int iS0 = S0(i7, p4, x4, true);
                i8 = i7 + iS0;
                i9 = i6 + iS0;
                iR0 = R0(i9, p4, x4, false);
            }
            i7 = i8 + iR0;
            i6 = i9 + iR0;
        }
        if (x4.f7387k && v() != 0 && !x4.f7383g && B0()) {
            List list2 = p4.f7366d;
            int size = list2.size();
            int iF = J.F(u(0));
            int iC = 0;
            int iC2 = 0;
            for (int i22 = 0; i22 < size; i22++) {
                b0 b0Var = (b0) list2.get(i22);
                if (!b0Var.j()) {
                    boolean z10 = b0Var.c() < iF;
                    boolean z11 = this.f4764u;
                    View view = b0Var.f7406a;
                    if (z10 != z11) {
                        iC += this.f4761r.c(view);
                    } else {
                        iC2 += this.f4761r.c(view);
                    }
                }
            }
            this.f4760q.f7575k = list2;
            if (iC > 0) {
                g1(J.F(U0()), i7);
                C0547t c0547t12 = this.f4760q;
                c0547t12.f7572h = iC;
                c0547t12.f7568c = 0;
                c0547t12.a(null);
                J0(p4, this.f4760q, x4, false);
            }
            if (iC2 > 0) {
                f1(J.F(T0()), i6);
                C0547t c0547t13 = this.f4760q;
                c0547t13.f7572h = iC2;
                c0547t13.f7568c = 0;
                list = null;
                c0547t13.a(null);
                J0(p4, this.f4760q, x4, false);
            } else {
                list = null;
            }
            this.f4760q.f7575k = list;
        }
        if (x4.f7383g) {
            rVar.d();
        } else {
            f fVar = this.f4761r;
            fVar.f3691a = fVar.l();
        }
        this.f4762s = this.f4765v;
    }

    public final int b1(int i5, P p4, X x4) {
        if (v() == 0 || i5 == 0) {
            return 0;
        }
        I0();
        this.f4760q.f7566a = true;
        int i6 = i5 > 0 ? 1 : -1;
        int iAbs = Math.abs(i5);
        e1(i6, iAbs, true, x4);
        C0547t c0547t = this.f4760q;
        int iJ0 = J0(p4, c0547t, x4, false) + c0547t.f7571g;
        if (iJ0 < 0) {
            return 0;
        }
        if (iAbs > iJ0) {
            i5 = i6 * iJ0;
        }
        this.f4761r.p(-i5);
        this.f4760q.f7574j = i5;
        if (x4.f7381d != 2) {
            this.f7340b.getClass();
        }
        return i5;
    }

    @Override // j0.J
    public final void c(String str) {
        if (this.f4769z == null) {
            super.c(str);
        }
    }

    @Override // j0.J
    public void c0(X x4) {
        this.f4769z = null;
        this.f4767x = -1;
        this.f4768y = Integer.MIN_VALUE;
        this.f4755A.d();
    }

    public final void c1(int i5) {
        if (i5 != 0 && i5 != 1) {
            throw new IllegalArgumentException(B.f.t(i5, "invalid orientation:"));
        }
        c(null);
        if (i5 != this.f4759p || this.f4761r == null) {
            f fVarA = f.a(this, i5);
            this.f4761r = fVarA;
            this.f4755A.f7557a = fVarA;
            this.f4759p = i5;
            n0();
        }
    }

    @Override // j0.J
    public final boolean d() {
        return this.f4759p == 0;
    }

    @Override // j0.J
    public final void d0(Parcelable parcelable) {
        if (parcelable instanceof C0548u) {
            C0548u c0548u = (C0548u) parcelable;
            this.f4769z = c0548u;
            if (this.f4767x != -1) {
                c0548u.f7577c = -1;
            }
            n0();
        }
    }

    public void d1(boolean z4) {
        c(null);
        if (this.f4765v == z4) {
            return;
        }
        this.f4765v = z4;
        n0();
    }

    @Override // j0.J
    public final boolean e() {
        return this.f4759p == 1;
    }

    @Override // j0.J
    public final Parcelable e0() {
        C0548u c0548u = this.f4769z;
        if (c0548u != null) {
            C0548u c0548u2 = new C0548u();
            c0548u2.f7577c = c0548u.f7577c;
            c0548u2.f7578d = c0548u.f7578d;
            c0548u2.f7579e = c0548u.f7579e;
            return c0548u2;
        }
        C0548u c0548u3 = new C0548u();
        if (v() > 0) {
            I0();
            boolean z4 = this.f4762s ^ this.f4764u;
            c0548u3.f7579e = z4;
            if (z4) {
                View viewT0 = T0();
                c0548u3.f7578d = this.f4761r.g() - this.f4761r.b(viewT0);
                c0548u3.f7577c = J.F(viewT0);
            } else {
                View viewU0 = U0();
                c0548u3.f7577c = J.F(viewU0);
                c0548u3.f7578d = this.f4761r.e(viewU0) - this.f4761r.k();
            }
        } else {
            c0548u3.f7577c = -1;
        }
        return c0548u3;
    }

    public final void e1(int i5, int i6, boolean z4, X x4) {
        int iK;
        this.f4760q.f7576l = this.f4761r.i() == 0 && this.f4761r.f() == 0;
        this.f4760q.f = i5;
        int[] iArr = this.f4758D;
        iArr[0] = 0;
        iArr[1] = 0;
        C0(x4, iArr);
        int iMax = Math.max(0, iArr[0]);
        int iMax2 = Math.max(0, iArr[1]);
        boolean z5 = i5 == 1;
        C0547t c0547t = this.f4760q;
        int i7 = z5 ? iMax2 : iMax;
        c0547t.f7572h = i7;
        if (!z5) {
            iMax = iMax2;
        }
        c0547t.f7573i = iMax;
        if (z5) {
            c0547t.f7572h = this.f4761r.h() + i7;
            View viewT0 = T0();
            C0547t c0547t2 = this.f4760q;
            c0547t2.f7570e = this.f4764u ? -1 : 1;
            int iF = J.F(viewT0);
            C0547t c0547t3 = this.f4760q;
            c0547t2.f7569d = iF + c0547t3.f7570e;
            c0547t3.f7567b = this.f4761r.b(viewT0);
            iK = this.f4761r.b(viewT0) - this.f4761r.g();
        } else {
            View viewU0 = U0();
            C0547t c0547t4 = this.f4760q;
            c0547t4.f7572h = this.f4761r.k() + c0547t4.f7572h;
            C0547t c0547t5 = this.f4760q;
            c0547t5.f7570e = this.f4764u ? 1 : -1;
            int iF2 = J.F(viewU0);
            C0547t c0547t6 = this.f4760q;
            c0547t5.f7569d = iF2 + c0547t6.f7570e;
            c0547t6.f7567b = this.f4761r.e(viewU0);
            iK = (-this.f4761r.e(viewU0)) + this.f4761r.k();
        }
        C0547t c0547t7 = this.f4760q;
        c0547t7.f7568c = i6;
        if (z4) {
            c0547t7.f7568c = i6 - iK;
        }
        c0547t7.f7571g = iK;
    }

    public final void f1(int i5, int i6) {
        this.f4760q.f7568c = this.f4761r.g() - i6;
        C0547t c0547t = this.f4760q;
        c0547t.f7570e = this.f4764u ? -1 : 1;
        c0547t.f7569d = i5;
        c0547t.f = 1;
        c0547t.f7567b = i6;
        c0547t.f7571g = Integer.MIN_VALUE;
    }

    public final void g1(int i5, int i6) {
        this.f4760q.f7568c = i6 - this.f4761r.k();
        C0547t c0547t = this.f4760q;
        c0547t.f7569d = i5;
        c0547t.f7570e = this.f4764u ? 1 : -1;
        c0547t.f = -1;
        c0547t.f7567b = i6;
        c0547t.f7571g = Integer.MIN_VALUE;
    }

    @Override // j0.J
    public final void h(int i5, int i6, X x4, b5 b5Var) {
        if (this.f4759p != 0) {
            i5 = i6;
        }
        if (v() == 0 || i5 == 0) {
            return;
        }
        I0();
        e1(i5 > 0 ? 1 : -1, Math.abs(i5), true, x4);
        D0(x4, this.f4760q, b5Var);
    }

    @Override // j0.J
    public final void i(int i5, b5 b5Var) {
        boolean z4;
        int i6;
        C0548u c0548u = this.f4769z;
        if (c0548u == null || (i6 = c0548u.f7577c) < 0) {
            a1();
            z4 = this.f4764u;
            i6 = this.f4767x;
            if (i6 == -1) {
                i6 = z4 ? i5 - 1 : 0;
            }
        } else {
            z4 = c0548u.f7579e;
        }
        int i7 = z4 ? -1 : 1;
        for (int i8 = 0; i8 < this.f4757C && i6 >= 0 && i6 < i5; i8++) {
            b5Var.a(i6, 0);
            i6 += i7;
        }
    }

    @Override // j0.J
    public final int j(X x4) {
        return E0(x4);
    }

    @Override // j0.J
    public int k(X x4) {
        return F0(x4);
    }

    @Override // j0.J
    public int l(X x4) {
        return G0(x4);
    }

    @Override // j0.J
    public final int m(X x4) {
        return E0(x4);
    }

    @Override // j0.J
    public int n(X x4) {
        return F0(x4);
    }

    @Override // j0.J
    public int o(X x4) {
        return G0(x4);
    }

    @Override // j0.J
    public int o0(int i5, P p4, X x4) {
        if (this.f4759p == 1) {
            return 0;
        }
        return b1(i5, p4, x4);
    }

    @Override // j0.J
    public final void p0(int i5) {
        this.f4767x = i5;
        this.f4768y = Integer.MIN_VALUE;
        C0548u c0548u = this.f4769z;
        if (c0548u != null) {
            c0548u.f7577c = -1;
        }
        n0();
    }

    @Override // j0.J
    public final View q(int i5) {
        int iV = v();
        if (iV == 0) {
            return null;
        }
        int iF = i5 - J.F(u(0));
        if (iF >= 0 && iF < iV) {
            View viewU = u(iF);
            if (J.F(viewU) == i5) {
                return viewU;
            }
        }
        return super.q(i5);
    }

    @Override // j0.J
    public int q0(int i5, P p4, X x4) {
        if (this.f4759p == 0) {
            return 0;
        }
        return b1(i5, p4, x4);
    }

    @Override // j0.J
    public K r() {
        return new K(-2, -2);
    }

    @Override // j0.J
    public final boolean x0() {
        if (this.f7350m == 1073741824 || this.f7349l == 1073741824) {
            return false;
        }
        int iV = v();
        for (int i5 = 0; i5 < iV; i5++) {
            ViewGroup.LayoutParams layoutParams = u(i5).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    @Override // j0.J
    public void z0(RecyclerView recyclerView, int i5) {
        C0549v c0549v = new C0549v(recyclerView.getContext());
        c0549v.f7580a = i5;
        A0(c0549v);
        Log.d("SeslLinearLayoutManager", "SS pos to : " + i5);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i5, int i6) {
        this.f4763t = false;
        new PathInterpolator(0.22f, 0.5f, 0.0f, 1.0f);
        this.f4769z = null;
        this.f4755A = new r();
        this.f4756B = new C0546s();
        this.f4757C = 2;
        this.f4758D = new int[2];
        I iG = J.G(context, attributeSet, i5, i6);
        c1(iG.f7335a);
        boolean z4 = iG.f7337c;
        c(null);
        if (z4 != this.f4763t) {
            this.f4763t = z4;
            n0();
        }
        d1(iG.f7338d);
    }
}
