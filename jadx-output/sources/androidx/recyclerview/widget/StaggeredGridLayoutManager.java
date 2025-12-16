package androidx.recyclerview.widget;

import B1.h;
import J.Q;
import K.g;
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
import androidx.emoji2.text.f;
import com.google.android.gms.internal.p000firebaseauthapi.b5;
import e.v;
import j0.C0545q;
import j0.C0549v;
import j0.I;
import j0.J;
import j0.K;
import j0.P;
import j0.W;
import j0.X;
import j0.g0;
import j0.h0;
import j0.j0;
import j0.k0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends J implements W {

    /* renamed from: B, reason: collision with root package name */
    public final v f4913B;

    /* renamed from: C, reason: collision with root package name */
    public final int f4914C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f4915D;
    public boolean E;

    /* renamed from: F, reason: collision with root package name */
    public j0 f4916F;

    /* renamed from: G, reason: collision with root package name */
    public final Rect f4917G;

    /* renamed from: H, reason: collision with root package name */
    public final g0 f4918H;

    /* renamed from: I, reason: collision with root package name */
    public final boolean f4919I;

    /* renamed from: J, reason: collision with root package name */
    public int[] f4920J;

    /* renamed from: K, reason: collision with root package name */
    public final h f4921K;

    /* renamed from: p, reason: collision with root package name */
    public final int f4922p;

    /* renamed from: q, reason: collision with root package name */
    public final k0[] f4923q;

    /* renamed from: r, reason: collision with root package name */
    public final f f4924r;

    /* renamed from: s, reason: collision with root package name */
    public final f f4925s;

    /* renamed from: t, reason: collision with root package name */
    public final int f4926t;

    /* renamed from: u, reason: collision with root package name */
    public int f4927u;

    /* renamed from: v, reason: collision with root package name */
    public final C0545q f4928v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f4929w;

    /* renamed from: y, reason: collision with root package name */
    public final BitSet f4931y;

    /* renamed from: x, reason: collision with root package name */
    public boolean f4930x = false;

    /* renamed from: z, reason: collision with root package name */
    public int f4932z = -1;

    /* renamed from: A, reason: collision with root package name */
    public int f4912A = Integer.MIN_VALUE;

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i5, int i6) {
        this.f4922p = -1;
        this.f4929w = false;
        v vVar = new v();
        this.f4913B = vVar;
        this.f4914C = 2;
        this.f4917G = new Rect();
        this.f4918H = new g0(this);
        this.f4919I = true;
        this.f4921K = new h(16, this);
        I iG = J.G(context, attributeSet, i5, i6);
        int i7 = iG.f7335a;
        if (i7 != 0 && i7 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        c(null);
        if (i7 != this.f4926t) {
            this.f4926t = i7;
            f fVar = this.f4924r;
            this.f4924r = this.f4925s;
            this.f4925s = fVar;
            n0();
        }
        int i8 = iG.f7336b;
        c(null);
        if (i8 != this.f4922p) {
            vVar.i();
            n0();
            this.f4922p = i8;
            this.f4931y = new BitSet(this.f4922p);
            this.f4923q = new k0[this.f4922p];
            for (int i9 = 0; i9 < this.f4922p; i9++) {
                this.f4923q[i9] = new k0(this, i9);
            }
            n0();
        }
        boolean z4 = iG.f7337c;
        c(null);
        j0 j0Var = this.f4916F;
        if (j0Var != null && j0Var.f7479j != z4) {
            j0Var.f7479j = z4;
        }
        this.f4929w = z4;
        n0();
        C0545q c0545q = new C0545q();
        c0545q.f7549a = true;
        c0545q.f = 0;
        c0545q.f7554g = 0;
        this.f4928v = c0545q;
        this.f4924r = f.a(this, this.f4926t);
        this.f4925s = f.a(this, 1 - this.f4926t);
    }

    public static int g1(int i5, int i6, int i7) {
        if (i6 == 0 && i7 == 0) {
            return i5;
        }
        int mode = View.MeasureSpec.getMode(i5);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i5) - i6) - i7), mode) : i5;
    }

    @Override // j0.J
    public final boolean B0() {
        return this.f4916F == null;
    }

    public final int C0(int i5) {
        if (v() == 0) {
            return this.f4930x ? 1 : -1;
        }
        return (i5 < N0()) != this.f4930x ? -1 : 1;
    }

    public final boolean D0() {
        int iN0;
        if (v() != 0 && this.f4914C != 0 && this.f7344g) {
            if (this.f4930x) {
                iN0 = O0();
                N0();
            } else {
                iN0 = N0();
                O0();
            }
            v vVar = this.f4913B;
            if (iN0 == 0 && S0() != null) {
                vVar.i();
                this.f = true;
                n0();
                return true;
            }
        }
        return false;
    }

    public final int E0(X x4) {
        if (v() == 0) {
            return 0;
        }
        f fVar = this.f4924r;
        boolean z4 = this.f4919I;
        return j.r(x4, fVar, J0(!z4), I0(!z4), this, this.f4919I);
    }

    public final int F0(X x4) {
        if (v() == 0) {
            return 0;
        }
        f fVar = this.f4924r;
        boolean z4 = this.f4919I;
        return j.s(x4, fVar, J0(!z4), I0(!z4), this, this.f4919I, this.f4930x);
    }

    public final int G0(X x4) {
        if (v() == 0) {
            return 0;
        }
        f fVar = this.f4924r;
        boolean z4 = this.f4919I;
        return j.t(x4, fVar, J0(!z4), I0(!z4), this, this.f4919I);
    }

    @Override // j0.J
    public final int H(P p4, X x4) {
        return this.f4926t == 0 ? this.f4922p : super.H(p4, x4);
    }

    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean, int] */
    public final int H0(P p4, C0545q c0545q, X x4) {
        k0 k0Var;
        ?? r6;
        int i5;
        int iH;
        int iC;
        int iK;
        int iC2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = 0;
        int i11 = 1;
        this.f4931y.set(0, this.f4922p, true);
        C0545q c0545q2 = this.f4928v;
        int i12 = c0545q2.f7556i ? c0545q.f7553e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : c0545q.f7553e == 1 ? c0545q.f7554g + c0545q.f7550b : c0545q.f - c0545q.f7550b;
        int i13 = c0545q.f7553e;
        for (int i14 = 0; i14 < this.f4922p; i14++) {
            if (!this.f4923q[i14].f7495a.isEmpty()) {
                f1(this.f4923q[i14], i13, i12);
            }
        }
        int iG = this.f4930x ? this.f4924r.g() : this.f4924r.k();
        boolean z4 = false;
        while (true) {
            int i15 = c0545q.f7551c;
            if (((i15 < 0 || i15 >= x4.b()) ? i10 : i11) == 0 || (!c0545q2.f7556i && this.f4931y.isEmpty())) {
                break;
            }
            View view = p4.k(c0545q.f7551c, Long.MAX_VALUE).f7406a;
            c0545q.f7551c += c0545q.f7552d;
            h0 h0Var = (h0) view.getLayoutParams();
            int iC3 = h0Var.f7352a.c();
            v vVar = this.f4913B;
            int[] iArr = (int[]) vVar.f6792c;
            int i16 = (iArr == null || iC3 >= iArr.length) ? -1 : iArr[iC3];
            if (i16 == -1) {
                if (W0(c0545q.f7553e)) {
                    i9 = this.f4922p - i11;
                    i8 = -1;
                    i7 = -1;
                } else {
                    i7 = i11;
                    i8 = this.f4922p;
                    i9 = i10;
                }
                k0 k0Var2 = null;
                if (c0545q.f7553e == i11) {
                    int iK2 = this.f4924r.k();
                    int i17 = Integer.MAX_VALUE;
                    while (i9 != i8) {
                        k0 k0Var3 = this.f4923q[i9];
                        int iF = k0Var3.f(iK2);
                        if (iF < i17) {
                            i17 = iF;
                            k0Var2 = k0Var3;
                        }
                        i9 += i7;
                    }
                } else {
                    int iG2 = this.f4924r.g();
                    int i18 = Integer.MIN_VALUE;
                    while (i9 != i8) {
                        k0 k0Var4 = this.f4923q[i9];
                        int iH2 = k0Var4.h(iG2);
                        if (iH2 > i18) {
                            k0Var2 = k0Var4;
                            i18 = iH2;
                        }
                        i9 += i7;
                    }
                }
                k0Var = k0Var2;
                vVar.k(iC3);
                ((int[]) vVar.f6792c)[iC3] = k0Var.f7499e;
            } else {
                k0Var = this.f4923q[i16];
            }
            h0Var.f7459e = k0Var;
            if (c0545q.f7553e == 1) {
                r6 = 0;
                b(view, -1, false);
            } else {
                r6 = 0;
                b(view, 0, false);
            }
            if (this.f4926t == 1) {
                i5 = 1;
                U0(view, J.w(r6, this.f4927u, this.f7349l, r6, ((ViewGroup.MarginLayoutParams) h0Var).width), J.w(true, this.f7351o, this.f7350m, B() + E(), ((ViewGroup.MarginLayoutParams) h0Var).height));
            } else {
                i5 = 1;
                U0(view, J.w(true, this.n, this.f7349l, D() + C(), ((ViewGroup.MarginLayoutParams) h0Var).width), J.w(false, this.f4927u, this.f7350m, 0, ((ViewGroup.MarginLayoutParams) h0Var).height));
            }
            if (c0545q.f7553e == i5) {
                iC = k0Var.f(iG);
                iH = this.f4924r.c(view) + iC;
            } else {
                iH = k0Var.h(iG);
                iC = iH - this.f4924r.c(view);
            }
            if (c0545q.f7553e == 1) {
                k0 k0Var5 = h0Var.f7459e;
                k0Var5.getClass();
                h0 h0Var2 = (h0) view.getLayoutParams();
                h0Var2.f7459e = k0Var5;
                ArrayList arrayList = k0Var5.f7495a;
                arrayList.add(view);
                k0Var5.f7497c = Integer.MIN_VALUE;
                if (arrayList.size() == 1) {
                    k0Var5.f7496b = Integer.MIN_VALUE;
                }
                if (h0Var2.f7352a.j() || h0Var2.f7352a.m()) {
                    k0Var5.f7498d = k0Var5.f.f4924r.c(view) + k0Var5.f7498d;
                }
            } else {
                k0 k0Var6 = h0Var.f7459e;
                k0Var6.getClass();
                h0 h0Var3 = (h0) view.getLayoutParams();
                h0Var3.f7459e = k0Var6;
                ArrayList arrayList2 = k0Var6.f7495a;
                arrayList2.add(0, view);
                k0Var6.f7496b = Integer.MIN_VALUE;
                if (arrayList2.size() == 1) {
                    k0Var6.f7497c = Integer.MIN_VALUE;
                }
                if (h0Var3.f7352a.j() || h0Var3.f7352a.m()) {
                    k0Var6.f7498d = k0Var6.f.f4924r.c(view) + k0Var6.f7498d;
                }
            }
            if (T0() && this.f4926t == 1) {
                iC2 = this.f4925s.g() - (((this.f4922p - 1) - k0Var.f7499e) * this.f4927u);
                iK = iC2 - this.f4925s.c(view);
            } else {
                iK = this.f4925s.k() + (k0Var.f7499e * this.f4927u);
                iC2 = this.f4925s.c(view) + iK;
            }
            if (this.f4926t == 1) {
                J.L(view, iK, iC, iC2, iH);
            } else {
                J.L(view, iC, iK, iH, iC2);
            }
            f1(k0Var, c0545q2.f7553e, i12);
            Y0(p4, c0545q2);
            if (c0545q2.f7555h && view.hasFocusable()) {
                i6 = 0;
                this.f4931y.set(k0Var.f7499e, false);
            } else {
                i6 = 0;
            }
            i10 = i6;
            i11 = 1;
            z4 = true;
        }
        int i19 = i10;
        if (!z4) {
            Y0(p4, c0545q2);
        }
        int iK3 = c0545q2.f7553e == -1 ? this.f4924r.k() - Q0(this.f4924r.k()) : P0(this.f4924r.g()) - this.f4924r.g();
        return iK3 > 0 ? Math.min(c0545q.f7550b, iK3) : i19;
    }

    public final View I0(boolean z4) {
        int iK = this.f4924r.k();
        int iG = this.f4924r.g();
        View view = null;
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewU = u(iV);
            int iE = this.f4924r.e(viewU);
            int iB = this.f4924r.b(viewU);
            if (iB > iK && iE < iG) {
                if (iB <= iG || !z4) {
                    return viewU;
                }
                if (view == null) {
                    view = viewU;
                }
            }
        }
        return view;
    }

    @Override // j0.J
    public final boolean J() {
        return this.f4914C != 0;
    }

    public final View J0(boolean z4) {
        int iK = this.f4924r.k();
        int iG = this.f4924r.g();
        int iV = v();
        View view = null;
        for (int i5 = 0; i5 < iV; i5++) {
            View viewU = u(i5);
            int iE = this.f4924r.e(viewU);
            if (this.f4924r.b(viewU) > iK && iE < iG) {
                if (iE >= iK || !z4) {
                    return viewU;
                }
                if (view == null) {
                    view = viewU;
                }
            }
        }
        return view;
    }

    public final int[] K0() {
        int[] iArr = new int[this.f4922p];
        for (int i5 = 0; i5 < this.f4922p; i5++) {
            k0 k0Var = this.f4923q[i5];
            boolean z4 = k0Var.f.f4929w;
            ArrayList arrayList = k0Var.f7495a;
            iArr[i5] = z4 ? k0Var.e(arrayList.size() - 1, -1, true, false) : k0Var.e(0, arrayList.size(), true, false);
        }
        return iArr;
    }

    public final void L0(P p4, X x4, boolean z4) {
        int iG;
        int iP0 = P0(Integer.MIN_VALUE);
        if (iP0 != Integer.MIN_VALUE && (iG = this.f4924r.g() - iP0) > 0) {
            int i5 = iG - (-c1(-iG, p4, x4));
            if (!z4 || i5 <= 0) {
                return;
            }
            this.f4924r.p(i5);
        }
    }

    @Override // j0.J
    public final void M(int i5) {
        super.M(i5);
        for (int i6 = 0; i6 < this.f4922p; i6++) {
            k0 k0Var = this.f4923q[i6];
            int i7 = k0Var.f7496b;
            if (i7 != Integer.MIN_VALUE) {
                k0Var.f7496b = i7 + i5;
            }
            int i8 = k0Var.f7497c;
            if (i8 != Integer.MIN_VALUE) {
                k0Var.f7497c = i8 + i5;
            }
        }
    }

    public final void M0(P p4, X x4, boolean z4) {
        int iK;
        int iQ0 = Q0(Integer.MAX_VALUE);
        if (iQ0 != Integer.MAX_VALUE && (iK = iQ0 - this.f4924r.k()) > 0) {
            int iC1 = iK - c1(iK, p4, x4);
            if (!z4 || iC1 <= 0) {
                return;
            }
            this.f4924r.p(-iC1);
        }
    }

    @Override // j0.J
    public final void N(int i5) {
        super.N(i5);
        for (int i6 = 0; i6 < this.f4922p; i6++) {
            k0 k0Var = this.f4923q[i6];
            int i7 = k0Var.f7496b;
            if (i7 != Integer.MIN_VALUE) {
                k0Var.f7496b = i7 + i5;
            }
            int i8 = k0Var.f7497c;
            if (i8 != Integer.MIN_VALUE) {
                k0Var.f7497c = i8 + i5;
            }
        }
    }

    public final int N0() {
        if (v() == 0) {
            return 0;
        }
        return J.F(u(0));
    }

    @Override // j0.J
    public final void O() {
        this.f4913B.i();
        for (int i5 = 0; i5 < this.f4922p; i5++) {
            this.f4923q[i5].b();
        }
    }

    public final int O0() {
        int iV = v();
        if (iV == 0) {
            return 0;
        }
        return J.F(u(iV - 1));
    }

    public final int P0(int i5) {
        int iF = this.f4923q[0].f(i5);
        for (int i6 = 1; i6 < this.f4922p; i6++) {
            int iF2 = this.f4923q[i6].f(i5);
            if (iF2 > iF) {
                iF = iF2;
            }
        }
        return iF;
    }

    @Override // j0.J
    public final void Q(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f7340b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.f4921K);
        }
        for (int i5 = 0; i5 < this.f4922p; i5++) {
            this.f4923q[i5].b();
        }
        recyclerView.requestLayout();
    }

    public final int Q0(int i5) {
        int iH = this.f4923q[0].h(i5);
        for (int i6 = 1; i6 < this.f4922p; i6++) {
            int iH2 = this.f4923q[i6].h(i5);
            if (iH2 < iH) {
                iH = iH2;
            }
        }
        return iH;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x005f  */
    @Override // j0.J
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View R(View view, int i5, P p4, X x4) {
        View viewK;
        int i6;
        if (v() == 0) {
            return null;
        }
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView == null || (viewK = recyclerView.K(view)) == null || this.f7339a.l(viewK)) {
            viewK = null;
        }
        if (viewK == null) {
            return null;
        }
        b1();
        if (i5 != 1) {
            if (i5 != 2) {
                if (i5 != 17) {
                    if (i5 != 33) {
                        if (i5 == 66 ? this.f4926t == 0 : !(i5 != 130 || this.f4926t != 1)) {
                            i6 = 1;
                        }
                    } else if (this.f4926t == 1) {
                        i6 = -1;
                    }
                    i6 = Integer.MIN_VALUE;
                } else if (this.f4926t != 0) {
                    i6 = Integer.MIN_VALUE;
                }
            } else if (this.f4926t != 1 && T0()) {
            }
        } else if (this.f4926t != 1 && T0()) {
        }
        if (i6 == Integer.MIN_VALUE) {
            return null;
        }
        h0 h0Var = (h0) viewK.getLayoutParams();
        h0Var.getClass();
        k0 k0Var = h0Var.f7459e;
        int iO0 = i6 == 1 ? O0() : N0();
        e1(iO0, x4);
        d1(i6);
        C0545q c0545q = this.f4928v;
        c0545q.f7551c = c0545q.f7552d + iO0;
        c0545q.f7550b = (int) (this.f4924r.l() * 0.33333334f);
        c0545q.f7555h = true;
        c0545q.f7549a = false;
        H0(p4, c0545q, x4);
        this.f4915D = this.f4930x;
        View viewG = k0Var.g(iO0, i6);
        if (viewG != null && viewG != viewK) {
            return viewG;
        }
        if (W0(i6)) {
            for (int i7 = this.f4922p - 1; i7 >= 0; i7--) {
                View viewG2 = this.f4923q[i7].g(iO0, i6);
                if (viewG2 != null && viewG2 != viewK) {
                    return viewG2;
                }
            }
        } else {
            for (int i8 = 0; i8 < this.f4922p; i8++) {
                View viewG3 = this.f4923q[i8].g(iO0, i6);
                if (viewG3 != null && viewG3 != viewK) {
                    return viewG3;
                }
            }
        }
        boolean z4 = (this.f4929w ^ true) == (i6 == -1);
        View viewQ = q(z4 ? k0Var.c() : k0Var.d());
        if (viewQ != null && viewQ != viewK) {
            return viewQ;
        }
        if (W0(i6)) {
            for (int i9 = this.f4922p - 1; i9 >= 0; i9--) {
                if (i9 != k0Var.f7499e) {
                    View viewQ2 = q(z4 ? this.f4923q[i9].c() : this.f4923q[i9].d());
                    if (viewQ2 != null && viewQ2 != viewK) {
                        return viewQ2;
                    }
                }
            }
        } else {
            for (int i10 = 0; i10 < this.f4922p; i10++) {
                View viewQ3 = q(z4 ? this.f4923q[i10].c() : this.f4923q[i10].d());
                if (viewQ3 != null && viewQ3 != viewK) {
                    return viewQ3;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void R0(int i5, int i6, int i7) {
        int i8;
        int i9;
        int iO0 = this.f4930x ? O0() : N0();
        if (i7 != 8) {
            i8 = i5 + i6;
        } else {
            if (i5 >= i6) {
                i8 = i5 + 1;
                i9 = i6;
                v vVar = this.f4913B;
                vVar.s(i9);
                if (i7 != 1) {
                    vVar.w(i5, i6);
                } else if (i7 == 2) {
                    vVar.x(i5, i6);
                } else if (i7 == 8) {
                    vVar.x(i5, 1);
                    vVar.w(i6, 1);
                }
                if (i8 > iO0) {
                    return;
                }
                if (i9 <= (this.f4930x ? N0() : O0())) {
                    n0();
                    return;
                }
                return;
            }
            i8 = i6 + 1;
        }
        i9 = i5;
        v vVar2 = this.f4913B;
        vVar2.s(i9);
        if (i7 != 1) {
        }
        if (i8 > iO0) {
        }
    }

    @Override // j0.J
    public final void S(AccessibilityEvent accessibilityEvent) {
        super.S(accessibilityEvent);
        if (v() > 0) {
            View viewJ0 = J0(false);
            View viewI0 = I0(false);
            if (viewJ0 == null || viewI0 == null) {
                return;
            }
            int iF = J.F(viewJ0);
            int iF2 = J.F(viewI0);
            if (iF < iF2) {
                accessibilityEvent.setFromIndex(iF);
                accessibilityEvent.setToIndex(iF2);
            } else {
                accessibilityEvent.setFromIndex(iF2);
                accessibilityEvent.setToIndex(iF);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x002c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View S0() {
        int iV = v();
        int i5 = iV - 1;
        BitSet bitSet = new BitSet(this.f4922p);
        bitSet.set(0, this.f4922p, true);
        char c2 = (this.f4926t == 1 && T0()) ? (char) 1 : (char) 65535;
        if (this.f4930x) {
            iV = -1;
        } else {
            i5 = 0;
        }
        int i6 = i5 < iV ? 1 : -1;
        while (i5 != iV) {
            View viewU = u(i5);
            h0 h0Var = (h0) viewU.getLayoutParams();
            if (bitSet.get(h0Var.f7459e.f7499e)) {
                k0 k0Var = h0Var.f7459e;
                if (this.f4930x) {
                    int i7 = k0Var.f7497c;
                    if (i7 == Integer.MIN_VALUE) {
                        k0Var.a();
                        i7 = k0Var.f7497c;
                    }
                    if (i7 < this.f4924r.g()) {
                        ArrayList arrayList = k0Var.f7495a;
                        ((h0) ((View) arrayList.get(arrayList.size() - 1)).getLayoutParams()).getClass();
                        return viewU;
                    }
                    bitSet.clear(h0Var.f7459e.f7499e);
                } else {
                    int i8 = k0Var.f7496b;
                    if (i8 == Integer.MIN_VALUE) {
                        View view = (View) k0Var.f7495a.get(0);
                        h0 h0Var2 = (h0) view.getLayoutParams();
                        k0Var.f7496b = k0Var.f.f4924r.e(view);
                        h0Var2.getClass();
                        i8 = k0Var.f7496b;
                    }
                    if (i8 > this.f4924r.k()) {
                        ((h0) ((View) k0Var.f7495a.get(0)).getLayoutParams()).getClass();
                        return viewU;
                    }
                    bitSet.clear(h0Var.f7459e.f7499e);
                }
            }
            i5 += i6;
            if (i5 != iV) {
                View viewU2 = u(i5);
                if (this.f4930x) {
                    int iB = this.f4924r.b(viewU);
                    int iB2 = this.f4924r.b(viewU2);
                    if (iB < iB2) {
                        return viewU;
                    }
                    if (iB == iB2) {
                        if ((h0Var.f7459e.f7499e - ((h0) viewU2.getLayoutParams()).f7459e.f7499e >= 0) == (c2 >= 0)) {
                            return viewU;
                        }
                    } else {
                        continue;
                    }
                } else {
                    int iE = this.f4924r.e(viewU);
                    int iE2 = this.f4924r.e(viewU2);
                    if (iE > iE2) {
                        return viewU;
                    }
                    if (iE == iE2) {
                        if ((h0Var.f7459e.f7499e - ((h0) viewU2.getLayoutParams()).f7459e.f7499e >= 0) == (c2 >= 0)) {
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    public final boolean T0() {
        return A() == 1;
    }

    public final void U0(View view, int i5, int i6) {
        RecyclerView recyclerView = this.f7340b;
        Rect rect = this.f4917G;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.X(view));
        }
        h0 h0Var = (h0) view.getLayoutParams();
        int iG1 = g1(i5, ((ViewGroup.MarginLayoutParams) h0Var).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) h0Var).rightMargin + rect.right);
        int iG12 = g1(i6, ((ViewGroup.MarginLayoutParams) h0Var).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) h0Var).bottomMargin + rect.bottom);
        if (w0(view, iG1, iG12, h0Var)) {
            view.measure(iG1, iG12);
        }
    }

    @Override // j0.J
    public final void V(P p4, X x4, View view, K.h hVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof h0)) {
            U(view, hVar);
            return;
        }
        h0 h0Var = (h0) layoutParams;
        if (this.f4926t == 0) {
            k0 k0Var = h0Var.f7459e;
            hVar.h(g.a(false, k0Var == null ? -1 : k0Var.f7499e, 1, -1, -1));
        } else {
            k0 k0Var2 = h0Var.f7459e;
            hVar.h(g.a(false, -1, -1, k0Var2 == null ? -1 : k0Var2.f7499e, 1));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x043a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void V0(P p4, X x4, boolean z4) {
        j0 j0Var;
        int[] iArr;
        int[] iArr2;
        int iF;
        int i5;
        j0 j0Var2 = this.f4916F;
        g0 g0Var = this.f4918H;
        if (!(j0Var2 == null && this.f4932z == -1) && x4.b() == 0) {
            i0(p4);
            g0Var.a();
            return;
        }
        boolean z5 = true;
        boolean z6 = (g0Var.f7452e && this.f4932z == -1 && this.f4916F == null) ? false : true;
        v vVar = this.f4913B;
        StaggeredGridLayoutManager staggeredGridLayoutManager = g0Var.f7453g;
        if (z6) {
            g0Var.a();
            j0 j0Var3 = this.f4916F;
            if (j0Var3 != null) {
                int i6 = j0Var3.f7475e;
                if (i6 > 0) {
                    if (i6 == this.f4922p) {
                        for (int i7 = 0; i7 < this.f4922p; i7++) {
                            this.f4923q[i7].b();
                            j0 j0Var4 = this.f4916F;
                            int iG = j0Var4.f[i7];
                            if (iG != Integer.MIN_VALUE) {
                                iG += j0Var4.f7480k ? this.f4924r.g() : this.f4924r.k();
                            }
                            k0 k0Var = this.f4923q[i7];
                            k0Var.f7496b = iG;
                            k0Var.f7497c = iG;
                        }
                    } else {
                        j0Var3.f = null;
                        j0Var3.f7475e = 0;
                        j0Var3.f7476g = 0;
                        j0Var3.f7477h = null;
                        j0Var3.f7478i = null;
                        j0Var3.f7473c = j0Var3.f7474d;
                    }
                }
                j0 j0Var5 = this.f4916F;
                this.E = j0Var5.f7481l;
                boolean z7 = j0Var5.f7479j;
                c(null);
                j0 j0Var6 = this.f4916F;
                if (j0Var6 != null && j0Var6.f7479j != z7) {
                    j0Var6.f7479j = z7;
                }
                this.f4929w = z7;
                n0();
                b1();
                j0 j0Var7 = this.f4916F;
                int i8 = j0Var7.f7473c;
                if (i8 != -1) {
                    this.f4932z = i8;
                    g0Var.f7450c = j0Var7.f7480k;
                } else {
                    g0Var.f7450c = this.f4930x;
                }
                if (j0Var7.f7476g > 1) {
                    vVar.f6792c = j0Var7.f7477h;
                    vVar.f6793d = j0Var7.f7478i;
                }
            } else {
                b1();
                g0Var.f7450c = this.f4930x;
            }
            if (x4.f7383g || (i5 = this.f4932z) == -1) {
                if (this.f4915D) {
                    int iB = x4.b();
                    int iV = v();
                    for (int i9 = 0; i9 < iV; i9++) {
                        int iF2 = J.F(u(i9));
                        if (iF2 >= 0 && iF2 < iB) {
                            iF = iF2;
                            break;
                        }
                    }
                    iF = 0;
                    g0Var.f7448a = iF;
                    g0Var.f7449b = Integer.MIN_VALUE;
                    g0Var.f7452e = true;
                } else {
                    int iB2 = x4.b();
                    for (int iV2 = v() - 1; iV2 >= 0; iV2--) {
                        iF = J.F(u(iV2));
                        if (iF >= 0 && iF < iB2) {
                            break;
                        }
                    }
                    iF = 0;
                    g0Var.f7448a = iF;
                    g0Var.f7449b = Integer.MIN_VALUE;
                    g0Var.f7452e = true;
                }
            } else if (i5 < 0 || i5 >= x4.b()) {
                this.f4932z = -1;
                this.f4912A = Integer.MIN_VALUE;
                if (this.f4915D) {
                }
            } else {
                j0 j0Var8 = this.f4916F;
                if (j0Var8 == null || j0Var8.f7473c == -1 || j0Var8.f7475e < 1) {
                    View viewQ = q(this.f4932z);
                    if (viewQ != null) {
                        g0Var.f7448a = this.f4930x ? O0() : N0();
                        if (this.f4912A != Integer.MIN_VALUE) {
                            if (g0Var.f7450c) {
                                g0Var.f7449b = (this.f4924r.g() - this.f4912A) - this.f4924r.b(viewQ);
                            } else {
                                g0Var.f7449b = (this.f4924r.k() + this.f4912A) - this.f4924r.e(viewQ);
                            }
                        } else if (this.f4924r.c(viewQ) > this.f4924r.l()) {
                            g0Var.f7449b = g0Var.f7450c ? this.f4924r.g() : this.f4924r.k();
                        } else {
                            int iE = this.f4924r.e(viewQ) - this.f4924r.k();
                            if (iE < 0) {
                                g0Var.f7449b = -iE;
                            } else {
                                int iG2 = this.f4924r.g() - this.f4924r.b(viewQ);
                                if (iG2 < 0) {
                                    g0Var.f7449b = iG2;
                                } else {
                                    g0Var.f7449b = Integer.MIN_VALUE;
                                }
                            }
                        }
                    } else {
                        int i10 = this.f4932z;
                        g0Var.f7448a = i10;
                        int i11 = this.f4912A;
                        if (i11 == Integer.MIN_VALUE) {
                            boolean z8 = C0(i10) == 1;
                            g0Var.f7450c = z8;
                            g0Var.f7449b = z8 ? staggeredGridLayoutManager.f4924r.g() : staggeredGridLayoutManager.f4924r.k();
                        } else if (g0Var.f7450c) {
                            g0Var.f7449b = staggeredGridLayoutManager.f4924r.g() - i11;
                        } else {
                            g0Var.f7449b = staggeredGridLayoutManager.f4924r.k() + i11;
                        }
                        g0Var.f7451d = true;
                    }
                } else {
                    g0Var.f7449b = Integer.MIN_VALUE;
                    g0Var.f7448a = this.f4932z;
                }
                g0Var.f7452e = true;
            }
        }
        if (this.f4916F == null && this.f4932z == -1 && (g0Var.f7450c != this.f4915D || T0() != this.E)) {
            vVar.i();
            g0Var.f7451d = true;
        }
        if (v() > 0 && ((j0Var = this.f4916F) == null || j0Var.f7475e < 1)) {
            if (g0Var.f7451d) {
                for (int i12 = 0; i12 < this.f4922p; i12++) {
                    this.f4923q[i12].b();
                    int i13 = g0Var.f7449b;
                    if (i13 != Integer.MIN_VALUE) {
                        k0 k0Var2 = this.f4923q[i12];
                        k0Var2.f7496b = i13;
                        k0Var2.f7497c = i13;
                    }
                }
            } else if (z6 || (iArr2 = g0Var.f) == null || iArr2.length < this.f4922p) {
                if (!z6 && (iArr = g0Var.f) != null && iArr.length < this.f4922p) {
                    Log.w("StaggeredGridLManager", "mSpanReferenceLines length(" + g0Var.f.length + ") smaller than SpanCount(" + this.f4922p + ")");
                }
                for (int i14 = 0; i14 < this.f4922p; i14++) {
                    k0 k0Var3 = this.f4923q[i14];
                    boolean z9 = this.f4930x;
                    int i15 = g0Var.f7449b;
                    int iF3 = z9 ? k0Var3.f(Integer.MIN_VALUE) : k0Var3.h(Integer.MIN_VALUE);
                    k0Var3.b();
                    if (iF3 != Integer.MIN_VALUE) {
                        StaggeredGridLayoutManager staggeredGridLayoutManager2 = k0Var3.f;
                        if ((!z9 || iF3 >= staggeredGridLayoutManager2.f4924r.g()) && (z9 || iF3 <= staggeredGridLayoutManager2.f4924r.k())) {
                            if (i15 != Integer.MIN_VALUE) {
                                iF3 += i15;
                            }
                            k0Var3.f7497c = iF3;
                            k0Var3.f7496b = iF3;
                        }
                    }
                }
                k0[] k0VarArr = this.f4923q;
                int length = k0VarArr.length;
                int[] iArr3 = g0Var.f;
                if (iArr3 == null || iArr3.length < length) {
                    g0Var.f = new int[staggeredGridLayoutManager.f4923q.length];
                }
                for (int i16 = 0; i16 < length; i16++) {
                    g0Var.f[i16] = k0VarArr[i16].h(Integer.MIN_VALUE);
                }
            } else {
                for (int i17 = 0; i17 < this.f4922p; i17++) {
                    k0 k0Var4 = this.f4923q[i17];
                    k0Var4.b();
                    int i18 = g0Var.f[i17];
                    k0Var4.f7496b = i18;
                    k0Var4.f7497c = i18;
                }
            }
        }
        p(p4);
        C0545q c0545q = this.f4928v;
        c0545q.f7549a = false;
        int iL = this.f4925s.l();
        this.f4927u = iL / this.f4922p;
        View.MeasureSpec.makeMeasureSpec(iL, this.f4925s.i());
        e1(g0Var.f7448a, x4);
        if (g0Var.f7450c) {
            d1(-1);
            H0(p4, c0545q, x4);
            d1(1);
            c0545q.f7551c = g0Var.f7448a + c0545q.f7552d;
            H0(p4, c0545q, x4);
        } else {
            d1(1);
            H0(p4, c0545q, x4);
            d1(-1);
            c0545q.f7551c = g0Var.f7448a + c0545q.f7552d;
            H0(p4, c0545q, x4);
        }
        if (this.f4925s.i() != 1073741824) {
            int iV3 = v();
            float fMax = 0.0f;
            for (int i19 = 0; i19 < iV3; i19++) {
                View viewU = u(i19);
                float fC = this.f4925s.c(viewU);
                if (fC >= fMax) {
                    ((h0) viewU.getLayoutParams()).getClass();
                    fMax = Math.max(fMax, fC);
                }
            }
            int i20 = this.f4927u;
            int iRound = Math.round(fMax * this.f4922p);
            if (this.f4925s.i() == Integer.MIN_VALUE) {
                iRound = Math.min(iRound, this.f4925s.l());
            }
            this.f4927u = iRound / this.f4922p;
            View.MeasureSpec.makeMeasureSpec(iRound, this.f4925s.i());
            if (this.f4927u != i20) {
                for (int i21 = 0; i21 < iV3; i21++) {
                    View viewU2 = u(i21);
                    h0 h0Var = (h0) viewU2.getLayoutParams();
                    h0Var.getClass();
                    if (T0() && this.f4926t == 1) {
                        int i22 = -((this.f4922p - 1) - h0Var.f7459e.f7499e);
                        viewU2.offsetLeftAndRight((this.f4927u * i22) - (i22 * i20));
                    } else {
                        int i23 = h0Var.f7459e.f7499e;
                        int i24 = this.f4927u * i23;
                        int i25 = i23 * i20;
                        if (this.f4926t == 1) {
                            viewU2.offsetLeftAndRight(i24 - i25);
                        } else {
                            viewU2.offsetTopAndBottom(i24 - i25);
                        }
                    }
                }
            }
        }
        if (v() > 0) {
            if (this.f4930x) {
                L0(p4, x4, true);
                M0(p4, x4, false);
            } else {
                M0(p4, x4, true);
                L0(p4, x4, false);
            }
        }
        if (!z4 || x4.f7383g || this.f4914C == 0 || v() <= 0 || S0() == null) {
            z5 = false;
        } else {
            RecyclerView recyclerView = this.f7340b;
            if (recyclerView != null) {
                recyclerView.removeCallbacks(this.f4921K);
            }
            if (!D0()) {
            }
        }
        if (x4.f7383g) {
            g0Var.a();
        }
        this.f4915D = g0Var.f7450c;
        this.E = T0();
        if (z5) {
            g0Var.a();
            V0(p4, x4, false);
        }
    }

    @Override // j0.J
    public final void W(int i5, int i6) {
        R0(i5, i6, 1);
    }

    public final boolean W0(int i5) {
        if (this.f4926t == 0) {
            return (i5 == -1) != this.f4930x;
        }
        return ((i5 == -1) == this.f4930x) == T0();
    }

    @Override // j0.J
    public final void X() {
        this.f4913B.i();
        n0();
    }

    public final void X0(int i5, X x4) {
        int iN0;
        int i6;
        if (i5 > 0) {
            iN0 = O0();
            i6 = 1;
        } else {
            iN0 = N0();
            i6 = -1;
        }
        C0545q c0545q = this.f4928v;
        c0545q.f7549a = true;
        e1(iN0, x4);
        d1(i6);
        c0545q.f7551c = iN0 + c0545q.f7552d;
        c0545q.f7550b = Math.abs(i5);
    }

    @Override // j0.J
    public final void Y(int i5, int i6) {
        R0(i5, i6, 8);
    }

    public final void Y0(P p4, C0545q c0545q) {
        if (!c0545q.f7549a || c0545q.f7556i) {
            return;
        }
        if (c0545q.f7550b == 0) {
            if (c0545q.f7553e == -1) {
                Z0(p4, c0545q.f7554g);
                return;
            } else {
                a1(p4, c0545q.f);
                return;
            }
        }
        int i5 = 1;
        if (c0545q.f7553e == -1) {
            int i6 = c0545q.f;
            int iH = this.f4923q[0].h(i6);
            while (i5 < this.f4922p) {
                int iH2 = this.f4923q[i5].h(i6);
                if (iH2 > iH) {
                    iH = iH2;
                }
                i5++;
            }
            int i7 = i6 - iH;
            Z0(p4, i7 < 0 ? c0545q.f7554g : c0545q.f7554g - Math.min(i7, c0545q.f7550b));
            return;
        }
        int i8 = c0545q.f7554g;
        int iF = this.f4923q[0].f(i8);
        while (i5 < this.f4922p) {
            int iF2 = this.f4923q[i5].f(i8);
            if (iF2 < iF) {
                iF = iF2;
            }
            i5++;
        }
        int i9 = iF - c0545q.f7554g;
        a1(p4, i9 < 0 ? c0545q.f : Math.min(i9, c0545q.f7550b) + c0545q.f);
    }

    @Override // j0.J
    public final void Z(int i5, int i6) {
        R0(i5, i6, 2);
    }

    public final void Z0(P p4, int i5) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewU = u(iV);
            if (this.f4924r.e(viewU) < i5 || this.f4924r.o(viewU) < i5) {
                return;
            }
            h0 h0Var = (h0) viewU.getLayoutParams();
            h0Var.getClass();
            if (h0Var.f7459e.f7495a.size() == 1) {
                return;
            }
            k0 k0Var = h0Var.f7459e;
            ArrayList arrayList = k0Var.f7495a;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            h0 h0Var2 = (h0) view.getLayoutParams();
            h0Var2.f7459e = null;
            if (h0Var2.f7352a.j() || h0Var2.f7352a.m()) {
                k0Var.f7498d -= k0Var.f.f4924r.c(view);
            }
            if (size == 1) {
                k0Var.f7496b = Integer.MIN_VALUE;
            }
            k0Var.f7497c = Integer.MIN_VALUE;
            k0(viewU, p4);
        }
    }

    @Override // j0.W
    public final PointF a(int i5) {
        int iC0 = C0(i5);
        PointF pointF = new PointF();
        if (iC0 == 0) {
            return null;
        }
        if (this.f4926t == 0) {
            pointF.x = iC0;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iC0;
        }
        return pointF;
    }

    @Override // j0.J
    public final void a0(int i5, int i6) {
        R0(i5, i6, 4);
    }

    public final void a1(P p4, int i5) {
        while (v() > 0) {
            View viewU = u(0);
            if (this.f4924r.b(viewU) > i5 || this.f4924r.n(viewU) > i5) {
                return;
            }
            h0 h0Var = (h0) viewU.getLayoutParams();
            h0Var.getClass();
            if (h0Var.f7459e.f7495a.size() == 1) {
                return;
            }
            k0 k0Var = h0Var.f7459e;
            ArrayList arrayList = k0Var.f7495a;
            View view = (View) arrayList.remove(0);
            h0 h0Var2 = (h0) view.getLayoutParams();
            h0Var2.f7459e = null;
            if (arrayList.size() == 0) {
                k0Var.f7497c = Integer.MIN_VALUE;
            }
            if (h0Var2.f7352a.j() || h0Var2.f7352a.m()) {
                k0Var.f7498d -= k0Var.f.f4924r.c(view);
            }
            k0Var.f7496b = Integer.MIN_VALUE;
            k0(viewU, p4);
        }
    }

    @Override // j0.J
    public final void b0(P p4, X x4) {
        V0(p4, x4, true);
    }

    public final void b1() {
        if (this.f4926t == 1 || !T0()) {
            this.f4930x = this.f4929w;
        } else {
            this.f4930x = !this.f4929w;
        }
    }

    @Override // j0.J
    public final void c(String str) {
        if (this.f4916F == null) {
            super.c(str);
        }
    }

    @Override // j0.J
    public final void c0(X x4) {
        this.f4932z = -1;
        this.f4912A = Integer.MIN_VALUE;
        this.f4916F = null;
        this.f4918H.a();
    }

    public final int c1(int i5, P p4, X x4) {
        if (v() == 0 || i5 == 0) {
            return 0;
        }
        X0(i5, x4);
        C0545q c0545q = this.f4928v;
        int iH0 = H0(p4, c0545q, x4);
        if (c0545q.f7550b >= iH0) {
            i5 = i5 < 0 ? -iH0 : iH0;
        }
        this.f4924r.p(-i5);
        this.f4915D = this.f4930x;
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView != null) {
            recyclerView.getClass();
        }
        c0545q.f7550b = 0;
        Y0(p4, c0545q);
        return i5;
    }

    @Override // j0.J
    public final boolean d() {
        return this.f4926t == 0;
    }

    @Override // j0.J
    public final void d0(Parcelable parcelable) {
        if (parcelable instanceof j0) {
            j0 j0Var = (j0) parcelable;
            this.f4916F = j0Var;
            if (this.f4932z != -1) {
                j0Var.f = null;
                j0Var.f7475e = 0;
                j0Var.f7473c = -1;
                j0Var.f7474d = -1;
                j0Var.f = null;
                j0Var.f7475e = 0;
                j0Var.f7476g = 0;
                j0Var.f7477h = null;
                j0Var.f7478i = null;
            }
            n0();
        }
    }

    public final void d1(int i5) {
        C0545q c0545q = this.f4928v;
        c0545q.f7553e = i5;
        c0545q.f7552d = this.f4930x != (i5 == -1) ? -1 : 1;
    }

    @Override // j0.J
    public final boolean e() {
        return this.f4926t == 1;
    }

    @Override // j0.J
    public final Parcelable e0() {
        int iH;
        int iK;
        int[] iArr;
        j0 j0Var = this.f4916F;
        if (j0Var != null) {
            j0 j0Var2 = new j0();
            j0Var2.f7475e = j0Var.f7475e;
            j0Var2.f7473c = j0Var.f7473c;
            j0Var2.f7474d = j0Var.f7474d;
            j0Var2.f = j0Var.f;
            j0Var2.f7476g = j0Var.f7476g;
            j0Var2.f7477h = j0Var.f7477h;
            j0Var2.f7479j = j0Var.f7479j;
            j0Var2.f7480k = j0Var.f7480k;
            j0Var2.f7481l = j0Var.f7481l;
            j0Var2.f7478i = j0Var.f7478i;
            return j0Var2;
        }
        j0 j0Var3 = new j0();
        j0Var3.f7479j = this.f4929w;
        j0Var3.f7480k = this.f4915D;
        j0Var3.f7481l = this.E;
        v vVar = this.f4913B;
        if (vVar == null || (iArr = (int[]) vVar.f6792c) == null) {
            j0Var3.f7476g = 0;
        } else {
            j0Var3.f7477h = iArr;
            j0Var3.f7476g = iArr.length;
            j0Var3.f7478i = (List) vVar.f6793d;
        }
        if (v() > 0) {
            j0Var3.f7473c = this.f4915D ? O0() : N0();
            View viewI0 = this.f4930x ? I0(true) : J0(true);
            j0Var3.f7474d = viewI0 != null ? J.F(viewI0) : -1;
            int i5 = this.f4922p;
            j0Var3.f7475e = i5;
            j0Var3.f = new int[i5];
            for (int i6 = 0; i6 < this.f4922p; i6++) {
                if (this.f4915D) {
                    iH = this.f4923q[i6].f(Integer.MIN_VALUE);
                    if (iH != Integer.MIN_VALUE) {
                        iK = this.f4924r.g();
                        iH -= iK;
                    }
                } else {
                    iH = this.f4923q[i6].h(Integer.MIN_VALUE);
                    if (iH != Integer.MIN_VALUE) {
                        iK = this.f4924r.k();
                        iH -= iK;
                    }
                }
                j0Var3.f[i6] = iH;
            }
        } else {
            j0Var3.f7473c = -1;
            j0Var3.f7474d = -1;
            j0Var3.f7475e = 0;
        }
        return j0Var3;
    }

    public final void e1(int i5, X x4) {
        int iL;
        int iL2;
        int i6;
        C0545q c0545q = this.f4928v;
        boolean z4 = false;
        c0545q.f7550b = 0;
        c0545q.f7551c = i5;
        C0549v c0549v = this.f7343e;
        if (!(c0549v != null && c0549v.f7584e) || (i6 = x4.f7378a) == -1) {
            iL = 0;
            iL2 = 0;
        } else {
            if (this.f4930x == (i6 < i5)) {
                iL = this.f4924r.l();
                iL2 = 0;
            } else {
                iL2 = this.f4924r.l();
                iL = 0;
            }
        }
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView == null || !recyclerView.f4871j) {
            c0545q.f7554g = this.f4924r.f() + iL;
            c0545q.f = -iL2;
        } else {
            c0545q.f = this.f4924r.k() - iL2;
            c0545q.f7554g = this.f4924r.g() + iL;
        }
        c0545q.f7555h = false;
        c0545q.f7549a = true;
        if (this.f4924r.i() == 0 && this.f4924r.f() == 0) {
            z4 = true;
        }
        c0545q.f7556i = z4;
    }

    @Override // j0.J
    public final boolean f(K k5) {
        return k5 instanceof h0;
    }

    @Override // j0.J
    public final void f0(int i5) {
        if (i5 == 0) {
            D0();
        }
    }

    public final void f1(k0 k0Var, int i5, int i6) {
        int i7 = k0Var.f7498d;
        int i8 = k0Var.f7499e;
        if (i5 != -1) {
            int i9 = k0Var.f7497c;
            if (i9 == Integer.MIN_VALUE) {
                k0Var.a();
                i9 = k0Var.f7497c;
            }
            if (i9 - i7 >= i6) {
                this.f4931y.set(i8, false);
                return;
            }
            return;
        }
        int i10 = k0Var.f7496b;
        if (i10 == Integer.MIN_VALUE) {
            View view = (View) k0Var.f7495a.get(0);
            h0 h0Var = (h0) view.getLayoutParams();
            k0Var.f7496b = k0Var.f.f4924r.e(view);
            h0Var.getClass();
            i10 = k0Var.f7496b;
        }
        if (i10 + i7 <= i6) {
            this.f4931y.set(i8, false);
        }
    }

    @Override // j0.J
    public final void h(int i5, int i6, X x4, b5 b5Var) {
        C0545q c0545q;
        int iF;
        int iH;
        if (this.f4926t != 0) {
            i5 = i6;
        }
        if (v() == 0 || i5 == 0) {
            return;
        }
        X0(i5, x4);
        int[] iArr = this.f4920J;
        if (iArr == null || iArr.length < this.f4922p) {
            this.f4920J = new int[this.f4922p];
        }
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = this.f4922p;
            c0545q = this.f4928v;
            if (i7 >= i9) {
                break;
            }
            if (c0545q.f7552d == -1) {
                iF = c0545q.f;
                iH = this.f4923q[i7].h(iF);
            } else {
                iF = this.f4923q[i7].f(c0545q.f7554g);
                iH = c0545q.f7554g;
            }
            int i10 = iF - iH;
            if (i10 >= 0) {
                this.f4920J[i8] = i10;
                i8++;
            }
            i7++;
        }
        Arrays.sort(this.f4920J, 0, i8);
        for (int i11 = 0; i11 < i8; i11++) {
            int i12 = c0545q.f7551c;
            if (i12 < 0 || i12 >= x4.b()) {
                return;
            }
            b5Var.a(c0545q.f7551c, this.f4920J[i11]);
            c0545q.f7551c += c0545q.f7552d;
        }
    }

    @Override // j0.J
    public final int j(X x4) {
        return E0(x4);
    }

    @Override // j0.J
    public final int k(X x4) {
        return F0(x4);
    }

    @Override // j0.J
    public final int l(X x4) {
        return G0(x4);
    }

    @Override // j0.J
    public final int m(X x4) {
        return E0(x4);
    }

    @Override // j0.J
    public final int n(X x4) {
        return F0(x4);
    }

    @Override // j0.J
    public final int o(X x4) {
        return G0(x4);
    }

    @Override // j0.J
    public final int o0(int i5, P p4, X x4) {
        return c1(i5, p4, x4);
    }

    @Override // j0.J
    public final void p0(int i5) {
        j0 j0Var = this.f4916F;
        if (j0Var != null && j0Var.f7473c != i5) {
            j0Var.f = null;
            j0Var.f7475e = 0;
            j0Var.f7473c = -1;
            j0Var.f7474d = -1;
        }
        this.f4932z = i5;
        this.f4912A = Integer.MIN_VALUE;
        n0();
    }

    @Override // j0.J
    public final int q0(int i5, P p4, X x4) {
        return c1(i5, p4, x4);
    }

    @Override // j0.J
    public final K r() {
        return this.f4926t == 0 ? new h0(-2, -1) : new h0(-1, -2);
    }

    @Override // j0.J
    public final K s(Context context, AttributeSet attributeSet) {
        return new h0(context, attributeSet);
    }

    @Override // j0.J
    public final K t(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new h0((ViewGroup.MarginLayoutParams) layoutParams) : new h0(layoutParams);
    }

    @Override // j0.J
    public final void t0(Rect rect, int i5, int i6) {
        int iG;
        int iG2;
        int i7 = this.f4922p;
        int iD = D() + C();
        int iB = B() + E();
        if (this.f4926t == 1) {
            int iHeight = rect.height() + iB;
            RecyclerView recyclerView = this.f7340b;
            WeakHashMap weakHashMap = Q.f940a;
            iG2 = J.g(i6, iHeight, recyclerView.getMinimumHeight());
            iG = J.g(i5, (this.f4927u * i7) + iD, this.f7340b.getMinimumWidth());
        } else {
            int iWidth = rect.width() + iD;
            RecyclerView recyclerView2 = this.f7340b;
            WeakHashMap weakHashMap2 = Q.f940a;
            iG = J.g(i5, iWidth, recyclerView2.getMinimumWidth());
            iG2 = J.g(i6, (this.f4927u * i7) + iB, this.f7340b.getMinimumHeight());
        }
        this.f7340b.setMeasuredDimension(iG, iG2);
    }

    @Override // j0.J
    public final int x(P p4, X x4) {
        return this.f4926t == 1 ? this.f4922p : super.x(p4, x4);
    }

    @Override // j0.J
    public final void z0(RecyclerView recyclerView, int i5) {
        if (recyclerView != null) {
            C0549v c0549v = new C0549v(recyclerView.getContext());
            c0549v.f7580a = i5;
            A0(c0549v);
        }
    }
}
