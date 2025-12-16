package com.google.android.material.bottomsheet;

import A3.D;
import B.f;
import B1.a;
import B1.b;
import B1.e;
import B1.i;
import B1.j;
import J.C0027a;
import J.C0028b;
import J.G;
import J.I;
import J.N;
import J.Q;
import J.d0;
import J1.n;
import J1.o;
import K.c;
import P1.g;
import P1.k;
import S.d;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.idm.agent.dm.IDMDmInterface;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import com.wssyncmldm.R;
import i3.x;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.WeakHashMap;
import w.AbstractC0897a;

/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends AbstractC0897a {

    /* renamed from: A, reason: collision with root package name */
    public final i f5837A;

    /* renamed from: B, reason: collision with root package name */
    public final ValueAnimator f5838B;

    /* renamed from: C, reason: collision with root package name */
    public final int f5839C;

    /* renamed from: D, reason: collision with root package name */
    public int f5840D;
    public int E;

    /* renamed from: F, reason: collision with root package name */
    public final float f5841F;

    /* renamed from: G, reason: collision with root package name */
    public int f5842G;

    /* renamed from: H, reason: collision with root package name */
    public final float f5843H;

    /* renamed from: I, reason: collision with root package name */
    public boolean f5844I;

    /* renamed from: J, reason: collision with root package name */
    public boolean f5845J;

    /* renamed from: K, reason: collision with root package name */
    public final boolean f5846K;

    /* renamed from: L, reason: collision with root package name */
    public int f5847L;

    /* renamed from: M, reason: collision with root package name */
    public d f5848M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f5849N;

    /* renamed from: O, reason: collision with root package name */
    public int f5850O;

    /* renamed from: P, reason: collision with root package name */
    public boolean f5851P;

    /* renamed from: Q, reason: collision with root package name */
    public final float f5852Q;

    /* renamed from: R, reason: collision with root package name */
    public int f5853R;

    /* renamed from: S, reason: collision with root package name */
    public int f5854S;

    /* renamed from: T, reason: collision with root package name */
    public int f5855T;

    /* renamed from: U, reason: collision with root package name */
    public WeakReference f5856U;

    /* renamed from: V, reason: collision with root package name */
    public WeakReference f5857V;

    /* renamed from: W, reason: collision with root package name */
    public final ArrayList f5858W;

    /* renamed from: X, reason: collision with root package name */
    public VelocityTracker f5859X;

    /* renamed from: Y, reason: collision with root package name */
    public int f5860Y;

    /* renamed from: Z, reason: collision with root package name */
    public int f5861Z;

    /* renamed from: a, reason: collision with root package name */
    public final int f5862a;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f5863a0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5864b;

    /* renamed from: b0, reason: collision with root package name */
    public HashMap f5865b0;

    /* renamed from: c, reason: collision with root package name */
    public final float f5866c;

    /* renamed from: c0, reason: collision with root package name */
    public final SparseIntArray f5867c0;

    /* renamed from: d, reason: collision with root package name */
    public final int f5868d;

    /* renamed from: d0, reason: collision with root package name */
    public final B1.d f5869d0;

    /* renamed from: e, reason: collision with root package name */
    public int f5870e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public int f5871g;

    /* renamed from: h, reason: collision with root package name */
    public final int f5872h;

    /* renamed from: i, reason: collision with root package name */
    public final g f5873i;

    /* renamed from: j, reason: collision with root package name */
    public final ColorStateList f5874j;

    /* renamed from: k, reason: collision with root package name */
    public final int f5875k;

    /* renamed from: l, reason: collision with root package name */
    public final int f5876l;

    /* renamed from: m, reason: collision with root package name */
    public int f5877m;
    public final boolean n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f5878o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f5879p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f5880q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f5881r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f5882s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f5883t;

    /* renamed from: u, reason: collision with root package name */
    public final boolean f5884u;

    /* renamed from: v, reason: collision with root package name */
    public int f5885v;

    /* renamed from: w, reason: collision with root package name */
    public int f5886w;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f5887x;

    /* renamed from: y, reason: collision with root package name */
    public final k f5888y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f5889z;

    public BottomSheetBehavior() {
        this.f5862a = 0;
        this.f5864b = true;
        this.f5875k = -1;
        this.f5876l = -1;
        this.f5837A = new i(this);
        this.f5841F = 0.5f;
        this.f5843H = -1.0f;
        this.f5846K = true;
        this.f5847L = 4;
        this.f5852Q = 0.1f;
        this.f5858W = new ArrayList();
        this.f5861Z = -1;
        this.f5867c0 = new SparseIntArray();
        this.f5869d0 = new B1.d(this, 0);
    }

    public static View w(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        WeakHashMap weakHashMap = Q.f940a;
        if (I.p(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View viewW = w(viewGroup.getChildAt(i5));
                if (viewW != null) {
                    return viewW;
                }
            }
        }
        return null;
    }

    public static int x(int i5, int i6, int i7, int i8) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i5, i6, i8);
        if (i7 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i7), 1073741824);
        }
        if (size != 0) {
            i7 = Math.min(size, i7);
        }
        return View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
    }

    public final boolean A() {
        WeakReference weakReference = this.f5856U;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        int[] iArr = new int[2];
        ((View) this.f5856U.get()).getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    public final void B(int i5) {
        if (i5 == -1) {
            if (this.f) {
                return;
            } else {
                this.f = true;
            }
        } else {
            if (!this.f && this.f5870e == i5) {
                return;
            }
            this.f = false;
            this.f5870e = Math.max(0, i5);
        }
        J();
    }

    public final void C(int i5) {
        if (i5 == 1 || i5 == 2) {
            throw new IllegalArgumentException(f.w(new StringBuilder("STATE_"), i5 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        if (!this.f5844I && i5 == 5) {
            Log.w("BottomSheetBehavior", "Cannot set state: " + i5);
            return;
        }
        int i6 = (i5 == 6 && this.f5864b && z(i5) <= this.f5840D) ? 3 : i5;
        WeakReference weakReference = this.f5856U;
        if (weakReference == null || weakReference.get() == null) {
            D(i5);
            return;
        }
        View view = (View) this.f5856U.get();
        a aVar = new a(this, view, i6);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested()) {
            WeakHashMap weakHashMap = Q.f940a;
            if (view.isAttachedToWindow()) {
                view.post(aVar);
                return;
            }
        }
        aVar.run();
    }

    public final void D(int i5) {
        if (this.f5847L == i5) {
            return;
        }
        this.f5847L = i5;
        if (i5 != 4 && i5 != 3 && i5 != 6) {
            boolean z4 = this.f5844I;
        }
        WeakReference weakReference = this.f5856U;
        if (weakReference == null || ((View) weakReference.get()) == null) {
            return;
        }
        if (i5 == 3) {
            I(true);
        } else if (i5 == 6 || i5 == 5 || i5 == 4) {
            I(false);
        }
        H(i5, true);
        ArrayList arrayList = this.f5858W;
        if (arrayList.size() <= 0) {
            G();
        } else {
            f.F(arrayList.get(0));
            throw null;
        }
    }

    public final boolean E(View view, float f) {
        if (this.f5845J) {
            return true;
        }
        if (view.getTop() < this.f5842G) {
            return false;
        }
        return Math.abs(((f * this.f5852Q) + ((float) view.getTop())) - ((float) this.f5842G)) / ((float) u()) > 0.5f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
    
        if (r3 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
    
        D(2);
        H(r4, true);
        r2.f5837A.a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0012, code lost:
    
        if (r1.o(r3.getLeft(), r0) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void F(View view, int i5, boolean z4) {
        int iZ = z(i5);
        d dVar = this.f5848M;
        if (dVar != null) {
            if (!z4) {
                int left = view.getLeft();
                dVar.f2458r = view;
                dVar.f2445c = -1;
                boolean zH = dVar.h(left, iZ, 0, 0);
                if (!zH && dVar.f2443a == 0 && dVar.f2458r != null) {
                    dVar.f2458r = null;
                }
            }
        }
        D(i5);
    }

    public final void G() throws Resources.NotFoundException {
        View view;
        int iA;
        WeakReference weakReference = this.f5856U;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        Q.f(NetworkAnalyticsConstants.DataPoints.FLAG_INTERFACE_NAME, view);
        Q.d(0, view);
        Q.f(NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH, view);
        Q.d(0, view);
        Q.f(IDMDmInterface.IDM_MAX_OBJ_SIZE, view);
        Q.d(0, view);
        SparseIntArray sparseIntArray = this.f5867c0;
        int i5 = sparseIntArray.get(0, -1);
        if (i5 != -1) {
            Q.f(i5, view);
            Q.d(0, view);
            sparseIntArray.delete(0);
        }
        if (!this.f5864b && this.f5847L != 6) {
            String string = view.getResources().getString(R.string.bottomsheet_action_expand_halfway);
            e eVar = new e(6, this);
            ArrayList arrayListC = Q.c(view);
            int i6 = 0;
            while (true) {
                if (i6 >= arrayListC.size()) {
                    int i7 = -1;
                    for (int i8 = 0; i8 < 32 && i7 == -1; i8++) {
                        int i9 = Q.f941b[i8];
                        boolean z4 = true;
                        for (int i10 = 0; i10 < arrayListC.size(); i10++) {
                            z4 &= ((c) arrayListC.get(i10)).a() != i9;
                        }
                        if (z4) {
                            i7 = i9;
                        }
                    }
                    iA = i7;
                } else {
                    if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((c) arrayListC.get(i6)).f1196a).getLabel())) {
                        iA = ((c) arrayListC.get(i6)).a();
                        break;
                    }
                    i6++;
                }
            }
            if (iA != -1) {
                c cVar = new c(null, iA, string, eVar, null);
                View.AccessibilityDelegate accessibilityDelegateA = N.a(view);
                C0028b c0028b = accessibilityDelegateA == null ? null : accessibilityDelegateA instanceof C0027a ? ((C0027a) accessibilityDelegateA).f953a : new C0028b(accessibilityDelegateA);
                if (c0028b == null) {
                    c0028b = new C0028b();
                }
                Q.h(view, c0028b);
                Q.f(cVar.a(), view);
                Q.c(view).add(cVar);
                Q.d(0, view);
            }
            sparseIntArray.put(0, iA);
        }
        if (this.f5844I && this.f5847L != 5) {
            Q.g(view, c.f1193j, new e(5, this));
        }
        int i11 = this.f5847L;
        if (i11 == 3) {
            Q.g(view, c.f1192i, new e(this.f5864b ? 4 : 6, this));
            return;
        }
        if (i11 == 4) {
            Q.g(view, c.f1191h, new e(this.f5864b ? 3 : 6, this));
        } else {
            if (i11 != 6) {
                return;
            }
            Q.g(view, c.f1192i, new e(4, this));
            Q.g(view, c.f1191h, new e(3, this));
        }
    }

    public final void H(int i5, boolean z4) {
        g gVar = this.f5873i;
        ValueAnimator valueAnimator = this.f5838B;
        if (i5 == 2) {
            return;
        }
        boolean z5 = this.f5847L == 3 && (this.f5887x || A());
        if (this.f5889z == z5 || gVar == null) {
            return;
        }
        this.f5889z = z5;
        if (z4 && valueAnimator != null) {
            if (valueAnimator.isRunning()) {
                valueAnimator.reverse();
                return;
            } else {
                valueAnimator.setFloatValues(gVar.f2075c.f2063j, z5 ? t() : 1.0f);
                valueAnimator.start();
                return;
            }
        }
        if (valueAnimator != null && valueAnimator.isRunning()) {
            valueAnimator.cancel();
        }
        float fT = this.f5889z ? t() : 1.0f;
        P1.f fVar = gVar.f2075c;
        if (fVar.f2063j != fT) {
            fVar.f2063j = fT;
            gVar.f2078g = true;
            gVar.invalidateSelf();
        }
    }

    public final void I(boolean z4) {
        WeakReference weakReference = this.f5856U;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z4) {
                if (this.f5865b0 != null) {
                    return;
                } else {
                    this.f5865b0 = new HashMap(childCount);
                }
            }
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = coordinatorLayout.getChildAt(i5);
                if (childAt != this.f5856U.get() && z4) {
                    this.f5865b0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z4) {
                return;
            }
            this.f5865b0 = null;
        }
    }

    public final void J() {
        View view;
        if (this.f5856U != null) {
            s();
            if (this.f5847L != 4 || (view = (View) this.f5856U.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    @Override // w.AbstractC0897a
    public final void d(w.d dVar) {
        this.f5856U = null;
        this.f5848M = null;
    }

    @Override // w.AbstractC0897a
    public final void f() {
        this.f5856U = null;
        this.f5848M = null;
    }

    @Override // w.AbstractC0897a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int i5;
        d dVar;
        if (!view.isShown() || !this.f5846K) {
            this.f5849N = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f5860Y = -1;
            this.f5861Z = -1;
            VelocityTracker velocityTracker = this.f5859X;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f5859X = null;
            }
        }
        if (this.f5859X == null) {
            this.f5859X = VelocityTracker.obtain();
        }
        this.f5859X.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x4 = (int) motionEvent.getX();
            this.f5861Z = (int) motionEvent.getY();
            if (this.f5847L != 2) {
                WeakReference weakReference = this.f5857V;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.o(view2, x4, this.f5861Z)) {
                    this.f5860Y = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f5863a0 = true;
                }
            }
            this.f5849N = this.f5860Y == -1 && !coordinatorLayout.o(view, x4, this.f5861Z);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f5863a0 = false;
            this.f5860Y = -1;
            if (this.f5849N) {
                this.f5849N = false;
                return false;
            }
        }
        if (!this.f5849N && (dVar = this.f5848M) != null && dVar.p(motionEvent)) {
            return true;
        }
        WeakReference weakReference2 = this.f5857V;
        View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
        return (actionMasked != 2 || view3 == null || this.f5849N || this.f5847L == 1 || coordinatorLayout.o(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f5848M == null || (i5 = this.f5861Z) == -1 || Math.abs(((float) i5) - motionEvent.getY()) <= ((float) this.f5848M.f2444b)) ? false : true;
    }

    @Override // w.AbstractC0897a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i5) throws Resources.NotFoundException {
        int i6 = this.f5876l;
        g gVar = this.f5873i;
        int i7 = 5;
        WeakHashMap weakHashMap = Q.f940a;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        if (this.f5856U == null) {
            this.f5871g = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            boolean z4 = (this.n || this.f) ? false : true;
            if (this.f5878o || this.f5879p || this.f5880q || this.f5882s || this.f5883t || this.f5884u || z4) {
                B1.c cVar = new B1.c(this, z4, 0);
                int paddingStart = view.getPaddingStart();
                view.getPaddingTop();
                int paddingEnd = view.getPaddingEnd();
                int paddingBottom = view.getPaddingBottom();
                o oVar = new o();
                oVar.f1129a = paddingStart;
                oVar.f1130b = paddingEnd;
                oVar.f1131c = paddingBottom;
                I.u(view, new D(cVar, i7, oVar));
                if (view.isAttachedToWindow()) {
                    G.c(view);
                } else {
                    view.addOnAttachStateChangeListener(new n(0));
                }
            }
            view.setWindowInsetsAnimationCallback(new d0(new j(view)));
            this.f5856U = new WeakReference(view);
            Context context = view.getContext();
            x.V0(context, R.attr.motionEasingStandardDecelerateInterpolator, L.a.b(0.0f, 0.0f, 0.0f, 1.0f));
            x.U0(context, R.attr.motionDurationMedium2, 300);
            x.U0(context, R.attr.motionDurationShort3, 150);
            x.U0(context, R.attr.motionDurationShort2, 100);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_x_distance);
            resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_y_distance);
            if (gVar != null) {
                view.setBackground(gVar);
                float fI = this.f5843H;
                if (fI == -1.0f) {
                    fI = I.i(view);
                }
                gVar.j(fI);
            } else {
                ColorStateList colorStateList = this.f5874j;
                if (colorStateList != null) {
                    I.q(view, colorStateList);
                }
            }
            G();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
        }
        if (this.f5848M == null) {
            this.f5848M = new d(coordinatorLayout.getContext(), coordinatorLayout, this.f5869d0);
        }
        int top = view.getTop();
        coordinatorLayout.q(i5, view);
        this.f5854S = coordinatorLayout.getWidth();
        this.f5855T = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.f5853R = height;
        int iMin = this.f5855T;
        int i8 = iMin - height;
        int i9 = this.f5886w;
        if (i8 < i9) {
            if (this.f5881r) {
                if (i6 != -1) {
                    iMin = Math.min(iMin, i6);
                }
                this.f5853R = iMin;
            } else {
                int iMin2 = iMin - i9;
                if (i6 != -1) {
                    iMin2 = Math.min(iMin2, i6);
                }
                this.f5853R = iMin2;
            }
        }
        this.f5840D = Math.max(0, this.f5855T - this.f5853R);
        this.E = (int) ((1.0f - this.f5841F) * this.f5855T);
        s();
        int i10 = this.f5847L;
        if (i10 == 3) {
            view.offsetTopAndBottom(y());
        } else if (i10 == 6) {
            view.offsetTopAndBottom(this.E);
        } else if (this.f5844I && i10 == 5) {
            view.offsetTopAndBottom(this.f5855T);
        } else if (i10 == 4) {
            view.offsetTopAndBottom(this.f5842G);
        } else if (i10 == 1 || i10 == 2) {
            view.offsetTopAndBottom(top - view.getTop());
        }
        H(this.f5847L, false);
        this.f5857V = new WeakReference(w(view));
        ArrayList arrayList = this.f5858W;
        if (arrayList.size() <= 0) {
            return true;
        }
        f.F(arrayList.get(0));
        throw null;
    }

    @Override // w.AbstractC0897a
    public final boolean i(CoordinatorLayout coordinatorLayout, View view, int i5, int i6, int i7) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(x(i5, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i6, this.f5875k, marginLayoutParams.width), x(i7, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, this.f5876l, marginLayoutParams.height));
        return true;
    }

    @Override // w.AbstractC0897a
    public final boolean j(View view, View view2, float f) {
        WeakReference weakReference = this.f5857V;
        return (weakReference == null || view2 != weakReference.get() || this.f5847L == 3) ? false : true;
    }

    @Override // w.AbstractC0897a
    public final void k(CoordinatorLayout coordinatorLayout, View view, View view2, int i5, int i6, int[] iArr, int i7) {
        boolean z4 = this.f5846K;
        if (i7 == 1) {
            return;
        }
        WeakReference weakReference = this.f5857V;
        if (view2 != (weakReference != null ? (View) weakReference.get() : null)) {
            return;
        }
        int top = view.getTop();
        int i8 = top - i6;
        if (i6 > 0) {
            if (i8 < y()) {
                int iY = top - y();
                iArr[1] = iY;
                WeakHashMap weakHashMap = Q.f940a;
                view.offsetTopAndBottom(-iY);
                D(3);
            } else {
                if (!z4) {
                    return;
                }
                iArr[1] = i6;
                WeakHashMap weakHashMap2 = Q.f940a;
                view.offsetTopAndBottom(-i6);
                D(1);
            }
        } else if (i6 < 0 && !view2.canScrollVertically(-1)) {
            int i9 = this.f5842G;
            if (i8 > i9 && !this.f5844I) {
                int i10 = top - i9;
                iArr[1] = i10;
                WeakHashMap weakHashMap3 = Q.f940a;
                view.offsetTopAndBottom(-i10);
                D(4);
            } else {
                if (!z4) {
                    return;
                }
                iArr[1] = i6;
                WeakHashMap weakHashMap4 = Q.f940a;
                view.offsetTopAndBottom(-i6);
                D(1);
            }
        }
        v(view.getTop());
        this.f5850O = i6;
        this.f5851P = true;
    }

    @Override // w.AbstractC0897a
    public final void l(CoordinatorLayout coordinatorLayout, View view, View view2, int i5, int i6, int i7, int i8, int i9, int[] iArr) {
    }

    @Override // w.AbstractC0897a
    public final void n(View view, Parcelable parcelable) {
        B1.g gVar = (B1.g) parcelable;
        int i5 = this.f5862a;
        if (i5 != 0) {
            if (i5 == -1 || (i5 & 1) == 1) {
                this.f5870e = gVar.f;
            }
            if (i5 == -1 || (i5 & 2) == 2) {
                this.f5864b = gVar.f205g;
            }
            if (i5 == -1 || (i5 & 4) == 4) {
                this.f5844I = gVar.f206h;
            }
            if (i5 == -1 || (i5 & 8) == 8) {
                this.f5845J = gVar.f207i;
            }
        }
        int i6 = gVar.f204e;
        if (i6 == 1 || i6 == 2) {
            this.f5847L = 4;
        } else {
            this.f5847L = i6;
        }
    }

    @Override // w.AbstractC0897a
    public final Parcelable o(View view) {
        return new B1.g(View.BaseSavedState.EMPTY_STATE, this);
    }

    @Override // w.AbstractC0897a
    public final boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i5, int i6) {
        this.f5850O = 0;
        this.f5851P = false;
        return (i5 & 2) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ae  */
    @Override // w.AbstractC0897a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i5) {
        float yVelocity;
        int i6 = 3;
        if (view.getTop() == y()) {
            D(3);
            return;
        }
        WeakReference weakReference = this.f5857V;
        if (weakReference != null && view2 == weakReference.get() && this.f5851P) {
            if (this.f5850O > 0) {
                if (!this.f5864b && view.getTop() > this.E) {
                    i6 = 6;
                }
            } else if (this.f5844I) {
                VelocityTracker velocityTracker = this.f5859X;
                if (velocityTracker == null) {
                    yVelocity = 0.0f;
                } else {
                    velocityTracker.computeCurrentVelocity(1000, this.f5866c);
                    yVelocity = this.f5859X.getYVelocity(this.f5860Y);
                }
                if (E(view, yVelocity)) {
                    i6 = 5;
                }
            } else if (this.f5850O == 0) {
                int top = view.getTop();
                if (!this.f5864b) {
                    int i7 = this.E;
                    if (top < i7) {
                        if (top >= Math.abs(top - this.f5842G)) {
                        }
                    } else if (Math.abs(top - i7) < Math.abs(top - this.f5842G)) {
                    }
                    i6 = 6;
                } else if (Math.abs(top - this.f5840D) >= Math.abs(top - this.f5842G)) {
                    i6 = 4;
                }
            } else {
                if (!this.f5864b) {
                    int top2 = view.getTop();
                    if (Math.abs(top2 - this.E) < Math.abs(top2 - this.f5842G)) {
                    }
                }
                i6 = 4;
            }
            F(view, i6, false);
            this.f5851P = false;
        }
    }

    @Override // w.AbstractC0897a
    public final boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i5 = this.f5847L;
        if (i5 == 1 && actionMasked == 0) {
            return true;
        }
        d dVar = this.f5848M;
        if (dVar != null && (this.f5846K || i5 == 1)) {
            dVar.j(motionEvent);
        }
        if (actionMasked == 0) {
            this.f5860Y = -1;
            this.f5861Z = -1;
            VelocityTracker velocityTracker = this.f5859X;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f5859X = null;
            }
        }
        if (this.f5859X == null) {
            this.f5859X = VelocityTracker.obtain();
        }
        this.f5859X.addMovement(motionEvent);
        if (this.f5848M != null && ((this.f5846K || this.f5847L == 1) && actionMasked == 2 && !this.f5849N)) {
            float fAbs = Math.abs(this.f5861Z - motionEvent.getY());
            d dVar2 = this.f5848M;
            if (fAbs > dVar2.f2444b) {
                dVar2.b(motionEvent.getPointerId(motionEvent.getActionIndex()), view);
            }
        }
        return !this.f5849N;
    }

    public final void s() {
        int iU = u();
        if (this.f5864b) {
            this.f5842G = Math.max(this.f5855T - iU, this.f5840D);
        } else {
            this.f5842G = this.f5855T - iU;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final float t() {
        WeakReference weakReference;
        WindowInsets rootWindowInsets;
        float f;
        float f5 = 0.0f;
        if (this.f5873i != null && (weakReference = this.f5856U) != null && weakReference.get() != null) {
            View view = (View) this.f5856U.get();
            if (A() && (rootWindowInsets = view.getRootWindowInsets()) != null) {
                g gVar = this.f5873i;
                float fA = gVar.f2075c.f2055a.f2111e.a(gVar.g());
                RoundedCorner roundedCorner = rootWindowInsets.getRoundedCorner(0);
                if (roundedCorner != null) {
                    float radius = roundedCorner.getRadius();
                    f = (radius <= 0.0f || fA <= 0.0f) ? 0.0f : radius / fA;
                }
                g gVar2 = this.f5873i;
                float fA2 = gVar2.f2075c.f2055a.f.a(gVar2.g());
                RoundedCorner roundedCorner2 = rootWindowInsets.getRoundedCorner(1);
                if (roundedCorner2 != null) {
                    float radius2 = roundedCorner2.getRadius();
                    if (radius2 > 0.0f && fA2 > 0.0f) {
                        f5 = radius2 / fA2;
                    }
                }
                return Math.max(f, f5);
            }
        }
        return 0.0f;
    }

    public final int u() {
        int iMin;
        int i5;
        int i6;
        if (this.f) {
            iMin = Math.min(Math.max(this.f5871g, this.f5855T - ((this.f5854S * 9) / 16)), this.f5853R);
            i5 = this.f5885v;
        } else {
            if (!this.n && !this.f5878o && (i6 = this.f5877m) > 0) {
                return Math.max(this.f5870e, i6 + this.f5872h);
            }
            iMin = this.f5870e;
            i5 = this.f5885v;
        }
        return iMin + i5;
    }

    public final void v(int i5) {
        if (((View) this.f5856U.get()) != null) {
            ArrayList arrayList = this.f5858W;
            if (arrayList.isEmpty()) {
                return;
            }
            int i6 = this.f5842G;
            if (i5 <= i6 && i6 != y()) {
                y();
            }
            if (arrayList.size() <= 0) {
                return;
            }
            f.F(arrayList.get(0));
            throw null;
        }
    }

    public final int y() {
        if (this.f5864b) {
            return this.f5840D;
        }
        return Math.max(this.f5839C, this.f5881r ? 0 : this.f5886w);
    }

    public final int z(int i5) {
        if (i5 == 3) {
            return y();
        }
        if (i5 == 4) {
            return this.f5842G;
        }
        if (i5 == 5) {
            return this.f5855T;
        }
        if (i5 == 6) {
            return this.E;
        }
        throw new IllegalArgumentException(f.t(i5, "Invalid state to get top offset: "));
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        int i5;
        int i6 = 0;
        this.f5862a = 0;
        this.f5864b = true;
        this.f5875k = -1;
        this.f5876l = -1;
        this.f5837A = new i(this);
        this.f5841F = 0.5f;
        this.f5843H = -1.0f;
        this.f5846K = true;
        this.f5847L = 4;
        this.f5852Q = 0.1f;
        this.f5858W = new ArrayList();
        this.f5861Z = -1;
        this.f5867c0 = new SparseIntArray();
        this.f5869d0 = new B1.d(this, i6);
        this.f5872h = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v1.a.f9527a);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.f5874j = W1.a.B(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(21)) {
            this.f5888y = k.b(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal).a();
        }
        k kVar = this.f5888y;
        if (kVar != null) {
            g gVar = new g(kVar);
            this.f5873i = gVar;
            gVar.i(context);
            ColorStateList colorStateList = this.f5874j;
            if (colorStateList != null) {
                this.f5873i.k(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f5873i.setTint(typedValue.data);
            }
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(t(), 1.0f);
        this.f5838B = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.f5838B.addUpdateListener(new b(i6, this));
        this.f5843H = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            this.f5875k = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            this.f5876l = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(9);
        if (typedValuePeekValue != null && (i5 = typedValuePeekValue.data) == -1) {
            B(i5);
        } else {
            B(typedArrayObtainStyledAttributes.getDimensionPixelSize(9, -1));
        }
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(8, false);
        if (this.f5844I != z4) {
            this.f5844I = z4;
            if (!z4 && this.f5847L == 5) {
                C(4);
            }
            G();
        }
        this.n = typedArrayObtainStyledAttributes.getBoolean(13, false);
        boolean z5 = typedArrayObtainStyledAttributes.getBoolean(6, true);
        if (this.f5864b != z5) {
            this.f5864b = z5;
            if (this.f5856U != null) {
                s();
            }
            D((this.f5864b && this.f5847L == 6) ? 3 : this.f5847L);
            H(this.f5847L, true);
            G();
        }
        this.f5845J = typedArrayObtainStyledAttributes.getBoolean(12, false);
        this.f5846K = typedArrayObtainStyledAttributes.getBoolean(4, true);
        this.f5862a = typedArrayObtainStyledAttributes.getInt(10, 0);
        float f = typedArrayObtainStyledAttributes.getFloat(7, 0.5f);
        if (f > 0.0f && f < 1.0f) {
            this.f5841F = f;
            if (this.f5856U != null) {
                this.E = (int) ((1.0f - f) * this.f5855T);
            }
            TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(5);
            if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
                int i7 = typedValuePeekValue2.data;
                if (i7 >= 0) {
                    this.f5839C = i7;
                    H(this.f5847L, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            } else {
                int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(5, 0);
                if (dimensionPixelOffset >= 0) {
                    this.f5839C = dimensionPixelOffset;
                    H(this.f5847L, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            }
            this.f5868d = typedArrayObtainStyledAttributes.getInt(11, 500);
            this.f5878o = typedArrayObtainStyledAttributes.getBoolean(17, false);
            this.f5879p = typedArrayObtainStyledAttributes.getBoolean(18, false);
            this.f5880q = typedArrayObtainStyledAttributes.getBoolean(19, false);
            this.f5881r = typedArrayObtainStyledAttributes.getBoolean(20, true);
            this.f5882s = typedArrayObtainStyledAttributes.getBoolean(14, false);
            this.f5883t = typedArrayObtainStyledAttributes.getBoolean(15, false);
            this.f5884u = typedArrayObtainStyledAttributes.getBoolean(16, false);
            this.f5887x = typedArrayObtainStyledAttributes.getBoolean(23, true);
            typedArrayObtainStyledAttributes.recycle();
            this.f5866c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }
}
