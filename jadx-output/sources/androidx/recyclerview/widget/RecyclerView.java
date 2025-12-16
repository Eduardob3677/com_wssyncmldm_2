package androidx.recyclerview.widget;

import A3.D;
import D3.f;
import F0.c;
import H0.g;
import J.C0039m;
import J.C0042p;
import J.I;
import J.InterfaceC0040n;
import J.Q;
import R2.n;
import android.R;
import android.animation.LayoutTransition;
import android.animation.ValueAnimator;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Looper;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.Display;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import android.widget.TextView;
import androidx.appcompat.graphics.drawable.SeslRecoilDrawable;
import androidx.core.widget.NestedScrollView;
import androidx.picker.widget.HandlerC0161c;
import c1.w;
import com.google.android.gms.internal.p000firebaseauthapi.b5;
import com.idm.fotaagent.database.sqlite.database.IDMDatabaseInterface;
import com.idm.providers.mo.IDMMoInterface;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import d.b;
import e.v;
import h0.AbstractC0432c;
import i0.AbstractC0477a;
import i3.x;
import j0.AbstractC0526A;
import j0.C0529a;
import j0.C0530b;
import j0.C0531c;
import j0.C0534f;
import j0.C0539k;
import j0.C0541m;
import j0.C0549v;
import j0.C0551x;
import j0.C0552y;
import j0.E;
import j0.F;
import j0.G;
import j0.J;
import j0.K;
import j0.L;
import j0.M;
import j0.N;
import j0.O;
import j0.P;
import j0.RunnableC0543o;
import j0.RunnableC0553z;
import j0.S;
import j0.T;
import j0.U;
import j0.W;
import j0.X;
import j0.Y;
import j0.Z;
import j0.a0;
import j0.b0;
import j0.d0;
import j0.e0;
import j0.k0;
import j0.m0;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import k.Q0;
import o.C0716e;
import o.C0722k;
import o4.a;
import p.AbstractC0735a;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup {

    /* renamed from: l2, reason: collision with root package name */
    public static boolean f4770l2 = false;

    /* renamed from: m2, reason: collision with root package name */
    public static boolean f4771m2 = false;

    /* renamed from: n2, reason: collision with root package name */
    public static final int[] f4772n2 = {R.attr.nestedScrollingEnabled};
    public static final float o2 = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* renamed from: p2, reason: collision with root package name */
    public static final boolean f4773p2 = true;
    public static final boolean q2 = true;

    /* renamed from: r2, reason: collision with root package name */
    public static final boolean f4774r2 = true;

    /* renamed from: s2, reason: collision with root package name */
    public static final float f4775s2 = 10.0f;
    public static final Class[] t2;

    /* renamed from: u2, reason: collision with root package name */
    public static final c f4776u2;

    /* renamed from: v2, reason: collision with root package name */
    public static final Y f4777v2;

    /* renamed from: A, reason: collision with root package name */
    public boolean f4778A;

    /* renamed from: A0, reason: collision with root package name */
    public final int[] f4779A0;

    /* renamed from: A1, reason: collision with root package name */
    public boolean f4780A1;

    /* renamed from: B, reason: collision with root package name */
    public int f4781B;
    public boolean B0;

    /* renamed from: B1, reason: collision with root package name */
    public boolean f4782B1;

    /* renamed from: C, reason: collision with root package name */
    public boolean f4783C;

    /* renamed from: C0, reason: collision with root package name */
    public float f4784C0;

    /* renamed from: C1, reason: collision with root package name */
    public int f4785C1;

    /* renamed from: D, reason: collision with root package name */
    public final AccessibilityManager f4786D;

    /* renamed from: D0, reason: collision with root package name */
    public boolean f4787D0;

    /* renamed from: D1, reason: collision with root package name */
    public final int[] f4788D1;
    public ArrayList E;

    /* renamed from: E0, reason: collision with root package name */
    public ValueAnimator f4789E0;

    /* renamed from: E1, reason: collision with root package name */
    public long f4790E1;

    /* renamed from: F, reason: collision with root package name */
    public boolean f4791F;

    /* renamed from: F0, reason: collision with root package name */
    public boolean f4792F0;

    /* renamed from: F1, reason: collision with root package name */
    public long f4793F1;

    /* renamed from: G, reason: collision with root package name */
    public boolean f4794G;

    /* renamed from: G0, reason: collision with root package name */
    public boolean f4795G0;
    public final long G1;

    /* renamed from: H, reason: collision with root package name */
    public int f4796H;

    /* renamed from: H0, reason: collision with root package name */
    public int f4797H0;

    /* renamed from: H1, reason: collision with root package name */
    public final long f4798H1;

    /* renamed from: I, reason: collision with root package name */
    public int f4799I;

    /* renamed from: I0, reason: collision with root package name */
    public boolean f4800I0;

    /* renamed from: I1, reason: collision with root package name */
    public long f4801I1;

    /* renamed from: J, reason: collision with root package name */
    public E f4802J;

    /* renamed from: J0, reason: collision with root package name */
    public boolean f4803J0;

    /* renamed from: J1, reason: collision with root package name */
    public int f4804J1;

    /* renamed from: K, reason: collision with root package name */
    public EdgeEffect f4805K;

    /* renamed from: K0, reason: collision with root package name */
    public final b f4806K0;
    public boolean K1;

    /* renamed from: L, reason: collision with root package name */
    public EdgeEffect f4807L;

    /* renamed from: L0, reason: collision with root package name */
    public final int[] f4808L0;

    /* renamed from: L1, reason: collision with root package name */
    public boolean f4809L1;

    /* renamed from: M, reason: collision with root package name */
    public EdgeEffect f4810M;

    /* renamed from: M0, reason: collision with root package name */
    public final int f4811M0;

    /* renamed from: M1, reason: collision with root package name */
    public int f4812M1;

    /* renamed from: N, reason: collision with root package name */
    public EdgeEffect f4813N;

    /* renamed from: N0, reason: collision with root package name */
    public final int f4814N0;
    public boolean N1;

    /* renamed from: O, reason: collision with root package name */
    public F f4815O;
    public boolean O0;

    /* renamed from: O1, reason: collision with root package name */
    public final boolean f4816O1;

    /* renamed from: P0, reason: collision with root package name */
    public final boolean f4817P0;

    /* renamed from: P1, reason: collision with root package name */
    public boolean f4818P1;

    /* renamed from: Q, reason: collision with root package name */
    public int f4819Q;

    /* renamed from: Q0, reason: collision with root package name */
    public boolean f4820Q0;

    /* renamed from: Q1, reason: collision with root package name */
    public final int f4821Q1;

    /* renamed from: R, reason: collision with root package name */
    public int f4822R;

    /* renamed from: R0, reason: collision with root package name */
    public boolean f4823R0;

    /* renamed from: R1, reason: collision with root package name */
    public final int f4824R1;

    /* renamed from: S0, reason: collision with root package name */
    public boolean f4825S0;

    /* renamed from: S1, reason: collision with root package name */
    public final Rect f4826S1;

    /* renamed from: T, reason: collision with root package name */
    public VelocityTracker f4827T;

    /* renamed from: T0, reason: collision with root package name */
    public ArrayList f4828T0;

    /* renamed from: T1, reason: collision with root package name */
    public final Rect f4829T1;

    /* renamed from: U, reason: collision with root package name */
    public int f4830U;

    /* renamed from: U0, reason: collision with root package name */
    public final boolean f4831U0;

    /* renamed from: U1, reason: collision with root package name */
    public boolean f4832U1;

    /* renamed from: V, reason: collision with root package name */
    public int f4833V;

    /* renamed from: V0, reason: collision with root package name */
    public int f4834V0;
    public int V1;

    /* renamed from: W, reason: collision with root package name */
    public int f4835W;
    public int W0;

    /* renamed from: W1, reason: collision with root package name */
    public final int f4836W1;

    /* renamed from: X0, reason: collision with root package name */
    public int f4837X0;

    /* renamed from: X1, reason: collision with root package name */
    public final int f4838X1;

    /* renamed from: Y0, reason: collision with root package name */
    public int f4839Y0;

    /* renamed from: Y1, reason: collision with root package name */
    public boolean f4840Y1;

    /* renamed from: Z0, reason: collision with root package name */
    public int f4841Z0;

    /* renamed from: Z1, reason: collision with root package name */
    public final w f4842Z1;

    /* renamed from: a0, reason: collision with root package name */
    public int f4843a0;

    /* renamed from: a1, reason: collision with root package name */
    public int f4844a1;

    /* renamed from: a2, reason: collision with root package name */
    public final D f4845a2;

    /* renamed from: b0, reason: collision with root package name */
    public int f4846b0;

    /* renamed from: b1, reason: collision with root package name */
    public View f4847b1;

    /* renamed from: b2, reason: collision with root package name */
    public final boolean f4848b2;

    /* renamed from: c, reason: collision with root package name */
    public final float f4849c;

    /* renamed from: c0, reason: collision with root package name */
    public L f4850c0;

    /* renamed from: c1, reason: collision with root package name */
    public int f4851c1;
    public final HandlerC0161c c2;

    /* renamed from: d, reason: collision with root package name */
    public final S f4852d;

    /* renamed from: d0, reason: collision with root package name */
    public final int f4853d0;

    /* renamed from: d1, reason: collision with root package name */
    public int f4854d1;
    public final ArrayList d2;

    /* renamed from: e, reason: collision with root package name */
    public final P f4855e;

    /* renamed from: e0, reason: collision with root package name */
    public final int f4856e0;
    public final Drawable e1;
    public T f;

    /* renamed from: f0, reason: collision with root package name */
    public final float f4857f0;

    /* renamed from: f1, reason: collision with root package name */
    public final Rect f4858f1;

    /* renamed from: f2, reason: collision with root package name */
    public final RunnableC0553z f4859f2;

    /* renamed from: g, reason: collision with root package name */
    public final C0530b f4860g;
    public final float g0;

    /* renamed from: g1, reason: collision with root package name */
    public int f4861g1;

    /* renamed from: g2, reason: collision with root package name */
    public boolean f4862g2;

    /* renamed from: h, reason: collision with root package name */
    public final f f4863h;

    /* renamed from: h0, reason: collision with root package name */
    public boolean f4864h0;

    /* renamed from: h1, reason: collision with root package name */
    public int f4865h1;

    /* renamed from: h2, reason: collision with root package name */
    public int f4866h2;

    /* renamed from: i, reason: collision with root package name */
    public final v f4867i;

    /* renamed from: i0, reason: collision with root package name */
    public final a0 f4868i0;

    /* renamed from: i1, reason: collision with root package name */
    public int f4869i1;

    /* renamed from: i2, reason: collision with root package name */
    public int f4870i2;

    /* renamed from: j, reason: collision with root package name */
    public boolean f4871j;

    /* renamed from: j0, reason: collision with root package name */
    public RunnableC0543o f4872j0;

    /* renamed from: j1, reason: collision with root package name */
    public boolean f4873j1;

    /* renamed from: j2, reason: collision with root package name */
    public final C0552y f4874j2;

    /* renamed from: k, reason: collision with root package name */
    public final RunnableC0553z f4875k;
    public final b5 k0;

    /* renamed from: k1, reason: collision with root package name */
    public boolean f4876k1;

    /* renamed from: k2, reason: collision with root package name */
    public final boolean f4877k2;

    /* renamed from: l, reason: collision with root package name */
    public final Rect f4878l;
    public final X l0;

    /* renamed from: l1, reason: collision with root package name */
    public boolean f4879l1;

    /* renamed from: m, reason: collision with root package name */
    public final Rect f4880m;
    public M m0;

    /* renamed from: m1, reason: collision with root package name */
    public boolean f4881m1;
    public final RectF n;
    public ArrayList n0;

    /* renamed from: n1, reason: collision with root package name */
    public final int f4882n1;

    /* renamed from: o, reason: collision with root package name */
    public AbstractC0526A f4883o;
    public boolean o0;
    public boolean o1;

    /* renamed from: p, reason: collision with root package name */
    public J f4884p;

    /* renamed from: p0, reason: collision with root package name */
    public boolean f4885p0;

    /* renamed from: p1, reason: collision with root package name */
    public boolean f4886p1;

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f4887q;
    public final C0552y q0;

    /* renamed from: q1, reason: collision with root package name */
    public boolean f4888q1;

    /* renamed from: r, reason: collision with root package name */
    public final ArrayList f4889r;
    public boolean r0;

    /* renamed from: r1, reason: collision with root package name */
    public int f4890r1;

    /* renamed from: s, reason: collision with root package name */
    public final ArrayList f4891s;
    public d0 s0;

    /* renamed from: s1, reason: collision with root package name */
    public int f4892s1;

    /* renamed from: t, reason: collision with root package name */
    public C0541m f4893t;
    public final int[] t0;

    /* renamed from: t1, reason: collision with root package name */
    public int f4894t1;

    /* renamed from: u, reason: collision with root package name */
    public boolean f4895u;
    public C0039m u0;

    /* renamed from: u1, reason: collision with root package name */
    public final Paint f4896u1;

    /* renamed from: v, reason: collision with root package name */
    public boolean f4897v;

    /* renamed from: v0, reason: collision with root package name */
    public final int[] f4898v0;

    /* renamed from: v1, reason: collision with root package name */
    public final androidx.appcompat.util.c f4899v1;

    /* renamed from: w, reason: collision with root package name */
    public boolean f4900w;

    /* renamed from: w0, reason: collision with root package name */
    public final int[] f4901w0;

    /* renamed from: w1, reason: collision with root package name */
    public int f4902w1;

    /* renamed from: x, reason: collision with root package name */
    public int f4903x;

    /* renamed from: x0, reason: collision with root package name */
    public final int[] f4904x0;

    /* renamed from: x1, reason: collision with root package name */
    public boolean f4905x1;

    /* renamed from: y, reason: collision with root package name */
    public boolean f4906y;

    /* renamed from: y0, reason: collision with root package name */
    public final Context f4907y0;

    /* renamed from: y1, reason: collision with root package name */
    public boolean f4908y1;

    /* renamed from: z, reason: collision with root package name */
    public boolean f4909z;

    /* renamed from: z0, reason: collision with root package name */
    public boolean f4910z0;

    /* renamed from: z1, reason: collision with root package name */
    public boolean f4911z1;

    static {
        Class cls = Integer.TYPE;
        t2 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        new LinearInterpolator();
        f4776u2 = new c(2);
        f4777v2 = new Y();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.wssyncmldm.R.attr.recyclerViewStyle);
    }

    public static RecyclerView P(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            RecyclerView recyclerViewP = P(viewGroup.getChildAt(i5));
            if (recyclerViewP != null) {
                return recyclerViewP;
            }
        }
        return null;
    }

    public static int T(View view) {
        b0 b0VarV = V(view);
        if (b0VarV != null) {
            return b0VarV.c();
        }
        return -1;
    }

    public static b0 V(View view) {
        if (view == null) {
            return null;
        }
        return ((K) view.getLayoutParams()).f7352a;
    }

    public static void W(Rect rect, View view) {
        K k5 = (K) view.getLayoutParams();
        Rect rect2 = k5.f7353b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) k5).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) k5).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) k5).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) k5).bottomMargin);
    }

    private int getPendingAnimFlag() {
        F itemAnimator = getItemAnimator();
        if (itemAnimator instanceof C0539k) {
            return ((C0539k) itemAnimator).f7493p;
        }
        return 0;
    }

    private int getRecyclerViewScreenLocationY() {
        int[] iArr = this.f4779A0;
        getLocationOnScreen(iArr);
        return iArr[1];
    }

    private C0039m getScrollingChildHelper() {
        if (this.u0 == null) {
            this.u0 = new C0039m(this);
        }
        return this.u0;
    }

    public static void q(b0 b0Var) {
        WeakReference weakReference = b0Var.f7407b;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == b0Var.f7406a) {
                    return;
                }
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            b0Var.f7407b = null;
        }
    }

    public static void setDebugAssertionsEnabled(boolean z4) {
        f4770l2 = z4;
    }

    public static void setVerboseLoggingEnabled(boolean z4) {
        f4771m2 = z4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupGoToTop(int i5) {
        b0();
    }

    public static int t(int i5, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i6) {
        if (i5 > 0 && edgeEffect != null && L2.b.n(edgeEffect) != 0.0f) {
            int iRound = Math.round(L2.b.B(edgeEffect, ((-i5) * 4.0f) / i6, 0.5f) * ((-i6) / 4.0f));
            if (iRound != i5) {
                edgeEffect.finish();
            }
            return i5 - iRound;
        }
        if (i5 >= 0 || edgeEffect2 == null || L2.b.n(edgeEffect2) == 0.0f) {
            return i5;
        }
        float f = i6;
        int iRound2 = Math.round(L2.b.B(edgeEffect2, (i5 * 4.0f) / f, 0.5f) * (f / 4.0f));
        if (iRound2 != i5) {
            edgeEffect2.finish();
        }
        return i5 - iRound2;
    }

    public final boolean A(int i5, int i6, int[] iArr, int[] iArr2, int i7) {
        return getScrollingChildHelper().c(i5, i6, iArr, iArr2, i7);
    }

    public final void A0(int i5, boolean z4, int i6) {
        J j3 = this.f4884p;
        if (j3 == null) {
            Log.e("SeslRecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f4909z) {
            return;
        }
        if (!j3.d()) {
            i5 = 0;
        }
        if (!this.f4884p.e()) {
            i6 = 0;
        }
        if (i5 == 0 && i6 == 0) {
            return;
        }
        if (z4) {
            int i7 = i5 != 0 ? 1 : 0;
            if (i6 != 0) {
                i7 |= 2;
            }
            D0(i7, 1);
        }
        this.f4868i0.c(i5, i6, Integer.MIN_VALUE, null);
    }

    public final void B(int i5, int i6) {
        this.f4799I++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i5, scrollY - i6);
        M m5 = this.m0;
        if (m5 != null) {
            m5.b(this, i5, i6);
        }
        ArrayList arrayList = this.n0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((M) this.n0.get(size)).b(this, i5, i6);
            }
        }
        this.f4799I--;
    }

    public final void B0(int i5) {
        if (this.f4909z) {
            return;
        }
        J j3 = this.f4884p;
        if (j3 == null) {
            Log.e("SeslRecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            j3.z0(this, i5);
        }
    }

    public final void C() {
        if (this.f4813N != null) {
            return;
        }
        ((Y) this.f4802J).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f4813N = edgeEffect;
        if (this.f4871j) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void C0() {
        int i5 = this.f4903x + 1;
        this.f4903x = i5;
        if (i5 != 1 || this.f4909z) {
            return;
        }
        this.f4906y = false;
    }

    public final void D() {
        if (this.f4805K != null) {
            return;
        }
        ((Y) this.f4802J).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f4805K = edgeEffect;
        if (this.f4871j) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void D0(int i5, int i6) {
        getScrollingChildHelper().g(i5, i6);
    }

    public final void E() {
        if (this.f4810M != null) {
            return;
        }
        ((Y) this.f4802J).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f4810M = edgeEffect;
        if (this.f4871j) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void E0(boolean z4) {
        if (this.f4903x < 1) {
            if (f4770l2) {
                throw new IllegalStateException(AbstractC0432c.f(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
            }
            this.f4903x = 1;
        }
        if (!z4 && !this.f4909z) {
            this.f4906y = false;
        }
        if (this.f4903x == 1) {
            if (z4 && this.f4906y && !this.f4909z && this.f4884p != null && this.f4883o != null) {
                x();
            }
            if (!this.f4909z) {
                this.f4906y = false;
            }
        }
        this.f4903x--;
    }

    public final void F() {
        if (this.f4807L != null) {
            return;
        }
        ((Y) this.f4802J).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f4807L = edgeEffect;
        if (this.f4871j) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void F0(int i5) {
        getScrollingChildHelper().h(i5);
    }

    public final String G() {
        return " " + super.toString() + ", adapter:" + this.f4883o + ", layout:" + this.f4884p + ", context:" + getContext();
    }

    public final void H(X x4) {
        if (getScrollState() != 2) {
            x4.getClass();
            return;
        }
        OverScroller overScroller = this.f4868i0.f7396e;
        overScroller.getFinalX();
        overScroller.getCurrX();
        x4.getClass();
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    public final View I(float f, float f5) {
        for (int iG = this.f4863h.g() - 1; iG >= 0; iG--) {
            View viewF = this.f4863h.f(iG);
            float translationX = viewF.getTranslationX();
            float translationY = viewF.getTranslationY();
            if (f >= viewF.getLeft() + translationX && f <= viewF.getRight() + translationX && f5 >= viewF.getTop() + translationY && f5 <= viewF.getBottom() + translationY) {
                return viewF;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View J(View view, float f, float f5) {
        View view2;
        int scrollY;
        if (view.isClickable()) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            view.getGlobalVisibleRect(rect);
            getGlobalVisibleRect(rect2);
            C0039m c0039m = this.u0;
            if (c0039m == null || !(c0039m.e(0) instanceof NestedScrollView)) {
                scrollY = 0;
                view2 = !rect.contains(((int) f) + rect2.left, (((int) f5) + rect2.top) - scrollY) ? view : null;
            } else {
                NestedScrollView nestedScrollView = (NestedScrollView) this.u0.e(0);
                if (nestedScrollView.getScrollY() > getTop()) {
                    scrollY = nestedScrollView.getScrollY() - getTop();
                }
                if (!rect.contains(((int) f) + rect2.left, (((int) f5) + rect2.top) - scrollY)) {
                }
            }
        }
        if (!(view instanceof ViewGroup)) {
            return view2;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i5 = 0; i5 < viewGroup.getChildCount(); i5++) {
            View viewJ = J(viewGroup.getChildAt(i5), f, f5);
            if (viewJ != null) {
                return viewJ;
            }
        }
        return view2;
    }

    public final View K(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public final int L() {
        int iM0;
        J j3 = this.f4884p;
        if (j3 instanceof LinearLayoutManager) {
            iM0 = ((LinearLayoutManager) j3).M0();
        } else if (j3 instanceof StaggeredGridLayoutManager) {
            iM0 = ((StaggeredGridLayoutManager) this.f4884p).K0()[j3.A() == 1 ? ((StaggeredGridLayoutManager) this.f4884p).f4922p - 1 : 0];
        } else {
            iM0 = 0;
        }
        if (iM0 == -1) {
            return 0;
        }
        return iM0;
    }

    public final boolean M(MotionEvent motionEvent) {
        boolean z4;
        int action = motionEvent.getAction();
        ArrayList arrayList = this.f4891s;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            C0541m c0541m = (C0541m) arrayList.get(i5);
            int i6 = c0541m.f7529v;
            if (i6 == 1) {
                boolean zE = c0541m.e(motionEvent.getX(), motionEvent.getY());
                boolean zD = c0541m.d(motionEvent.getX(), motionEvent.getY());
                if (motionEvent.getAction() == 0 && (zE || zD)) {
                    if (zD) {
                        c0541m.f7530w = 1;
                        c0541m.f7523p = (int) motionEvent.getX();
                    } else if (zE) {
                        c0541m.f7530w = 2;
                        c0541m.f7521m = (int) motionEvent.getY();
                    }
                    c0541m.g(2);
                }
            } else {
                z4 = i6 == 2;
            }
            if (z4 && action != 3) {
                this.f4893t = c0541m;
                return true;
            }
        }
        return false;
    }

    public final int N() {
        J j3 = this.f4884p;
        if (j3 instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) j3).N0();
        }
        if (!(j3 instanceof StaggeredGridLayoutManager)) {
            return -1;
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) j3;
        int[] iArr = new int[staggeredGridLayoutManager.f4922p];
        for (int i5 = 0; i5 < staggeredGridLayoutManager.f4922p; i5++) {
            k0 k0Var = staggeredGridLayoutManager.f4923q[i5];
            boolean z4 = k0Var.f.f4929w;
            ArrayList arrayList = k0Var.f7495a;
            iArr[i5] = z4 ? k0Var.e(0, arrayList.size(), true, false) : k0Var.e(arrayList.size() - 1, -1, true, false);
        }
        return iArr[0];
    }

    public final void O(int[] iArr) {
        int iG = this.f4863h.g();
        if (iG == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i5 = Integer.MAX_VALUE;
        int i6 = Integer.MIN_VALUE;
        for (int i7 = 0; i7 < iG; i7++) {
            b0 b0VarV = V(this.f4863h.f(i7));
            if (!b0VarV.q()) {
                int iC = b0VarV.c();
                if (iC < i5) {
                    i5 = iC;
                }
                if (iC > i6) {
                    i6 = iC;
                }
            }
        }
        iArr[0] = i5;
        iArr[1] = i6;
    }

    public final b0 Q(int i5) {
        b0 b0Var = null;
        if (this.f4791F) {
            return null;
        }
        int iJ = this.f4863h.j();
        for (int i6 = 0; i6 < iJ; i6++) {
            b0 b0VarV = V(this.f4863h.i(i6));
            if (b0VarV != null && !b0VarV.j() && R(b0VarV) == i5) {
                if (!this.f4863h.l(b0VarV.f7406a)) {
                    return b0VarV;
                }
                b0Var = b0VarV;
            }
        }
        return b0Var;
    }

    public final int R(b0 b0Var) {
        if (b0Var.e(524) || !b0Var.g()) {
            return -1;
        }
        C0530b c0530b = this.f4860g;
        int i5 = b0Var.f7408c;
        ArrayList arrayList = c0530b.f7401b;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            C0529a c0529a = (C0529a) arrayList.get(i6);
            int i7 = c0529a.f7390a;
            if (i7 != 1) {
                if (i7 == 2) {
                    int i8 = c0529a.f7391b;
                    if (i8 <= i5) {
                        int i9 = c0529a.f7393d;
                        if (i8 + i9 > i5) {
                            return -1;
                        }
                        i5 -= i9;
                    } else {
                        continue;
                    }
                } else if (i7 == 8) {
                    int i10 = c0529a.f7391b;
                    if (i10 == i5) {
                        i5 = c0529a.f7393d;
                    } else {
                        if (i10 < i5) {
                            i5--;
                        }
                        if (c0529a.f7393d <= i5) {
                            i5++;
                        }
                    }
                }
            } else if (c0529a.f7391b <= i5) {
                i5 += c0529a.f7393d;
            }
        }
        return i5;
    }

    public final long S(b0 b0Var) {
        return this.f4883o.f7328b ? b0Var.f7410e : b0Var.f7408c;
    }

    public final b0 U(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return V(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public final Rect X(View view) {
        K k5 = (K) view.getLayoutParams();
        boolean z4 = k5.f7354c;
        Rect rect = k5.f7353b;
        if (!z4) {
            return rect;
        }
        if (this.l0.f7383g && (k5.f7352a.m() || k5.f7352a.h())) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        ArrayList arrayList = this.f4889r;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            Rect rect2 = this.f4878l;
            rect2.set(0, 0, 0, 0);
            ((G) arrayList.get(i5)).getClass();
            ((K) view.getLayoutParams()).f7352a.c();
            rect2.set(0, 0, 0, 0);
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        k5.f7354c = false;
        return rect;
    }

    public final int Y(boolean z4, boolean z5) {
        return this.f4788D1[Q0.f(z4 ? z5 ? 2 : 3 : z5 ? 4 : 1)];
    }

    public final boolean Z() {
        return !this.f4900w || this.f4791F || this.f4860g.g();
    }

    public final boolean a0() {
        return this.f4796H > 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i5, int i6) {
        J j3 = this.f4884p;
        if (j3 != null) {
            j3.getClass();
        }
        super.addFocusables(arrayList, i5, i6);
    }

    public final void b0() {
        String string;
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (accessibilityManager == null || !accessibilityManager.isEnabled() || (string = Settings.Secure.getString(getContext().getContentResolver(), "enabled_accessibility_services")) == null || !(string.matches("(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*") || string.matches("(?i).*com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService.*") || string.matches("(?i).*com.google.android.marvin.talkback.TalkBackService.*") || string.matches("(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"))) {
            getHeight();
        }
    }

    public final void c0(int i5) {
        if (this.f4884p == null) {
            return;
        }
        setScrollState(2);
        this.f4884p.p0(i5);
        awakenScrollBars();
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof K) && this.f4884p.f((K) layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        J j3 = this.f4884p;
        if (j3 != null && j3.d()) {
            return this.f4884p.j(this.l0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        J j3 = this.f4884p;
        if (j3 != null && j3.d()) {
            return this.f4884p.k(this.l0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        J j3 = this.f4884p;
        if (j3 != null && j3.d()) {
            return this.f4884p.l(this.l0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        J j3 = this.f4884p;
        if (j3 != null && j3.e()) {
            return this.f4884p.m(this.l0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        J j3 = this.f4884p;
        if (j3 != null && j3.e()) {
            return this.f4884p.n(this.l0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        J j3 = this.f4884p;
        if (j3 != null && j3.e()) {
            return this.f4884p.o(this.l0);
        }
        return 0;
    }

    public final void d0() {
        int iJ = this.f4863h.j();
        for (int i5 = 0; i5 < iJ; i5++) {
            ((K) this.f4863h.i(i5).getLayoutParams()).f7354c = true;
        }
        ArrayList arrayList = this.f4855e.f7365c;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            K k5 = (K) ((b0) arrayList.get(i6)).f7406a.getLayoutParams();
            if (k5 != null) {
                k5.f7354c = true;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        View childAt;
        F f;
        super.dispatchDraw(canvas);
        ArrayList arrayList = this.f4889r;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((G) arrayList.get(i5)).c(canvas, this);
        }
        int width = getWidth();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        boolean z4 = this.o1;
        Paint paint = this.f4896u1;
        if (z4 && ((this.f4890r1 != -1 || this.f4892s1 != -1) && !canScrollVertically(-1) && (!canScrollVertically(1) || ((f = this.f4815O) != null && f.f())))) {
            ValueAnimator valueAnimator = this.f4789E0;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                this.f4894t1 = this.f4890r1;
            }
            F f5 = this.f4815O;
            if (f5 != null && f5.f()) {
                int pendingAnimFlag = getPendingAnimFlag();
                if (pendingAnimFlag == 8) {
                    this.f4792F0 = true;
                } else if (pendingAnimFlag == 1) {
                    this.f4795G0 = true;
                }
                if (this.f4888q1) {
                    childAt = this.f4890r1 != -1 ? this.f4863h.f(0) : getChildAt(0);
                } else if (this.f4890r1 != -1) {
                    f fVar = this.f4863h;
                    childAt = fVar.f(fVar.g() - 1);
                } else {
                    childAt = getChildAt(getChildCount() - 1);
                }
                if (childAt != null) {
                    if (!this.f4792F0 && !this.f4795G0) {
                        this.f4894t1 = childAt.getHeight() + Math.round(childAt.getY());
                    } else if (this.f4789E0 == null) {
                        F itemAnimator = getItemAnimator();
                        if ((itemAnimator instanceof C0539k) && this.f4797H0 == -1) {
                            this.f4797H0 = ((C0539k) itemAnimator).f7494q;
                        }
                        if (this.f4792F0) {
                            this.f4789E0 = ValueAnimator.ofInt(this.f4797H0, childAt.getHeight() + ((int) childAt.getY()));
                        } else if (this.f4795G0) {
                            this.f4789E0 = ValueAnimator.ofInt(this.f4797H0, childAt.getBottom());
                        } else {
                            Log.d("SeslRecyclerView", "Not set only add/remove anim");
                        }
                        this.f4789E0.setDuration(330L);
                        this.f4789E0.addListener(this.f4806K0);
                        this.f4789E0.addUpdateListener(new C0534f(this, 1));
                        this.f4789E0.start();
                    }
                }
                invalidate();
            }
            int i6 = this.f4890r1;
            if (i6 != -1 || this.f4894t1 != i6 || this.f4792F0) {
                canvas.drawRect(0.0f, this.f4894t1, width, getBottom(), paint);
                if (this.f4886p1) {
                    this.f4899v1.b(paddingLeft, this.f4894t1, width - paddingRight, getBottom(), canvas);
                }
            }
        }
        this.f4797H0 = this.f4890r1;
        if (this.f4881m1) {
            int height = getHeight();
            if (paddingLeft > 0) {
                canvas.drawRect(0.0f, 0.0f, paddingLeft, height, paint);
            }
            if (paddingRight > 0) {
                canvas.drawRect(width - paddingRight, 0.0f, width, height, paint);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:163:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x03a4  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        boolean zBooleanValue;
        int i5;
        int i6;
        int i7;
        long j3;
        int i8;
        if (this.f4883o == null) {
            Log.d("SeslRecyclerView", "No adapter attached; skipping hover scroll");
            return super.dispatchHoverEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        int toolType = motionEvent.getToolType(0);
        if ((action == 7 || action == 9) && toolType == 2) {
            this.f4905x1 = true;
        } else if (action == 10) {
            this.f4905x1 = false;
        }
        Method methodJ = x.J(TextView.class, "hidden_semIsTextViewHovered", new Class[0]);
        if (methodJ != null) {
            Object objJ0 = x.j0(null, methodJ, new Object[0]);
            zBooleanValue = objJ0 instanceof Boolean ? ((Boolean) objJ0).booleanValue() : false;
        }
        this.f4782B1 = zBooleanValue;
        boolean z4 = this.f4831U0;
        if (!zBooleanValue && this.f4780A1 && z4 && (motionEvent.getButtonState() == 32 || motionEvent.getButtonState() == 2)) {
            this.f4911z1 = true;
        } else {
            this.f4911z1 = false;
        }
        this.f4780A1 = this.f4782B1;
        boolean z5 = this.f4817P0;
        Context context = this.f4907y0;
        if (action == 9) {
            this.f4818P1 = true;
            if (this.f4873j1) {
                l();
            }
            if (!this.f4816O1) {
                this.f4818P1 = false;
            }
            if (this.f4818P1 && toolType == 2) {
                boolean z6 = Settings.System.getInt(context.getContentResolver(), AbstractC0735a.g(), 0) == 1;
                try {
                } catch (Settings.SettingNotFoundException unused) {
                    Log.i("SeslRecyclerView", "dispatchHoverEvent car_mode_on SettingNotFoundException");
                }
                boolean z7 = Settings.System.getInt(context.getContentResolver(), "car_mode_on") == 1;
                if (!z6 || z7) {
                    this.f4818P1 = false;
                }
                if (z6 && z4 && !this.f4908y1 && z5 && (motionEvent.getButtonState() == 32 || motionEvent.getButtonState() == 2)) {
                    z0(motionEvent, a.j());
                    this.f4908y1 = true;
                }
            }
            if (this.f4818P1 && toolType == 3) {
                this.f4818P1 = false;
            }
        } else if (action == 7) {
            if ((z4 && !this.f4908y1 && z5 && motionEvent.getToolType(0) == 2 && (motionEvent.getButtonState() == 32 || motionEvent.getButtonState() == 2)) || this.f4911z1) {
                z0(motionEvent, a.j());
                this.f4908y1 = true;
            } else if (z4 && this.f4908y1 && motionEvent.getButtonState() != 32 && motionEvent.getButtonState() != 2) {
                z0(motionEvent, a.i());
                this.f4908y1 = false;
            }
        } else if (action == 10 && this.f4908y1) {
            z0(motionEvent, a.i());
            this.f4908y1 = false;
        }
        if (!this.f4818P1) {
            return super.dispatchHoverEvent(motionEvent);
        }
        boolean zD = this.f4884p.d();
        int y3 = (int) (zD ? motionEvent.getY() : motionEvent.getX());
        int x4 = (int) (zD ? motionEvent.getX() : motionEvent.getY());
        int width = zD ? getWidth() : getHeight();
        boolean zO = o();
        boolean zP = p();
        boolean z8 = motionEvent.getToolType(0) == 2;
        int i9 = this.f4821Q1;
        HandlerC0161c handlerC0161c = this.c2;
        if ((x4 <= i9 || x4 >= (width - this.f4824R1) - this.f4865h1) && y3 > 0) {
            if (y3 <= (zD ? getBottom() : getRight()) && ((zP || zO) && (x4 < 0 || x4 > this.f4821Q1 || zP || !this.K1))) {
                int i10 = width - this.f4824R1;
                int i11 = this.f4865h1;
                if ((x4 < i10 - i11 || x4 > width - i11 || zO || !this.K1) && ((!z8 || (motionEvent.getButtonState() != 32 && motionEvent.getButtonState() != 2)) && z8 && !((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode())) {
                    if (this.f4873j1 && (i7 = this.f4865h1) > 0 && i7 != this.f4869i1) {
                        l();
                    }
                    if (!this.N1) {
                        this.f4801I1 = System.currentTimeMillis();
                    }
                    if (this.f4865h1 != 0) {
                        Rect rect = new Rect();
                        getLocalVisibleRect(rect);
                        i5 = width <= rect.bottom ? 0 : this.f4865h1;
                    }
                    if (action != 7) {
                        if (action == 9) {
                            this.N1 = true;
                            if (x4 < 0 || x4 > this.f4821Q1) {
                                if (x4 >= (width - this.f4824R1) - i5 && x4 <= width - i5 && !handlerC0161c.hasMessages(0)) {
                                    this.f4793F1 = System.currentTimeMillis();
                                    z0(motionEvent, Y(true, zD));
                                    this.f4804J1 = 1;
                                    handlerC0161c.sendEmptyMessage(0);
                                    return true;
                                }
                            } else if (!handlerC0161c.hasMessages(0)) {
                                this.f4793F1 = System.currentTimeMillis();
                                z0(motionEvent, Y(false, zD));
                                this.f4804J1 = 2;
                                handlerC0161c.sendEmptyMessage(0);
                            }
                        } else if (action == 10) {
                            if (handlerC0161c.hasMessages(0)) {
                                handlerC0161c.removeMessages(0);
                            }
                            if (this.f4819Q == 1) {
                                setScrollState(0);
                            }
                            z0(motionEvent, a.i());
                            this.f4793F1 = 0L;
                            this.f4801I1 = 0L;
                            this.K1 = false;
                            this.N1 = false;
                            this.f4809L1 = false;
                            if (this.f4812M1 != 0) {
                                this.f4812M1 = 0;
                                M m5 = this.m0;
                                if (m5 != null) {
                                    m5.a(this, 0);
                                }
                            }
                            return super.dispatchHoverEvent(motionEvent);
                        }
                    } else {
                        if (!this.N1) {
                            this.N1 = true;
                            motionEvent.setAction(10);
                            return super.dispatchHoverEvent(motionEvent);
                        }
                        if (x4 < 0 || x4 > this.f4821Q1) {
                            if (x4 < (width - this.f4824R1) - i5 || x4 > width - i5) {
                                if (handlerC0161c.hasMessages(0)) {
                                    handlerC0161c.removeMessages(0);
                                    if (this.f4819Q == 1) {
                                        setScrollState(0);
                                    }
                                }
                                z0(motionEvent, a.i());
                                this.f4793F1 = 0L;
                                this.f4801I1 = 0L;
                                this.K1 = false;
                                this.N1 = false;
                                this.f4809L1 = false;
                            } else if (!handlerC0161c.hasMessages(0)) {
                                this.f4793F1 = System.currentTimeMillis();
                                if (!this.K1 || this.f4804J1 == 2) {
                                    i6 = 1;
                                    z0(motionEvent, Y(true, zD));
                                } else {
                                    i6 = 1;
                                }
                                this.f4804J1 = i6;
                                handlerC0161c.sendEmptyMessage(0);
                                b0();
                            }
                        } else if (!handlerC0161c.hasMessages(0)) {
                            this.f4793F1 = System.currentTimeMillis();
                            if (!this.K1 || this.f4804J1 == 1) {
                                z0(motionEvent, Y(false, zD));
                            }
                            this.f4804J1 = 2;
                            handlerC0161c.sendEmptyMessage(0);
                        }
                    }
                    return true;
                }
            }
        }
        if (this.f4873j1 && (i8 = this.f4865h1) > 0 && i8 != this.f4869i1) {
            l();
        }
        if (handlerC0161c.hasMessages(0)) {
            handlerC0161c.removeMessages(0);
            z0(motionEvent, a.i());
            if (this.f4819Q == 1) {
                setScrollState(0);
            }
        }
        if ((x4 <= this.f4821Q1 || x4 >= (width - this.f4824R1) - this.f4865h1) && y3 > 0) {
            if (y3 > (zD ? getBottom() : getRight())) {
                this.K1 = false;
            }
        }
        if (!this.N1) {
            j3 = 0;
            if (this.f4801I1 != 0) {
            }
            this.f4793F1 = j3;
            this.f4801I1 = j3;
            this.N1 = false;
            this.f4809L1 = false;
            if (action == 10) {
                if (this.f4812M1 != 0) {
                    this.f4812M1 = 0;
                    M m6 = this.m0;
                    if (m6 != null) {
                        m6.a(this, 0);
                    }
                } else {
                    this.K1 = false;
                }
            }
            return super.dispatchHoverEvent(motionEvent);
        }
        j3 = 0;
        z0(motionEvent, a.i());
        this.f4793F1 = j3;
        this.f4801I1 = j3;
        this.N1 = false;
        this.f4809L1 = false;
        if (action == 10) {
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 19 || keyCode == 20) {
            if (keyEvent.getAction() == 0) {
                this.f4840Y1 = true;
            }
        } else if (keyCode == 66 && this.f4848b2 && this.f4877k2) {
            int action = keyEvent.getAction();
            D d2 = this.f4845a2;
            if (action == 0) {
                View focusedChild = getFocusedChild();
                if (focusedChild != null) {
                    d2.K0(focusedChild);
                }
            } else {
                d2.L0();
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f5, boolean z4) {
        return getScrollingChildHelper().a(f, f5, z4);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f5) {
        return getScrollingChildHelper().b(f, f5);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i5, int i6, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i5, i6, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i5, int i6, int i7, int i8, int[] iArr) {
        return getScrollingChildHelper().d(i5, i6, i7, i8, iArr, 0, null);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00da  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z4;
        if (this.f4884p == null) {
            Log.d("SeslRecyclerView", "No layout manager attached; skipping gototop & multiselection");
            return super.dispatchTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        int x4 = (int) (motionEvent.getX() + 0.5f);
        int y3 = (int) (motionEvent.getY() + 0.5f);
        boolean z5 = motionEvent.getToolType(0) == 2;
        int i5 = Build.VERSION.SDK_INT;
        boolean z6 = (motionEvent.getButtonState() & 32) != 0;
        if (this.f4828T0 == null) {
            this.f4828T0 = new ArrayList();
        }
        int height = getHeight();
        if (this.f4817P0) {
            Method methodJ = x.J(TextView.class, "hidden_semIsTextSelectionProgressing", new Class[0]);
            if (methodJ != null) {
                Object objJ0 = x.j0(null, methodJ, new Object[0]);
                boolean zBooleanValue = objJ0 instanceof Boolean ? ((Boolean) objJ0).booleanValue() : false;
                if (!zBooleanValue) {
                    z4 = true;
                }
            }
        } else {
            z4 = false;
        }
        this.f4825S0 = z4;
        if (actionMasked == 0) {
            if ((!z5 || !z6) && actionMasked != 211) {
                b0();
                b0();
                if (this.f4876k1 && motionEvent.getToolType(0) == 3) {
                    this.f4879l1 = true;
                    this.f4825S0 = true;
                    e0(x4, y3, height);
                    return true;
                }
            } else if (this.f4828T0 == null) {
                this.f4828T0 = new ArrayList();
            }
        } else if (actionMasked == 1) {
            if ((i5 >= 34 || !z5 || !z6) && this.f4879l1) {
                f0();
                this.f4879l1 = false;
                return true;
            }
            b0();
            if (!this.f4820Q0) {
                f0();
                return true;
            }
            f0();
            if (this.f4848b2 && this.f4877k2) {
                SeslRecoilDrawable seslRecoilDrawable = (SeslRecoilDrawable) this.f4842Z1.f5265c;
                if (seslRecoilDrawable != null) {
                    seslRecoilDrawable.setState(new int[0]);
                }
                this.f4845a2.L0();
            }
        } else if (actionMasked == 2) {
            if ((z5 && z6) || actionMasked == 213) {
                e0(x4, y3, height);
            } else {
                if (this.f4879l1) {
                    e0(x4, y3, height);
                    return true;
                }
                b0();
            }
        } else {
            if (actionMasked == 3) {
                b0();
                if (i5 >= 34) {
                    f0();
                    this.f4879l1 = false;
                    return true;
                }
                f0();
                this.f4879l1 = false;
                return true;
            }
            switch (actionMasked) {
                case 212:
                    b0();
                    if (!this.f4820Q0) {
                    }
                    break;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z4;
        J j3;
        super.draw(canvas);
        ArrayList arrayList = this.f4889r;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((G) arrayList.get(i5)).b(canvas, this);
        }
        EdgeEffect edgeEffect = this.f4805K;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z4 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.f4871j ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.f4805K;
            z4 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.f4807L;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.f4871j) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.f4807L;
            z4 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.f4810M;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f4871j ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.f4810M;
            z4 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.f4813N;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f4871j) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.f4813N;
            z4 |= edgeEffect8 != null && edgeEffect8.draw(canvas);
            canvas.restoreToCount(iSave4);
        }
        if ((z4 || this.f4815O == null || arrayList.size() <= 0 || !this.f4815O.f()) ? z4 : true) {
            WeakHashMap weakHashMap = Q.f940a;
            postInvalidateOnAnimation();
        }
        b0();
        if (!this.f4831U0 || (j3 = this.f4884p) == null) {
            return;
        }
        if (this.f4839Y0 == 0 && this.f4841Z0 == 0) {
            return;
        }
        int iM0 = j3 instanceof LinearLayoutManager ? ((LinearLayoutManager) j3).M0() : j3 instanceof StaggeredGridLayoutManager ? ((StaggeredGridLayoutManager) j3).K0()[0] : -1;
        int iN = N();
        int i6 = this.f4851c1;
        if (i6 >= iM0 && i6 <= iN) {
            View viewQ = this.f4884p.q(i6);
            this.f4847b1 = viewQ;
            this.W0 = (viewQ != null ? viewQ.getTop() : 0) + this.f4854d1;
        }
        int i7 = this.W0;
        int i8 = this.f4837X0;
        int i9 = i7 < i8 ? i7 : i8;
        this.f4841Z0 = i9;
        if (i8 > i7) {
            i7 = i8;
        }
        int i10 = this.f4839Y0;
        int i11 = this.f4844a1;
        Rect rect = this.f4858f1;
        rect.set(i10, i9, i11, i7);
        Drawable drawable = this.e1;
        drawable.setBounds(rect);
        drawable.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j3) {
        return super.drawChild(canvas, view, j3);
    }

    public final void e0(int i5, int i6, int i7) {
        M m5;
        if (this.f4825S0) {
            if (this.f4823R0) {
                this.f4834V0 = i5;
                this.W0 = i6;
                this.f4820Q0 = true;
                float f = i5;
                float f5 = i6;
                View viewI = I(f, f5);
                this.f4847b1 = viewI;
                if (viewI == null) {
                    View viewX0 = x0(f, f5);
                    this.f4847b1 = viewX0;
                    if (viewX0 == null) {
                        Log.e("SeslRecyclerView", "multiSelection, mPenTrackedChild is NULL");
                        this.f4820Q0 = false;
                        this.f4823R0 = false;
                        return;
                    }
                }
                this.f4851c1 = T(this.f4847b1);
                this.f4854d1 = this.W0 - this.f4847b1.getTop();
                this.f4823R0 = false;
            }
            if (this.f4834V0 == 0 && this.W0 == 0) {
                this.f4834V0 = i5;
                this.W0 = i6;
                this.f4820Q0 = true;
            }
            this.f4837X0 = i6;
            if (i6 < 0) {
                this.f4837X0 = 0;
            } else if (i6 > i7) {
                this.f4837X0 = i7;
            }
            int i8 = this.f4834V0;
            this.f4839Y0 = i8 < i5 ? i8 : i5;
            int i9 = this.W0;
            int i10 = this.f4837X0;
            if (i9 >= i10) {
                i9 = i10;
            }
            this.f4841Z0 = i9;
            if (i5 <= i8) {
                i5 = i8;
            }
            this.f4844a1 = i5;
            int i11 = this.f4821Q1;
            HandlerC0161c handlerC0161c = this.c2;
            if (i6 <= i11) {
                if (!this.N1) {
                    this.N1 = true;
                    this.f4801I1 = System.currentTimeMillis();
                    M m6 = this.m0;
                    if (m6 != null) {
                        m6.a(this, 1);
                    }
                }
                if (!handlerC0161c.hasMessages(0)) {
                    this.f4793F1 = System.currentTimeMillis();
                    this.f4804J1 = 2;
                    handlerC0161c.sendEmptyMessage(0);
                }
            } else if (i6 >= (i7 - this.f4824R1) - this.f4865h1) {
                if (!this.N1) {
                    this.N1 = true;
                    this.f4801I1 = System.currentTimeMillis();
                    M m7 = this.m0;
                    if (m7 != null) {
                        m7.a(this, 1);
                    }
                }
                if (!handlerC0161c.hasMessages(0)) {
                    this.f4793F1 = System.currentTimeMillis();
                    this.f4804J1 = 1;
                    handlerC0161c.sendEmptyMessage(0);
                }
            } else {
                if (this.N1 && (m5 = this.m0) != null) {
                    m5.a(this, 0);
                }
                this.f4801I1 = 0L;
                this.f4793F1 = 0L;
                this.N1 = false;
                if (handlerC0161c.hasMessages(0)) {
                    handlerC0161c.removeMessages(0);
                    if (this.f4819Q == 1) {
                        setScrollState(0);
                    }
                }
                this.K1 = false;
            }
            if (this.f4831U0) {
                invalidate();
            }
        }
    }

    public final void f0() {
        this.f4820Q0 = false;
        this.f4823R0 = true;
        this.f4828T0.clear();
        this.f4834V0 = 0;
        this.W0 = 0;
        this.f4837X0 = 0;
        this.f4839Y0 = 0;
        this.f4841Z0 = 0;
        this.f4844a1 = 0;
        this.f4847b1 = null;
        this.f4854d1 = 0;
        if (this.f4831U0) {
            invalidate();
        }
        HandlerC0161c handlerC0161c = this.c2;
        if (handlerC0161c.hasMessages(0)) {
            handlerC0161c.removeMessages(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0078  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View focusSearch(View view, int i5) {
        View viewR;
        int i6;
        int top;
        int top2;
        int i7;
        char c2;
        boolean z4;
        this.f4884p.getClass();
        boolean z5 = true;
        boolean z6 = (this.f4883o == null || this.f4884p == null || a0() || this.f4909z) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        X x4 = this.l0;
        P p4 = this.f4855e;
        if (!z6 || (i5 != 2 && i5 != 1)) {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i5);
            if (viewFindNextFocus == null && z6) {
                u();
                if (K(view) == null) {
                    return null;
                }
                C0();
                viewR = this.f4884p.R(view, i5, p4, x4);
                E0(false);
            } else {
                viewR = viewFindNextFocus;
            }
        } else if (this.f4884p.e()) {
            if (focusFinder.findNextFocus(this, view, i5 == 2 ? 130 : 33) == null) {
                z4 = true;
            }
            if (!z4) {
                if (focusFinder.findNextFocus(this, view, !((this.f4884p.A() != 1) ^ (i5 != 2)) ? 66 : 17) != null) {
                }
            }
            if (z4) {
            }
            viewR = focusFinder.findNextFocus(this, view, i5);
        } else {
            z4 = false;
            if (!z4 && this.f4884p.d()) {
                z4 = focusFinder.findNextFocus(this, view, !((this.f4884p.A() != 1) ^ (i5 != 2)) ? 66 : 17) != null;
            }
            if (z4) {
                u();
                if (K(view) == null) {
                    return null;
                }
                C0();
                this.f4884p.R(view, i5, p4, x4);
                E0(false);
            }
            viewR = focusFinder.findNextFocus(this, view, i5);
        }
        if (viewR != null && !viewR.hasFocusable()) {
            if (getFocusedChild() == null || (i5 == 33 && view != null && view.getBottom() < viewR.getBottom() && !canScrollVertically(-1))) {
                return super.focusSearch(view, i5);
            }
            r0(viewR, null);
            return view;
        }
        if (viewR == null || viewR == this || viewR == view) {
            z5 = false;
        } else if (K(viewR) == null) {
            z5 = false;
        } else if (view != null && K(view) != null) {
            int width = view.getWidth();
            int height = view.getHeight();
            Rect rect = this.f4878l;
            rect.set(0, 0, width, height);
            int width2 = viewR.getWidth();
            int height2 = viewR.getHeight();
            Rect rect2 = this.f4880m;
            rect2.set(0, 0, width2, height2);
            offsetDescendantRectToMyCoords(view, rect);
            offsetDescendantRectToMyCoords(viewR, rect2);
            int i8 = this.f4884p.A() == 1 ? -1 : 1;
            int i9 = rect.left;
            int i10 = rect2.left;
            if ((i9 < i10 || rect.right <= i10) && rect.right < rect2.right) {
                i7 = 1;
            } else {
                int i11 = rect.right;
                int i12 = rect2.right;
                i7 = ((i11 > i12 || i9 >= i12) && i9 > i10) ? -1 : 0;
            }
            int i13 = rect.top;
            int i14 = rect2.top;
            if ((i13 < i14 || rect.bottom <= i14) && rect.bottom < rect2.bottom) {
                c2 = 1;
            } else {
                int i15 = rect.bottom;
                int i16 = rect2.bottom;
                c2 = ((i15 > i16 || i13 >= i16) && i13 > i14) ? (char) 65535 : (char) 0;
            }
            if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 != 17) {
                        if (i5 != 33) {
                            if (i5 != 66) {
                                if (i5 != 130) {
                                    StringBuilder sb = new StringBuilder("Invalid direction: ");
                                    sb.append(i5);
                                    throw new IllegalArgumentException(AbstractC0432c.f(this, sb));
                                }
                                if (c2 <= 0) {
                                }
                            } else if (i7 <= 0) {
                            }
                        } else if (c2 >= 0) {
                        }
                    } else if (i7 >= 0) {
                    }
                } else if (c2 <= 0 && (c2 != 0 || i7 * i8 <= 0)) {
                }
            } else if (c2 >= 0 && (c2 != 0 || i7 * i8 >= 0)) {
            }
        }
        if (!z5) {
            viewR = super.focusSearch(view, i5);
        }
        if (this.f4840Y1 && viewR == null && (this.f4884p instanceof StaggeredGridLayoutManager)) {
            if (i5 == 130) {
                top = getFocusedChild().getBottom();
                top2 = getBottom();
            } else if (i5 == 33) {
                top = getFocusedChild().getTop();
                top2 = getTop();
            } else {
                i6 = 0;
                ((StaggeredGridLayoutManager) this.f4884p).c1(i6, p4, x4);
                this.f4840Y1 = false;
            }
            i6 = top - top2;
            ((StaggeredGridLayoutManager) this.f4884p).c1(i6, p4, x4);
            this.f4840Y1 = false;
        }
        return viewR;
    }

    public final void g0(int i5, boolean z4, int i6) {
        int i7 = i5 + i6;
        int iJ = this.f4863h.j();
        for (int i8 = 0; i8 < iJ; i8++) {
            b0 b0VarV = V(this.f4863h.i(i8));
            if (b0VarV != null && !b0VarV.q()) {
                int i9 = b0VarV.f7408c;
                X x4 = this.l0;
                if (i9 >= i7) {
                    if (f4771m2) {
                        Log.d("SeslRecyclerView", "offsetPositionRecordsForRemove attached child " + i8 + " holder " + b0VarV + " now at position " + (b0VarV.f7408c - i6));
                    }
                    b0VarV.n(-i6, z4);
                    x4.f = true;
                } else if (i9 >= i5) {
                    if (f4771m2) {
                        Log.d("SeslRecyclerView", "offsetPositionRecordsForRemove attached child " + i8 + " holder " + b0VarV + " now REMOVED");
                    }
                    b0VarV.b(8);
                    b0VarV.n(-i6, z4);
                    b0VarV.f7408c = i5 - 1;
                    x4.f = true;
                }
            }
        }
        P p4 = this.f4855e;
        ArrayList arrayList = p4.f7365c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            b0 b0Var = (b0) arrayList.get(size);
            if (b0Var != null) {
                int i10 = b0Var.f7408c;
                if (i10 >= i7) {
                    if (f4771m2) {
                        Log.d("SeslRecyclerView", "offsetPositionRecordsForRemove cached " + size + " holder " + b0Var + " now at position " + (b0Var.f7408c - i6));
                    }
                    b0Var.n(-i6, z4);
                } else if (i10 >= i5) {
                    b0Var.b(8);
                    p4.g(size);
                }
            }
        }
        requestLayout();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        J j3 = this.f4884p;
        if (j3 != null) {
            return j3.r();
        }
        throw new IllegalStateException(AbstractC0432c.f(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        J j3 = this.f4884p;
        if (j3 != null) {
            return j3.s(getContext(), attributeSet);
        }
        throw new IllegalStateException(AbstractC0432c.f(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public AbstractC0526A getAdapter() {
        return this.f4883o;
    }

    @Override // android.view.View
    public int getBaseline() {
        J j3 = this.f4884p;
        if (j3 == null) {
            return super.getBaseline();
        }
        j3.getClass();
        return -1;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i5, int i6) {
        return super.getChildDrawingOrder(i5, i6);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f4871j;
    }

    public d0 getCompatAccessibilityDelegate() {
        return this.s0;
    }

    public E getEdgeEffectFactory() {
        return this.f4802J;
    }

    public F getItemAnimator() {
        return this.f4815O;
    }

    public int getItemDecorationCount() {
        return this.f4889r.size();
    }

    public J getLayoutManager() {
        return this.f4884p;
    }

    public final U getLongPressMultiSelectionListener() {
        return null;
    }

    public int getMaxFlingVelocity() {
        return this.f4856e0;
    }

    public int getMinFlingVelocity() {
        return this.f4853d0;
    }

    public long getNanoTime() {
        if (f4774r2) {
            return System.nanoTime();
        }
        return 0L;
    }

    public L getOnFlingListener() {
        return this.f4850c0;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f4864h0;
    }

    public O getRecycledViewPool() {
        return this.f4855e.c();
    }

    public int getScrollState() {
        return this.f4819Q;
    }

    public final void h0() {
        this.f4796H++;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().f(0);
    }

    public final void i(b0 b0Var) {
        View view = b0Var.f7406a;
        boolean z4 = view.getParent() == this;
        this.f4855e.l(U(view));
        if (b0Var.l()) {
            this.f4863h.c(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z4) {
            this.f4863h.b(view, -1, true);
            return;
        }
        f fVar = this.f4863h;
        int iIndexOfChild = ((C0552y) fVar.f505c).f7599a.indexOfChild(view);
        if (iIndexOfChild >= 0) {
            ((C0531c) fVar.f506d).h(iIndexOfChild);
            fVar.k(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    public final void i0(boolean z4) {
        int i5;
        AccessibilityManager accessibilityManager;
        int i6 = this.f4796H - 1;
        this.f4796H = i6;
        if (i6 < 1) {
            if (f4770l2 && i6 < 0) {
                throw new IllegalStateException(AbstractC0432c.f(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
            }
            this.f4796H = 0;
            if (z4) {
                int i7 = this.f4781B;
                this.f4781B = 0;
                if (i7 != 0 && (accessibilityManager = this.f4786D) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                    accessibilityEventObtain.setEventType(2048);
                    accessibilityEventObtain.setContentChangeTypes(i7);
                    sendAccessibilityEventUnchecked(accessibilityEventObtain);
                }
                ArrayList arrayList = this.d2;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    b0 b0Var = (b0) arrayList.get(size);
                    if (b0Var.f7406a.getParent() == this && !b0Var.q() && (i5 = b0Var.f7420q) != -1) {
                        WeakHashMap weakHashMap = Q.f940a;
                        b0Var.f7406a.setImportantForAccessibility(i5);
                        b0Var.f7420q = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.f4895u;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f4909z;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f995d;
    }

    @Override // android.view.View
    public final boolean isVerticalScrollBarEnabled() {
        return super.isVerticalScrollBarEnabled();
    }

    public final void j(G g5) {
        J j3 = this.f4884p;
        if (j3 != null) {
            j3.c("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.f4889r;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        arrayList.add(g5);
        d0();
        requestLayout();
    }

    public final void j0(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f4822R) {
            int i5 = actionIndex == 0 ? 1 : 0;
            this.f4822R = motionEvent.getPointerId(i5);
            int x4 = (int) (motionEvent.getX(i5) + 0.5f);
            this.f4835W = x4;
            this.f4830U = x4;
            int y3 = (int) (motionEvent.getY(i5) + 0.5f);
            this.f4843a0 = y3;
            this.f4833V = y3;
        }
    }

    public final void k(M m5) {
        if (this.n0 == null) {
            this.n0 = new ArrayList();
        }
        this.n0.add(m5);
    }

    public final void k0(int i5) {
        int iM0;
        AbstractC0526A abstractC0526A = this.f4883o;
        if (abstractC0526A == null) {
            Log.e("SeslRecyclerView", "No adapter attached; skipping pageScroll");
            return;
        }
        int iA = abstractC0526A.a();
        if (iA <= 0) {
            return;
        }
        int i6 = 0;
        if (i5 == 0) {
            J j3 = this.f4884p;
            iM0 = (j3 instanceof LinearLayoutManager ? ((LinearLayoutManager) j3).M0() : j3 instanceof StaggeredGridLayoutManager ? ((StaggeredGridLayoutManager) j3).K0()[0] : -1) - getChildCount();
        } else if (i5 == 1) {
            iM0 = N() + getChildCount();
        } else if (i5 == 2) {
            iM0 = 0;
        } else if (i5 != 3) {
            return;
        } else {
            iM0 = iA - 1;
        }
        int i7 = iA - 1;
        if (iM0 > i7) {
            i6 = i7;
        } else if (iM0 >= 0) {
            i6 = iM0;
        }
        this.f4884p.f7340b.v0(i6);
        this.f4884p.f7340b.post(new RunnableC0553z(this, 0));
    }

    public final void l() {
        int[] iArr = this.f4904x0;
        getLocationInWindow(iArr);
        J j3 = this.f4884p;
        int i5 = (j3 == null || !j3.d()) ? iArr[1] : iArr[0];
        int i6 = this.f4869i1;
        int i7 = this.f4861g1;
        int i8 = i6 - (i7 - i5);
        this.f4865h1 = i8;
        if (i7 - i5 < 0) {
            this.f4869i1 = i8;
            this.f4861g1 = i5;
        }
    }

    public final void l0() {
        if (this.r0 || !this.f4895u) {
            return;
        }
        WeakHashMap weakHashMap = Q.f940a;
        postOnAnimation(this.f4859f2);
        this.r0 = true;
    }

    public final void m(int i5) {
        if (this.f4873j1) {
            if (p() && this.f4865h1 == 0) {
                return;
            }
            int i6 = this.f4865h1 - i5;
            this.f4865h1 = i6;
            if (i6 < 0) {
                this.f4865h1 = 0;
                return;
            }
            int i7 = this.f4869i1;
            if (i6 > i7) {
                this.f4865h1 = i7;
            }
        }
    }

    public final void m0() {
        boolean z4;
        boolean z5 = false;
        if (this.f4791F) {
            C0530b c0530b = this.f4860g;
            c0530b.k(c0530b.f7401b);
            c0530b.k(c0530b.f7402c);
            c0530b.f = 0;
            if (this.f4794G) {
                this.f4884p.X();
            }
        }
        if (this.f4815O == null || !this.f4884p.B0()) {
            this.f4860g.c();
        } else {
            this.f4860g.j();
        }
        boolean z6 = this.o0 || this.f4885p0;
        boolean z7 = this.f4900w && this.f4815O != null && ((z4 = this.f4791F) || z6 || this.f4884p.f) && (!z4 || this.f4883o.f7328b);
        X x4 = this.l0;
        x4.f7386j = z7;
        if (z7 && z6 && !this.f4791F && this.f4815O != null && this.f4884p.B0()) {
            z5 = true;
        }
        x4.f7387k = z5;
    }

    public final void n(String str) {
        if (a0()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(AbstractC0432c.f(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.f4799I > 0) {
            Log.w("SeslRecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(AbstractC0432c.f(this, new StringBuilder(""))));
        }
    }

    public final void n0(boolean z4) {
        this.f4794G = z4 | this.f4794G;
        this.f4791F = true;
        int iJ = this.f4863h.j();
        for (int i5 = 0; i5 < iJ; i5++) {
            b0 b0VarV = V(this.f4863h.i(i5));
            if (b0VarV != null && !b0VarV.q()) {
                b0VarV.b(6);
            }
        }
        d0();
        P p4 = this.f4855e;
        ArrayList arrayList = p4.f7365c;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            b0 b0Var = (b0) arrayList.get(i6);
            if (b0Var != null) {
                b0Var.b(6);
                b0Var.a(null);
            }
        }
        AbstractC0526A abstractC0526A = p4.f7369h.f4883o;
        if (abstractC0526A == null || !abstractC0526A.f7328b) {
            p4.f();
        }
    }

    public final boolean o() {
        boolean zD;
        boolean z4;
        int childCount = getChildCount();
        J j3 = this.f4884p;
        boolean z5 = true;
        if (j3 != null) {
            zD = j3.d();
            z4 = this.f4884p.A() == 1;
        } else {
            zD = false;
            z4 = false;
        }
        J j5 = this.f4884p;
        boolean z6 = j5 instanceof LinearLayoutManager ? ((LinearLayoutManager) j5).f4763t : false;
        if (this.f4883o == null) {
            Log.e("SeslRecyclerView", "No adapter attached; skipping canScrollDown");
            return false;
        }
        boolean z7 = !z6 ? L() + childCount >= this.f4883o.a() : L() <= 0;
        if (z7 || childCount <= 0) {
            return z7;
        }
        View childAt = getChildAt(z6 ? 0 : childCount - 1);
        Rect rect = this.f4829T1;
        W(rect, childAt);
        Rect rect2 = this.f4826S1;
        if (!zD ? !(rect.bottom > getBottom() - rect2.bottom || rect.bottom > getHeight() - rect2.bottom) : !(!z4 ? rect.right > getRight() - rect2.right || rect.right > getWidth() - rect2.right : rect.left < rect2.left)) {
            z5 = false;
        }
        return z5;
    }

    public final void o0(b0 b0Var, C0042p c0042p) {
        b0Var.f7414j &= -8193;
        boolean z4 = this.l0.f7384h;
        v vVar = this.f4867i;
        if (z4 && b0Var.m() && !b0Var.j() && !b0Var.q()) {
            ((C0716e) vVar.f6793d).e(S(b0Var), b0Var);
        }
        C0722k c0722k = (C0722k) vVar.f6792c;
        m0 m0VarA = (m0) c0722k.getOrDefault(b0Var, null);
        if (m0VarA == null) {
            m0VarA = m0.a();
            c0722k.put(b0Var, m0VarA);
        }
        m0VarA.f7536b = c0042p;
        m0VarA.f7535a |= 4;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f4796H = 0;
        this.f4895u = true;
        this.f4900w = this.f4900w && !isLayoutRequested();
        this.f4855e.d();
        J j3 = this.f4884p;
        if (j3 != null) {
            j3.f7344g = true;
            j3.P(this);
        }
        this.r0 = false;
        if (f4774r2) {
            ThreadLocal threadLocal = RunnableC0543o.f7543g;
            RunnableC0543o runnableC0543o = (RunnableC0543o) threadLocal.get();
            this.f4872j0 = runnableC0543o;
            if (runnableC0543o == null) {
                RunnableC0543o runnableC0543o2 = new RunnableC0543o();
                runnableC0543o2.f7545c = new ArrayList();
                runnableC0543o2.f = new ArrayList();
                this.f4872j0 = runnableC0543o2;
                WeakHashMap weakHashMap = Q.f940a;
                Display display = getDisplay();
                if (!isInEditMode() && display != null) {
                    float refreshRate = display.getRefreshRate();
                    f = refreshRate >= 30.0f ? refreshRate : 60.0f;
                    if (this.f4787D0) {
                        this.f4784C0 = 1000.0f / f;
                        this.f4787D0 = false;
                    }
                }
                RunnableC0543o runnableC0543o3 = this.f4872j0;
                runnableC0543o3.f7547e = (long) (1.0E9f / f);
                threadLocal.set(runnableC0543o3);
            }
            RunnableC0543o runnableC0543o4 = this.f4872j0;
            runnableC0543o4.getClass();
            boolean z4 = f4770l2;
            ArrayList arrayList = runnableC0543o4.f7545c;
            if (z4 && arrayList.contains(this)) {
                throw new IllegalStateException("RecyclerView already present in worker list!");
            }
            arrayList.add(this);
            J j5 = this.f4884p;
            if (j5 != null) {
                j5.A();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        P p4;
        RunnableC0543o runnableC0543o;
        C0549v c0549v;
        super.onDetachedFromWindow();
        F f = this.f4815O;
        if (f != null) {
            f.e();
        }
        int i5 = 0;
        setScrollState(0);
        a0 a0Var = this.f4868i0;
        RecyclerView recyclerView = a0Var.f7399i;
        recyclerView.removeCallbacks(a0Var);
        a0Var.f7396e.abortAnimation();
        AbstractC0739a.s(recyclerView, 0.0f);
        J j3 = this.f4884p;
        if (j3 != null && (c0549v = j3.f7343e) != null) {
            c0549v.i();
        }
        this.f4895u = false;
        J j5 = this.f4884p;
        if (j5 != null) {
            j5.f7344g = false;
            j5.Q(this);
        }
        this.d2.clear();
        removeCallbacks(this.f4859f2);
        this.f4867i.getClass();
        while (m0.f7534d.a() != null) {
        }
        int i6 = 0;
        while (true) {
            p4 = this.f4855e;
            ArrayList arrayList = p4.f7365c;
            if (i6 >= arrayList.size()) {
                break;
            }
            L2.b.c(((b0) arrayList.get(i6)).f7406a);
            i6++;
        }
        p4.e(p4.f7369h.f4883o, false);
        while (i5 < getChildCount()) {
            int i7 = i5 + 1;
            View childAt = getChildAt(i5);
            if (childAt == null) {
                throw new IndexOutOfBoundsException();
            }
            Q.a aVar = (Q.a) childAt.getTag(com.wssyncmldm.R.id.pooling_container_listener_holder_tag);
            if (aVar == null) {
                aVar = new Q.a();
                childAt.setTag(com.wssyncmldm.R.id.pooling_container_listener_holder_tag, aVar);
            }
            ArrayList arrayList2 = aVar.f2167a;
            int iX0 = n.x0(arrayList2);
            if (-1 < iX0) {
                B.f.F(arrayList2.get(iX0));
                throw null;
            }
            i5 = i7;
        }
        if (f4774r2 && (runnableC0543o = this.f4872j0) != null) {
            boolean zRemove = runnableC0543o.f7545c.remove(this);
            if (f4770l2 && !zRemove) {
                throw new IllegalStateException("RecyclerView removal failed!");
            }
            this.f4872j0 = null;
        }
        this.f4787D0 = true;
        if (this.f4848b2) {
            ArrayList arrayList3 = (ArrayList) this.f4845a2.f80d;
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                d.c cVar = (d.c) it.next();
                boolean zB = cVar.b();
                ValueAnimator valueAnimator = cVar.f6492d;
                if (zB) {
                    valueAnimator.end();
                }
                valueAnimator.removeAllUpdateListeners();
            }
            arrayList3.clear();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.f4889r;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((G) arrayList.get(i5)).a(this);
        }
        if (this.f4787D0) {
            WeakHashMap weakHashMap = Q.f940a;
            Display display = getDisplay();
            if (display != null) {
                this.f4784C0 = 1000.0f / display.getRefreshRate();
            } else {
                this.f4784C0 = 16.66f;
            }
            this.f4787D0 = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0092  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float f5;
        float f6;
        float axisValue;
        if (this.f4884p != null && !this.f4909z && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f6 = this.f4884p.e() ? -motionEvent.getAxisValue(9) : 0.0f;
                if (this.f4884p.d()) {
                    axisValue = motionEvent.getAxisValue(10);
                    f = f6;
                    f5 = axisValue;
                    if (f == 0.0f || f5 != 0.0f) {
                        D0(f == 0.0f ? 1 : 2, 1);
                        if (!A((int) (this.f4857f0 * f5), (int) (this.g0 * f), null, null, 1)) {
                            int i5 = (int) (f5 * this.f4857f0);
                            int i6 = (int) (f * this.g0);
                            J j3 = this.f4884p;
                            if (j3 == null) {
                                Log.e("SeslRecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                            } else if (!this.f4909z) {
                                int[] iArr = this.f4808L0;
                                iArr[0] = 0;
                                iArr[1] = 0;
                                boolean zD = j3.d();
                                boolean zE = this.f4884p.e();
                                int i7 = zE ? (zD ? 1 : 0) | 2 : zD ? 1 : 0;
                                float y3 = motionEvent.getY();
                                float x4 = motionEvent.getX();
                                int iP0 = i5 - p0(i5, y3);
                                int iQ0 = i6 - q0(i6, x4);
                                D0(i7, 1);
                                if (A(zD ? iP0 : 0, zE ? iQ0 : 0, this.f4808L0, this.f4898v0, 1)) {
                                    iP0 -= iArr[0];
                                    iQ0 -= iArr[1];
                                }
                                t0(zD ? iP0 : 0, zE ? iQ0 : 0, motionEvent, 1);
                                RunnableC0543o runnableC0543o = this.f4872j0;
                                if (runnableC0543o != null && (iP0 != 0 || iQ0 != 0)) {
                                    runnableC0543o.a(this, iP0, iQ0);
                                }
                                F0(1);
                            }
                        }
                    }
                } else {
                    f = f6;
                    f5 = 0.0f;
                    if (f == 0.0f) {
                        D0(f == 0.0f ? 1 : 2, 1);
                        if (!A((int) (this.f4857f0 * f5), (int) (this.g0 * f), null, null, 1)) {
                        }
                    }
                }
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                float axisValue2 = motionEvent.getAxisValue(26);
                if (this.f4884p.e()) {
                    f6 = -axisValue2;
                    axisValue = 0.0f;
                } else if (this.f4884p.d()) {
                    axisValue = axisValue2;
                    f6 = 0.0f;
                } else {
                    f6 = 0.0f;
                    axisValue = 0.0f;
                }
                f = f6;
                f5 = axisValue;
                if (f == 0.0f) {
                }
            } else {
                f = 0.0f;
                f5 = 0.0f;
                if (f == 0.0f) {
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0185  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z4;
        char c2;
        View viewJ;
        boolean z5;
        boolean z6;
        boolean z7;
        int i5;
        boolean z8;
        if (this.f4909z) {
            this.f4835W = -1;
            this.f4843a0 = -1;
            return false;
        }
        this.f4893t = null;
        if (M(motionEvent)) {
            s0();
            setScrollState(0);
            return true;
        }
        if (this.f4884p == null) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        boolean zD = this.f4884p.d();
        boolean zE = this.f4884p.e();
        if (this.f4827T == null) {
            this.f4827T = VelocityTracker.obtain();
        }
        this.f4827T.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        boolean z9 = motionEvent.getToolType(0) == 2;
        boolean z10 = (motionEvent.getButtonState() & 32) != 0;
        D d2 = this.f4845a2;
        w wVar = this.f4842Z1;
        boolean z11 = this.f4877k2;
        boolean z12 = this.f4848b2;
        if (actionMasked == 0) {
            if ((!z9 || !z10) && actionMasked != 211) {
                if (this.f4778A) {
                    this.f4778A = false;
                }
                this.f4822R = motionEvent.getPointerId(0);
                int x4 = (int) (motionEvent.getX() + 0.5f);
                this.f4835W = x4;
                this.f4830U = x4;
                int y3 = (int) (motionEvent.getY() + 0.5f);
                this.f4843a0 = y3;
                this.f4833V = y3;
                if (this.O0) {
                    if (motionEvent.isFromSource(16386)) {
                        this.f4846b0 = this.f4814N0;
                    } else {
                        this.f4846b0 = this.f4811M0;
                    }
                }
                if (f4771m2) {
                    Log.d("SeslRecyclerView", "onIntercept DOWN mTouchSlop[" + this.f4846b0 + "] mTouchSlop[" + this.f4811M0 + "] mPagingTouchSlop[" + this.f4814N0 + "] mLastTouchX[" + this.f4835W + "] mLastTouchY[" + this.f4843a0 + "] ");
                }
                EdgeEffect edgeEffect = this.f4805K;
                if (edgeEffect == null || L2.b.n(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
                    z4 = false;
                } else {
                    L2.b.B(this.f4805K, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                    z4 = true;
                }
                EdgeEffect edgeEffect2 = this.f4810M;
                if (edgeEffect2 != null && L2.b.n(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
                    L2.b.B(this.f4810M, 0.0f, motionEvent.getY() / getHeight());
                    z4 = true;
                }
                EdgeEffect edgeEffect3 = this.f4807L;
                if (edgeEffect3 != null && L2.b.n(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
                    L2.b.B(this.f4807L, 0.0f, motionEvent.getX() / getWidth());
                    z4 = true;
                }
                EdgeEffect edgeEffect4 = this.f4813N;
                if (edgeEffect4 != null && L2.b.n(edgeEffect4) != 0.0f && !canScrollVertically(1)) {
                    L2.b.B(this.f4813N, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                    z4 = true;
                }
                if (z4 || this.f4819Q == 2) {
                    c2 = 1;
                    getParent().requestDisallowInterceptTouchEvent(true);
                    setScrollState(1);
                    F0(1);
                } else {
                    c2 = 1;
                }
                int[] iArr = this.f4901w0;
                iArr[c2] = 0;
                iArr[0] = 0;
                if (this.f4873j1) {
                    l();
                }
                this.f4800I0 = false;
                int i6 = zD;
                if (zE) {
                    i6 = (zD ? 1 : 0) | 2;
                }
                D0(i6, 0);
                this.B0 = false;
            } else if (this.f4778A) {
                this.f4778A = false;
            }
            if (z12 && z11 && this.f4819Q == 0) {
                View viewI = I(motionEvent.getX(), motionEvent.getY());
                if (viewI == null || !viewI.isEnabled()) {
                    viewJ = null;
                    if (viewJ != null) {
                        View viewK = K(viewJ);
                        b0 b0VarU = viewK == null ? null : U(viewK);
                        if (b0VarU != null && b0VarU.f7423t) {
                            SeslRecoilDrawable seslRecoilDrawable = (SeslRecoilDrawable) wVar.f5265c;
                            z5 = false;
                            if (seslRecoilDrawable != null) {
                                seslRecoilDrawable.setState(new int[0]);
                            }
                            if (viewJ.getBackground() instanceof SeslRecoilDrawable) {
                                SeslRecoilDrawable seslRecoilDrawable2 = (SeslRecoilDrawable) viewJ.getBackground();
                                wVar.f5265c = seslRecoilDrawable2;
                                seslRecoilDrawable2.setState(new int[]{R.attr.state_hovered});
                                SeslRecoilDrawable seslRecoilDrawable3 = (SeslRecoilDrawable) wVar.f5265c;
                                w wVar2 = new w(wVar);
                                if (seslRecoilDrawable3.f3224l == null) {
                                    seslRecoilDrawable3.f3224l = wVar2;
                                }
                            }
                            d2.K0(viewJ);
                        }
                    }
                } else {
                    viewJ = J(viewI, motionEvent.getX(), motionEvent.getY());
                    if (viewJ != null && viewJ != viewI) {
                        if (viewJ.getHeight() * viewJ.getWidth() < viewI.getHeight() * viewI.getWidth() * 0.5d) {
                        }
                    }
                    if (viewJ != null) {
                    }
                }
            } else {
                z5 = false;
            }
        } else {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked == 3) {
                        s0();
                        z6 = false;
                        setScrollState(0);
                        if (z12 && z11) {
                            SeslRecoilDrawable seslRecoilDrawable4 = (SeslRecoilDrawable) wVar.f5265c;
                            if (seslRecoilDrawable4 != null) {
                                seslRecoilDrawable4.setState(new int[0]);
                            }
                            d2.L0();
                        }
                    } else if (actionMasked == 5) {
                        this.f4822R = motionEvent.getPointerId(actionIndex);
                        int x5 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                        this.f4835W = x5;
                        this.f4830U = x5;
                        int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                        this.f4843a0 = y4;
                        this.f4833V = y4;
                        if (f4771m2) {
                            Log.d("SeslRecyclerView", "onIntercept POINTER_DOWN mLastTouchX[" + this.f4835W + "] mLastTouchY[" + this.f4843a0 + "] ");
                        }
                    } else if (actionMasked == 6) {
                        j0(motionEvent);
                    } else if (actionMasked != 211) {
                    }
                } else if (this.f4835W >= 0 && this.f4843a0 >= 0 && (!z9 || !z10)) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f4822R);
                    if (iFindPointerIndex < 0) {
                        Log.e("SeslRecyclerView", "Error processing scroll; pointer index for id " + this.f4822R + " not found. Did any MotionEvents get skipped?");
                        motionEventObtain.recycle();
                        return false;
                    }
                    int x6 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                    int y5 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                    int i7 = this.f4835W - x6;
                    int i8 = this.f4843a0 - y5;
                    if (f4771m2) {
                        Log.d("SeslRecyclerView", "onIntercept MOVE dx[" + i7 + "] dy[" + i8 + "]");
                    }
                    if (this.f4819Q != 1) {
                        if (zD != 0) {
                            int iAbs = Math.abs(i7);
                            int i9 = this.f4846b0;
                            if (iAbs > i9) {
                                i7 = i7 > 0 ? i7 - i9 : i7 + i9;
                                this.f4835W = x6;
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            if (zE) {
                                int iAbs2 = Math.abs(i8);
                                int i10 = this.f4846b0;
                                if (iAbs2 > i10) {
                                    i8 = i8 > 0 ? i8 - i10 : i8 + i10;
                                    i5 = 1;
                                    this.f4800I0 = true;
                                    this.f4843a0 = y5;
                                    z8 = true;
                                } else {
                                    i5 = 1;
                                    z8 = z7;
                                }
                                if (z8) {
                                    setScrollState(i5);
                                    if (z12 && z11) {
                                        SeslRecoilDrawable seslRecoilDrawable5 = (SeslRecoilDrawable) wVar.f5265c;
                                        if (seslRecoilDrawable5 != null) {
                                            seslRecoilDrawable5.setState(new int[0]);
                                        }
                                        d2.L0();
                                    }
                                }
                            }
                        }
                    }
                    if (this.f4819Q == 1) {
                        int[] iArr2 = this.f4898v0;
                        this.f4835W = x6 - iArr2[0];
                        this.f4843a0 = y5 - iArr2[1];
                        if (t0(zD != 0 ? i7 : 0, zE ? i8 : 0, motionEventObtain, 0)) {
                            getParent().requestDisallowInterceptTouchEvent(true);
                        }
                        RunnableC0543o runnableC0543o = this.f4872j0;
                        if (runnableC0543o != null && (i7 != 0 || i8 != 0)) {
                            runnableC0543o.a(this, i7, i8);
                        }
                    }
                    m(i8);
                }
                z5 = false;
            } else {
                this.f4827T.clear();
                z6 = false;
                F0(0);
            }
            z5 = z6;
        }
        motionEventObtain.recycle();
        if (this.f4819Q == 1) {
            return true;
        }
        return z5;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i5, KeyEvent keyEvent) {
        if (i5 != 92) {
            if (i5 != 93) {
                if (i5 == 113 || i5 == 114) {
                    this.f4876k1 = true;
                } else if (i5 != 122) {
                    if (i5 == 123 && keyEvent.hasNoModifiers()) {
                        k0(3);
                    }
                } else if (keyEvent.hasNoModifiers()) {
                    k0(2);
                }
            } else if (keyEvent.hasNoModifiers()) {
                k0(1);
            }
        } else if (keyEvent.hasNoModifiers()) {
            k0(0);
        }
        return super.onKeyDown(i5, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i5, KeyEvent keyEvent) {
        if (i5 == 113 || i5 == 114) {
            this.f4876k1 = false;
        }
        return super.onKeyUp(i5, keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) throws Resources.NotFoundException {
        Trace.beginSection("RV OnLayout");
        x();
        Trace.endSection();
        this.f4900w = true;
        if (z4) {
            getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_recyclerview_overlay_feature_hidden_height);
            setupGoToTop(-1);
            J j3 = this.f4884p;
            int[] iArr = this.f4904x0;
            if (j3 == null || j3.d()) {
                J j5 = this.f4884p;
                if (j5 == null || !j5.d()) {
                    return;
                }
                getLocationInWindow(iArr);
                this.f4865h1 = 0;
                this.f4869i1 = 0;
                this.f4861g1 = iArr[0];
                return;
            }
            this.f4873j1 = false;
            ViewParent parent = getParent();
            while (true) {
                if (parent == null || !(parent instanceof ViewGroup)) {
                    break;
                }
                if (parent instanceof InterfaceC0040n) {
                    for (Class<?> superclass = parent.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                        if (superclass.getSimpleName().equals("CoordinatorLayout")) {
                            ViewGroup viewGroup = (ViewGroup) parent;
                            viewGroup.getLocationInWindow(iArr);
                            int height = viewGroup.getHeight() + iArr[1];
                            getLocationInWindow(iArr);
                            this.f4861g1 = iArr[1];
                            int height2 = getHeight() - (height - this.f4861g1);
                            this.f4865h1 = height2;
                            if (height2 < 0) {
                                this.f4865h1 = 0;
                            }
                            this.f4869i1 = this.f4865h1;
                            this.f4873j1 = true;
                        }
                    }
                }
                parent = parent.getParent();
            }
            if (this.f4873j1) {
                return;
            }
            this.f4861g1 = 0;
            this.f4865h1 = 0;
            this.f4869i1 = 0;
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i5, int i6) {
        if (this.f4884p == null) {
            v(i5, i6);
            return;
        }
        this.f4826S1.set(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        boolean zJ = this.f4884p.J();
        boolean z4 = false;
        X x4 = this.l0;
        if (zJ) {
            int mode = View.MeasureSpec.getMode(i5);
            int mode2 = View.MeasureSpec.getMode(i6);
            this.f4884p.f7340b.v(i5, i6);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z4 = true;
            }
            this.f4862g2 = z4;
            if (z4 || this.f4883o == null) {
                return;
            }
            if (x4.f7381d == 1) {
                y();
            }
            this.f4884p.s0(i5, i6);
            x4.f7385i = true;
            z();
            this.f4884p.u0(i5, i6);
            if (this.f4884p.x0()) {
                this.f4884p.s0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                x4.f7385i = true;
                z();
                this.f4884p.u0(i5, i6);
            }
            this.f4866h2 = getMeasuredWidth();
            this.f4870i2 = getMeasuredHeight();
            return;
        }
        if (this.f4897v) {
            this.f4884p.f7340b.v(i5, i6);
            return;
        }
        if (this.f4783C) {
            C0();
            h0();
            m0();
            i0(true);
            if (x4.f7387k) {
                x4.f7383g = true;
            } else {
                this.f4860g.c();
                x4.f7383g = false;
            }
            this.f4783C = false;
            E0(false);
        } else if (x4.f7387k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        AbstractC0526A abstractC0526A = this.f4883o;
        if (abstractC0526A != null) {
            x4.f7382e = abstractC0526A.a();
        } else {
            x4.f7382e = 0;
        }
        C0();
        this.f4884p.f7340b.v(i5, i6);
        E0(false);
        x4.f7383g = false;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i5, Rect rect) {
        if (a0()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i5, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof T)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        T t5 = (T) parcelable;
        this.f = t5;
        super.onRestoreInstanceState(t5.f2270c);
        requestLayout();
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i5) {
        super.onRtlPropertiesChanged(i5);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        this.f4787D0 = true;
        T t5 = new T(super.onSaveInstanceState());
        T t6 = this.f;
        if (t6 != null) {
            t5.f7371e = t6.f7371e;
        } else {
            J j3 = this.f4884p;
            if (j3 != null) {
                t5.f7371e = j3.e0();
            } else {
                t5.f7371e = null;
            }
        }
        return t5;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i5, int i6, int i7, int i8) {
        super.onSizeChanged(i5, i6, i7, i8);
        if (i5 == i7 && i6 == i8) {
            return;
        }
        this.f4813N = null;
        this.f4807L = null;
        this.f4810M = null;
        this.f4805K = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0218 A[PHI: r0
      0x0218: PHI (r0v68 int) = (r0v53 int), (r0v72 int) binds: [B:100:0x0201, B:104:0x0214] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x03d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0531  */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v4 */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zM;
        MotionEvent motionEvent2;
        MotionEvent motionEvent3;
        int iMax;
        int i5;
        float f;
        float f5;
        float f6;
        String str;
        a0 a0Var;
        MotionEvent motionEvent4;
        a0 a0Var2;
        int minFlingVelocity;
        boolean z4;
        int iF;
        PointF pointFA;
        a0 a0Var3;
        int i6;
        Object[] objArr;
        if (this.f4909z || this.f4778A) {
            return false;
        }
        C0541m c0541m = this.f4893t;
        if (c0541m == null) {
            zM = motionEvent.getAction() == 0 ? false : M(motionEvent);
        } else {
            if (c0541m.f7529v != 0) {
                if (motionEvent.getAction() == 0) {
                    boolean zE = c0541m.e(motionEvent.getX(), motionEvent.getY());
                    boolean zD = c0541m.d(motionEvent.getX(), motionEvent.getY());
                    if (zE || zD) {
                        if (zD) {
                            c0541m.f7530w = 1;
                            c0541m.f7523p = (int) motionEvent.getX();
                        } else if (zE) {
                            c0541m.f7530w = 2;
                            c0541m.f7521m = (int) motionEvent.getY();
                        }
                        c0541m.g(2);
                    }
                } else if (motionEvent.getAction() == 1 && c0541m.f7529v == 2) {
                    c0541m.f7521m = 0.0f;
                    c0541m.f7523p = 0.0f;
                    c0541m.g(1);
                    c0541m.f7530w = 0;
                } else if (motionEvent.getAction() == 2 && c0541m.f7529v == 2) {
                    c0541m.h();
                    int i7 = c0541m.f7530w;
                    int i8 = c0541m.f7511b;
                    if (i7 == 1) {
                        float x4 = motionEvent.getX();
                        int[] iArr = c0541m.f7532y;
                        iArr[0] = i8;
                        int i9 = c0541m.f7524q - i8;
                        iArr[1] = i9;
                        float fMax = Math.max(i8, Math.min(i9, x4));
                        if (Math.abs(c0541m.f7522o - fMax) >= 2.0f) {
                            int iF2 = C0541m.f(c0541m.f7523p, fMax, iArr, c0541m.f7526s.computeHorizontalScrollRange(), c0541m.f7526s.computeHorizontalScrollOffset(), c0541m.f7524q);
                            if (iF2 != 0) {
                                c0541m.f7526s.scrollBy(iF2, 0);
                            }
                            c0541m.f7523p = fMax;
                        }
                    }
                    if (c0541m.f7530w == 2) {
                        float y3 = motionEvent.getY();
                        int[] iArr2 = c0541m.f7531x;
                        iArr2[0] = i8;
                        int i10 = c0541m.f7525r - i8;
                        iArr2[1] = i10;
                        float fMax2 = Math.max(i8, Math.min(i10, y3));
                        if (Math.abs(c0541m.f7520l - fMax2) >= 2.0f) {
                            int iF3 = C0541m.f(c0541m.f7521m, fMax2, iArr2, c0541m.f7526s.computeVerticalScrollRange(), c0541m.f7526s.computeVerticalScrollOffset(), c0541m.f7525r);
                            if (iF3 != 0) {
                                c0541m.f7526s.scrollBy(0, iF3);
                            }
                            c0541m.f7521m = fMax2;
                        }
                    }
                }
            }
            int action = motionEvent.getAction();
            if (action == 3 || action == 1) {
                this.f4893t = null;
            }
            zM = true;
        }
        if (zM) {
            s0();
            setScrollState(0);
            return true;
        }
        J j3 = this.f4884p;
        if (j3 == null) {
            return false;
        }
        int iD = j3.d();
        boolean zE2 = this.f4884p.e();
        if (this.f4827T == null) {
            this.f4827T = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        int[] iArr3 = this.f4901w0;
        if (actionMasked == 0) {
            iArr3[1] = 0;
            iArr3[0] = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(iArr3[0], iArr3[1]);
        Object[] objArr2 = motionEvent.getToolType(0) == 2;
        Object[] objArr3 = (motionEvent.getButtonState() & 32) != 0;
        if (actionMasked == 0) {
            motionEvent2 = motionEventObtain;
            this.f4822R = motionEvent.getPointerId(0);
            int x5 = (int) (motionEvent.getX() + 0.5f);
            this.f4835W = x5;
            this.f4830U = x5;
            int y4 = (int) (motionEvent.getY() + 0.5f);
            this.f4843a0 = y4;
            this.f4833V = y4;
            if (f4771m2) {
                Log.d("SeslRecyclerView", "onTouch DOWN mInitialTouchX[" + this.f4830U + "] mInitialTouchY[" + this.f4833V + "] ");
            }
            if (this.f4873j1) {
                l();
            }
            if (zE2) {
                iD = (iD == true ? 1 : 0) | 2;
            }
            D0(iD, 0);
        } else {
            if (actionMasked == 1) {
                this.f4827T.addMovement(motionEventObtain);
                this.f4827T.computeCurrentVelocity(1000, this.f4856e0);
                float f7 = iD != 0 ? -this.f4827T.getXVelocity(this.f4822R) : 0.0f;
                float f8 = zE2 ? -this.f4827T.getYVelocity(this.f4822R) : 0.0f;
                a0 a0Var4 = this.f4868i0;
                if (f7 == 0.0f && f8 == 0.0f) {
                    f6 = f8;
                    str = "SeslRecyclerView";
                    a0Var2 = a0Var4;
                    i6 = 0;
                    motionEvent4 = motionEventObtain;
                } else {
                    int i11 = (int) f7;
                    int iMax2 = (int) f8;
                    J j5 = this.f4884p;
                    if (j5 != null) {
                        if (!this.f4909z) {
                            int iD2 = j5.d();
                            boolean zE3 = this.f4884p.e();
                            if (iD2 == 0 || Math.abs(i11) < this.f4853d0) {
                                i11 = 0;
                            }
                            if (!zE3 || Math.abs(iMax2) < this.f4853d0) {
                                iMax2 = 0;
                            }
                            if (i11 != 0 || iMax2 != 0) {
                                if (i11 == 0) {
                                    iMax = 0;
                                    if (iMax2 == 0) {
                                        i5 = iMax2;
                                        iMax2 = 0;
                                        if (iMax == 0 || iMax2 != 0) {
                                            int i12 = this.f4856e0;
                                            iMax = Math.max(-i12, Math.min(iMax, i12));
                                            int i13 = this.f4856e0;
                                            iMax2 = Math.max(-i13, Math.min(iMax2, i13));
                                            a0Var4.a(iMax, iMax2);
                                        }
                                        if (i11 == 0 || i5 != 0) {
                                            f = i11;
                                            f5 = i5;
                                            if (dispatchNestedPreFling(f, f5)) {
                                                boolean z5 = iD2 != 0 || zE3;
                                                dispatchNestedFling(f, f5, z5);
                                                L l5 = this.f4850c0;
                                                if (l5 != null) {
                                                    C0551x c0551x = (C0551x) l5;
                                                    J layoutManager = c0551x.f7595a.getLayoutManager();
                                                    if (layoutManager != 0 && c0551x.f7595a.getAdapter() != null && ((Math.abs(i5) > (minFlingVelocity = c0551x.f7595a.getMinFlingVelocity()) || Math.abs(i11) > minFlingVelocity) && ((z4 = layoutManager instanceof W)))) {
                                                        D1.c cVar = !z4 ? null : new D1.c(c0551x, c0551x.f7595a.getContext(), 1);
                                                        if (cVar == null) {
                                                            f6 = f8;
                                                            str = "SeslRecyclerView";
                                                            a0Var = a0Var4;
                                                            motionEvent4 = motionEventObtain;
                                                        } else {
                                                            int iZ = layoutManager.z();
                                                            if (iZ != 0) {
                                                                androidx.emoji2.text.f fVarG = layoutManager.e() ? c0551x.g(layoutManager) : layoutManager.d() ? c0551x.f(layoutManager) : null;
                                                                if (fVarG == null) {
                                                                    f6 = f8;
                                                                    str = "SeslRecyclerView";
                                                                    a0Var = a0Var4;
                                                                    motionEvent4 = motionEventObtain;
                                                                } else {
                                                                    int iV = layoutManager.v();
                                                                    f6 = f8;
                                                                    str = "SeslRecyclerView";
                                                                    int i14 = Integer.MAX_VALUE;
                                                                    int i15 = 0;
                                                                    View view = null;
                                                                    motionEvent4 = motionEventObtain;
                                                                    int i16 = Integer.MIN_VALUE;
                                                                    View view2 = null;
                                                                    while (i15 < iV) {
                                                                        int i17 = iV;
                                                                        View viewU = layoutManager.u(i15);
                                                                        if (viewU == null) {
                                                                            a0Var3 = a0Var4;
                                                                        } else {
                                                                            a0Var3 = a0Var4;
                                                                            int iC = C0551x.c(viewU, fVarG);
                                                                            if (iC <= 0 && iC > i16) {
                                                                                i16 = iC;
                                                                                view2 = viewU;
                                                                            }
                                                                            if (iC >= 0 && iC < i14) {
                                                                                i14 = iC;
                                                                                view = viewU;
                                                                            }
                                                                        }
                                                                        i15++;
                                                                        iV = i17;
                                                                        a0Var4 = a0Var3;
                                                                    }
                                                                    a0Var = a0Var4;
                                                                    boolean z6 = !layoutManager.d() ? i5 <= 0 : i11 <= 0;
                                                                    if (z6 && view != null) {
                                                                        iF = J.F(view);
                                                                    } else if (z6 || view2 == null) {
                                                                        if (z6) {
                                                                            view = view2;
                                                                        }
                                                                        if (view != null) {
                                                                            iF = ((z4 && (pointFA = ((W) layoutManager).a(layoutManager.z() - 1)) != null && ((pointFA.x > 0.0f ? 1 : (pointFA.x == 0.0f ? 0 : -1)) < 0 || (pointFA.y > 0.0f ? 1 : (pointFA.y == 0.0f ? 0 : -1)) < 0)) == z6 ? -1 : 1) + J.F(view);
                                                                            if (iF < 0 || iF >= iZ) {
                                                                            }
                                                                        }
                                                                    } else {
                                                                        iF = J.F(view2);
                                                                    }
                                                                    if (iF == -1) {
                                                                        cVar.f7580a = iF;
                                                                        layoutManager.A0(cVar);
                                                                        a0Var2 = a0Var;
                                                                    }
                                                                    Log.i(str, "onTouchUp() velocity : " + f6 + ", last move skip : " + this.B0 + "(" + this.f4784C0 + "), use scroller : " + a0Var2.f7396e.getClass().getName());
                                                                    s0();
                                                                    motionEvent3 = motionEvent4;
                                                                }
                                                                iF = -1;
                                                                if (iF == -1) {
                                                                }
                                                                Log.i(str, "onTouchUp() velocity : " + f6 + ", last move skip : " + this.B0 + "(" + this.f4784C0 + "), use scroller : " + a0Var2.f7396e.getClass().getName());
                                                                s0();
                                                                motionEvent3 = motionEvent4;
                                                            }
                                                        }
                                                        if (z5) {
                                                            if (zE3) {
                                                                iD2 = (iD2 == true ? 1 : 0) | 2;
                                                            }
                                                            D0(iD2, 1);
                                                            int i18 = this.f4856e0;
                                                            int iMax3 = Math.max(-i18, Math.min(i11, i18));
                                                            int i19 = this.f4856e0;
                                                            a0Var2 = a0Var;
                                                            a0Var2.a(iMax3, Math.max(-i19, Math.min(i5, i19)));
                                                            Log.i(str, "onTouchUp() velocity : " + f6 + ", last move skip : " + this.B0 + "(" + this.f4784C0 + "), use scroller : " + a0Var2.f7396e.getClass().getName());
                                                            s0();
                                                            motionEvent3 = motionEvent4;
                                                        } else {
                                                            a0Var2 = a0Var;
                                                        }
                                                    }
                                                }
                                            }
                                            i6 = 0;
                                        } else if (iMax != 0 || iMax2 != 0) {
                                            f6 = f8;
                                            str = "SeslRecyclerView";
                                            a0Var2 = a0Var4;
                                            motionEvent4 = motionEventObtain;
                                            Log.i(str, "onTouchUp() velocity : " + f6 + ", last move skip : " + this.B0 + "(" + this.f4784C0 + "), use scroller : " + a0Var2.f7396e.getClass().getName());
                                            s0();
                                            motionEvent3 = motionEvent4;
                                        }
                                    } else {
                                        EdgeEffect edgeEffect = this.f4807L;
                                        if (edgeEffect == null || L2.b.n(edgeEffect) == 0.0f) {
                                            EdgeEffect edgeEffect2 = this.f4813N;
                                            if (edgeEffect2 != null && L2.b.n(edgeEffect2) != 0.0f) {
                                                if (y0(this.f4813N, iMax2, getHeight())) {
                                                    this.f4813N.onAbsorb(iMax2);
                                                    iMax2 = 0;
                                                }
                                                i5 = 0;
                                                if (iMax == 0) {
                                                    int i122 = this.f4856e0;
                                                    iMax = Math.max(-i122, Math.min(iMax, i122));
                                                    int i132 = this.f4856e0;
                                                    iMax2 = Math.max(-i132, Math.min(iMax2, i132));
                                                    a0Var4.a(iMax, iMax2);
                                                    if (i11 == 0) {
                                                        f = i11;
                                                        f5 = i5;
                                                        if (dispatchNestedPreFling(f, f5)) {
                                                        }
                                                        i6 = 0;
                                                    }
                                                }
                                            }
                                            i5 = iMax2;
                                            iMax2 = 0;
                                            if (iMax == 0) {
                                            }
                                        } else {
                                            int i20 = -iMax2;
                                            if (y0(this.f4807L, i20, getHeight())) {
                                                this.f4807L.onAbsorb(i20);
                                                iMax2 = 0;
                                            }
                                            i5 = 0;
                                            if (iMax == 0) {
                                            }
                                        }
                                    }
                                } else {
                                    EdgeEffect edgeEffect3 = this.f4805K;
                                    if (edgeEffect3 == null || L2.b.n(edgeEffect3) == 0.0f) {
                                        EdgeEffect edgeEffect4 = this.f4810M;
                                        if (edgeEffect4 != null && L2.b.n(edgeEffect4) != 0.0f) {
                                            if (y0(this.f4810M, i11, getWidth())) {
                                                this.f4810M.onAbsorb(i11);
                                                i11 = 0;
                                            }
                                            iMax = i11;
                                            i11 = 0;
                                            if (iMax2 == 0) {
                                            }
                                        }
                                        iMax = 0;
                                        if (iMax2 == 0) {
                                        }
                                    } else {
                                        int i21 = -i11;
                                        if (y0(this.f4805K, i21, getWidth())) {
                                            this.f4805K.onAbsorb(i21);
                                            i11 = 0;
                                        }
                                        iMax = i11;
                                        i11 = 0;
                                        if (iMax2 == 0) {
                                        }
                                    }
                                }
                            }
                        }
                        motionEvent3.recycle();
                        return true;
                    }
                    Log.e("SeslRecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                    f6 = f8;
                    str = "SeslRecyclerView";
                    a0Var2 = a0Var4;
                    motionEvent4 = motionEventObtain;
                    i6 = 0;
                }
                setScrollState(i6);
                Log.i(str, "onTouchUp() velocity : " + f6 + ", last move skip : " + this.B0 + "(" + this.f4784C0 + "), use scroller : " + a0Var2.f7396e.getClass().getName());
                s0();
                motionEvent3 = motionEvent4;
                motionEvent3.recycle();
                return true;
            }
            if (actionMasked != 2) {
                if (actionMasked == 3) {
                    s0();
                    setScrollState(0);
                } else if (actionMasked == 5) {
                    this.f4822R = motionEvent.getPointerId(actionIndex);
                    int x6 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.f4835W = x6;
                    this.f4830U = x6;
                    int y5 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.f4843a0 = y5;
                    this.f4833V = y5;
                } else if (actionMasked == 6) {
                    j0(motionEvent);
                }
            } else if (objArr2 == false || objArr3 == false) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f4822R);
                if (iFindPointerIndex < 0) {
                    Log.e("SeslRecyclerView", "Error processing scroll; pointer index for id " + this.f4822R + " not found. Did any MotionEvents get skipped?");
                    motionEventObtain.recycle();
                    return false;
                }
                int x7 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                int y6 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                int iMax4 = this.f4835W - x7;
                int iMax5 = this.f4843a0 - y6;
                if (this.f4819Q != 1) {
                    if (iD == 0) {
                        objArr = false;
                        if (zE2) {
                            iMax5 = iMax5 > 0 ? Math.max(0, iMax5 - this.f4846b0) : Math.min(0, iMax5 + this.f4846b0);
                            if (iMax5 != 0) {
                                objArr = true;
                            }
                        }
                        if (objArr != false) {
                            setScrollState(1);
                        }
                    } else {
                        iMax4 = iMax4 > 0 ? Math.max(0, iMax4 - this.f4846b0) : Math.min(0, iMax4 + this.f4846b0);
                        if (iMax4 != 0) {
                            objArr = true;
                        }
                        if (zE2) {
                        }
                        if (objArr != false) {
                        }
                    }
                    motionEvent3.recycle();
                    return true;
                }
                if (this.f4819Q == 1) {
                    int[] iArr4 = this.f4808L0;
                    iArr4[0] = 0;
                    iArr4[1] = 0;
                    int iP0 = iMax4 - p0(iMax4, motionEvent.getY());
                    int iQ0 = iMax5 - q0(iMax5, motionEvent.getX());
                    boolean zA = A(iD != 0 ? iP0 : 0, zE2 ? iQ0 : 0, this.f4808L0, this.f4898v0, 0);
                    int[] iArr5 = this.f4898v0;
                    if (zA) {
                        iP0 -= iArr4[0];
                        iQ0 -= iArr4[1];
                        iArr3[0] = iArr3[0] + iArr5[0];
                        iArr3[1] = iArr3[1] + iArr5[1];
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    int i22 = iP0;
                    int i23 = iQ0;
                    this.f4835W = x7 - iArr5[0];
                    this.f4843a0 = y6 - iArr5[1];
                    if ((motionEvent.getFlags() & 33554432) != 0) {
                        this.f4827T.addMovement(motionEventObtain);
                        this.B0 = true;
                        motionEventObtain.recycle();
                        return false;
                    }
                    if (t0(iD != 0 ? i22 : 0, zE2 ? i23 : 0, motionEvent, 0)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    RunnableC0543o runnableC0543o = this.f4872j0;
                    if (runnableC0543o != null && (i22 != 0 || i23 != 0)) {
                        runnableC0543o.a(this, i22, i23);
                    }
                }
            }
            motionEvent2 = motionEventObtain;
        }
        motionEvent3 = motionEvent2;
        this.f4827T.addMovement(motionEvent3);
        motionEvent3.recycle();
        return true;
    }

    public final boolean p() {
        boolean zD;
        boolean z4;
        int childCount = getChildCount();
        J j3 = this.f4884p;
        boolean z5 = true;
        if (j3 != null) {
            zD = j3.d();
            z4 = this.f4884p.A() == 1;
        } else {
            zD = false;
            z4 = false;
        }
        J j5 = this.f4884p;
        boolean z6 = j5 instanceof LinearLayoutManager ? ((LinearLayoutManager) j5).f4763t : false;
        boolean z7 = !z6 ? L() <= 0 : L() + childCount >= this.f4883o.a();
        if (z7 || childCount <= 0) {
            return z7;
        }
        View childAt = getChildAt(z6 ? childCount - 1 : 0);
        Rect rect = this.f4829T1;
        W(rect, childAt);
        Rect rect2 = this.f4826S1;
        if (!zD ? rect.top >= rect2.top : !z4 ? rect.left >= rect2.left : rect.right <= getRight() - rect2.right && rect.right <= getWidth() - rect2.right) {
            z5 = false;
        }
        return z5;
    }

    public final int p0(int i5, float f) {
        float height = f / getHeight();
        float width = i5 / getWidth();
        EdgeEffect edgeEffect = this.f4805K;
        float f5 = 0.0f;
        if (edgeEffect == null || L2.b.n(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f4810M;
            if (edgeEffect2 != null && L2.b.n(edgeEffect2) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    this.f4810M.onRelease();
                } else {
                    float fB = L2.b.B(this.f4810M, width, height);
                    if (L2.b.n(this.f4810M) == 0.0f) {
                        this.f4810M.onRelease();
                    }
                    f5 = fB;
                }
                invalidate();
            }
        } else {
            if (canScrollHorizontally(-1)) {
                this.f4805K.onRelease();
            } else {
                float f6 = -L2.b.B(this.f4805K, -width, 1.0f - height);
                if (L2.b.n(this.f4805K) == 0.0f) {
                    this.f4805K.onRelease();
                }
                f5 = f6;
            }
            invalidate();
        }
        return Math.round(f5 * getWidth());
    }

    public final int q0(int i5, float f) {
        float width = f / getWidth();
        float height = i5 / getHeight();
        EdgeEffect edgeEffect = this.f4807L;
        float f5 = 0.0f;
        if (edgeEffect == null || L2.b.n(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f4813N;
            if (edgeEffect2 != null && L2.b.n(edgeEffect2) != 0.0f) {
                if (canScrollVertically(1)) {
                    this.f4813N.onRelease();
                } else {
                    float fB = L2.b.B(this.f4813N, height, 1.0f - width);
                    if (L2.b.n(this.f4813N) == 0.0f) {
                        this.f4813N.onRelease();
                    }
                    f5 = fB;
                }
                invalidate();
            }
        } else {
            if (canScrollVertically(-1)) {
                this.f4807L.onRelease();
            } else {
                float f6 = -L2.b.B(this.f4807L, -height, width);
                if (L2.b.n(this.f4807L) == 0.0f) {
                    this.f4807L.onRelease();
                }
                f5 = f6;
            }
            invalidate();
        }
        return Math.round(f5 * getHeight());
    }

    public final void r() {
        int iJ = this.f4863h.j();
        for (int i5 = 0; i5 < iJ; i5++) {
            b0 b0VarV = V(this.f4863h.i(i5));
            if (!b0VarV.q()) {
                b0VarV.f7409d = -1;
                b0VarV.f7411g = -1;
            }
        }
        P p4 = this.f4855e;
        ArrayList arrayList = p4.f7365c;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            b0 b0Var = (b0) arrayList.get(i6);
            b0Var.f7409d = -1;
            b0Var.f7411g = -1;
        }
        ArrayList arrayList2 = p4.f7363a;
        int size2 = arrayList2.size();
        for (int i7 = 0; i7 < size2; i7++) {
            b0 b0Var2 = (b0) arrayList2.get(i7);
            b0Var2.f7409d = -1;
            b0Var2.f7411g = -1;
        }
        ArrayList arrayList3 = p4.f7364b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i8 = 0; i8 < size3; i8++) {
                b0 b0Var3 = (b0) p4.f7364b.get(i8);
                b0Var3.f7409d = -1;
                b0Var3.f7411g = -1;
            }
        }
    }

    public final void r0(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.f4878l;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof K) {
            K k5 = (K) layoutParams;
            if (!k5.f7354c) {
                int i5 = rect.left;
                Rect rect2 = k5.f7353b;
                rect.left = i5 - rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        this.f4884p.m0(this, view, this.f4878l, !this.f4900w, view2 == null);
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z4) {
        b0 b0VarV = V(view);
        if (b0VarV != null) {
            if (b0VarV.l()) {
                b0VarV.f7414j &= -257;
            } else if (!b0VarV.q()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(b0VarV);
                throw new IllegalArgumentException(AbstractC0432c.f(this, sb));
            }
        } else if (f4770l2) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            throw new IllegalArgumentException(AbstractC0432c.f(this, sb2));
        }
        view.clearAnimation();
        w(view);
        super.removeDetachedView(view, z4);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        C0549v c0549v = this.f4884p.f7343e;
        if ((c0549v == null || !c0549v.f7584e) && !a0() && view2 != null) {
            r0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z4) {
        return this.f4884p.m0(this, view, rect, z4, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z4) {
        ArrayList arrayList = this.f4891s;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((C0541m) arrayList.get(i5)).getClass();
        }
        super.requestDisallowInterceptTouchEvent(z4);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.f4903x != 0 || this.f4909z) {
            this.f4906y = true;
        } else {
            super.requestLayout();
        }
    }

    public final void s(int i5, int i6) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.f4805K;
        if (edgeEffect == null || edgeEffect.isFinished() || i5 <= 0) {
            zIsFinished = false;
        } else {
            this.f4805K.onRelease();
            zIsFinished = this.f4805K.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f4810M;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i5 < 0) {
            this.f4810M.onRelease();
            zIsFinished |= this.f4810M.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f4807L;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i6 > 0) {
            this.f4807L.onRelease();
            zIsFinished |= this.f4807L.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f4813N;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i6 < 0) {
            this.f4813N.onRelease();
            zIsFinished |= this.f4813N.isFinished();
        }
        if (zIsFinished) {
            WeakHashMap weakHashMap = Q.f940a;
            postInvalidateOnAnimation();
        }
    }

    public final void s0() {
        VelocityTracker velocityTracker = this.f4827T;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean zIsFinished = false;
        F0(0);
        EdgeEffect edgeEffect = this.f4805K;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.f4805K.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f4807L;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.f4807L.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f4810M;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.f4810M.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f4813N;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.f4813N.isFinished();
        }
        if (zIsFinished) {
            WeakHashMap weakHashMap = Q.f940a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View
    public final void scrollBy(int i5, int i6) {
        J j3 = this.f4884p;
        if (j3 == null) {
            Log.e("SeslRecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f4909z) {
            return;
        }
        boolean zD = j3.d();
        boolean zE = this.f4884p.e();
        if (zD || zE) {
            if (!zD) {
                i5 = 0;
            }
            if (!zE) {
                i6 = 0;
            }
            t0(i5, i6, null, 0);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i5, int i6) {
        Log.w("SeslRecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!a0()) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        } else {
            int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
            this.f4781B |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        }
    }

    public void setAccessibilityDelegateCompat(d0 d0Var) {
        this.s0 = d0Var;
        Q.h(this, d0Var);
    }

    public void setAdapter(AbstractC0526A abstractC0526A) {
        setLayoutFrozen(false);
        AbstractC0526A abstractC0526A2 = this.f4883o;
        S s5 = this.f4852d;
        if (abstractC0526A2 != null) {
            abstractC0526A2.f7327a.unregisterObserver(s5);
            this.f4883o.getClass();
        }
        F f = this.f4815O;
        if (f != null) {
            f.e();
        }
        J j3 = this.f4884p;
        P p4 = this.f4855e;
        if (j3 != null) {
            j3.i0(p4);
        }
        J j5 = this.f4884p;
        if (j5 != null) {
            j5.j0(p4);
        }
        p4.f7363a.clear();
        p4.f();
        C0530b c0530b = this.f4860g;
        c0530b.k(c0530b.f7401b);
        c0530b.k(c0530b.f7402c);
        c0530b.f = 0;
        AbstractC0526A abstractC0526A3 = this.f4883o;
        this.f4883o = abstractC0526A;
        if (abstractC0526A != null) {
            abstractC0526A.f7327a.registerObserver(s5);
        }
        J j6 = this.f4884p;
        if (j6 != null) {
            j6.O();
        }
        AbstractC0526A abstractC0526A4 = this.f4883o;
        p4.f7363a.clear();
        p4.f();
        p4.e(abstractC0526A3, true);
        O oC = p4.c();
        if (abstractC0526A3 != null) {
            oC.f7361b--;
        }
        if (oC.f7361b == 0) {
            int i5 = 0;
            while (true) {
                SparseArray sparseArray = oC.f7360a;
                if (i5 >= sparseArray.size()) {
                    break;
                }
                N n = (N) sparseArray.valueAt(i5);
                if (n != null) {
                    ArrayList arrayList = n.f7356a;
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        L2.b.c(((b0) it.next()).f7406a);
                    }
                    arrayList.clear();
                } else {
                    Log.e("SeslRecyclerView", "clear() wasn't executed because RecycledViewPool.mScrap was invalid");
                }
                i5++;
            }
        }
        if (abstractC0526A4 != null) {
            oC.f7361b++;
        }
        p4.d();
        this.l0.f = true;
        n0(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(j0.D d2) {
        if (d2 == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z4) {
        if (z4 != this.f4871j) {
            this.f4813N = null;
            this.f4807L = null;
            this.f4810M = null;
            this.f4805K = null;
        }
        this.f4871j = z4;
        super.setClipToPadding(z4);
        if (this.f4900w) {
            requestLayout();
        }
    }

    public void setEdgeEffectEnabled(boolean z4) {
        if (this.f4803J0 != z4) {
            this.f4803J0 = z4;
        }
    }

    public void setEdgeEffectFactory(E e5) {
        e5.getClass();
        this.f4802J = e5;
        this.f4813N = null;
        this.f4807L = null;
        this.f4810M = null;
        this.f4805K = null;
    }

    public void setHasFixedSize(boolean z4) {
        this.f4897v = z4;
    }

    public void setItemAnimator(F f) {
        F f5 = this.f4815O;
        if (f5 != null) {
            f5.e();
            this.f4815O.f7330a = null;
        }
        this.f4815O = f;
        if (f != null) {
            f.f7330a = this.q0;
            f.f7332c = this;
        }
    }

    public void setItemViewCacheSize(int i5) {
        P p4 = this.f4855e;
        p4.f7367e = i5;
        p4.m();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z4) {
        suppressLayout(z4);
    }

    public void setLayoutManager(J j3) {
        C0552y c0552y;
        C0549v c0549v;
        if (j3 == this.f4884p) {
            return;
        }
        boolean z4 = j3 instanceof LinearLayoutManager;
        this.o1 = this.o1 && z4;
        this.f4886p1 = this.f4886p1 && z4;
        setScrollState(0);
        a0 a0Var = this.f4868i0;
        RecyclerView recyclerView = a0Var.f7399i;
        recyclerView.removeCallbacks(a0Var);
        a0Var.f7396e.abortAnimation();
        AbstractC0739a.s(recyclerView, 0.0f);
        J j5 = this.f4884p;
        if (j5 != null && (c0549v = j5.f7343e) != null) {
            c0549v.i();
        }
        J j6 = this.f4884p;
        P p4 = this.f4855e;
        if (j6 != null) {
            F f = this.f4815O;
            if (f != null) {
                f.e();
            }
            this.f4884p.i0(p4);
            this.f4884p.j0(p4);
            p4.f7363a.clear();
            p4.f();
            if (this.f4895u) {
                J j7 = this.f4884p;
                j7.f7344g = false;
                j7.Q(this);
            }
            this.f4884p.v0(null);
            this.f4884p = null;
        } else {
            p4.f7363a.clear();
            p4.f();
        }
        f fVar = this.f4863h;
        ((C0531c) fVar.f506d).g();
        ArrayList arrayList = (ArrayList) fVar.f507e;
        int size = arrayList.size() - 1;
        while (true) {
            c0552y = (C0552y) fVar.f505c;
            if (size < 0) {
                break;
            }
            View view = (View) arrayList.get(size);
            c0552y.getClass();
            b0 b0VarV = V(view);
            if (b0VarV != null) {
                int i5 = b0VarV.f7419p;
                RecyclerView recyclerView2 = c0552y.f7599a;
                if (recyclerView2.a0()) {
                    b0VarV.f7420q = i5;
                    recyclerView2.d2.add(b0VarV);
                } else {
                    WeakHashMap weakHashMap = Q.f940a;
                    b0VarV.f7406a.setImportantForAccessibility(i5);
                }
                b0VarV.f7419p = 0;
            }
            arrayList.remove(size);
            size--;
        }
        RecyclerView recyclerView3 = c0552y.f7599a;
        int childCount = recyclerView3.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = recyclerView3.getChildAt(i6);
            recyclerView3.w(childAt);
            childAt.clearAnimation();
        }
        recyclerView3.removeAllViews();
        this.f4884p = j3;
        if (j3 != null) {
            if (j3.f7340b != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(j3);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(AbstractC0432c.f(j3.f7340b, sb));
            }
            j3.v0(this);
            if (this.f4895u) {
                J j8 = this.f4884p;
                j8.f7344g = true;
                j8.P(this);
            }
        }
        p4.m();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z4) {
        C0039m scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f995d) {
            WeakHashMap weakHashMap = Q.f940a;
            I.z(scrollingChildHelper.f994c);
        }
        scrollingChildHelper.f995d = z4;
    }

    public void setOnFlingListener(L l5) {
        this.f4850c0 = l5;
    }

    @Deprecated
    public void setOnScrollListener(M m5) {
        this.m0 = m5;
    }

    public void setPreserveFocusAfterLayout(boolean z4) {
        this.f4864h0 = z4;
    }

    public void setRecycledViewPool(O o5) {
        P p4 = this.f4855e;
        RecyclerView recyclerView = p4.f7369h;
        p4.e(recyclerView.f4883o, false);
        if (p4.f7368g != null) {
            r1.f7361b--;
        }
        p4.f7368g = o5;
        if (o5 != null && recyclerView.getAdapter() != null) {
            p4.f7368g.f7361b++;
        }
        p4.d();
    }

    @Deprecated
    public void setRecyclerListener(j0.Q q5) {
    }

    @Override // android.view.View
    public void setScrollBarStyle(int i5) {
        super.setScrollBarStyle(i5);
    }

    public void setScrollState(int i5) {
        C0549v c0549v;
        if (i5 == this.f4819Q) {
            return;
        }
        Log.d("SeslRecyclerView", "setting scroll state to " + i5 + IDMDatabaseInterface.IDM_SQL_FROM + this.f4819Q);
        if (f4771m2) {
            Log.d("SeslRecyclerView", "setting scroll state to " + i5 + IDMDatabaseInterface.IDM_SQL_FROM + this.f4819Q, new Exception());
        }
        this.f4819Q = i5;
        if (i5 != 2) {
            a0 a0Var = this.f4868i0;
            RecyclerView recyclerView = a0Var.f7399i;
            recyclerView.removeCallbacks(a0Var);
            a0Var.f7396e.abortAnimation();
            AbstractC0739a.s(recyclerView, 0.0f);
            J j3 = this.f4884p;
            if (j3 != null && (c0549v = j3.f7343e) != null) {
                c0549v.i();
            }
        }
        J j5 = this.f4884p;
        if (j5 != null) {
            j5.f0(i5);
        }
        M m5 = this.m0;
        if (m5 != null) {
            m5.a(this, i5);
        }
        ArrayList arrayList = this.n0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((M) this.n0.get(size)).a(this, i5);
            }
        }
        if (i5 == 1) {
            this.f4910z0 = false;
        }
    }

    public void setScrollingTouchSlop(int i5) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        Log.d("SeslRecyclerView", "setScrollingTouchSlop(): slopConstant[" + i5 + "]");
        this.O0 = false;
        if (i5 != 0) {
            if (i5 == 1) {
                this.f4846b0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("SeslRecyclerView", "setScrollingTouchSlop(): bad argument constant " + i5 + "; using default value");
        }
        this.f4846b0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(Z z4) {
        this.f4855e.getClass();
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i5) {
        return getScrollingChildHelper().g(i5, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().h(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z4) {
        C0549v c0549v;
        if (z4 != this.f4909z) {
            n("Do not suppressLayout in layout or scroll");
            if (!z4) {
                this.f4909z = false;
                if (this.f4906y && this.f4884p != null && this.f4883o != null) {
                    requestLayout();
                }
                this.f4906y = false;
                return;
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
            this.f4909z = true;
            this.f4778A = true;
            setScrollState(0);
            a0 a0Var = this.f4868i0;
            RecyclerView recyclerView = a0Var.f7399i;
            recyclerView.removeCallbacks(a0Var);
            a0Var.f7396e.abortAnimation();
            AbstractC0739a.s(recyclerView, 0.0f);
            J j3 = this.f4884p;
            if (j3 == null || (c0549v = j3.f7343e) == null) {
                return;
            }
            c0549v.i();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean t0(int i5, int i6, MotionEvent motionEvent, int i7) {
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z4;
        u();
        AbstractC0526A abstractC0526A = this.f4883o;
        int[] iArr = this.f4808L0;
        if (abstractC0526A != null) {
            iArr[0] = 0;
            iArr[1] = 0;
            u0(iArr, i5, i6);
            int i12 = iArr[0];
            int i13 = iArr[1];
            i9 = i12;
            i8 = i13;
            i10 = i5 - i12;
            i11 = i6 - i13;
        } else {
            i8 = 0;
            i9 = 0;
            i10 = 0;
            i11 = 0;
        }
        if (!this.f4889r.isEmpty()) {
            invalidate();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        int i14 = i8;
        boolean zW0 = w0(i9, i8, i10, i11, this.f4898v0, i7, iArr);
        int[] iArr2 = this.f4898v0;
        if (!zW0) {
            iArr2[0] = 0;
            iArr2[1] = 0;
        }
        int i15 = iArr[0];
        int i16 = i10 - i15;
        int i17 = iArr[1];
        int i18 = i11 - i17;
        boolean z5 = (i15 == 0 && i17 == 0) ? false : true;
        int i19 = this.f4835W;
        int i20 = iArr2[0];
        this.f4835W = i19 - i20;
        int i21 = this.f4843a0;
        int i22 = iArr2[1];
        this.f4843a0 = i21 - i22;
        int[] iArr3 = this.f4901w0;
        iArr3[0] = iArr3[0] + i20;
        iArr3[1] = iArr3[1] + i22;
        if (this.f4803J0 && !this.f4800I0 && getOverScrollMode() != 2) {
            if (motionEvent != null && !L2.b.z(motionEvent, 8194)) {
                float x4 = motionEvent.getX();
                float f = i16;
                float y3 = motionEvent.getY();
                float f5 = i18;
                if (f < 0.0f) {
                    D();
                    L2.b.B(this.f4805K, (-f) / getWidth(), 1.0f - (y3 / getHeight()));
                } else if (f > 0.0f) {
                    E();
                    L2.b.B(this.f4810M, f / getWidth(), y3 / getHeight());
                } else {
                    z4 = false;
                    if (f5 >= 0.0f) {
                        F();
                        L2.b.B(this.f4807L, (-f5) / getHeight(), x4 / getWidth());
                    } else {
                        if (f5 > 0.0f) {
                            C();
                            L2.b.B(this.f4813N, f5 / getHeight(), 1.0f - (x4 / getWidth()));
                        }
                        this.f4910z0 = z4;
                        if (z4 || f != 0.0f || f5 != 0.0f) {
                            WeakHashMap weakHashMap = Q.f940a;
                            postInvalidateOnAnimation();
                        }
                    }
                    z4 = true;
                    this.f4910z0 = z4;
                    if (z4) {
                        WeakHashMap weakHashMap2 = Q.f940a;
                        postInvalidateOnAnimation();
                    }
                }
                z4 = true;
                if (f5 >= 0.0f) {
                }
                z4 = true;
                this.f4910z0 = z4;
                if (z4) {
                }
            }
            s(i5, i6);
        }
        if (i9 != 0 || i14 != 0) {
            B(i9, i14);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        if ((this.f4884p instanceof StaggeredGridLayoutManager) && (!canScrollVertically(-1) || !canScrollVertically(1))) {
            this.f4884p.f0(0);
        }
        this.f4800I0 = false;
        return (!z5 && i9 == 0 && i14 == 0) ? false : true;
    }

    public final void u() {
        if (!this.f4900w || this.f4791F) {
            Trace.beginSection("RV FullInvalidate");
            x();
            Trace.endSection();
            return;
        }
        if (this.f4860g.g()) {
            C0530b c0530b = this.f4860g;
            int i5 = c0530b.f;
            if ((i5 & 4) == 0 || (i5 & 11) != 0) {
                if (c0530b.g()) {
                    Trace.beginSection("RV FullInvalidate");
                    x();
                    Trace.endSection();
                    return;
                }
                return;
            }
            Trace.beginSection("RV PartialInvalidate");
            C0();
            h0();
            this.f4860g.j();
            if (!this.f4906y) {
                int iG = this.f4863h.g();
                int i6 = 0;
                while (true) {
                    if (i6 < iG) {
                        b0 b0VarV = V(this.f4863h.f(i6));
                        if (b0VarV != null && !b0VarV.q() && b0VarV.m()) {
                            x();
                            break;
                        }
                        i6++;
                    } else {
                        this.f4860g.b();
                        break;
                    }
                }
            }
            E0(true);
            i0(true);
            Trace.endSection();
        }
    }

    public final void u0(int[] iArr, int i5, int i6) {
        int iQ0;
        b0 b0Var;
        C0();
        h0();
        Trace.beginSection("RV Scroll");
        X x4 = this.l0;
        H(x4);
        P p4 = this.f4855e;
        int iO0 = i5 != 0 ? this.f4884p.o0(i5, p4, x4) : 0;
        if (i6 != 0) {
            iQ0 = this.f4884p.q0(i6, p4, x4);
            setupGoToTop(1);
        } else {
            iQ0 = 0;
        }
        Trace.endSection();
        int iG = this.f4863h.g();
        for (int i7 = 0; i7 < iG; i7++) {
            View viewF = this.f4863h.f(i7);
            b0 b0VarU = U(viewF);
            if (b0VarU != null && (b0Var = b0VarU.f7413i) != null) {
                int left = viewF.getLeft();
                int top = viewF.getTop();
                View view = b0Var.f7406a;
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        i0(true);
        E0(false);
        if (iArr != null) {
            iArr[0] = iO0;
            iArr[1] = iQ0;
        }
    }

    public final void v(int i5, int i6) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = Q.f940a;
        setMeasuredDimension(J.g(i5, paddingRight, getMinimumWidth()), J.g(i6, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    public final void v0(int i5) {
        C0549v c0549v;
        if (this.f4909z) {
            return;
        }
        setScrollState(0);
        a0 a0Var = this.f4868i0;
        RecyclerView recyclerView = a0Var.f7399i;
        recyclerView.removeCallbacks(a0Var);
        a0Var.f7396e.abortAnimation();
        AbstractC0739a.s(recyclerView, 0.0f);
        J j3 = this.f4884p;
        if (j3 != null && (c0549v = j3.f7343e) != null) {
            c0549v.i();
        }
        J j5 = this.f4884p;
        if (j5 == null) {
            Log.e("SeslRecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            j5.p0(i5);
            awakenScrollBars();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return drawable == null || super.verifyDrawable(drawable);
    }

    public final void w(View view) {
        V(view);
        ArrayList arrayList = this.E;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((g) this.E.get(size)).getClass();
            }
        }
    }

    public final boolean w0(int i5, int i6, int i7, int i8, int[] iArr, int i9, int[] iArr2) {
        return getScrollingChildHelper().d(i5, i6, i7, i8, iArr, i9, iArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x03e3  */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [j0.b0] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void x() {
        ?? r10;
        View viewFindViewById;
        boolean z4;
        View viewF;
        C0042p c0042p;
        int i5;
        RecyclerView recyclerView;
        boolean zG;
        if (this.f4883o == null) {
            Log.w("SeslRecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.f4884p == null) {
            Log.e("SeslRecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        X x4 = this.l0;
        x4.f7385i = false;
        boolean z5 = this.f4862g2 && !(this.f4866h2 == getWidth() && this.f4870i2 == getHeight());
        this.f4866h2 = 0;
        this.f4870i2 = 0;
        this.f4862g2 = false;
        if (x4.f7381d == 1) {
            y();
            this.f4884p.r0(this);
            z();
        } else {
            C0530b c0530b = this.f4860g;
            if ((c0530b.f7402c.isEmpty() || c0530b.f7401b.isEmpty()) && !z5 && this.f4884p.n == getWidth() && this.f4884p.f7351o == getHeight()) {
                this.f4884p.r0(this);
            } else {
                this.f4884p.r0(this);
                z();
            }
        }
        x4.a(4);
        C0();
        h0();
        x4.f7381d = 1;
        boolean z6 = x4.f7386j;
        View view = null;
        Long l5 = null;
        P p4 = this.f4855e;
        v vVar = this.f4867i;
        if (z6) {
            int iG = this.f4863h.g() - 1;
            while (iG >= 0) {
                b0 b0VarV = V(this.f4863h.f(iG));
                if (!b0VarV.q()) {
                    long jS = S(b0VarV);
                    this.f4815O.getClass();
                    C0042p c0042p2 = new C0042p();
                    c0042p2.a(b0VarV);
                    b0 b0Var = (b0) ((C0716e) vVar.f6793d).d(jS, l5);
                    if (b0Var == null || b0Var.q()) {
                        vVar.e(b0VarV, c0042p2);
                    } else {
                        C0722k c0722k = (C0722k) vVar.f6792c;
                        m0 m0Var = (m0) c0722k.getOrDefault(b0Var, l5);
                        boolean z7 = (m0Var == null || (m0Var.f7535a & 1) == 0) ? false : true;
                        m0 m0Var2 = (m0) c0722k.getOrDefault(b0VarV, l5);
                        boolean z8 = (m0Var2 == null || (m0Var2.f7535a & 1) == 0) ? false : true;
                        if (z7 && b0Var == b0VarV) {
                            vVar.e(b0VarV, c0042p2);
                        } else {
                            C0042p c0042pA = vVar.A(b0Var, 4);
                            vVar.e(b0VarV, c0042p2);
                            C0042p c0042pA2 = vVar.A(b0VarV, 8);
                            if (c0042pA == null) {
                                int iG2 = this.f4863h.g();
                                for (int i6 = 0; i6 < iG2; i6++) {
                                    b0 b0VarV2 = V(this.f4863h.f(i6));
                                    if (b0VarV2 != b0VarV && S(b0VarV2) == jS) {
                                        AbstractC0526A abstractC0526A = this.f4883o;
                                        if (abstractC0526A == null || !abstractC0526A.f7328b) {
                                            StringBuilder sb = new StringBuilder("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                                            sb.append(b0VarV2);
                                            sb.append(" \n View Holder 2:");
                                            sb.append(b0VarV);
                                            throw new IllegalStateException(AbstractC0432c.f(this, sb));
                                        }
                                        StringBuilder sb2 = new StringBuilder("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                                        sb2.append(b0VarV2);
                                        sb2.append(" \n View Holder 2:");
                                        sb2.append(b0VarV);
                                        throw new IllegalStateException(AbstractC0432c.f(this, sb2));
                                    }
                                }
                                Log.e("SeslRecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + b0Var + " cannot be found but it is necessary for " + b0VarV + G());
                            } else {
                                b0Var.p(false);
                                if (z7) {
                                    i(b0Var);
                                }
                                if (b0Var != b0VarV) {
                                    if (z8) {
                                        i(b0VarV);
                                    }
                                    b0Var.f7412h = b0VarV;
                                    i(b0Var);
                                    p4.l(b0Var);
                                    b0VarV.p(false);
                                    b0VarV.f7413i = b0Var;
                                }
                                if (this.f4815O.a(b0Var, b0VarV, c0042pA, c0042pA2)) {
                                    l0();
                                }
                            }
                        }
                    }
                }
                iG--;
                l5 = null;
            }
            C0722k c0722k2 = (C0722k) vVar.f6792c;
            for (int i7 = c0722k2.f8440e - 1; i7 >= 0; i7--) {
                b0 b0Var2 = (b0) c0722k2.h(i7);
                m0 m0Var3 = (m0) c0722k2.i(i7);
                int i8 = m0Var3.f7535a;
                int i9 = i8 & 3;
                C0552y c0552y = this.f4874j2;
                if (i9 == 3) {
                    RecyclerView recyclerView2 = c0552y.f7599a;
                    recyclerView2.f4884p.k0(b0Var2.f7406a, recyclerView2.f4855e);
                } else if ((i8 & 1) != 0) {
                    C0042p c0042p3 = m0Var3.f7536b;
                    if (c0042p3 == null) {
                        RecyclerView recyclerView3 = c0552y.f7599a;
                        recyclerView3.f4884p.k0(b0Var2.f7406a, recyclerView3.f4855e);
                    } else {
                        c0552y.g(b0Var2, c0042p3, m0Var3.f7537c);
                    }
                } else if ((i8 & 14) == 14) {
                    c0552y.f(b0Var2, m0Var3.f7536b, m0Var3.f7537c);
                } else if ((i8 & 12) == 12) {
                    C0042p c0042p4 = m0Var3.f7536b;
                    C0042p c0042p5 = m0Var3.f7537c;
                    c0552y.getClass();
                    b0Var2.p(false);
                    RecyclerView recyclerView4 = c0552y.f7599a;
                    if (recyclerView4.f4791F) {
                        F f = recyclerView4.f4815O;
                        if (f != null && f.a(b0Var2, b0Var2, c0042p4, c0042p5)) {
                            recyclerView4.l0();
                        }
                    } else {
                        F f5 = recyclerView4.f4815O;
                        if (f5 != null) {
                            e0 e0Var = (e0) f5;
                            int i10 = c0042p4.f999a;
                            int i11 = c0042p5.f999a;
                            if (i10 == i11 && c0042p4.f1000b == c0042p5.f1000b) {
                                e0Var.c(b0Var2);
                                recyclerView = recyclerView4;
                                zG = false;
                            } else {
                                recyclerView = recyclerView4;
                                zG = e0Var.g(b0Var2, i10, c0042p4.f1000b, i11, c0042p5.f1000b);
                            }
                            if (zG) {
                                recyclerView.l0();
                            }
                        }
                    }
                } else {
                    if ((i8 & 4) != 0) {
                        c0042p = null;
                        c0552y.g(b0Var2, m0Var3.f7536b, null);
                    } else {
                        c0042p = null;
                        if ((i8 & 8) != 0) {
                            c0552y.f(b0Var2, m0Var3.f7536b, m0Var3.f7537c);
                        }
                    }
                    i5 = 0;
                    m0Var3.f7535a = i5;
                    m0Var3.f7536b = c0042p;
                    m0Var3.f7537c = c0042p;
                    m0.f7534d.c(m0Var3);
                }
                i5 = 0;
                c0042p = null;
                m0Var3.f7535a = i5;
                m0Var3.f7536b = c0042p;
                m0Var3.f7537c = c0042p;
                m0.f7534d.c(m0Var3);
            }
            view = null;
        }
        this.f4892s1 = this.f4890r1;
        this.f4890r1 = -1;
        if (this.o1 && !canScrollVertically(-1) && !canScrollVertically(1)) {
            int iA = this.f4883o.a() - 1;
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.f4884p;
            boolean z9 = linearLayoutManager.f4763t;
            if (z9 && linearLayoutManager.f4765v) {
                this.f4888q1 = true;
                iA = 0;
            } else if (z9 || linearLayoutManager.f4765v) {
                this.o1 = false;
                iA = -1;
            }
            if (iA >= 0 && iA <= N() && (viewF = this.f4863h.f(iA)) != null) {
                this.f4890r1 = viewF.getBottom();
            }
        }
        this.f4884p.j0(p4);
        x4.f7379b = x4.f7382e;
        this.f4791F = false;
        this.f4794G = false;
        x4.f7386j = false;
        x4.f7387k = false;
        this.f4884p.f = false;
        ArrayList arrayList = p4.f7364b;
        if (arrayList != null) {
            arrayList.clear();
        }
        J j3 = this.f4884p;
        if (j3.f7348k) {
            j3.f7347j = 0;
            j3.f7348k = false;
            p4.m();
        }
        this.f4884p.c0(x4);
        i0(true);
        E0(false);
        ((C0722k) vVar.f6792c).clear();
        ((C0716e) vVar.f6793d).a();
        int[] iArr = this.t0;
        int i12 = iArr[0];
        int i13 = iArr[1];
        O(iArr);
        if ((iArr[0] == i12 && iArr[1] == i13) ? false : true) {
            B(0, 0);
        }
        if (this.f4864h0 && this.f4883o != null && hasFocus() && getDescendantFocusability() != 393216 && (getDescendantFocusability() != 131072 || !isFocused())) {
            if (!isFocused()) {
                if (((ArrayList) this.f4863h.f507e).contains(getFocusedChild())) {
                    long j5 = x4.f7389m;
                    if (j5 != -1 && (z4 = this.f4883o.f7328b) && z4) {
                        int iJ = this.f4863h.j();
                        int i14 = 0;
                        r10 = view;
                        while (true) {
                            if (i14 >= iJ) {
                                break;
                            }
                            b0 b0VarV3 = V(this.f4863h.i(i14));
                            if (b0VarV3 != null && !b0VarV3.j() && b0VarV3.f7410e == j5) {
                                if (!((ArrayList) this.f4863h.f507e).contains(b0VarV3.f7406a)) {
                                    r10 = b0VarV3;
                                    break;
                                }
                                r10 = b0VarV3;
                            }
                            i14++;
                            r10 = r10;
                        }
                    } else {
                        r10 = view;
                    }
                    if (r10 != null) {
                        ArrayList arrayList2 = (ArrayList) this.f4863h.f507e;
                        View view2 = r10.f7406a;
                        if (!arrayList2.contains(view2) && view2.hasFocusable()) {
                            view = view2;
                        } else if (this.f4863h.g() > 0) {
                            int i15 = x4.f7388l;
                            if (i15 == -1) {
                                i15 = 0;
                            }
                            int iB = x4.b();
                            for (int i16 = i15; i16 < iB; i16++) {
                                b0 b0VarQ = Q(i16);
                                if (b0VarQ == null) {
                                    break;
                                }
                                View view3 = b0VarQ.f7406a;
                                if (view3.hasFocusable()) {
                                    view = view3;
                                    break;
                                }
                            }
                            int iMin = Math.min(iB, i15) - 1;
                            while (true) {
                                if (iMin < 0) {
                                    break;
                                }
                                b0 b0VarQ2 = Q(iMin);
                                if (b0VarQ2 == null) {
                                    break;
                                }
                                View view4 = b0VarQ2.f7406a;
                                if (view4.hasFocusable()) {
                                    view = view4;
                                    break;
                                }
                                iMin--;
                            }
                        }
                        if (view != null) {
                            int i17 = x4.n;
                            if (i17 != -1 && (viewFindViewById = view.findViewById(i17)) != null && viewFindViewById.isFocusable()) {
                                view = viewFindViewById;
                            }
                            view.requestFocus();
                        }
                    }
                }
            }
        }
        x4.f7389m = -1L;
        x4.f7388l = -1;
        x4.n = -1;
    }

    public final View x0(float f, float f5) {
        int i5 = (int) (f + 0.5f);
        int i6 = (int) (0.5f + f5);
        int iG = this.f4863h.g() - 1;
        int i7 = 0;
        int i8 = i6;
        int i9 = Integer.MAX_VALUE;
        for (int i10 = iG; i10 >= 0; i10--) {
            View childAt = getChildAt(i10);
            if (childAt != null) {
                int bottom = (childAt.getBottom() + childAt.getTop()) / 2;
                if (i7 != bottom) {
                    int iAbs = Math.abs(i6 - bottom);
                    if (iAbs < i9) {
                        i9 = iAbs;
                        i7 = bottom;
                        i8 = i7;
                    } else {
                        if (!(this.f4884p instanceof StaggeredGridLayoutManager)) {
                            break;
                        }
                        i7 = bottom;
                    }
                } else {
                    continue;
                }
            }
        }
        int i11 = -1;
        int i12 = Integer.MAX_VALUE;
        int i13 = Integer.MAX_VALUE;
        int i14 = -1;
        while (iG >= 0) {
            View childAt2 = getChildAt(iG);
            if (childAt2 != null) {
                int top = childAt2.getTop();
                int bottom2 = childAt2.getBottom();
                int left = childAt2.getLeft();
                int right = childAt2.getRight();
                if (i8 >= top && i8 <= bottom2) {
                    int iAbs2 = Math.abs(i5 - left);
                    int iAbs3 = Math.abs(i5 - right);
                    if (iAbs2 <= i12) {
                        i11 = iG;
                        i12 = iAbs2;
                    }
                    if (iAbs3 <= i13) {
                        i14 = iG;
                        i13 = iAbs3;
                    }
                }
                if (i8 > bottom2 || iG == 0) {
                    return i12 < i13 ? this.f4863h.f(i11) : this.f4863h.f(i14);
                }
            }
            iG--;
        }
        Log.e("SeslRecyclerView", "findNearChildViewUnder didn't find valid child view! " + f + ", " + f5);
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void y() {
        View viewK;
        int iR;
        m0 m0Var;
        X x4 = this.l0;
        x4.a(1);
        H(x4);
        x4.f7385i = false;
        C0();
        v vVar = this.f4867i;
        ((C0722k) vVar.f6792c).clear();
        C0716e c0716e = (C0716e) vVar.f6793d;
        c0716e.a();
        h0();
        m0();
        View focusedChild = (this.f4864h0 && hasFocus() && this.f4883o != null) ? getFocusedChild() : null;
        b0 b0VarU = (focusedChild == null || (viewK = K(focusedChild)) == null) ? null : U(viewK);
        if (b0VarU == null) {
            x4.f7389m = -1L;
            x4.f7388l = -1;
            x4.n = -1;
        } else {
            x4.f7389m = this.f4883o.f7328b ? b0VarU.f7410e : -1L;
            if (!this.f4791F) {
                if (b0VarU.j()) {
                    iR = b0VarU.f7409d;
                } else {
                    RecyclerView recyclerView = b0VarU.f7421r;
                    iR = recyclerView == null ? -1 : recyclerView.R(b0VarU);
                }
                x4.f7388l = iR;
                View focusedChild2 = b0VarU.f7406a;
                int id = focusedChild2.getId();
                while (!focusedChild2.isFocused() && (focusedChild2 instanceof ViewGroup) && focusedChild2.hasFocus()) {
                    focusedChild2 = ((ViewGroup) focusedChild2).getFocusedChild();
                    if (focusedChild2.getId() != -1) {
                        id = focusedChild2.getId();
                    }
                }
                x4.n = id;
            }
        }
        x4.f7384h = x4.f7386j && this.f4885p0;
        this.f4885p0 = false;
        this.o0 = false;
        x4.f7383g = x4.f7387k;
        x4.f7382e = this.f4883o.a();
        O(this.t0);
        boolean z4 = x4.f7386j;
        C0722k c0722k = (C0722k) vVar.f6792c;
        if (z4) {
            int iG = this.f4863h.g();
            for (int i5 = 0; i5 < iG; i5++) {
                b0 b0VarV = V(this.f4863h.f(i5));
                if (!b0VarV.q() && (!b0VarV.h() || this.f4883o.f7328b)) {
                    F f = this.f4815O;
                    F.b(b0VarV);
                    b0VarV.d();
                    f.getClass();
                    C0042p c0042p = new C0042p();
                    c0042p.a(b0VarV);
                    m0 m0VarA = (m0) c0722k.getOrDefault(b0VarV, null);
                    if (m0VarA == null) {
                        m0VarA = m0.a();
                        c0722k.put(b0VarV, m0VarA);
                    }
                    m0VarA.f7536b = c0042p;
                    m0VarA.f7535a |= 4;
                    if (x4.f7384h && b0VarV.m() && !b0VarV.j() && !b0VarV.q() && !b0VarV.h()) {
                        c0716e.e(S(b0VarV), b0VarV);
                    }
                }
            }
        }
        if (x4.f7387k) {
            int iJ = this.f4863h.j();
            for (int i6 = 0; i6 < iJ; i6++) {
                b0 b0VarV2 = V(this.f4863h.i(i6));
                if (f4770l2 && b0VarV2.f7408c == -1 && !b0VarV2.j()) {
                    throw new IllegalStateException(AbstractC0432c.f(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
                }
                if (!b0VarV2.q() && b0VarV2.f7409d == -1) {
                    b0VarV2.f7409d = b0VarV2.f7408c;
                }
            }
            boolean z5 = x4.f;
            x4.f = false;
            this.f4884p.b0(this.f4855e, x4);
            x4.f = z5;
            for (int i7 = 0; i7 < this.f4863h.g(); i7++) {
                b0 b0VarV3 = V(this.f4863h.f(i7));
                if (!b0VarV3.q() && ((m0Var = (m0) c0722k.getOrDefault(b0VarV3, null)) == null || (m0Var.f7535a & 4) == 0)) {
                    F.b(b0VarV3);
                    boolean zE = b0VarV3.e(8192);
                    F f5 = this.f4815O;
                    b0VarV3.d();
                    f5.getClass();
                    C0042p c0042p2 = new C0042p();
                    c0042p2.a(b0VarV3);
                    if (zE) {
                        o0(b0VarV3, c0042p2);
                    } else {
                        m0 m0VarA2 = (m0) c0722k.getOrDefault(b0VarV3, null);
                        if (m0VarA2 == null) {
                            m0VarA2 = m0.a();
                            c0722k.put(b0VarV3, m0VarA2);
                        }
                        m0VarA2.f7535a |= 2;
                        m0VarA2.f7536b = c0042p2;
                    }
                }
            }
            r();
        } else {
            r();
        }
        i0(true);
        E0(false);
        x4.f7381d = 2;
    }

    public final boolean y0(EdgeEffect edgeEffect, int i5, int i6) {
        if (i5 > 0) {
            return true;
        }
        float fN = L2.b.n(edgeEffect) * i6;
        float fAbs = Math.abs(-i5) * 0.35f;
        float f = this.f4849c * 0.015f;
        double dLog = Math.log(fAbs / f);
        double d2 = o2;
        return ((float) (Math.exp((d2 / (d2 - 1.0d)) * dLog) * ((double) f))) < fN;
    }

    public final void z() {
        C0();
        h0();
        X x4 = this.l0;
        x4.a(6);
        this.f4860g.c();
        x4.f7382e = this.f4883o.a();
        x4.f7380c = 0;
        if (this.f != null) {
            AbstractC0526A abstractC0526A = this.f4883o;
            int iF = Q0.f(abstractC0526A.f7329c);
            if (iF == 1 ? abstractC0526A.a() > 0 : iF != 2) {
                Parcelable parcelable = this.f.f7371e;
                if (parcelable != null) {
                    this.f4884p.d0(parcelable);
                }
                this.f = null;
            }
        }
        x4.f7383g = false;
        this.f4884p.b0(this.f4855e, x4);
        x4.f = false;
        x4.f7386j = x4.f7386j && this.f4815O != null;
        x4.f7381d = 4;
        i0(true);
        E0(false);
    }

    public final void z0(MotionEvent motionEvent, int i5) {
        AbstractC0739a.q(this, motionEvent.getToolType(0), i5 == 20001 ? null : PointerIcon.getSystemIcon(this.f4907y0, i5));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0550  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x058e  */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RecyclerView(Context context, AttributeSet attributeSet, int i5) throws Resources.NotFoundException, NoSuchMethodException, SecurityException {
        ?? r13;
        boolean z4;
        int i6;
        String str;
        Object[] objArr;
        Constructor constructor;
        super(context, attributeSet, i5);
        int i7 = 5;
        int i8 = 4;
        int i9 = 2;
        int i10 = 3;
        this.f4852d = new S(this);
        this.f4855e = new P(this);
        this.f4867i = new v(6);
        int i11 = 1;
        this.f4875k = new RunnableC0553z(this, i11);
        this.f4878l = new Rect();
        this.f4880m = new Rect();
        this.n = new RectF();
        this.f4887q = new ArrayList();
        this.f4889r = new ArrayList();
        this.f4891s = new ArrayList();
        this.f4903x = 0;
        this.f4791F = false;
        this.f4794G = false;
        this.f4796H = 0;
        this.f4799I = 0;
        this.f4802J = f4777v2;
        C0539k c0539k = new C0539k();
        c0539k.f7330a = null;
        c0539k.f7331b = new ArrayList();
        c0539k.f7332c = null;
        c0539k.f7438d = true;
        c0539k.f7484e = new ArrayList();
        c0539k.f = new ArrayList();
        c0539k.f7485g = new ArrayList();
        c0539k.f7486h = new ArrayList();
        c0539k.f7487i = new ArrayList();
        c0539k.f7488j = new ArrayList();
        c0539k.f7489k = new ArrayList();
        c0539k.f7490l = new ArrayList();
        c0539k.f7491m = new ArrayList();
        c0539k.n = new ArrayList();
        c0539k.f7492o = new ArrayList();
        c0539k.f7493p = 0;
        c0539k.f7494q = 0;
        this.f4815O = c0539k;
        this.f4819Q = 0;
        this.f4822R = -1;
        this.f4857f0 = Float.MIN_VALUE;
        this.g0 = Float.MIN_VALUE;
        this.f4864h0 = true;
        this.f4868i0 = new a0(this);
        this.k0 = f4774r2 ? new b5() : null;
        X x4 = new X();
        x4.f7378a = -1;
        x4.f7379b = 0;
        x4.f7380c = 0;
        x4.f7381d = 1;
        x4.f7382e = 0;
        x4.f = false;
        x4.f7383g = false;
        x4.f7384h = false;
        x4.f7385i = false;
        x4.f7386j = false;
        x4.f7387k = false;
        this.l0 = x4;
        this.o0 = false;
        this.f4885p0 = false;
        this.q0 = new C0552y(this);
        this.r0 = false;
        this.t0 = new int[2];
        this.f4898v0 = new int[2];
        this.f4901w0 = new int[2];
        this.f4904x0 = new int[2];
        this.f4910z0 = false;
        this.f4779A0 = new int[2];
        this.B0 = false;
        this.f4784C0 = 16.66f;
        this.f4787D0 = true;
        this.f4789E0 = null;
        this.f4792F0 = false;
        this.f4795G0 = false;
        this.f4797H0 = -1;
        this.f4800I0 = false;
        this.f4803J0 = true;
        this.f4806K0 = new b(i11, this);
        this.f4808L0 = new int[2];
        this.f4811M0 = 0;
        this.f4814N0 = 0;
        this.O0 = false;
        new RunnableC0553z(this, i9);
        new RunnableC0553z(this, i10);
        new RunnableC0553z(this, i8);
        new Rect();
        this.f4817P0 = true;
        this.f4820Q0 = false;
        this.f4823R0 = true;
        this.f4825S0 = false;
        this.f4831U0 = true;
        this.f4834V0 = 0;
        this.W0 = 0;
        this.f4837X0 = 0;
        this.f4839Y0 = 0;
        this.f4841Z0 = 0;
        this.f4844a1 = 0;
        this.f4847b1 = null;
        this.f4851c1 = -1;
        this.f4854d1 = 0;
        this.f4858f1 = new Rect();
        this.f4861g1 = 0;
        this.f4865h1 = 0;
        this.f4869i1 = 0;
        this.f4873j1 = false;
        this.f4876k1 = false;
        this.f4879l1 = false;
        this.f4881m1 = false;
        this.o1 = false;
        this.f4886p1 = true;
        this.f4888q1 = false;
        this.f4890r1 = -1;
        this.f4892s1 = -1;
        this.f4894t1 = -1;
        this.f4896u1 = new Paint();
        this.f4902w1 = 0;
        this.f4905x1 = false;
        this.f4908y1 = false;
        this.f4911z1 = false;
        this.f4780A1 = false;
        this.f4782B1 = false;
        this.f4785C1 = 0;
        int iL = a.l();
        Method methodK = x.K("android.view.PointerIcon", "hidden_SEM_TYPE_STYLUS_SCROLL_RIGHT", new Class[0]);
        Object objJ0 = methodK != null ? x.j0(null, methodK, new Object[0]) : null;
        int iIntValue = objJ0 instanceof Integer ? ((Integer) objJ0).intValue() : 13;
        int iK = a.k();
        Method methodK2 = x.K("android.view.PointerIcon", "hidden_SEM_TYPE_STYLUS_SCROLL_LEFT", new Class[0]);
        Object objJ02 = methodK2 != null ? x.j0(null, methodK2, new Object[0]) : null;
        this.f4788D1 = new int[]{iL, iIntValue, iK, objJ02 instanceof Integer ? ((Integer) objJ02).intValue() : 17};
        this.f4790E1 = 0L;
        this.f4793F1 = 0L;
        this.G1 = 300L;
        this.f4798H1 = 500L;
        this.f4801I1 = 0L;
        this.f4804J1 = -1;
        this.K1 = false;
        this.f4809L1 = false;
        this.f4812M1 = 0;
        this.N1 = false;
        new Rect();
        this.f4816O1 = true;
        this.f4818P1 = false;
        this.f4821Q1 = 0;
        this.f4824R1 = 0;
        this.f4826S1 = new Rect();
        this.f4829T1 = new Rect();
        this.f4832U1 = false;
        this.V1 = -1;
        this.f4836W1 = -1;
        this.f4838X1 = -1;
        w wVar = new w();
        wVar.f5265c = null;
        this.f4842Z1 = wVar;
        this.c2 = new HandlerC0161c(this, Looper.getMainLooper(), i10);
        this.d2 = new ArrayList();
        this.f4859f2 = new RunnableC0553z(this, i7);
        this.f4866h2 = 0;
        this.f4870i2 = 0;
        this.f4874j2 = new C0552y(this);
        this.f4877k2 = true;
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        this.f4907y0 = context;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        Resources resources = context.getResources();
        this.f4846b0 = viewConfiguration.getScaledTouchSlop();
        this.f4811M0 = viewConfiguration.getScaledTouchSlop();
        this.f4814N0 = viewConfiguration.getScaledPagingTouchSlop();
        this.f4857f0 = J.S.a(viewConfiguration);
        this.g0 = J.S.b(viewConfiguration);
        this.f4853d0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f4856e0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f4821Q1 = (int) (TypedValue.applyDimension(1, 25.0f, resources.getDisplayMetrics()) + 0.5f);
        this.f4824R1 = (int) (TypedValue.applyDimension(1, 25.0f, resources.getDisplayMetrics()) + 0.5f);
        resources.getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_go_to_top_scrollable_view_gap);
        resources.getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_go_to_top_scrollable_view_size);
        resources.getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_go_to_top_elevation);
        this.f4848b2 = true;
        this.f4845a2 = new D(context, 27);
        this.f4849c = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.f4815O.f7330a = this.q0;
        this.f4860g = new C0530b(new C0552y(this));
        this.f4863h = new f(new C0552y(this));
        WeakHashMap weakHashMap = Q.f940a;
        if (J.K.c(this) == 0) {
            J.K.m(this, 8);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.f4786D = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new d0(this));
        int[] iArr = AbstractC0477a.f7143a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i5, 0);
        J.N.d(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i5, 0);
        String string = typedArrayObtainStyledAttributes.getString(8);
        if (typedArrayObtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH);
        }
        this.f4871j = typedArrayObtainStyledAttributes.getBoolean(1, true);
        char c2 = 3;
        if (typedArrayObtainStyledAttributes.getBoolean(3, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(6);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(4);
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(5);
            if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                throw new IllegalArgumentException(AbstractC0432c.f(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
            }
            Resources resources2 = getContext().getResources();
            r13 = 0;
            c2 = 3;
            new C0541m(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources2.getDimensionPixelSize(com.wssyncmldm.R.dimen.fastscroll_default_thickness), resources2.getDimensionPixelSize(com.wssyncmldm.R.dimen.fastscroll_minimum_range), resources2.getDimensionPixelOffset(com.wssyncmldm.R.dimen.fastscroll_margin));
        } else {
            r13 = 0;
        }
        typedArrayObtainStyledAttributes.recycle();
        if (string != null) {
            String strTrim = string.trim();
            if (strTrim.isEmpty()) {
                z4 = true;
            } else {
                if (strTrim.charAt(r13) == '.') {
                    str = context.getPackageName() + strTrim;
                } else {
                    boolean zContains = strTrim.contains(IDMMoInterface.IDM_MO_ROOT_PATH);
                    str = strTrim;
                    if (!zContains) {
                        str = RecyclerView.class.getPackage().getName() + '.' + strTrim;
                    }
                }
                try {
                    Class<? extends U> clsAsSubclass = Class.forName(str, r13, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(J.class);
                    try {
                        constructor = clsAsSubclass.getConstructor(t2);
                        objArr = new Object[4];
                        objArr[r13] = context;
                        z4 = true;
                        try {
                            objArr[1] = attributeSet;
                            objArr[2] = Integer.valueOf(i5);
                            objArr[c2] = Integer.valueOf((int) r13);
                        } catch (NoSuchMethodException e5) {
                            e = e5;
                            NoSuchMethodException noSuchMethodException = e;
                            try {
                                objArr = null;
                                constructor = clsAsSubclass.getConstructor(null);
                                constructor.setAccessible(z4);
                                setLayoutManager((J) constructor.newInstance(objArr));
                                int[] iArr2 = f4772n2;
                                int i12 = r13;
                                TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i5, i12);
                                J.N.d(this, context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, i5, 0);
                                boolean z5 = typedArrayObtainStyledAttributes2.getBoolean(i12, z4);
                                typedArrayObtainStyledAttributes2.recycle();
                                Resources resources3 = context.getResources();
                                TypedValue typedValue = new TypedValue();
                                this.e1 = resources3.getDrawable(com.wssyncmldm.R.drawable.sesl_pen_block_selection);
                                context.getTheme().resolveAttribute(com.wssyncmldm.R.attr.roundedCornerColor, typedValue, z4);
                                i6 = typedValue.resourceId;
                                if (i6 > 0) {
                                }
                                this.f4896u1.setColor(this.f4882n1);
                                this.f4896u1.setStyle(Paint.Style.FILL_AND_STROKE);
                                this.f4815O.f7332c = this;
                                androidx.appcompat.util.c cVar = new androidx.appcompat.util.c(getContext());
                                this.f4899v1 = cVar;
                                cVar.setRoundedCorners(12);
                                setNestedScrollingEnabled(z5);
                                setTag(com.wssyncmldm.R.id.is_pooling_container_tag, Boolean.TRUE);
                            } catch (NoSuchMethodException e6) {
                                e6.initCause(noSuchMethodException);
                                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e6);
                            }
                        }
                    } catch (NoSuchMethodException e7) {
                        e = e7;
                        z4 = true;
                    }
                    constructor.setAccessible(z4);
                    setLayoutManager((J) constructor.newInstance(objArr));
                } catch (ClassCastException e8) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, e8);
                } catch (ClassNotFoundException e9) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, e9);
                } catch (IllegalAccessException e10) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, e10);
                } catch (InstantiationException e11) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e11);
                } catch (InvocationTargetException e12) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e12);
                }
            }
        }
        int[] iArr22 = f4772n2;
        int i122 = r13;
        TypedArray typedArrayObtainStyledAttributes22 = context.obtainStyledAttributes(attributeSet, iArr22, i5, i122);
        J.N.d(this, context, iArr22, attributeSet, typedArrayObtainStyledAttributes22, i5, 0);
        boolean z52 = typedArrayObtainStyledAttributes22.getBoolean(i122, z4);
        typedArrayObtainStyledAttributes22.recycle();
        Resources resources32 = context.getResources();
        TypedValue typedValue2 = new TypedValue();
        this.e1 = resources32.getDrawable(com.wssyncmldm.R.drawable.sesl_pen_block_selection);
        context.getTheme().resolveAttribute(com.wssyncmldm.R.attr.roundedCornerColor, typedValue2, z4);
        i6 = typedValue2.resourceId;
        if (i6 > 0) {
            this.f4882n1 = resources32.getColor(i6);
        }
        this.f4896u1.setColor(this.f4882n1);
        this.f4896u1.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f4815O.f7332c = this;
        androidx.appcompat.util.c cVar2 = new androidx.appcompat.util.c(getContext());
        this.f4899v1 = cVar2;
        cVar2.setRoundedCorners(12);
        setNestedScrollingEnabled(z52);
        setTag(com.wssyncmldm.R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        J j3 = this.f4884p;
        if (j3 != null) {
            return j3.t(layoutParams);
        }
        throw new IllegalStateException(AbstractC0432c.f(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }
}
