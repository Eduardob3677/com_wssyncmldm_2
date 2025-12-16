package androidx.coordinatorlayout.widget;

import F0.b;
import I.d;
import J.C0042p;
import J.G;
import J.I;
import J.InterfaceC0040n;
import J.InterfaceC0041o;
import J.N;
import J.Q;
import J.q0;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import c1.w;
import com.google.firebase.messaging.p;
import com.samsung.android.knox.ex.peripheral.PeripheralConstants;
import com.wssyncmldm.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.WeakHashMap;
import o.C0722k;
import v.AbstractC0891a;
import w.AbstractC0897a;
import w.InterfaceC0898b;
import w.c;
import w.e;
import w.f;
import w.g;
import z.AbstractC0933a;

/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements InterfaceC0040n, InterfaceC0041o {

    /* renamed from: v, reason: collision with root package name */
    public static final String f3585v;

    /* renamed from: w, reason: collision with root package name */
    public static final Class[] f3586w;

    /* renamed from: x, reason: collision with root package name */
    public static final ThreadLocal f3587x;

    /* renamed from: y, reason: collision with root package name */
    public static final b f3588y;

    /* renamed from: z, reason: collision with root package name */
    public static final d f3589z;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3590c;

    /* renamed from: d, reason: collision with root package name */
    public final p f3591d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f3592e;
    public final int[] f;

    /* renamed from: g, reason: collision with root package name */
    public final int[] f3593g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f3594h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f3595i;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f3596j;

    /* renamed from: k, reason: collision with root package name */
    public View f3597k;

    /* renamed from: l, reason: collision with root package name */
    public View f3598l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f3599m;
    public e n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f3600o;

    /* renamed from: p, reason: collision with root package name */
    public q0 f3601p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f3602q;

    /* renamed from: r, reason: collision with root package name */
    public Drawable f3603r;

    /* renamed from: s, reason: collision with root package name */
    public ViewGroup.OnHierarchyChangeListener f3604s;

    /* renamed from: t, reason: collision with root package name */
    public w f3605t;

    /* renamed from: u, reason: collision with root package name */
    public final C0042p f3606u;

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f3585v = r0 != null ? r0.getName() : null;
        f3588y = new b(8);
        f3586w = new Class[]{Context.class, AttributeSet.class};
        f3587x = new ThreadLocal();
        f3589z = new d(12);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet, R.attr.coordinatorLayoutStyle);
        this.f3590c = new ArrayList();
        this.f3591d = new p(19);
        this.f3592e = new ArrayList();
        this.f = new int[2];
        this.f3593g = new int[2];
        this.f3599m = true;
        this.f3606u = new C0042p();
        int[] iArr = AbstractC0891a.f9522a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.coordinatorLayoutStyle, 0);
        WeakHashMap weakHashMap = Q.f940a;
        N.d(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, R.attr.coordinatorLayoutStyle, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            this.f3596j = intArray;
            float f = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i5 = 0; i5 < length; i5++) {
                this.f3596j[i5] = (int) (r1[i5] * f);
            }
        }
        this.f3603r = typedArrayObtainStyledAttributes.getDrawable(1);
        typedArrayObtainStyledAttributes.recycle();
        x();
        super.setOnHierarchyChangeListener(new c(this));
        WeakHashMap weakHashMap2 = Q.f940a;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public static Rect g() {
        Rect rect = (Rect) f3589z.a();
        return rect == null ? new Rect() : rect;
    }

    public static void l(int i5, Rect rect, Rect rect2, w.d dVar, int i6, int i7) {
        int i8 = dVar.f9560c;
        if (i8 == 0) {
            i8 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i8, i5);
        int i9 = dVar.f9561d;
        if ((i9 & 7) == 0) {
            i9 |= 8388611;
        }
        if ((i9 & 112) == 0) {
            i9 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i9, i5);
        int i10 = absoluteGravity & 7;
        int i11 = absoluteGravity & 112;
        int i12 = absoluteGravity2 & 7;
        int i13 = absoluteGravity2 & 112;
        int iWidth = i12 != 1 ? i12 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int iHeight = i13 != 16 ? i13 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i10 == 1) {
            iWidth -= i6 / 2;
        } else if (i10 != 5) {
            iWidth -= i6;
        }
        if (i11 == 16) {
            iHeight -= i7 / 2;
        } else if (i11 != 80) {
            iHeight -= i7;
        }
        rect2.set(iWidth, iHeight, i6 + iWidth, i7 + iHeight);
    }

    public static w.d n(View view) {
        w.d dVar = (w.d) view.getLayoutParams();
        if (!dVar.f9559b) {
            InterfaceC0898b interfaceC0898b = null;
            for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                interfaceC0898b = (InterfaceC0898b) superclass.getAnnotation(InterfaceC0898b.class);
                if (interfaceC0898b != null) {
                    break;
                }
            }
            if (interfaceC0898b != null) {
                try {
                    AbstractC0897a abstractC0897a = (AbstractC0897a) interfaceC0898b.value().getDeclaredConstructor(null).newInstance(null);
                    AbstractC0897a abstractC0897a2 = dVar.f9558a;
                    if (abstractC0897a2 != abstractC0897a) {
                        if (abstractC0897a2 != null) {
                            abstractC0897a2.f();
                        }
                        dVar.f9558a = abstractC0897a;
                        dVar.f9559b = true;
                        if (abstractC0897a != null) {
                            abstractC0897a.d(dVar);
                        }
                    }
                } catch (Exception e5) {
                    Log.e("CoordinatorLayout", "Default behavior class " + interfaceC0898b.value().getName() + " could not be instantiated. Did you forget a default constructor?", e5);
                }
            }
            dVar.f9559b = true;
        }
        return dVar;
    }

    public static void v(int i5, View view) {
        w.d dVar = (w.d) view.getLayoutParams();
        int i6 = dVar.f9565i;
        if (i6 != i5) {
            WeakHashMap weakHashMap = Q.f940a;
            view.offsetLeftAndRight(i5 - i6);
            dVar.f9565i = i5;
        }
    }

    public static void w(int i5, View view) {
        w.d dVar = (w.d) view.getLayoutParams();
        int i6 = dVar.f9566j;
        if (i6 != i5) {
            WeakHashMap weakHashMap = Q.f940a;
            view.offsetTopAndBottom(i5 - i6);
            dVar.f9566j = i5;
        }
    }

    @Override // J.InterfaceC0040n
    public final void a(View view, View view2, int i5, int i6) {
        C0042p c0042p = this.f3606u;
        if (i6 == 1) {
            c0042p.f1000b = i5;
        } else {
            c0042p.f999a = i5;
        }
        this.f3598l = view2;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            ((w.d) getChildAt(i7).getLayoutParams()).getClass();
        }
    }

    @Override // J.InterfaceC0040n
    public final void b(View view, int i5, int i6, int[] iArr, int i7) {
        AbstractC0897a abstractC0897a;
        int childCount = getChildCount();
        boolean z4 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                w.d dVar = (w.d) childAt.getLayoutParams();
                if (dVar.a(i7) && (abstractC0897a = dVar.f9558a) != null) {
                    int[] iArr2 = this.f;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    abstractC0897a.k(this, childAt, view, i5, i6, iArr2, i7);
                    iMax = i5 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i6 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z4 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z4) {
            p(1);
        }
    }

    @Override // J.InterfaceC0040n
    public final void c(int i5, View view) {
        C0042p c0042p = this.f3606u;
        if (i5 == 1) {
            c0042p.f1000b = 0;
        } else {
            c0042p.f999a = 0;
        }
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            w.d dVar = (w.d) childAt.getLayoutParams();
            if (dVar.a(i5)) {
                AbstractC0897a abstractC0897a = dVar.f9558a;
                if (abstractC0897a != null) {
                    abstractC0897a.q(this, childAt, view, i5);
                }
                if (i5 == 0) {
                    dVar.n = false;
                } else if (i5 == 1) {
                    dVar.f9570o = false;
                }
                dVar.getClass();
            }
        }
        this.f3598l = null;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof w.d) && super.checkLayoutParams(layoutParams);
    }

    @Override // J.InterfaceC0041o
    public final void d(View view, int i5, int i6, int i7, int i8, int i9, int[] iArr) {
        AbstractC0897a abstractC0897a;
        boolean z4;
        int iMin;
        int childCount = getChildCount();
        boolean z5 = false;
        int iMax = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                w.d dVar = (w.d) childAt.getLayoutParams();
                if (dVar.a(i9) && (abstractC0897a = dVar.f9558a) != null) {
                    int[] iArr2 = this.f;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    abstractC0897a.l(this, childAt, view, i5, i6, i7, i8, i9, iArr2);
                    iMax = i7 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    if (i8 > 0) {
                        z4 = true;
                        iMin = Math.max(i10, iArr2[1]);
                    } else {
                        z4 = true;
                        iMin = Math.min(i10, iArr2[1]);
                    }
                    i10 = iMin;
                    z5 = z4;
                }
            }
        }
        iArr[0] = iArr[0] + iMax;
        iArr[1] = iArr[1] + i10;
        if (z5) {
            p(1);
        }
    }

    @Override // android.view.View
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            AbstractC0897a abstractC0897a = ((w.d) getChildAt(childCount).getLayoutParams()).f9558a;
            if (abstractC0897a != null) {
                abstractC0897a.a(motionEvent);
            }
        }
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.f3599m && (keyEvent.getKeyCode() == 61 || keyEvent.getKeyCode() == 19 || keyEvent.getKeyCode() == 20 || keyEvent.getKeyCode() == 21 || keyEvent.getKeyCode() == 22)) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                getChildAt(i5);
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j3) {
        AbstractC0897a abstractC0897a = ((w.d) view.getLayoutParams()).f9558a;
        if (abstractC0897a != null) {
            abstractC0897a.getClass();
        }
        return super.drawChild(canvas, view, j3);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f3603r;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    @Override // J.InterfaceC0040n
    public final void e(View view, int i5, int i6, int i7, int i8, int i9) {
        d(view, i5, i6, i7, i8, 0, this.f3593g);
    }

    @Override // J.InterfaceC0040n
    public final boolean f(View view, View view2, int i5, int i6) {
        int childCount = getChildCount();
        boolean z4 = false;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                w.d dVar = (w.d) childAt.getLayoutParams();
                AbstractC0897a abstractC0897a = dVar.f9558a;
                if (abstractC0897a != null) {
                    boolean zP = abstractC0897a.p(this, childAt, view, view2, i5, i6);
                    z4 |= zP;
                    if (i6 == 0) {
                        dVar.n = zP;
                    } else if (i6 == 1) {
                        dVar.f9570o = zP;
                    }
                } else if (i6 == 0) {
                    dVar.n = false;
                } else if (i6 == 1) {
                    dVar.f9570o = false;
                }
            }
        }
        return z4;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new w.d();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new w.d(getContext(), attributeSet);
    }

    public final List<View> getDependencySortedChildren() {
        t();
        return Collections.unmodifiableList(this.f3590c);
    }

    public final q0 getLastWindowInsets() {
        return this.f3601p;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        C0042p c0042p = this.f3606u;
        return c0042p.f1000b | c0042p.f999a;
    }

    public Drawable getStatusBarBackground() {
        return this.f3603r;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    public final void h(w.d dVar, Rect rect, int i5, int i6) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i5) - ((ViewGroup.MarginLayoutParams) dVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i6) - ((ViewGroup.MarginLayoutParams) dVar).bottomMargin));
        rect.set(iMax, iMax2, i5 + iMax, i6 + iMax2);
    }

    public final void i(View view, Rect rect, boolean z4) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z4) {
            k(rect, view);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public final List j(View view) {
        C0722k c0722k = (C0722k) this.f3591d.f6259e;
        int i5 = c0722k.f8440e;
        ArrayList arrayList = null;
        for (int i6 = 0; i6 < i5; i6++) {
            ArrayList arrayList2 = (ArrayList) c0722k.j(i6);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(c0722k.h(i6));
            }
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    public final void k(Rect rect, View view) {
        ThreadLocal threadLocal = g.f9574a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = g.f9574a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        g.a(this, view, matrix);
        ThreadLocal threadLocal3 = g.f9575b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public final int m(int i5) {
        int[] iArr = this.f3596j;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i5);
            return 0;
        }
        if (i5 >= 0 && i5 < iArr.length) {
            return iArr[i5];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i5 + " out of range for " + this);
        return 0;
    }

    public final boolean o(View view, int i5, int i6) {
        d dVar = f3589z;
        Rect rectG = g();
        k(rectG, view);
        try {
            return rectG.contains(i5, i6);
        } finally {
            rectG.setEmpty();
            dVar.c(rectG);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        u();
        if (this.f3600o) {
            if (this.n == null) {
                this.n = new e(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.n);
        }
        if (this.f3601p == null) {
            WeakHashMap weakHashMap = Q.f940a;
            if (getFitsSystemWindows()) {
                G.c(this);
            }
        }
        this.f3595i = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        u();
        if (this.f3600o && this.n != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.n);
        }
        View view = this.f3598l;
        if (view != null) {
            c(0, view);
        }
        this.f3595i = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f3602q || this.f3603r == null) {
            return;
        }
        q0 q0Var = this.f3601p;
        int iD = q0Var != null ? q0Var.d() : 0;
        if (iD > 0) {
            this.f3603r.setBounds(0, 0, getWidth(), iD);
            this.f3603r.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                getChildAt(childCount);
            }
            u();
        }
        boolean zS = s(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            this.f3597k = null;
            u();
        }
        return zS;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        AbstractC0897a abstractC0897a;
        WeakHashMap weakHashMap = Q.f940a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList = this.f3590c;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            View view = (View) arrayList.get(i9);
            if (view.getVisibility() != 8 && ((abstractC0897a = ((w.d) view.getLayoutParams()).f9558a) == null || !abstractC0897a.h(this, view, layoutDirection))) {
                q(layoutDirection, view);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0189  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i5, int i6) {
        boolean z4;
        int i7;
        int i8;
        int i9;
        int i10;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        AbstractC0897a abstractC0897a;
        int i11;
        ArrayList arrayList;
        int i12;
        boolean z5;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean z6;
        int iMax;
        t();
        int childCount = getChildCount();
        int i19 = 0;
        loop0: while (true) {
            if (i19 >= childCount) {
                z4 = false;
                break;
            }
            View childAt = getChildAt(i19);
            C0722k c0722k = (C0722k) this.f3591d.f6259e;
            int i20 = c0722k.f8440e;
            for (int i21 = 0; i21 < i20; i21++) {
                ArrayList arrayList2 = (ArrayList) c0722k.j(i21);
                if (arrayList2 != null && arrayList2.contains(childAt)) {
                    z4 = true;
                    break loop0;
                }
            }
            i19++;
        }
        if (z4 != this.f3600o) {
            if (z4) {
                if (this.f3595i) {
                    if (this.n == null) {
                        this.n = new e(this);
                    }
                    getViewTreeObserver().addOnPreDrawListener(this.n);
                }
                this.f3600o = true;
            } else {
                if (this.f3595i && this.n != null) {
                    getViewTreeObserver().removeOnPreDrawListener(this.n);
                }
                this.f3600o = false;
            }
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        WeakHashMap weakHashMap = Q.f940a;
        int layoutDirection = getLayoutDirection();
        boolean z7 = layoutDirection == 1;
        int mode = View.MeasureSpec.getMode(i5);
        int size = View.MeasureSpec.getSize(i5);
        int mode2 = View.MeasureSpec.getMode(i6);
        int size2 = View.MeasureSpec.getSize(i6);
        int i22 = paddingLeft + paddingRight;
        int i23 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z8 = this.f3601p != null && getFitsSystemWindows();
        ArrayList arrayList3 = this.f3590c;
        int size3 = arrayList3.size();
        int i24 = suggestedMinimumWidth;
        int i25 = suggestedMinimumHeight;
        int iCombineMeasuredStates = 0;
        int i26 = 0;
        while (i26 < size3) {
            View view = (View) arrayList3.get(i26);
            if (view.getVisibility() == 8) {
                i16 = i26;
                i11 = size3;
                arrayList = arrayList3;
                i14 = paddingLeft;
                i17 = paddingRight;
                i12 = layoutDirection;
                z6 = true;
                z5 = false;
            } else {
                w.d dVar = (w.d) view.getLayoutParams();
                int i27 = dVar.f9562e;
                if (i27 < 0 || mode == 0) {
                    i7 = iCombineMeasuredStates;
                    i8 = i26;
                } else {
                    int iM = m(i27);
                    i7 = iCombineMeasuredStates;
                    int i28 = dVar.f9560c;
                    if (i28 == 0) {
                        i28 = 8388661;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i28, layoutDirection) & 7;
                    i8 = i26;
                    if ((absoluteGravity == 3 && !z7) || (absoluteGravity == 5 && z7)) {
                        iMax = Math.max(0, (size - paddingRight) - iM);
                    } else if ((absoluteGravity == 5 && !z7) || (absoluteGravity == 3 && z7)) {
                        iMax = Math.max(0, iM - paddingLeft);
                    }
                    i9 = iMax;
                    if (z8 || view.getFitsSystemWindows()) {
                        i10 = i25;
                        iMakeMeasureSpec = i5;
                        iMakeMeasureSpec2 = i6;
                    } else {
                        int iC = this.f3601p.c() + this.f3601p.b();
                        i10 = i25;
                        int iA = this.f3601p.a() + this.f3601p.d();
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - iC, mode);
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - iA, mode2);
                    }
                    abstractC0897a = dVar.f9558a;
                    if (abstractC0897a == null) {
                        int i29 = i7;
                        i16 = i8;
                        z5 = false;
                        i14 = paddingLeft;
                        i15 = i29;
                        int i30 = i10;
                        i17 = paddingRight;
                        i18 = i30;
                        i12 = layoutDirection;
                        i13 = i24;
                        i11 = size3;
                        arrayList = arrayList3;
                        if (!abstractC0897a.i(this, view, iMakeMeasureSpec, i9, iMakeMeasureSpec2)) {
                        }
                        int iMax2 = Math.max(i13, view.getMeasuredWidth() + i22 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                        int iMax3 = Math.max(i18, view.getMeasuredHeight() + i23 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                        i24 = iMax2;
                        iCombineMeasuredStates = View.combineMeasuredStates(i15, view.getMeasuredState());
                        i25 = iMax3;
                        z6 = true;
                    } else {
                        i11 = size3;
                        arrayList = arrayList3;
                        i12 = layoutDirection;
                        z5 = false;
                        i13 = i24;
                        int i31 = i8;
                        i14 = paddingLeft;
                        i15 = i7;
                        i16 = i31;
                        int i32 = i10;
                        i17 = paddingRight;
                        i18 = i32;
                    }
                    measureChildWithMargins(view, iMakeMeasureSpec, i9, iMakeMeasureSpec2, 0);
                    int iMax22 = Math.max(i13, view.getMeasuredWidth() + i22 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                    int iMax32 = Math.max(i18, view.getMeasuredHeight() + i23 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                    i24 = iMax22;
                    iCombineMeasuredStates = View.combineMeasuredStates(i15, view.getMeasuredState());
                    i25 = iMax32;
                    z6 = true;
                }
                i9 = 0;
                if (z8) {
                    i10 = i25;
                    iMakeMeasureSpec = i5;
                    iMakeMeasureSpec2 = i6;
                    abstractC0897a = dVar.f9558a;
                    if (abstractC0897a == null) {
                    }
                    measureChildWithMargins(view, iMakeMeasureSpec, i9, iMakeMeasureSpec2, 0);
                    int iMax222 = Math.max(i13, view.getMeasuredWidth() + i22 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                    int iMax322 = Math.max(i18, view.getMeasuredHeight() + i23 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                    i24 = iMax222;
                    iCombineMeasuredStates = View.combineMeasuredStates(i15, view.getMeasuredState());
                    i25 = iMax322;
                    z6 = true;
                }
            }
            i26 = i16 + 1;
            paddingLeft = i14;
            paddingRight = i17;
            layoutDirection = i12;
            size3 = i11;
            arrayList3 = arrayList;
        }
        int i33 = iCombineMeasuredStates;
        setMeasuredDimension(View.resolveSizeAndState(i24, i5, (-16777216) & i33), View.resolveSizeAndState(i25, i6, i33 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f5, boolean z4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                w.d dVar = (w.d) childAt.getLayoutParams();
                if (dVar.a(0)) {
                    AbstractC0897a abstractC0897a = dVar.f9558a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f5) {
        AbstractC0897a abstractC0897a;
        int childCount = getChildCount();
        boolean zJ = false;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                w.d dVar = (w.d) childAt.getLayoutParams();
                if (dVar.a(0) && (abstractC0897a = dVar.f9558a) != null) {
                    zJ |= abstractC0897a.j(childAt, view, f5);
                }
            }
        }
        return zJ;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i5, int i6, int[] iArr) {
        b(view, i5, i6, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i5, int i6, int i7, int i8) {
        e(view, i5, i6, i7, i8, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i5) {
        a(view, view2, i5, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.f2270c);
        SparseArray sparseArray = fVar.f9573e;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            int id = childAt.getId();
            AbstractC0897a abstractC0897a = n(childAt).f9558a;
            if (id != -1 && abstractC0897a != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                abstractC0897a.n(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableO;
        f fVar = new f(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            int id = childAt.getId();
            AbstractC0897a abstractC0897a = ((w.d) childAt.getLayoutParams()).f9558a;
            if (id != -1 && abstractC0897a != null && (parcelableO = abstractC0897a.o(childAt)) != null) {
                sparseArray.append(id, parcelableO);
            }
        }
        fVar.f9573e = sparseArray;
        return fVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i5) {
        return f(view, view2, i5, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        c(0, view);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zS;
        int actionMasked = motionEvent.getActionMasked();
        View view = this.f3597k;
        boolean z4 = false;
        if (view != null) {
            AbstractC0897a abstractC0897a = ((w.d) view.getLayoutParams()).f9558a;
            zS = abstractC0897a != null ? abstractC0897a.r(this, this.f3597k, motionEvent) : false;
        } else {
            zS = s(motionEvent, 1);
            if (actionMasked != 0 && zS) {
                z4 = true;
            }
        }
        if (this.f3597k == null || actionMasked == 3) {
            zS |= super.onTouchEvent(motionEvent);
        } else if (z4) {
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            motionEventObtain.setAction(3);
            super.onTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f3597k = null;
            u();
        }
        return zS;
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x004b A[EDGE_INSN: B:134:0x004b->B:10:0x004b BREAK  A[LOOP:2: B:122:0x02db->B:127:0x02f2], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(int i5) {
        int i6;
        Rect rect;
        int i7;
        Rect rect2;
        int i8;
        Rect rect3;
        int i9;
        int i10;
        ArrayList arrayList;
        boolean z4;
        int i11;
        int i12;
        int width;
        int i13;
        int i14;
        int i15;
        int height;
        int i16;
        int i17;
        int i18;
        w.d dVar;
        int i19;
        d dVar2;
        int i20;
        Rect rect4;
        Rect rect5;
        Rect rect6;
        ArrayList arrayList2;
        int i21;
        AbstractC0897a abstractC0897a;
        int i22 = i5;
        WeakHashMap weakHashMap = Q.f940a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList3 = this.f3590c;
        int size = arrayList3.size();
        Rect rectG = g();
        Rect rectG2 = g();
        Rect rectG3 = g();
        int i23 = 0;
        while (true) {
            d dVar3 = f3589z;
            if (i23 >= size) {
                Rect rect7 = rectG3;
                Rect rect8 = rectG2;
                Rect rect9 = rectG;
                rect9.setEmpty();
                dVar3.c(rect9);
                rect8.setEmpty();
                dVar3.c(rect8);
                rect7.setEmpty();
                dVar3.c(rect7);
                return;
            }
            View view = (View) arrayList3.get(i23);
            w.d dVar4 = (w.d) view.getLayoutParams();
            if (i22 == 0 && view.getVisibility() == 8) {
                i8 = i22;
                i7 = layoutDirection;
                i6 = i23;
                rect3 = rectG3;
                rect = rectG2;
                rect2 = rectG;
                arrayList = arrayList3;
                i10 = size;
            } else {
                int i24 = 0;
                while (i24 < i23) {
                    if (dVar4.f9568l == ((View) arrayList3.get(i24))) {
                        w.d dVar5 = (w.d) view.getLayoutParams();
                        if (dVar5.f9567k != null) {
                            Rect rectG4 = g();
                            Rect rectG5 = g();
                            arrayList2 = arrayList3;
                            Rect rectG6 = g();
                            k(rectG4, dVar5.f9567k);
                            i(view, rectG5, false);
                            i21 = size;
                            int measuredWidth = view.getMeasuredWidth();
                            int measuredHeight = view.getMeasuredHeight();
                            dVar = dVar4;
                            dVar2 = dVar3;
                            i20 = i23;
                            i19 = layoutDirection;
                            rect4 = rectG3;
                            rect5 = rectG2;
                            rect6 = rectG;
                            l(layoutDirection, rectG4, rectG6, dVar5, measuredWidth, measuredHeight);
                            boolean z5 = (rectG6.left == rectG5.left && rectG6.top == rectG5.top) ? false : true;
                            h(dVar5, rectG6, measuredWidth, measuredHeight);
                            int i25 = rectG6.left - rectG5.left;
                            int i26 = rectG6.top - rectG5.top;
                            if (i25 != 0) {
                                WeakHashMap weakHashMap2 = Q.f940a;
                                view.offsetLeftAndRight(i25);
                            }
                            if (i26 != 0) {
                                WeakHashMap weakHashMap3 = Q.f940a;
                                view.offsetTopAndBottom(i26);
                            }
                            if (z5 && (abstractC0897a = dVar5.f9558a) != null) {
                                abstractC0897a.e(this, view, dVar5.f9567k);
                            }
                            rectG4.setEmpty();
                            dVar2.c(rectG4);
                            rectG5.setEmpty();
                            dVar2.c(rectG5);
                            rectG6.setEmpty();
                            dVar2.c(rectG6);
                        } else {
                            dVar = dVar4;
                            i19 = layoutDirection;
                            dVar2 = dVar3;
                            i20 = i23;
                            rect4 = rectG3;
                            rect5 = rectG2;
                            rect6 = rectG;
                            arrayList2 = arrayList3;
                            i21 = size;
                        }
                    }
                    i24++;
                    dVar3 = dVar2;
                    size = i21;
                    arrayList3 = arrayList2;
                    layoutDirection = i19;
                    dVar4 = dVar;
                    i23 = i20;
                    rectG3 = rect4;
                    rectG2 = rect5;
                    rectG = rect6;
                }
                w.d dVar6 = dVar4;
                int i27 = layoutDirection;
                I.c cVar = dVar3;
                i6 = i23;
                Rect rect10 = rectG3;
                rect = rectG2;
                Rect rect11 = rectG;
                ArrayList arrayList4 = arrayList3;
                int i28 = size;
                i(view, rect, true);
                if (dVar6.f9563g == 0 || rect.isEmpty()) {
                    i7 = i27;
                    rect2 = rect11;
                } else {
                    i7 = i27;
                    int absoluteGravity = Gravity.getAbsoluteGravity(dVar6.f9563g, i7);
                    int i29 = absoluteGravity & 112;
                    if (i29 == 48) {
                        rect2 = rect11;
                        rect2.top = Math.max(rect2.top, rect.bottom);
                    } else if (i29 != 80) {
                        rect2 = rect11;
                    } else {
                        rect2 = rect11;
                        rect2.bottom = Math.max(rect2.bottom, getHeight() - rect.top);
                    }
                    int i30 = absoluteGravity & 7;
                    if (i30 == 3) {
                        rect2.left = Math.max(rect2.left, rect.right);
                    } else if (i30 == 5) {
                        rect2.right = Math.max(rect2.right, getWidth() - rect.left);
                    }
                }
                if (dVar6.f9564h == 0 || view.getVisibility() != 0) {
                    i8 = i5;
                    if (i8 != 2) {
                        rect3 = rect10;
                        rect3.set(((w.d) view.getLayoutParams()).f9571p);
                        if (rect3.equals(rect)) {
                            i10 = i28;
                            arrayList = arrayList4;
                        } else {
                            ((w.d) view.getLayoutParams()).f9571p.set(rect);
                        }
                    } else {
                        rect3 = rect10;
                    }
                    i9 = i6 + 1;
                    i10 = i28;
                    while (true) {
                        arrayList = arrayList4;
                        if (i9 >= i10) {
                            break;
                        }
                        View view2 = (View) arrayList.get(i9);
                        AbstractC0897a abstractC0897a2 = ((w.d) view2.getLayoutParams()).f9558a;
                        if (abstractC0897a2 != null) {
                            abstractC0897a2.c(view2);
                        }
                        i9++;
                        arrayList4 = arrayList;
                    }
                } else {
                    WeakHashMap weakHashMap4 = Q.f940a;
                    if (view.isLaidOut() && view.getWidth() > 0 && view.getHeight() > 0) {
                        w.d dVar7 = (w.d) view.getLayoutParams();
                        AbstractC0897a abstractC0897a3 = dVar7.f9558a;
                        Rect rectG7 = g();
                        Rect rectG8 = g();
                        rectG8.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                        if (abstractC0897a3 == null || !abstractC0897a3.b(view)) {
                            rectG7.set(rectG8);
                        } else if (!rectG8.contains(rectG7)) {
                            throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectG7.toShortString() + " | Bounds:" + rectG8.toShortString());
                        }
                        rectG8.setEmpty();
                        cVar.c(rectG8);
                        if (rectG7.isEmpty()) {
                            rectG7.setEmpty();
                            cVar.c(rectG7);
                            i8 = i5;
                            if (i8 != 2) {
                            }
                            i9 = i6 + 1;
                            i10 = i28;
                            while (true) {
                                arrayList = arrayList4;
                                if (i9 >= i10) {
                                }
                                i9++;
                                arrayList4 = arrayList;
                            }
                        } else {
                            int absoluteGravity2 = Gravity.getAbsoluteGravity(dVar7.f9564h, i7);
                            if ((absoluteGravity2 & 48) != 48 || (i17 = (rectG7.top - ((ViewGroup.MarginLayoutParams) dVar7).topMargin) - dVar7.f9566j) >= (i18 = rect2.top)) {
                                z4 = false;
                            } else {
                                w(i18 - i17, view);
                                z4 = true;
                            }
                            if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - rectG7.bottom) - ((ViewGroup.MarginLayoutParams) dVar7).bottomMargin) + dVar7.f9566j) < (i16 = rect2.bottom)) {
                                w(height - i16, view);
                                z4 = true;
                            }
                            if (z4) {
                                i11 = 0;
                            } else {
                                i11 = 0;
                                w(0, view);
                            }
                            if ((absoluteGravity2 & 3) != 3 || (i14 = (rectG7.left - ((ViewGroup.MarginLayoutParams) dVar7).leftMargin) - dVar7.f9565i) >= (i15 = rect2.left)) {
                                i12 = i11;
                            } else {
                                v(i15 - i14, view);
                                i12 = 1;
                            }
                            if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - rectG7.right) - ((ViewGroup.MarginLayoutParams) dVar7).rightMargin) + dVar7.f9565i) < (i13 = rect2.right)) {
                                v(width - i13, view);
                                i12 = 1;
                            }
                            if (i12 == 0) {
                                v(i11, view);
                            }
                            rectG7.setEmpty();
                            cVar.c(rectG7);
                            i8 = i5;
                            if (i8 != 2) {
                            }
                            i9 = i6 + 1;
                            i10 = i28;
                            while (true) {
                                arrayList = arrayList4;
                                if (i9 >= i10) {
                                }
                                i9++;
                                arrayList4 = arrayList;
                            }
                        }
                    }
                }
            }
            size = i10;
            i23 = i6 + 1;
            rectG2 = rect;
            i22 = i8;
            rectG3 = rect3;
            arrayList3 = arrayList;
            rectG = rect2;
            layoutDirection = i7;
        }
    }

    public final void q(int i5, View view) {
        Rect rectG;
        Rect rectG2;
        w.d dVar = (w.d) view.getLayoutParams();
        View view2 = dVar.f9567k;
        if (view2 == null && dVar.f != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        d dVar2 = f3589z;
        if (view2 != null) {
            rectG = g();
            rectG2 = g();
            try {
                k(rectG, view2);
                w.d dVar3 = (w.d) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                l(i5, rectG, rectG2, dVar3, measuredWidth, measuredHeight);
                h(dVar3, rectG2, measuredWidth, measuredHeight);
                view.layout(rectG2.left, rectG2.top, rectG2.right, rectG2.bottom);
                return;
            } finally {
                rectG.setEmpty();
                dVar2.c(rectG);
                rectG2.setEmpty();
                dVar2.c(rectG2);
            }
        }
        int i6 = dVar.f9562e;
        if (i6 < 0) {
            w.d dVar4 = (w.d) view.getLayoutParams();
            rectG = g();
            rectG.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar4).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar4).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) dVar4).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) dVar4).bottomMargin);
            if (this.f3601p != null) {
                WeakHashMap weakHashMap = Q.f940a;
                if (getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                    rectG.left = this.f3601p.b() + rectG.left;
                    rectG.top = this.f3601p.d() + rectG.top;
                    rectG.right -= this.f3601p.c();
                    rectG.bottom -= this.f3601p.a();
                }
            }
            rectG2 = g();
            int i7 = dVar4.f9560c;
            if ((i7 & 7) == 0) {
                i7 |= 8388611;
            }
            if ((i7 & 112) == 0) {
                i7 |= 48;
            }
            Gravity.apply(i7, view.getMeasuredWidth(), view.getMeasuredHeight(), rectG, rectG2, i5);
            view.layout(rectG2.left, rectG2.top, rectG2.right, rectG2.bottom);
            return;
        }
        w.d dVar5 = (w.d) view.getLayoutParams();
        int i8 = dVar5.f9560c;
        if (i8 == 0) {
            i8 = 8388661;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i8, i5);
        int i9 = absoluteGravity & 7;
        int i10 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        if (i5 == 1) {
            i6 = width - i6;
        }
        int iM = m(i6) - measuredWidth2;
        if (i9 == 1) {
            iM += measuredWidth2 / 2;
        } else if (i9 == 5) {
            iM += measuredWidth2;
        }
        int i11 = i10 != 16 ? i10 != 80 ? 0 : measuredHeight2 : measuredHeight2 / 2;
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar5).leftMargin, Math.min(iM, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) dVar5).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar5).topMargin, Math.min(i11, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) dVar5).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth2 + iMax, measuredHeight2 + iMax2);
    }

    public final boolean r(AbstractC0897a abstractC0897a, View view, MotionEvent motionEvent, int i5) {
        if (i5 == 0) {
            return abstractC0897a.g(this, view, motionEvent);
        }
        if (i5 == 1) {
            return abstractC0897a.r(this, view, motionEvent);
        }
        throw new IllegalArgumentException();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z4) {
        AbstractC0897a abstractC0897a = ((w.d) view.getLayoutParams()).f9558a;
        if (abstractC0897a != null) {
            abstractC0897a.m(this, view);
        }
        return super.requestChildRectangleOnScreen(view, rect, z4);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z4) {
        super.requestDisallowInterceptTouchEvent(z4);
        if (!z4 || this.f3594h) {
            return;
        }
        if (this.f3597k == null) {
            int childCount = getChildCount();
            MotionEvent motionEventObtain = null;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                AbstractC0897a abstractC0897a = ((w.d) childAt.getLayoutParams()).f9558a;
                if (abstractC0897a != null) {
                    if (motionEventObtain == null) {
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    abstractC0897a.g(this, childAt, motionEventObtain);
                }
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
        }
        u();
        this.f3594h = true;
    }

    public final boolean s(MotionEvent motionEvent, int i5) {
        boolean z4;
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.f3592e;
        arrayList.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i6 = childCount - 1; i6 >= 0; i6--) {
            arrayList.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i6) : i6));
        }
        b bVar = f3588y;
        if (bVar != null) {
            Collections.sort(arrayList, bVar);
        }
        int size = arrayList.size();
        MotionEvent motionEventObtain = null;
        boolean zR = false;
        boolean z5 = false;
        for (int i7 = 0; i7 < size; i7++) {
            View view = (View) arrayList.get(i7);
            w.d dVar = (w.d) view.getLayoutParams();
            AbstractC0897a abstractC0897a = dVar.f9558a;
            if (!(zR || z5) || actionMasked == 0) {
                if (!z5 && !zR && abstractC0897a != null && (zR = r(abstractC0897a, view, motionEvent, i5))) {
                    this.f3597k = view;
                    if (actionMasked != 3 && actionMasked != 1) {
                        for (int i8 = 0; i8 < i7; i8++) {
                            View view2 = (View) arrayList.get(i8);
                            AbstractC0897a abstractC0897a2 = ((w.d) view2.getLayoutParams()).f9558a;
                            if (abstractC0897a2 != null) {
                                if (motionEventObtain == null) {
                                    motionEventObtain = MotionEvent.obtain(motionEvent);
                                    motionEventObtain.setAction(3);
                                }
                                r(abstractC0897a2, view2, motionEventObtain, i5);
                            }
                        }
                    }
                }
                if (dVar.f9558a == null) {
                    dVar.f9569m = false;
                }
                boolean z6 = dVar.f9569m;
                if (z6) {
                    z4 = true;
                } else {
                    dVar.f9569m = z6;
                    z4 = z6;
                }
                z5 = z4 && !z6;
                if (z4 && !z5) {
                    break;
                }
            } else if (abstractC0897a != null) {
                if (motionEventObtain == null) {
                    motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.setAction(3);
                }
                r(abstractC0897a, view, motionEventObtain, i5);
            }
        }
        arrayList.clear();
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        return zR;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z4) {
        super.setFitsSystemWindows(z4);
        x();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f3604s = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f3603r;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f3603r = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f3603r.setState(getDrawableState());
                }
                Drawable drawable3 = this.f3603r;
                WeakHashMap weakHashMap = Q.f940a;
                C.b.b(drawable3, getLayoutDirection());
                this.f3603r.setVisible(getVisibility() == 0, false);
                this.f3603r.setCallback(this);
            }
            WeakHashMap weakHashMap2 = Q.f940a;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarBackgroundColor(int i5) {
        setStatusBarBackground(new ColorDrawable(i5));
    }

    public void setStatusBarBackgroundResource(int i5) {
        setStatusBarBackground(i5 != 0 ? AbstractC0933a.b(getContext(), i5) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i5) {
        super.setVisibility(i5);
        boolean z4 = i5 == 0;
        Drawable drawable = this.f3603r;
        if (drawable == null || drawable.isVisible() == z4) {
            return;
        }
        this.f3603r.setVisible(z4, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0104  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void t() {
        I.c cVar;
        View viewFindViewById;
        ArrayList arrayList = this.f3590c;
        arrayList.clear();
        p pVar = this.f3591d;
        C0722k c0722k = (C0722k) pVar.f6259e;
        int i5 = c0722k.f8440e;
        int i6 = 0;
        while (true) {
            cVar = (I.c) pVar.f6258d;
            if (i6 >= i5) {
                break;
            }
            ArrayList arrayList2 = (ArrayList) c0722k.j(i6);
            if (arrayList2 != null) {
                arrayList2.clear();
                cVar.c(arrayList2);
            }
            i6++;
        }
        c0722k.clear();
        int childCount = getChildCount();
        int i7 = 0;
        loop1: while (true) {
            C0722k c0722k2 = (C0722k) pVar.f6259e;
            if (i7 >= childCount) {
                ArrayList arrayList3 = (ArrayList) pVar.f;
                arrayList3.clear();
                HashSet hashSet = (HashSet) pVar.f6260g;
                hashSet.clear();
                int i8 = c0722k2.f8440e;
                for (int i9 = 0; i9 < i8; i9++) {
                    pVar.r(c0722k2.h(i9), arrayList3, hashSet);
                }
                arrayList.addAll(arrayList3);
                Collections.reverse(arrayList);
                return;
            }
            View childAt = getChildAt(i7);
            w.d dVarN = n(childAt);
            int i10 = dVarN.f;
            if (i10 == -1) {
                dVarN.f9568l = null;
                dVarN.f9567k = null;
            } else {
                View view = dVarN.f9567k;
                if (view == null || view.getId() != i10) {
                    viewFindViewById = findViewById(i10);
                    dVarN.f9567k = viewFindViewById;
                    if (viewFindViewById != null) {
                        if (!isInEditMode()) {
                            throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + getResources().getResourceName(i10) + " to anchor view " + childAt);
                        }
                        dVarN.f9568l = null;
                        dVarN.f9567k = null;
                    } else if (viewFindViewById != this) {
                        for (ViewParent parent = viewFindViewById.getParent(); parent != this && parent != null; parent = parent.getParent()) {
                            if (parent != childAt) {
                                if (parent instanceof View) {
                                    viewFindViewById = parent;
                                }
                            } else {
                                if (!isInEditMode()) {
                                    throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                                }
                                dVarN.f9568l = null;
                                dVarN.f9567k = null;
                            }
                        }
                        dVarN.f9568l = viewFindViewById;
                    } else {
                        if (!isInEditMode()) {
                            throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                        }
                        dVarN.f9568l = null;
                        dVarN.f9567k = null;
                    }
                } else {
                    View view2 = dVarN.f9567k;
                    for (ViewParent parent2 = view2.getParent(); parent2 != this; parent2 = parent2.getParent()) {
                        if (parent2 == null || parent2 == childAt) {
                            dVarN.f9568l = null;
                            dVarN.f9567k = null;
                            viewFindViewById = findViewById(i10);
                            dVarN.f9567k = viewFindViewById;
                            if (viewFindViewById != null) {
                            }
                        } else {
                            if (parent2 instanceof View) {
                                view2 = parent2;
                            }
                        }
                    }
                    dVarN.f9568l = view2;
                }
            }
            if (!c0722k2.containsKey(childAt)) {
                c0722k2.put(childAt, null);
            }
            for (int i11 = 0; i11 < childCount; i11++) {
                if (i11 != i7) {
                    View childAt2 = getChildAt(i11);
                    if (childAt2 != dVarN.f9568l) {
                        WeakHashMap weakHashMap = Q.f940a;
                        int layoutDirection = getLayoutDirection();
                        int absoluteGravity = Gravity.getAbsoluteGravity(((w.d) childAt2.getLayoutParams()).f9563g, layoutDirection);
                        if (absoluteGravity == 0 || (Gravity.getAbsoluteGravity(dVarN.f9564h, layoutDirection) & absoluteGravity) != absoluteGravity) {
                            AbstractC0897a abstractC0897a = dVarN.f9558a;
                            if (abstractC0897a != null) {
                                abstractC0897a.c(childAt);
                            }
                        } else {
                            if (!c0722k2.containsKey(childAt2) && !c0722k2.containsKey(childAt2)) {
                                c0722k2.put(childAt2, null);
                            }
                            if (!c0722k2.containsKey(childAt2) || !c0722k2.containsKey(childAt)) {
                                break loop1;
                            }
                            ArrayList arrayList4 = (ArrayList) c0722k2.getOrDefault(childAt2, null);
                            if (arrayList4 == null) {
                                arrayList4 = (ArrayList) cVar.a();
                                if (arrayList4 == null) {
                                    arrayList4 = new ArrayList();
                                }
                                c0722k2.put(childAt2, arrayList4);
                            }
                            arrayList4.add(childAt);
                        }
                    }
                }
            }
            i7++;
        }
        throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
    }

    public final void u() {
        View view = this.f3597k;
        if (view != null) {
            AbstractC0897a abstractC0897a = ((w.d) view.getLayoutParams()).f9558a;
            if (abstractC0897a != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                abstractC0897a.r(this, this.f3597k, motionEventObtain);
                motionEventObtain.recycle();
            }
            this.f3597k = null;
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            ((w.d) getChildAt(i5).getLayoutParams()).f9569m = false;
        }
        this.f3594h = false;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f3603r;
    }

    public final void x() {
        WeakHashMap weakHashMap = Q.f940a;
        if (!getFitsSystemWindows()) {
            I.u(this, null);
            return;
        }
        if (this.f3605t == null) {
            this.f3605t = new w(this);
        }
        I.u(this, this.f3605t);
        setSystemUiVisibility(PeripheralConstants.ErrorCode.ERROR_PLUGIN_CUSTOM_BASE);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof w.d ? new w.d((w.d) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new w.d((ViewGroup.MarginLayoutParams) layoutParams) : new w.d(layoutParams);
    }
}
