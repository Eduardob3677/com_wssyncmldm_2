package com.google.android.material.sidesheet;

import A.p;
import B.f;
import B1.i;
import J.I;
import J.M;
import J.Q;
import K.r;
import P1.g;
import P1.j;
import P1.k;
import Q1.c;
import S.d;
import W1.a;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.idm.agent.dm.IDMDmInterface;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import com.wssyncmldm.R;
import i3.x;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import w.AbstractC0897a;

/* loaded from: classes.dex */
public class SideSheetBehavior<V extends View> extends AbstractC0897a {

    /* renamed from: a, reason: collision with root package name */
    public a f6049a;

    /* renamed from: b, reason: collision with root package name */
    public final g f6050b;

    /* renamed from: c, reason: collision with root package name */
    public final ColorStateList f6051c;

    /* renamed from: d, reason: collision with root package name */
    public final k f6052d;

    /* renamed from: e, reason: collision with root package name */
    public final i f6053e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f6054g;

    /* renamed from: h, reason: collision with root package name */
    public int f6055h;

    /* renamed from: i, reason: collision with root package name */
    public d f6056i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f6057j;

    /* renamed from: k, reason: collision with root package name */
    public final float f6058k;

    /* renamed from: l, reason: collision with root package name */
    public int f6059l;

    /* renamed from: m, reason: collision with root package name */
    public int f6060m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f6061o;

    /* renamed from: p, reason: collision with root package name */
    public WeakReference f6062p;

    /* renamed from: q, reason: collision with root package name */
    public WeakReference f6063q;

    /* renamed from: r, reason: collision with root package name */
    public final int f6064r;

    /* renamed from: s, reason: collision with root package name */
    public VelocityTracker f6065s;

    /* renamed from: t, reason: collision with root package name */
    public int f6066t;

    /* renamed from: u, reason: collision with root package name */
    public final LinkedHashSet f6067u;

    /* renamed from: v, reason: collision with root package name */
    public final B1.d f6068v;

    public SideSheetBehavior() {
        this.f6053e = new i(this);
        this.f6054g = true;
        this.f6055h = 5;
        this.f6058k = 0.1f;
        this.f6064r = -1;
        this.f6067u = new LinkedHashSet();
        this.f6068v = new B1.d(this, 1);
    }

    @Override // w.AbstractC0897a
    public final void d(w.d dVar) {
        this.f6062p = null;
        this.f6056i = null;
    }

