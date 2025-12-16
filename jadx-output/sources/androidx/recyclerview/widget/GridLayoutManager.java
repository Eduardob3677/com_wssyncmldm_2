package androidx.recyclerview.widget;

import B.f;
import J.Q;
import K.g;
import K.h;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import com.google.android.gms.internal.p000firebaseauthapi.b5;
import e.v;
import j0.C0544p;
import j0.C0546s;
import j0.C0547t;
import j0.J;
import j0.K;
import j0.P;
import j0.X;
import j0.r;
import java.util.Arrays;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public boolean E;

    /* renamed from: F, reason: collision with root package name */
    public int f4748F;

    /* renamed from: G, reason: collision with root package name */
    public int[] f4749G;

    /* renamed from: H, reason: collision with root package name */
    public View[] f4750H;

    /* renamed from: I, reason: collision with root package name */
    public final SparseIntArray f4751I;

    /* renamed from: J, reason: collision with root package name */
    public final SparseIntArray f4752J;

    /* renamed from: K, reason: collision with root package name */
    public final v f4753K;

    /* renamed from: L, reason: collision with root package name */
    public final Rect f4754L;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i5, int i6) {
        super(context, attributeSet, i5, i6);
        this.E = false;
        this.f4748F = -1;
        this.f4751I = new SparseIntArray();
        this.f4752J = new SparseIntArray();
        this.f4753K = new v(3);
        this.f4754L = new Rect();
        o1(J.G(context, attributeSet, i5, i6).f7336b);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, j0.J
    public final boolean B0() {
        return this.f4769z == null && !this.E;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void D0(X x4, C0547t c0547t, b5 b5Var) {
        int i5;
        int i6 = this.f4748F;
        for (int i7 = 0; i7 < this.f4748F && (i5 = c0547t.f7569d) >= 0 && i5 < x4.b() && i6 > 0; i7++) {
            b5Var.a(c0547t.f7569d, Math.max(0, c0547t.f7571g));
            this.f4753K.getClass();
            i6--;
            c0547t.f7569d += c0547t.f7570e;
        }
    }

    @Override // j0.J
    public final int H(P p4, X x4) {
        if (this.f4759p == 0) {
            return this.f4748F;
        }
        if (x4.b() < 1) {
            return 0;
        }
        return k1(x4.b() - 1, p4, x4) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View Q0(P p4, X x4, boolean z4, boolean z5) {
        int i5;
        int iV;
        int iV2 = v();
        int i6 = 1;
        if (z5) {
            iV = v() - 1;
            i5 = -1;
            i6 = -1;
        } else {
            i5 = iV2;
            iV = 0;
        }
        int iB = x4.b();
        I0();
        int iK = this.f4761r.k();
        int iG = this.f4761r.g();
        View view = null;
        View view2 = null;
        while (iV != i5) {
            View viewU = u(iV);
            int iF = J.F(viewU);
            if (iF >= 0 && iF < iB && l1(iF, p4, x4) == 0) {
                if (((K) viewU.getLayoutParams()).f7352a.j()) {
                    if (view2 == null) {
                        view2 = viewU;
                    }
                } else {
                    if (this.f4761r.e(viewU) < iG && this.f4761r.b(viewU) > iK) {
                        return viewU;
                    }
                    if (view == null) {
                        view = viewU;
                    }
                }
            }
            iV += i6;
        }
        return view != null ? view : view2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x00df, code lost:
    
        if (r13 == (r2 > r15)) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0126  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, j0.J
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View R(View view, int i5, P p4, X x4) {
        View viewK;
        int iV;
        int i6;
        int iV2;
        View view2;
        View view3;
        int iMin;
        boolean z4;
        boolean z5;
        P p5 = p4;
        X x5 = x4;
        RecyclerView recyclerView = this.f7340b;
        View view4 = null;
        if (recyclerView == null || (viewK = recyclerView.K(view)) == null || this.f7339a.l(viewK)) {
            viewK = null;
        }
        if (viewK == null) {
            return null;
        }
        C0544p c0544p = (C0544p) viewK.getLayoutParams();
        int i7 = c0544p.f7548e;
        int i8 = c0544p.f + i7;
        if (super.R(view, i5, p4, x4) == null) {
            return null;
        }
        if ((H0(i5) == 1) != this.f4764u) {
            iV2 = v() - 1;
            iV = -1;
            i6 = -1;
        } else {
            iV = v();
            i6 = 1;
            iV2 = 0;
        }
        boolean z6 = this.f4759p == 1 && V0();
        int iK1 = k1(iV2, p5, x5);
        int i9 = -1;
        int i10 = -1;
        int i11 = i6;
        int i12 = 0;
        int iMin2 = 0;
        int i13 = iV2;
        View view5 = null;
        while (i13 != iV) {
            int i14 = iV;
            int iK12 = k1(i13, p5, x5);
            View viewU = u(i13);
            if (viewU == viewK) {
                break;
            }
            if (!viewU.hasFocusable() || iK12 == iK1) {
                C0544p c0544p2 = (C0544p) viewU.getLayoutParams();
                int i15 = c0544p2.f7548e;
                view2 = viewK;
                int i16 = c0544p2.f + i15;
                if (viewU.hasFocusable() && i15 == i7 && i16 == i8) {
                    return viewU;
                }
                if (!(viewU.hasFocusable() && view4 == null) && (viewU.hasFocusable() || view5 != null)) {
                    view3 = view5;
                    int iMin3 = Math.min(i16, i8) - Math.max(i15, i7);
                    if (!viewU.hasFocusable()) {
                        if (view4 == null) {
                            iMin = i12;
                            if (this.f7341c.u(viewU) && this.f7342d.u(viewU)) {
                                z4 = true;
                                z5 = true;
                            } else {
                                z4 = true;
                                z5 = false;
                            }
                            if (!z5) {
                                if (iMin3 <= iMin2) {
                                    if (iMin3 == iMin2) {
                                        if (z6 == (i15 > i9 ? z4 : false)) {
                                        }
                                        i13 += i11;
                                        p5 = p4;
                                        x5 = x4;
                                        iV = i14;
                                        viewK = view2;
                                        i12 = iMin;
                                    }
                                }
                                if (viewU.hasFocusable()) {
                                    int i17 = c0544p2.f7548e;
                                    iMin2 = Math.min(i16, i8) - Math.max(i15, i7);
                                    i9 = i17;
                                    view5 = viewU;
                                } else {
                                    int i18 = c0544p2.f7548e;
                                    iMin = Math.min(i16, i8) - Math.max(i15, i7);
                                    i10 = i18;
                                    view5 = view3;
                                    view4 = viewU;
                                }
                                i13 += i11;
                                p5 = p4;
                                x5 = x4;
                                iV = i14;
                                viewK = view2;
                                i12 = iMin;
                            }
                        }
                        view5 = view3;
                        i13 += i11;
                        p5 = p4;
                        x5 = x4;
                        iV = i14;
                        viewK = view2;
                        i12 = iMin;
                    } else if (iMin3 <= i12) {
                        if (iMin3 == i12) {
                        }
                    }
                } else {
                    view3 = view5;
                }
                iMin = i12;
                if (viewU.hasFocusable()) {
                }
                i13 += i11;
                p5 = p4;
                x5 = x4;
                iV = i14;
                viewK = view2;
                i12 = iMin;
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = viewK;
                view3 = view5;
            }
            iMin = i12;
            view5 = view3;
            i13 += i11;
            p5 = p4;
            x5 = x4;
            iV = i14;
            viewK = view2;
            i12 = iMin;
        }
        return view4 != null ? view4 : view5;
    }

    @Override // j0.J
    public final void T(P p4, X x4, h hVar) {
        super.T(p4, x4, hVar);
        hVar.g(GridView.class.getName());
    }

    @Override // j0.J
    public final void V(P p4, X x4, View view, h hVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0544p)) {
            U(view, hVar);
            return;
        }
        C0544p c0544p = (C0544p) layoutParams;
        int iK1 = k1(c0544p.f7352a.c(), p4, x4);
        if (this.f4759p == 0) {
            hVar.h(g.a(false, c0544p.f7548e, c0544p.f, iK1, 1));
        } else {
            hVar.h(g.a(false, iK1, 1, c0544p.f7548e, c0544p.f));
        }
    }

    @Override // j0.J
    public final void W(int i5, int i6) {
        v vVar = this.f4753K;
        vVar.t();
        ((SparseIntArray) vVar.f6793d).clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v37 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void W0(P p4, X x4, C0547t c0547t, C0546s c0546s) {
        int i5;
        int i6;
        int i7;
        int iD;
        int iC;
        int iE;
        int iD2;
        int iW;
        int iW2;
        ?? r8;
        int i8;
        View viewB;
        int iJ = this.f4761r.j();
        boolean z4 = iJ != 1073741824;
        int i9 = v() > 0 ? this.f4749G[this.f4748F] : 0;
        if (z4) {
            p1();
        }
        boolean z5 = c0547t.f7570e == 1;
        int iL1 = this.f4748F;
        if (!z5) {
            iL1 = l1(c0547t.f7569d, p4, x4) + m1(c0547t.f7569d, p4, x4);
        }
        int i10 = 0;
        while (i10 < this.f4748F && (i8 = c0547t.f7569d) >= 0 && i8 < x4.b() && iL1 > 0) {
            int i11 = c0547t.f7569d;
            int iM1 = m1(i11, p4, x4);
            if (iM1 > this.f4748F) {
                throw new IllegalArgumentException("Item at position " + i11 + " requires " + iM1 + " spans but GridLayoutManager has only " + this.f4748F + " spans.");
            }
            iL1 -= iM1;
            if (iL1 < 0 || (viewB = c0547t.b(p4)) == null) {
                break;
            }
            this.f4750H[i10] = viewB;
            i10++;
        }
        if (i10 == 0) {
            c0546s.f7563b = true;
            return;
        }
        if (z5) {
            i7 = 1;
            i6 = i10;
            i5 = 0;
        } else {
            i5 = i10 - 1;
            i6 = -1;
            i7 = -1;
        }
        int i12 = 0;
        while (i5 != i6) {
            View view = this.f4750H[i5];
            C0544p c0544p = (C0544p) view.getLayoutParams();
            int iM12 = m1(J.F(view), p4, x4);
            c0544p.f = iM12;
            c0544p.f7548e = i12;
            i12 += iM12;
            i5 += i7;
        }
        float f = 0.0f;
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            View view2 = this.f4750H[i14];
            if (c0547t.f7575k != null) {
                r8 = 0;
                r8 = 0;
                if (z5) {
                    b(view2, -1, true);
                } else {
                    b(view2, 0, true);
                }
            } else if (z5) {
                r8 = 0;
                b(view2, -1, false);
            } else {
                r8 = 0;
                b(view2, 0, false);
            }
            RecyclerView recyclerView = this.f7340b;
            Rect rect = this.f4754L;
            if (recyclerView == null) {
                rect.set(r8, r8, r8, r8);
            } else {
                rect.set(recyclerView.X(view2));
            }
            n1(view2, iJ, r8);
            int iC2 = this.f4761r.c(view2);
            if (iC2 > i13) {
                i13 = iC2;
            }
            float fD = (this.f4761r.d(view2) * 1.0f) / ((C0544p) view2.getLayoutParams()).f;
            if (fD > f) {
                f = fD;
            }
        }
        if (z4) {
            h1(Math.max(Math.round(f * this.f4748F), i9));
            i13 = 0;
            for (int i15 = 0; i15 < i10; i15++) {
                View view3 = this.f4750H[i15];
                n1(view3, 1073741824, true);
                int iC3 = this.f4761r.c(view3);
                if (iC3 > i13) {
                    i13 = iC3;
                }
            }
        }
        for (int i16 = 0; i16 < i10; i16++) {
            View view4 = this.f4750H[i16];
            if (this.f4761r.c(view4) != i13) {
                C0544p c0544p2 = (C0544p) view4.getLayoutParams();
                Rect rect2 = c0544p2.f7353b;
                int i17 = rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0544p2).topMargin + ((ViewGroup.MarginLayoutParams) c0544p2).bottomMargin;
                int i18 = rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) c0544p2).leftMargin + ((ViewGroup.MarginLayoutParams) c0544p2).rightMargin;
                int iJ1 = j1(c0544p2.f7548e, c0544p2.f);
                if (this.f4759p == 1) {
                    iW2 = J.w(false, iJ1, 1073741824, i18, ((ViewGroup.MarginLayoutParams) c0544p2).width);
                    iW = View.MeasureSpec.makeMeasureSpec(i13 - i17, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i13 - i18, 1073741824);
                    iW = J.w(false, iJ1, 1073741824, i17, ((ViewGroup.MarginLayoutParams) c0544p2).height);
                    iW2 = iMakeMeasureSpec;
                }
                if (y0(view4, iW2, iW, (K) view4.getLayoutParams())) {
                    view4.measure(iW2, iW);
                }
            }
        }
        c0546s.f7562a = i13;
        if (this.f4759p != 1) {
            if (c0547t.f == -1) {
                int i19 = c0547t.f7567b;
                iC = i19 - i13;
                iD = i19;
            } else {
                int i20 = c0547t.f7567b;
                iD = i20 + i13;
                iC = i20;
            }
            iE = 0;
            iD2 = 0;
        } else if (c0547t.f == -1) {
            iD2 = c0547t.f7567b;
            iE = iD2 - i13;
            iC = 0;
            iD = 0;
        } else {
            int i21 = c0547t.f7567b;
            iE = i21;
            iD = 0;
            iD2 = i21 + i13;
            iC = 0;
        }
        for (int i22 = 0; i22 < i10; i22++) {
            View view5 = this.f4750H[i22];
            C0544p c0544p3 = (C0544p) view5.getLayoutParams();
            if (this.f4759p != 1) {
                iE = E() + this.f4749G[c0544p3.f7548e];
                iD2 = this.f4761r.d(view5) + iE;
            } else if (V0()) {
                int iC4 = C() + this.f4749G[this.f4748F - c0544p3.f7548e];
                iD = iC4;
                iC = iC4 - this.f4761r.d(view5);
            } else {
                iC = C() + this.f4749G[c0544p3.f7548e];
                iD = this.f4761r.d(view5) + iC;
            }
            J.L(view5, iC, iE, iD, iD2);
            if (c0544p3.f7352a.j() || c0544p3.f7352a.m()) {
                c0546s.f7564c = true;
            }
            c0546s.f7565d = view5.hasFocusable() | c0546s.f7565d;
        }
        Arrays.fill(this.f4750H, (Object) null);
    }

    @Override // j0.J
    public final void X() {
        v vVar = this.f4753K;
        vVar.t();
        ((SparseIntArray) vVar.f6793d).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void X0(P p4, X x4, r rVar, int i5) {
        p1();
        if (x4.b() > 0 && !x4.f7383g) {
            boolean z4 = i5 == 1;
            int iL1 = l1(rVar.f7558b, p4, x4);
            if (z4) {
                while (iL1 > 0) {
                    int i6 = rVar.f7558b;
                    if (i6 <= 0) {
                        break;
                    }
                    int i7 = i6 - 1;
                    rVar.f7558b = i7;
                    iL1 = l1(i7, p4, x4);
                }
            } else {
                int iB = x4.b() - 1;
                int i8 = rVar.f7558b;
                while (i8 < iB) {
                    int i9 = i8 + 1;
                    int iL12 = l1(i9, p4, x4);
                    if (iL12 <= iL1) {
                        break;
                    }
                    i8 = i9;
                    iL1 = iL12;
                }
                rVar.f7558b = i8;
            }
        }
        i1();
    }

    @Override // j0.J
    public final void Y(int i5, int i6) {
        v vVar = this.f4753K;
        vVar.t();
        ((SparseIntArray) vVar.f6793d).clear();
    }

    @Override // j0.J
    public final void Z(int i5, int i6) {
        v vVar = this.f4753K;
        vVar.t();
        ((SparseIntArray) vVar.f6793d).clear();
    }

    @Override // j0.J
    public final void a0(int i5, int i6) {
        v vVar = this.f4753K;
        vVar.t();
        ((SparseIntArray) vVar.f6793d).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, j0.J
    public final void b0(P p4, X x4) {
        boolean z4 = x4.f7383g;
        SparseIntArray sparseIntArray = this.f4752J;
        SparseIntArray sparseIntArray2 = this.f4751I;
        if (z4) {
            int iV = v();
            for (int i5 = 0; i5 < iV; i5++) {
                C0544p c0544p = (C0544p) u(i5).getLayoutParams();
                int iC = c0544p.f7352a.c();
                sparseIntArray2.put(iC, c0544p.f);
                sparseIntArray.put(iC, c0544p.f7548e);
            }
        }
        super.b0(p4, x4);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, j0.J
    public final void c0(X x4) {
        super.c0(x4);
        this.E = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void d1(boolean z4) {
        if (z4) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.d1(false);
    }

    @Override // j0.J
    public final boolean f(K k5) {
        return k5 instanceof C0544p;
    }

    public final void h1(int i5) {
        int i6;
        int[] iArr = this.f4749G;
        int i7 = this.f4748F;
        if (iArr == null || iArr.length != i7 + 1 || iArr[iArr.length - 1] != i5) {
            iArr = new int[i7 + 1];
        }
        int i8 = 0;
        iArr[0] = 0;
        int i9 = i5 / i7;
        int i10 = i5 % i7;
        int i11 = 0;
        for (int i12 = 1; i12 <= i7; i12++) {
            i8 += i10;
            if (i8 <= 0 || i7 - i8 >= i10) {
                i6 = i9;
            } else {
                i6 = i9 + 1;
                i8 -= i7;
            }
            i11 += i6;
            iArr[i12] = i11;
        }
        this.f4749G = iArr;
    }

    public final void i1() {
        View[] viewArr = this.f4750H;
        if (viewArr == null || viewArr.length != this.f4748F) {
            this.f4750H = new View[this.f4748F];
        }
    }

    public final int j1(int i5, int i6) {
        if (this.f4759p != 1 || !V0()) {
            int[] iArr = this.f4749G;
            return iArr[i6 + i5] - iArr[i5];
        }
        int[] iArr2 = this.f4749G;
        int i7 = this.f4748F;
        return iArr2[i7 - i5] - iArr2[(i7 - i5) - i6];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, j0.J
    public final int k(X x4) {
        return F0(x4);
    }

    public final int k1(int i5, P p4, X x4) {
        boolean z4 = x4.f7383g;
        v vVar = this.f4753K;
        if (!z4) {
            int i6 = this.f4748F;
            vVar.getClass();
            return v.r(i5, i6);
        }
        int iB = p4.b(i5);
        if (iB != -1) {
            int i7 = this.f4748F;
            vVar.getClass();
            return v.r(iB, i7);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i5);
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, j0.J
    public final int l(X x4) {
        return G0(x4);
    }

    public final int l1(int i5, P p4, X x4) {
        boolean z4 = x4.f7383g;
        v vVar = this.f4753K;
        if (!z4) {
            int i6 = this.f4748F;
            vVar.getClass();
            return i5 % i6;
        }
        int i7 = this.f4752J.get(i5, -1);
        if (i7 != -1) {
            return i7;
        }
        int iB = p4.b(i5);
        if (iB != -1) {
            int i8 = this.f4748F;
            vVar.getClass();
            return iB % i8;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i5);
        return 0;
    }

    public final int m1(int i5, P p4, X x4) {
        boolean z4 = x4.f7383g;
        v vVar = this.f4753K;
        if (!z4) {
            vVar.getClass();
            return 1;
        }
        int i6 = this.f4751I.get(i5, -1);
        if (i6 != -1) {
            return i6;
        }
        if (p4.b(i5) != -1) {
            vVar.getClass();
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i5);
        return 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, j0.J
    public final int n(X x4) {
        return F0(x4);
    }

    public final void n1(View view, int i5, boolean z4) {
        int iW;
        int iW2;
        C0544p c0544p = (C0544p) view.getLayoutParams();
        Rect rect = c0544p.f7353b;
        int i6 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c0544p).topMargin + ((ViewGroup.MarginLayoutParams) c0544p).bottomMargin;
        int i7 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c0544p).leftMargin + ((ViewGroup.MarginLayoutParams) c0544p).rightMargin;
        int iJ1 = j1(c0544p.f7548e, c0544p.f);
        if (this.f4759p == 1) {
            iW2 = J.w(false, iJ1, i5, i7, ((ViewGroup.MarginLayoutParams) c0544p).width);
            iW = J.w(true, this.f4761r.l(), this.f7350m, i6, ((ViewGroup.MarginLayoutParams) c0544p).height);
        } else {
            int iW3 = J.w(false, iJ1, i5, i6, ((ViewGroup.MarginLayoutParams) c0544p).height);
            int iW4 = J.w(true, this.f4761r.l(), this.f7349l, i7, ((ViewGroup.MarginLayoutParams) c0544p).width);
            iW = iW3;
            iW2 = iW4;
        }
        K k5 = (K) view.getLayoutParams();
        if (z4 ? y0(view, iW2, iW, k5) : w0(view, iW2, iW, k5)) {
            view.measure(iW2, iW);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, j0.J
    public final int o(X x4) {
        return G0(x4);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, j0.J
    public final int o0(int i5, P p4, X x4) {
        p1();
        i1();
        return super.o0(i5, p4, x4);
    }

    public final void o1(int i5) {
        if (i5 == this.f4748F) {
            return;
        }
        this.E = true;
        if (i5 < 1) {
            throw new IllegalArgumentException(f.t(i5, "Span count should be at least 1. Provided "));
        }
        this.f4748F = i5;
        this.f4753K.t();
        n0();
    }

    public final void p1() {
        int iB;
        int iE;
        if (this.f4759p == 1) {
            iB = this.n - D();
            iE = C();
        } else {
            iB = this.f7351o - B();
            iE = E();
        }
        h1(iB - iE);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, j0.J
    public final int q0(int i5, P p4, X x4) {
        p1();
        i1();
        return super.q0(i5, p4, x4);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, j0.J
    public final K r() {
        return this.f4759p == 0 ? new C0544p(-2, -1) : new C0544p(-1, -2);
    }

    @Override // j0.J
    public final K s(Context context, AttributeSet attributeSet) {
        C0544p c0544p = new C0544p(context, attributeSet);
        c0544p.f7548e = -1;
        c0544p.f = 0;
        return c0544p;
    }

    @Override // j0.J
    public final K t(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            C0544p c0544p = new C0544p((ViewGroup.MarginLayoutParams) layoutParams);
            c0544p.f7548e = -1;
            c0544p.f = 0;
            return c0544p;
        }
        C0544p c0544p2 = new C0544p(layoutParams);
        c0544p2.f7548e = -1;
        c0544p2.f = 0;
        return c0544p2;
    }

    @Override // j0.J
    public final void t0(Rect rect, int i5, int i6) {
        int iG;
        int iG2;
        if (this.f4749G == null) {
            super.t0(rect, i5, i6);
        }
        int iD = D() + C();
        int iB = B() + E();
        if (this.f4759p == 1) {
            int iHeight = rect.height() + iB;
            RecyclerView recyclerView = this.f7340b;
            WeakHashMap weakHashMap = Q.f940a;
            iG2 = J.g(i6, iHeight, recyclerView.getMinimumHeight());
            int[] iArr = this.f4749G;
            iG = J.g(i5, iArr[iArr.length - 1] + iD, this.f7340b.getMinimumWidth());
        } else {
            int iWidth = rect.width() + iD;
            RecyclerView recyclerView2 = this.f7340b;
            WeakHashMap weakHashMap2 = Q.f940a;
            iG = J.g(i5, iWidth, recyclerView2.getMinimumWidth());
            int[] iArr2 = this.f4749G;
            iG2 = J.g(i6, iArr2[iArr2.length - 1] + iB, this.f7340b.getMinimumHeight());
        }
        this.f7340b.setMeasuredDimension(iG, iG2);
    }

    @Override // j0.J
    public final int x(P p4, X x4) {
        if (this.f4759p == 1) {
            return x4.b() < 1 ? this.f4748F : (k1(x4.b() - 1, p4, x4) + 1 != 1 || x4.b() >= this.f4748F) ? this.f4748F : x4.b();
        }
        if (x4.b() < 1) {
            return 0;
        }
        return k1(x4.b() - 1, p4, x4) + 1;
    }

    public GridLayoutManager(int i5) {
        super(1);
        this.E = false;
        this.f4748F = -1;
        this.f4751I = new SparseIntArray();
        this.f4752J = new SparseIntArray();
        this.f4753K = new v(3);
        this.f4754L = new Rect();
        o1(i5);
    }
}
