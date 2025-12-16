package j0;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.p000firebaseauthapi.b5;
import h0.AbstractC0432c;
import i0.AbstractC0477a;
import java.util.ArrayList;
import java.util.WeakHashMap;
import o.C0722k;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public abstract class J {

    /* renamed from: a, reason: collision with root package name */
    public D3.f f7339a;

    /* renamed from: b, reason: collision with root package name */
    public RecyclerView f7340b;

    /* renamed from: c, reason: collision with root package name */
    public final e.v f7341c;

    /* renamed from: d, reason: collision with root package name */
    public final e.v f7342d;

    /* renamed from: e, reason: collision with root package name */
    public C0549v f7343e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7344g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f7345h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f7346i;

    /* renamed from: j, reason: collision with root package name */
    public int f7347j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f7348k;

    /* renamed from: l, reason: collision with root package name */
    public int f7349l;

    /* renamed from: m, reason: collision with root package name */
    public int f7350m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f7351o;

    public J() {
        H h5 = new H(this, 0);
        H h6 = new H(this, 1);
        this.f7341c = new e.v(h5);
        this.f7342d = new e.v(h6);
        this.f = false;
        this.f7344g = false;
        this.f7345h = true;
        this.f7346i = true;
    }

    public static int F(View view) {
        if (view != null) {
            return ((K) view.getLayoutParams()).f7352a.c();
        }
        Log.e("SeslRecyclerView", "View is null.");
        return -1;
    }

    public static I G(Context context, AttributeSet attributeSet, int i5, int i6) {
        I i7 = new I();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0477a.f7143a, i5, i6);
        i7.f7335a = typedArrayObtainStyledAttributes.getInt(0, 1);
        i7.f7336b = typedArrayObtainStyledAttributes.getInt(10, 1);
        i7.f7337c = typedArrayObtainStyledAttributes.getBoolean(9, false);
        i7.f7338d = typedArrayObtainStyledAttributes.getBoolean(11, false);
        typedArrayObtainStyledAttributes.recycle();
        return i7;
    }

    public static boolean K(int i5, int i6, int i7) {
        int mode = View.MeasureSpec.getMode(i6);
        int size = View.MeasureSpec.getSize(i6);
        if (i7 > 0 && i5 != i7) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i5;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i5;
        }
        return true;
    }

    public static void L(View view, int i5, int i6, int i7, int i8) {
        K k5 = (K) view.getLayoutParams();
        Rect rect = k5.f7353b;
        view.layout(i5 + rect.left + ((ViewGroup.MarginLayoutParams) k5).leftMargin, i6 + rect.top + ((ViewGroup.MarginLayoutParams) k5).topMargin, (i7 - rect.right) - ((ViewGroup.MarginLayoutParams) k5).rightMargin, (i8 - rect.bottom) - ((ViewGroup.MarginLayoutParams) k5).bottomMargin);
    }

    public static int g(int i5, int i6, int i7) {
        int mode = View.MeasureSpec.getMode(i5);
        int size = View.MeasureSpec.getSize(i5);
        return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i6, i7) : size : Math.min(size, Math.max(i6, i7));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int w(boolean z4, int i5, int i6, int i7, int i8) {
        int iMax = Math.max(0, i5 - i7);
        if (z4) {
            if (i8 < 0) {
                if (i8 != -1 || (i6 != Integer.MIN_VALUE && (i6 == 0 || i6 != 1073741824))) {
                    i6 = 0;
                    i8 = 0;
                } else {
                    i8 = iMax;
                }
            }
            i6 = 1073741824;
        } else if (i8 >= 0) {
            i6 = 1073741824;
        } else if (i8 != -1) {
            if (i8 == -2) {
                if (i6 == Integer.MIN_VALUE || i6 == 1073741824) {
                    i8 = iMax;
                    i6 = Integer.MIN_VALUE;
                } else {
                    i8 = iMax;
                    i6 = 0;
                }
            }
        }
        return View.MeasureSpec.makeMeasureSpec(i8, i6);
    }

    public final int A() {
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView == null) {
            Log.e("SeslRecyclerView", "RecyclerView is null.");
            return 0;
        }
        WeakHashMap weakHashMap = J.Q.f940a;
        return recyclerView.getLayoutDirection();
    }

    public final void A0(C0549v c0549v) {
        C0549v c0549v2 = this.f7343e;
        if (c0549v2 != null && c0549v != c0549v2 && c0549v2.f7584e) {
            c0549v2.i();
        }
        this.f7343e = c0549v;
        RecyclerView recyclerView = this.f7340b;
        a0 a0Var = recyclerView.f4868i0;
        RecyclerView recyclerView2 = a0Var.f7399i;
        recyclerView2.removeCallbacks(a0Var);
        a0Var.f7396e.abortAnimation();
        AbstractC0739a.s(recyclerView2, 0.0f);
        if (c0549v.f7586h) {
            Log.w("SeslRecyclerView", "An instance of " + c0549v.getClass().getSimpleName() + " was started more than once. Each instance of" + c0549v.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        c0549v.f7581b = recyclerView;
        c0549v.f7582c = this;
        int i5 = c0549v.f7580a;
        if (i5 == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.l0.f7378a = i5;
        c0549v.f7584e = true;
        c0549v.f7583d = true;
        c0549v.f = recyclerView.f4884p.q(i5);
        c0549v.f7581b.f4868i0.b();
        c0549v.f7586h = true;
    }

    public final int B() {
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public boolean B0() {
        return false;
    }

    public final int C() {
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public final int D() {
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public final int E() {
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public int H(P p4, X x4) {
        AbstractC0526A abstractC0526A;
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView == null || (abstractC0526A = recyclerView.f4883o) == null) {
            return 1;
        }
        abstractC0526A.getClass();
        if (abstractC0526A instanceof androidx.preference.D) {
            if (e()) {
                return this.f7340b.f4883o.f();
            }
            return 1;
        }
        if (e()) {
            return this.f7340b.f4883o.a();
        }
        return 1;
    }

    public final void I(Rect rect, View view) {
        Matrix matrix;
        Rect rect2 = ((K) view.getLayoutParams()).f7353b;
        rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        if (this.f7340b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.f7340b.n;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public boolean J() {
        return false;
    }

    public void M(int i5) {
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView != null) {
            int iG = recyclerView.f4863h.g();
            for (int i6 = 0; i6 < iG; i6++) {
                recyclerView.f4863h.f(i6).offsetLeftAndRight(i5);
            }
        }
    }

    public void N(int i5) {
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView != null) {
            int iG = recyclerView.f4863h.g();
            for (int i6 = 0; i6 < iG; i6++) {
                recyclerView.f4863h.f(i6).offsetTopAndBottom(i5);
            }
        }
    }

    public void O() {
    }

    public void P(RecyclerView recyclerView) {
    }

    public abstract void Q(RecyclerView recyclerView);

    public abstract View R(View view, int i5, P p4, X x4);

    public void S(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.f7340b;
        P p4 = recyclerView.f4855e;
        X x4 = recyclerView.l0;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z4 = true;
        if (!recyclerView.canScrollVertically(1) && !this.f7340b.canScrollVertically(-1) && !this.f7340b.canScrollHorizontally(-1) && !this.f7340b.canScrollHorizontally(1)) {
            z4 = false;
        }
        accessibilityEvent.setScrollable(z4);
        AbstractC0526A abstractC0526A = this.f7340b.f4883o;
        if (abstractC0526A != null) {
            if (abstractC0526A instanceof androidx.preference.D) {
                accessibilityEvent.setItemCount(abstractC0526A.f());
            } else {
                accessibilityEvent.setItemCount(abstractC0526A.a());
            }
        }
    }

    public void T(P p4, X x4, K.h hVar) {
        if (this.f7340b.canScrollVertically(-1) || this.f7340b.canScrollHorizontally(-1)) {
            hVar.a(8192);
            hVar.i(true);
        }
        if (this.f7340b.canScrollVertically(1) || this.f7340b.canScrollHorizontally(1)) {
            hVar.a(4096);
            hVar.i(true);
        }
        hVar.f1201a.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(H(p4, x4), x(p4, x4), false, 0));
    }

    public final void U(View view, K.h hVar) {
        b0 b0VarV = RecyclerView.V(view);
        if (b0VarV == null || b0VarV.j() || ((ArrayList) this.f7339a.f507e).contains(b0VarV.f7406a)) {
            return;
        }
        RecyclerView recyclerView = this.f7340b;
        V(recyclerView.f4855e, recyclerView.l0, view, hVar);
    }

    public void V(P p4, X x4, View view, K.h hVar) {
        int iF = e() ? F(view) : 0;
        int iF2 = d() ? F(view) : 0;
        AbstractC0526A abstractC0526A = this.f7340b.f4883o;
        abstractC0526A.getClass();
        if (abstractC0526A instanceof androidx.preference.D) {
            iF = this.f7340b.f4883o.g(iF);
            iF2 = this.f7340b.f4883o.g(iF2);
        }
        hVar.h(K.g.a(false, iF, 1, iF2, 1));
    }

    public void W(int i5, int i6) {
    }

    public void X() {
    }

    public void Y(int i5, int i6) {
    }

    public void Z(int i5, int i6) {
    }

    public void a0(int i5, int i6) {
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(View view, int i5, boolean z4) {
        int iB;
        b0 b0VarV = RecyclerView.V(view);
        if (z4 || b0VarV.j()) {
            C0722k c0722k = (C0722k) this.f7340b.f4867i.f6792c;
            m0 m0VarA = (m0) c0722k.getOrDefault(b0VarV, null);
            if (m0VarA == null) {
                m0VarA = m0.a();
                c0722k.put(b0VarV, m0VarA);
            }
            m0VarA.f7535a |= 1;
        } else {
            this.f7340b.f4867i.C(b0VarV);
        }
        K k5 = (K) view.getLayoutParams();
        if (b0VarV.r() || b0VarV.k()) {
            if (b0VarV.k()) {
                b0VarV.n.l(b0VarV);
            } else {
                b0VarV.f7414j &= -33;
            }
            this.f7339a.c(view, i5, view.getLayoutParams(), false);
        } else if (view.getParent() == this.f7340b) {
            D3.f fVar = this.f7339a;
            int iIndexOfChild = ((C0552y) fVar.f505c).f7599a.indexOfChild(view);
            if (iIndexOfChild == -1) {
                iB = -1;
                if (i5 == -1) {
                    i5 = this.f7339a.g();
                }
                if (iB != -1) {
                    StringBuilder sb = new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                    sb.append(this.f7340b.indexOfChild(view));
                    throw new IllegalStateException(AbstractC0432c.f(this.f7340b, sb));
                }
                if (iB != i5) {
                    J j3 = this.f7340b.f4884p;
                    View viewU = j3.u(iB);
                    if (viewU == null) {
                        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + iB + j3.f7340b.toString());
                    }
                    j3.u(iB);
                    j3.f7339a.e(iB);
                    K k6 = (K) viewU.getLayoutParams();
                    b0 b0VarV2 = RecyclerView.V(viewU);
                    if (b0VarV2.j()) {
                        C0722k c0722k2 = (C0722k) j3.f7340b.f4867i.f6792c;
                        m0 m0VarA2 = (m0) c0722k2.getOrDefault(b0VarV2, null);
                        if (m0VarA2 == null) {
                            m0VarA2 = m0.a();
                            c0722k2.put(b0VarV2, m0VarA2);
                        }
                        m0VarA2.f7535a = 1 | m0VarA2.f7535a;
                    } else {
                        j3.f7340b.f4867i.C(b0VarV2);
                    }
                    j3.f7339a.c(viewU, i5, k6, b0VarV2.j());
                }
            } else {
                C0531c c0531c = (C0531c) fVar.f506d;
                if (!c0531c.d(iIndexOfChild)) {
                    iB = iIndexOfChild - c0531c.b(iIndexOfChild);
                }
                if (i5 == -1) {
                }
                if (iB != -1) {
                }
            }
        } else {
            this.f7339a.b(view, i5, false);
            k5.f7354c = true;
            C0549v c0549v = this.f7343e;
            if (c0549v != null && c0549v.f7584e) {
                c0549v.f7581b.getClass();
                if (RecyclerView.T(view) == c0549v.f7580a) {
                    c0549v.f = view;
                    if (RecyclerView.f4771m2) {
                        Log.d("SeslRecyclerView", "smooth scroll target view has been attached");
                    }
                }
            }
        }
        if (k5.f7355d) {
            if (RecyclerView.f4771m2) {
                Log.d("SeslRecyclerView", "consuming pending invalidate on child " + k5.f7352a);
            }
            b0VarV.f7406a.invalidate();
            k5.f7355d = false;
        }
    }

    public abstract void b0(P p4, X x4);

    public void c(String str) {
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView != null) {
            recyclerView.n(str);
        }
    }

    public abstract void c0(X x4);

    public abstract boolean d();

    public void d0(Parcelable parcelable) {
    }

    public abstract boolean e();

    public Parcelable e0() {
        return null;
    }

    public boolean f(K k5) {
        return k5 != null;
    }

    public void f0(int i5) {
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0061 A[PHI: r3
      0x0061: PHI (r3v8 int) = (r3v5 int), (r3v11 int) binds: [B:28:0x007d, B:20:0x0053] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean g0(P p4, X x4, int i5, Bundle bundle) {
        int iE;
        int iC;
        if (this.f7340b == null) {
            return false;
        }
        int iHeight = this.f7351o;
        int iWidth = this.n;
        Rect rect = new Rect();
        if (this.f7340b.getMatrix().isIdentity() && this.f7340b.getGlobalVisibleRect(rect)) {
            iHeight = rect.height();
            iWidth = rect.width();
        }
        if (i5 == 4096) {
            iE = this.f7340b.canScrollVertically(1) ? (iHeight - E()) - B() : 0;
            if (this.f7340b.canScrollHorizontally(1)) {
                iC = (iWidth - C()) - D();
            }
        } else if (i5 != 8192) {
            iE = 0;
            iC = 0;
        } else {
            iE = this.f7340b.canScrollVertically(-1) ? -((iHeight - E()) - B()) : 0;
            iC = this.f7340b.canScrollHorizontally(-1) ? -((iWidth - C()) - D()) : 0;
        }
        if (iE == 0 && iC == 0) {
            return false;
        }
        this.f7340b.A0(iC, true, iE);
        return true;
    }

    public void h(int i5, int i6, X x4, b5 b5Var) {
    }

    public void h0() {
        n0();
    }

    public void i(int i5, b5 b5Var) {
    }

    public final void i0(P p4) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            if (!RecyclerView.V(u(iV)).q()) {
                View viewU = u(iV);
                l0(iV);
                p4.h(viewU);
            }
        }
    }

    public abstract int j(X x4);

    public final void j0(P p4) {
        ArrayList arrayList;
        int size = p4.f7363a.size();
        int i5 = size - 1;
        while (true) {
            arrayList = p4.f7363a;
            if (i5 < 0) {
                break;
            }
            View view = ((b0) arrayList.get(i5)).f7406a;
            b0 b0VarV = RecyclerView.V(view);
            if (!b0VarV.q()) {
                b0VarV.p(false);
                if (b0VarV.l()) {
                    this.f7340b.removeDetachedView(view, false);
                }
                F f = this.f7340b.f4815O;
                if (f != null) {
                    f.d(b0VarV);
                }
                b0VarV.p(true);
                b0 b0VarV2 = RecyclerView.V(view);
                b0VarV2.n = null;
                b0VarV2.f7418o = false;
                b0VarV2.f7414j &= -33;
                p4.i(b0VarV2);
            }
            i5--;
        }
        arrayList.clear();
        ArrayList arrayList2 = p4.f7364b;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.f7340b.invalidate();
        }
    }

    public abstract int k(X x4);

    public final void k0(View view, P p4) {
        D3.f fVar = this.f7339a;
        C0552y c0552y = (C0552y) fVar.f505c;
        int i5 = fVar.f504b;
        if (i5 == 1) {
            throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
        }
        if (i5 == 2) {
            throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
        }
        try {
            fVar.f504b = 1;
            fVar.f = view;
            int iIndexOfChild = c0552y.f7599a.indexOfChild(view);
            if (iIndexOfChild >= 0) {
                if (((C0531c) fVar.f506d).f(iIndexOfChild)) {
                    fVar.n(view);
                }
                c0552y.h(iIndexOfChild);
            }
            fVar.f504b = 0;
            fVar.f = null;
            p4.h(view);
        } catch (Throwable th) {
            fVar.f504b = 0;
            fVar.f = null;
            throw th;
        }
    }

    public abstract int l(X x4);

    public final void l0(int i5) {
        if (u(i5) != null) {
            D3.f fVar = this.f7339a;
            C0552y c0552y = (C0552y) fVar.f505c;
            int i6 = fVar.f504b;
            if (i6 == 1) {
                throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
            }
            if (i6 == 2) {
                throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
            }
            try {
                int iH = fVar.h(i5);
                View childAt = c0552y.f7599a.getChildAt(iH);
                if (childAt != null) {
                    fVar.f504b = 1;
                    fVar.f = childAt;
                    if (((C0531c) fVar.f506d).f(iH)) {
                        fVar.n(childAt);
                    }
                    c0552y.h(iH);
                }
            } finally {
                fVar.f504b = 0;
                fVar.f = null;
            }
        }
    }

    public abstract int m(X x4);

    /* JADX WARN: Removed duplicated region for block: B:28:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m0(RecyclerView recyclerView, View view, Rect rect, boolean z4, boolean z5) {
        int iC = C();
        int iE = E();
        int iD = this.n - D();
        int iB = this.f7351o - B();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int iWidth = rect.width() + left;
        int iHeight = rect.height() + top;
        int i5 = left - iC;
        int iMin = Math.min(0, i5);
        int i6 = top - iE;
        int iMin2 = Math.min(0, i6);
        int i7 = iWidth - iD;
        int iMax = Math.max(0, i7);
        int iMax2 = Math.max(0, iHeight - iB);
        if (A() != 1) {
            if (iMin == 0) {
                iMin = Math.min(i5, iMax);
            }
            iMax = iMin;
        } else if (iMax == 0) {
            iMax = Math.max(iMin, i7);
        }
        if (iMin2 == 0) {
            iMin2 = Math.min(i6, iMax2);
        }
        int[] iArr = {iMax, iMin2};
        int i8 = iArr[0];
        int i9 = iArr[1];
        if (z5) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild != null) {
                int iC2 = C();
                int iE2 = E();
                int iD2 = this.n - D();
                int iB2 = this.f7351o - B();
                Rect rect2 = this.f7340b.f4878l;
                y(rect2, focusedChild);
                if (rect2.left - i8 < iD2 && rect2.right - i8 > iC2 && rect2.top - i9 < iB2 && rect2.bottom - i9 > iE2) {
                }
            }
        } else if (i8 != 0 || i9 != 0) {
            if (z4) {
                recyclerView.scrollBy(i8, i9);
            } else {
                recyclerView.A0(i8, false, i9);
            }
            return true;
        }
        return false;
    }

    public abstract int n(X x4);

    public final void n0() {
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public abstract int o(X x4);

    public abstract int o0(int i5, P p4, X x4);

    public final void p(P p4) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewU = u(iV);
            b0 b0VarV = RecyclerView.V(viewU);
            if (b0VarV.q()) {
                if (RecyclerView.f4771m2) {
                    Log.d("SeslRecyclerView", "ignoring view " + b0VarV);
                }
            } else if (!b0VarV.h() || b0VarV.j() || this.f7340b.f4883o.f7328b) {
                u(iV);
                this.f7339a.e(iV);
                p4.j(viewU);
                this.f7340b.f4867i.C(b0VarV);
            } else {
                l0(iV);
                p4.i(b0VarV);
            }
        }
    }

    public abstract void p0(int i5);

    public View q(int i5) {
        int iV = v();
        for (int i6 = 0; i6 < iV; i6++) {
            View viewU = u(i6);
            b0 b0VarV = RecyclerView.V(viewU);
            if (b0VarV != null && b0VarV.c() == i5 && !b0VarV.q() && (this.f7340b.l0.f7383g || !b0VarV.j())) {
                return viewU;
            }
        }
        return null;
    }

    public abstract int q0(int i5, P p4, X x4);

    public abstract K r();

    public final void r0(RecyclerView recyclerView) {
        s0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public K s(Context context, AttributeSet attributeSet) {
        return new K(context, attributeSet);
    }

    public final void s0(int i5, int i6) {
        this.n = View.MeasureSpec.getSize(i5);
        int mode = View.MeasureSpec.getMode(i5);
        this.f7349l = mode;
        if (mode == 0 && !RecyclerView.f4773p2) {
            this.n = 0;
        }
        this.f7351o = View.MeasureSpec.getSize(i6);
        int mode2 = View.MeasureSpec.getMode(i6);
        this.f7350m = mode2;
        if (mode2 != 0 || RecyclerView.f4773p2) {
            return;
        }
        this.f7351o = 0;
    }

    public K t(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof K ? new K((K) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new K((ViewGroup.MarginLayoutParams) layoutParams) : new K(layoutParams);
    }

    public void t0(Rect rect, int i5, int i6) {
        int iD = D() + C() + rect.width();
        int iB = B() + E() + rect.height();
        RecyclerView recyclerView = this.f7340b;
        WeakHashMap weakHashMap = J.Q.f940a;
        this.f7340b.setMeasuredDimension(g(i5, iD, recyclerView.getMinimumWidth()), g(i6, iB, this.f7340b.getMinimumHeight()));
    }

    public final View u(int i5) {
        D3.f fVar = this.f7339a;
        if (fVar != null) {
            return fVar.f(i5);
        }
        return null;
    }

    public final void u0(int i5, int i6) {
        int iV = v();
        if (iV == 0) {
            this.f7340b.v(i5, i6);
            return;
        }
        int i7 = Integer.MIN_VALUE;
        int i8 = Integer.MAX_VALUE;
        int i9 = Integer.MIN_VALUE;
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < iV; i11++) {
            View viewU = u(i11);
            Rect rect = this.f7340b.f4878l;
            y(rect, viewU);
            int i12 = rect.left;
            if (i12 < i10) {
                i10 = i12;
            }
            int i13 = rect.right;
            if (i13 > i7) {
                i7 = i13;
            }
            int i14 = rect.top;
            if (i14 < i8) {
                i8 = i14;
            }
            int i15 = rect.bottom;
            if (i15 > i9) {
                i9 = i15;
            }
        }
        this.f7340b.f4878l.set(i10, i8, i7, i9);
        t0(this.f7340b.f4878l, i5, i6);
    }

    public final int v() {
        D3.f fVar = this.f7339a;
        if (fVar != null) {
            return fVar.g();
        }
        return 0;
    }

    public final void v0(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.f7340b = null;
            this.f7339a = null;
            this.n = 0;
            this.f7351o = 0;
        } else {
            this.f7340b = recyclerView;
            this.f7339a = recyclerView.f4863h;
            this.n = recyclerView.getWidth();
            this.f7351o = recyclerView.getHeight();
        }
        this.f7349l = 1073741824;
        this.f7350m = 1073741824;
    }

    public final boolean w0(View view, int i5, int i6, K k5) {
        return (!view.isLayoutRequested() && this.f7345h && K(view.getWidth(), i5, ((ViewGroup.MarginLayoutParams) k5).width) && K(view.getHeight(), i6, ((ViewGroup.MarginLayoutParams) k5).height)) ? false : true;
    }

    public int x(P p4, X x4) {
        RecyclerView recyclerView = this.f7340b;
        if (recyclerView == null || recyclerView.f4883o == null || !d()) {
            return 1;
        }
        return this.f7340b.f4883o.a();
    }

    public boolean x0() {
        return false;
    }

    public void y(Rect rect, View view) {
        RecyclerView.W(rect, view);
    }

    public final boolean y0(View view, int i5, int i6, K k5) {
        return (this.f7345h && K(view.getMeasuredWidth(), i5, ((ViewGroup.MarginLayoutParams) k5).width) && K(view.getMeasuredHeight(), i6, ((ViewGroup.MarginLayoutParams) k5).height)) ? false : true;
    }

    public final int z() {
        RecyclerView recyclerView = this.f7340b;
        AbstractC0526A adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        if (adapter != null) {
            return adapter.a();
        }
        return 0;
    }

    public abstract void z0(RecyclerView recyclerView, int i5);
}