    @Override // w.AbstractC0897a
    public final void f() {
        this.f6062p = null;
        this.f6056i = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0010  */
    @Override // w.AbstractC0897a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        d dVar;
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            WeakHashMap weakHashMap = Q.f940a;
            if (M.b(view) != null) {
                if (this.f6054g) {
                    int actionMasked = motionEvent.getActionMasked();
                    if (actionMasked == 0 && (velocityTracker = this.f6065s) != null) {
                        velocityTracker.recycle();
                        this.f6065s = null;
                    }
                    if (this.f6065s == null) {
                        this.f6065s = VelocityTracker.obtain();
                    }
                    this.f6065s.addMovement(motionEvent);
                    if (actionMasked == 0) {
                        this.f6066t = (int) motionEvent.getX();
                    } else if ((actionMasked == 1 || actionMasked == 3) && this.f6057j) {
                        this.f6057j = false;
                        return false;
                    }
                    return (this.f6057j || (dVar = this.f6056i) == null || !dVar.p(motionEvent)) ? false : true;
                }
            }
        }
        this.f6057j = true;
        return false;
    }

    @Override // w.AbstractC0897a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i5) throws Resources.NotFoundException {
        View view2;
        View view3;
        int i6;
        View viewFindViewById;
        int I4 = 0;
        int i7 = 1;
        g gVar = this.f6050b;
        WeakHashMap weakHashMap = Q.f940a;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        if (this.f6062p == null) {
            this.f6062p = new WeakReference(view);
            Context context = view.getContext();
            x.V0(context, R.attr.motionEasingStandardDecelerateInterpolator, L.a.b(0.0f, 0.0f, 0.0f, 1.0f));
            x.U0(context, R.attr.motionDurationMedium2, 300);
            x.U0(context, R.attr.motionDurationShort3, 150);
            x.U0(context, R.attr.motionDurationShort2, 100);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_y_distance);
            if (gVar != null) {
                view.setBackground(gVar);
                float fI = this.f;
                if (fI == -1.0f) {
                    fI = I.i(view);
                }
                gVar.j(fI);
            } else {
                ColorStateList colorStateList = this.f6051c;
                if (colorStateList != null) {
                    I.q(view, colorStateList);
                }
            }
            int i8 = this.f6055h == 5 ? 4 : 0;
            if (view.getVisibility() != i8) {
                view.setVisibility(i8);
            }
            v();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            if (M.b(view) == null) {
                Q.i(view, view.getResources().getString(R.string.side_sheet_accessibility_pane_title));
            }
        }
        int i9 = Gravity.getAbsoluteGravity(((w.d) view.getLayoutParams()).f9560c, i5) == 3 ? 1 : 0;
        a aVar = this.f6049a;
        if (aVar == null || aVar.M() != i9) {
            k kVar = this.f6052d;
            w.d dVar = null;
            if (i9 == 0) {
                this.f6049a = new Q1.a(this, i7);
                if (kVar != null) {
                    WeakReference weakReference = this.f6062p;
                    if (weakReference != null && (view3 = (View) weakReference.get()) != null && (view3.getLayoutParams() instanceof w.d)) {
                        dVar = (w.d) view3.getLayoutParams();
                    }
                    if (dVar == null || ((ViewGroup.MarginLayoutParams) dVar).rightMargin <= 0) {
                        j jVarE = kVar.e();
                        jVarE.f = new P1.a(0.0f);
                        jVarE.f2101g = new P1.a(0.0f);
                        k kVarA = jVarE.a();
                        if (gVar != null) {
                            gVar.setShapeAppearanceModel(kVarA);
                        }
                    }
                }
            } else {
                if (i9 != 1) {
                    throw new IllegalArgumentException("Invalid sheet edge position value: " + i9 + ". Must be 0 or 1.");
                }
                this.f6049a = new Q1.a(this, I4);
                if (kVar != null) {
                    WeakReference weakReference2 = this.f6062p;
                    if (weakReference2 != null && (view2 = (View) weakReference2.get()) != null && (view2.getLayoutParams() instanceof w.d)) {
                        dVar = (w.d) view2.getLayoutParams();
                    }
                    if (dVar == null || ((ViewGroup.MarginLayoutParams) dVar).leftMargin <= 0) {
                        j jVarE2 = kVar.e();
                        jVarE2.f2100e = new P1.a(0.0f);
                        jVarE2.f2102h = new P1.a(0.0f);
                        k kVarA2 = jVarE2.a();
                        if (gVar != null) {
                            gVar.setShapeAppearanceModel(kVarA2);
                        }
                    }
                }
            }
        }
        if (this.f6056i == null) {
            this.f6056i = new d(coordinatorLayout.getContext(), coordinatorLayout, this.f6068v);
        }
        int I5 = this.f6049a.I(view);
        coordinatorLayout.q(i5, view);
        this.f6060m = coordinatorLayout.getWidth();
        this.n = this.f6049a.J(coordinatorLayout);
        this.f6059l = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        this.f6061o = marginLayoutParams != null ? this.f6049a.g(marginLayoutParams) : 0;
        int i10 = this.f6055h;
        if (i10 == 1 || i10 == 2) {
            I4 = I5 - this.f6049a.I(view);
        } else if (i10 != 3) {
            if (i10 != 5) {
                throw new IllegalStateException("Unexpected value: " + this.f6055h);
            }
            I4 = this.f6049a.F();
        }
        view.offsetLeftAndRight(I4);
        if (this.f6063q == null && (i6 = this.f6064r) != -1 && (viewFindViewById = coordinatorLayout.findViewById(i6)) != null) {
            this.f6063q = new WeakReference(viewFindViewById);
        }
        Iterator it = this.f6067u.iterator();
        while (it.hasNext()) {
            f.F(it.next());
        }
        return true;
    }

    @Override // w.AbstractC0897a
    public final boolean i(CoordinatorLayout coordinatorLayout, View view, int i5, int i6, int i7) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i5, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i6, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i7, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
        return true;
    }

    @Override // w.AbstractC0897a
    public final void n(View view, Parcelable parcelable) {
        int i5 = ((c) parcelable).f2206e;
        if (i5 == 1 || i5 == 2) {
            i5 = 5;
        }
        this.f6055h = i5;
    }

    @Override // w.AbstractC0897a
    public final Parcelable o(View view) {
        return new c(View.BaseSavedState.EMPTY_STATE, this);
    }

    @Override // w.AbstractC0897a
    public final boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f6055h == 1 && actionMasked == 0) {
            return true;
        }
        if (t()) {
            this.f6056i.j(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.f6065s) != null) {
            velocityTracker.recycle();
            this.f6065s = null;
        }
        if (this.f6065s == null) {
            this.f6065s = VelocityTracker.obtain();
        }
        this.f6065s.addMovement(motionEvent);
        if (t() && actionMasked == 2 && !this.f6057j && t()) {
            float fAbs = Math.abs(this.f6066t - motionEvent.getX());
            d dVar = this.f6056i;
            if (fAbs > dVar.f2444b) {
                dVar.b(motionEvent.getPointerId(motionEvent.getActionIndex()), view);
            }
        }
        return !this.f6057j;
    }

    public final void s(int i5) {
        View view;
        if (this.f6055h == i5) {
            return;
        }
        this.f6055h = i5;
        WeakReference weakReference = this.f6062p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i6 = this.f6055h == 5 ? 4 : 0;
        if (view.getVisibility() != i6) {
            view.setVisibility(i6);
        }
        Iterator it = this.f6067u.iterator();
        if (it.hasNext()) {
            f.F(it.next());
            throw null;
        }
        v();
    }

    public final boolean t() {
        return this.f6056i != null && (this.f6054g || this.f6055h == 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
    
        if (r1.o(r0, r3.getTop()) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004b, code lost:
    
        if (r3 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004d, code lost:
    
        s(2);
        r2.f6053e.a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u(View view, int i5, boolean z4) {
        int iD;
        if (i5 == 3) {
            iD = this.f6049a.D();
        } else {
            if (i5 != 5) {
                throw new IllegalArgumentException(f.t(i5, "Invalid state to get outer edge offset: "));
            }
            iD = this.f6049a.F();
        }
        d dVar = this.f6056i;
        if (dVar != null) {
            if (!z4) {
                int top = view.getTop();
                dVar.f2458r = view;
                dVar.f2445c = -1;
                boolean zH = dVar.h(iD, top, 0, 0);
                if (!zH && dVar.f2443a == 0 && dVar.f2458r != null) {
                    dVar.f2458r = null;
                }
            }
        }
        s(i5);
    }

    public final void v() {
        View view;
        WeakReference weakReference = this.f6062p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        Q.f(NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH, view);
        Q.d(0, view);
        Q.f(IDMDmInterface.IDM_MAX_OBJ_SIZE, view);
        Q.d(0, view);
        final int i5 = 5;
        if (this.f6055h != 5) {
            Q.g(view, K.c.f1193j, new r() { // from class: Q1.b
                /* JADX WARN: Removed duplicated region for block: B:19:0x003e  */
                @Override // K.r
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final boolean i(View view2) {
                    int i6 = 1;
                    SideSheetBehavior sideSheetBehavior = this.f2204c;
                    sideSheetBehavior.getClass();
                    int i7 = i5;
                    if (i7 == 1 || i7 == 2) {
                        throw new IllegalArgumentException(f.w(new StringBuilder("STATE_"), i7 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
                    }
                    WeakReference weakReference2 = sideSheetBehavior.f6062p;
                    if (weakReference2 == null || weakReference2.get() == null) {
                        sideSheetBehavior.s(i7);
                    } else {
                        View view3 = (View) sideSheetBehavior.f6062p.get();
                        p pVar = new p(i7, sideSheetBehavior, i6);
                        ViewParent parent = view3.getParent();
                        if (parent == null || !parent.isLayoutRequested()) {
                            pVar.run();
                        } else {
                            WeakHashMap weakHashMap = Q.f940a;
                            if (view3.isAttachedToWindow()) {
                                view3.post(pVar);
                            }
                        }
                    }
                    return true;
                }
            });
        }
        final int i6 = 3;
        if (this.f6055h != 3) {
            Q.g(view, K.c.f1191h, new r() { // from class: Q1.b
                /* JADX WARN: Removed duplicated region for block: B:19:0x003e  */
                @Override // K.r
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final boolean i(View view2) {
                    int i62 = 1;
                    SideSheetBehavior sideSheetBehavior = this.f2204c;
                    sideSheetBehavior.getClass();
                    int i7 = i6;
                    if (i7 == 1 || i7 == 2) {
                        throw new IllegalArgumentException(f.w(new StringBuilder("STATE_"), i7 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
                    }
                    WeakReference weakReference2 = sideSheetBehavior.f6062p;
                    if (weakReference2 == null || weakReference2.get() == null) {
                        sideSheetBehavior.s(i7);
                    } else {
                        View view3 = (View) sideSheetBehavior.f6062p.get();
                        p pVar = new p(i7, sideSheetBehavior, i62);
                        ViewParent parent = view3.getParent();
                        if (parent == null || !parent.isLayoutRequested()) {
                            pVar.run();
                        } else {
                            WeakHashMap weakHashMap = Q.f940a;
                            if (view3.isAttachedToWindow()) {
                                view3.post(pVar);
                            }
                        }
                    }
                    return true;
                }
            });
        }
    }

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        this.f6053e = new i(this);
        this.f6054g = true;
        this.f6055h = 5;
        this.f6058k = 0.1f;
        this.f6064r = -1;
        this.f6067u = new LinkedHashSet();
        this.f6068v = new B1.d(this, 1);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v1.a.f9549y);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.f6051c = a.B(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            this.f6052d = k.b(context, attributeSet, 0, R.style.Widget_Material3_SideSheet).a();
        }
        if (typedArrayObtainStyledAttributes.hasValue(5)) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(5, -1);
            this.f6064r = resourceId;
            WeakReference weakReference = this.f6063q;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.f6063q = null;
            WeakReference weakReference2 = this.f6062p;
            if (weakReference2 != null) {
                View view = (View) weakReference2.get();
                if (resourceId != -1) {
                    WeakHashMap weakHashMap = Q.f940a;
                    if (view.isLaidOut()) {
                        view.requestLayout();
                    }
                }
            }
        }
        k kVar = this.f6052d;
        if (kVar != null) {
            g gVar = new g(kVar);
            this.f6050b = gVar;
            gVar.i(context);
            ColorStateList colorStateList = this.f6051c;
            if (colorStateList != null) {
                this.f6050b.k(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f6050b.setTint(typedValue.data);
            }
        }
        this.f = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        this.f6054g = typedArrayObtainStyledAttributes.getBoolean(4, true);
        typedArrayObtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
