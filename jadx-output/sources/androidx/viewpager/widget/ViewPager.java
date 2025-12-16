package androidx.viewpager.widget;

import A3.D;
import B1.h;
import F0.a;
import F0.b;
import F0.c;
import F0.d;
import F0.e;
import F0.f;
import F0.g;
import F0.i;
import J.I;
import J.Q;
import Z0.j;
import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.PathInterpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.picker.widget.C0164f;
import androidx.picker.widget.C0165g;
import androidx.picker.widget.H;
import androidx.picker.widget.HandlerC0161c;
import androidx.picker.widget.SeslDatePicker;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import com.idm.fotaagent.enabler.interfaces.IDMEnablerInterface;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import i3.x;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.WeakHashMap;
import z.AbstractC0933a;

/* loaded from: classes.dex */
public class ViewPager extends ViewGroup {

    /* renamed from: f0, reason: collision with root package name */
    public static final int[] f4977f0 = {R.attr.layout_gravity};
    public static final b g0 = new b(0);

    /* renamed from: h0, reason: collision with root package name */
    public static final c f4978h0 = new c(0);

    /* renamed from: A, reason: collision with root package name */
    public int f4979A;

    /* renamed from: B, reason: collision with root package name */
    public final int f4980B;

    /* renamed from: C, reason: collision with root package name */
    public boolean f4981C;

    /* renamed from: D, reason: collision with root package name */
    public float f4982D;
    public float E;

    /* renamed from: F, reason: collision with root package name */
    public float f4983F;

    /* renamed from: G, reason: collision with root package name */
    public float f4984G;

    /* renamed from: H, reason: collision with root package name */
    public int f4985H;

    /* renamed from: I, reason: collision with root package name */
    public VelocityTracker f4986I;

    /* renamed from: J, reason: collision with root package name */
    public final int f4987J;

    /* renamed from: K, reason: collision with root package name */
    public final int f4988K;

    /* renamed from: L, reason: collision with root package name */
    public final int f4989L;

    /* renamed from: M, reason: collision with root package name */
    public final int f4990M;

    /* renamed from: N, reason: collision with root package name */
    public final EdgeEffect f4991N;

    /* renamed from: O, reason: collision with root package name */
    public final EdgeEffect f4992O;

    /* renamed from: Q, reason: collision with root package name */
    public boolean f4993Q;

    /* renamed from: R, reason: collision with root package name */
    public boolean f4994R;

    /* renamed from: T, reason: collision with root package name */
    public int f4995T;

    /* renamed from: U, reason: collision with root package name */
    public g f4996U;

    /* renamed from: V, reason: collision with root package name */
    public final h f4997V;

    /* renamed from: W, reason: collision with root package name */
    public int f4998W;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f4999a0;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f5000b0;

    /* renamed from: c, reason: collision with root package name */
    public int f5001c;

    /* renamed from: c0, reason: collision with root package name */
    public final float f5002c0;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f5003d;

    /* renamed from: d0, reason: collision with root package name */
    public int f5004d0;

    /* renamed from: e, reason: collision with root package name */
    public final e f5005e;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f5006e0;
    public final Rect f;

    /* renamed from: g, reason: collision with root package name */
    public a f5007g;

    /* renamed from: h, reason: collision with root package name */
    public int f5008h;

    /* renamed from: i, reason: collision with root package name */
    public int f5009i;

    /* renamed from: j, reason: collision with root package name */
    public Parcelable f5010j;

    /* renamed from: k, reason: collision with root package name */
    public final Scroller f5011k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f5012l;

    /* renamed from: m, reason: collision with root package name */
    public F0.h f5013m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public Drawable f5014o;

    /* renamed from: p, reason: collision with root package name */
    public int f5015p;

    /* renamed from: q, reason: collision with root package name */
    public int f5016q;

    /* renamed from: r, reason: collision with root package name */
    public float f5017r;

    /* renamed from: s, reason: collision with root package name */
    public float f5018s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f5019t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f5020u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f5021v;

    /* renamed from: w, reason: collision with root package name */
    public int f5022w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f5023x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f5024y;

    /* renamed from: z, reason: collision with root package name */
    public final int f5025z;

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5003d = new ArrayList();
        this.f5005e = new e();
        this.f = new Rect();
        this.f5009i = -1;
        this.f5017r = -3.4028235E38f;
        this.f5018s = Float.MAX_VALUE;
        this.f5022w = 1;
        this.f4981C = true;
        this.f4985H = -1;
        this.f4993Q = true;
        this.f4997V = new h(1, this);
        this.f4998W = 0;
        this.f4999a0 = false;
        this.f5000b0 = false;
        this.f5002c0 = 0.5f;
        this.f5004d0 = -1;
        this.f5006e0 = false;
        setWillNotDraw(false);
        setDescendantFocusability(NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH);
        setFocusable(true);
        this.f5011k = new Scroller(context, f4978h0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.f4980B = viewConfiguration.getScaledPagingTouchSlop();
        viewConfiguration.getScaledTouchSlop();
        viewConfiguration.getScaledPagingTouchSlop();
        this.f4987J = (int) (400.0f * f);
        this.f4988K = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f4991N = new EdgeEffect(context);
        this.f4992O = new EdgeEffect(context);
        this.f4989L = (int) (25.0f * f);
        this.f4990M = (int) (2.0f * f);
        this.f5025z = (int) (f * 16.0f);
        Q.h(this, new C1.e(1, this));
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        I.u(this, new D(this));
    }

    public static boolean c(int i5, int i6, int i7, View view, boolean z4) {
        int i8;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i9 = i6 + scrollX;
                if (i9 >= childAt.getLeft() && i9 < childAt.getRight() && (i8 = i7 + scrollY) >= childAt.getTop() && i8 < childAt.getBottom() && c(i5, i9 - childAt.getLeft(), i8 - childAt.getTop(), childAt, true)) {
                    return true;
                }
            }
        }
        return z4 && view.canScrollHorizontally(-i5);
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private int getScrollStart() {
        return t() ? IDMEnablerInterface.FLAG_RECEIVER_INCLUDE_BACKGROUND - getScrollX() : getScrollX();
    }

    private void setScrollingCacheEnabled(boolean z4) {
        if (this.f5020u != z4) {
            this.f5020u = z4;
        }
    }

    public final e a(int i5, int i6) {
        e eVar = new e();
        eVar.f666b = i5;
        a aVar = this.f5007g;
        aVar.getClass();
        C0165g c0165g = (C0165g) aVar;
        SeslDatePicker seslDatePicker = c0165g.f4516d;
        H h5 = new H(seslDatePicker.f4401d);
        h5.setClickable(true);
        h5.f4202b0 = seslDatePicker;
        h5.g0 = seslDatePicker;
        String strZ = seslDatePicker.f4390O;
        if (strZ == null) {
            strZ = x.Z();
        }
        for (int i7 = 0; i7 < 7; i7++) {
            char cCharAt = strZ.charAt(i7);
            int i8 = (i7 + 2) % 7;
            int[] iArr = h5.f4182B;
            if (cCharAt == 'R') {
                iArr[i8] = h5.f4229x;
            } else if (cCharAt == 'B') {
                iArr[i8] = h5.f4230y;
            } else {
                iArr[i8] = h5.f4228w;
            }
        }
        int minMonth = seslDatePicker.getMinMonth() + i5;
        int minYear = (minMonth / 12) + seslDatePicker.getMinYear();
        int i9 = minMonth % 12;
        Calendar calendar = seslDatePicker.f4415m;
        int i10 = (calendar.get(1) == minYear && calendar.get(2) == i9) ? calendar.get(5) : -1;
        Calendar calendar2 = seslDatePicker.n;
        int i11 = calendar2.get(1);
        int i12 = calendar2.get(2);
        int i13 = calendar2.get(5);
        Calendar calendar3 = seslDatePicker.f4416o;
        int i14 = calendar3.get(1);
        int i15 = calendar3.get(2);
        int i16 = calendar3.get(5);
        int firstDayOfWeek = seslDatePicker.getFirstDayOfWeek();
        seslDatePicker.getClass();
        seslDatePicker.getClass();
        h5.l(i10, i9, minYear, firstDayOfWeek, 1, 31, seslDatePicker.f4419q, seslDatePicker.f4420r, i11, i12, i13, 0, i14, i15, i16, 0, seslDatePicker.f4388M);
        if (i5 == 0) {
            h5.f4212h0 = true;
        }
        if (i5 == seslDatePicker.f4387L - 1) {
            h5.f4214i0 = true;
        }
        seslDatePicker.f4426x = 7;
        seslDatePicker.f4427y = h5.f4186G;
        addView(h5, 0);
        c0165g.f4515c.put(i5, h5);
        eVar.f665a = h5;
        this.f5007g.getClass();
        eVar.f668d = 1.0f;
        ArrayList arrayList = this.f5003d;
        if (i6 < 0 || i6 >= arrayList.size()) {
            arrayList.add(eVar);
        } else {
            arrayList.add(i6, eVar);
        }
        return eVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i5, int i6) {
        e eVarG;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i7 = 0; i7 < getChildCount(); i7++) {
                View childAt = getChildAt(i7);
                if (childAt.getVisibility() == 0 && (eVarG = g(childAt)) != null && eVarG.f666b == this.f5008h) {
                    childAt.addFocusables(arrayList, i5, i6);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i6 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList arrayList) {
        e eVarG;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() == 0 && (eVarG = g(childAt)) != null && eVarG.f666b == this.f5008h) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i5, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateDefaultLayoutParams();
        }
        f fVar = (f) layoutParams;
        if (fVar != null) {
            boolean z4 = fVar.f670a | (view.getClass().getAnnotation(d.class) != null);
            fVar.f670a = z4;
            if (!this.f5019t) {
                super.addView(view, i5, layoutParams);
            } else {
                if (z4) {
                    throw new IllegalStateException("Cannot add pager decor view during layout");
                }
                fVar.f673d = true;
                addViewInLayout(view, i5, layoutParams);
            }
        }
    }

    public final boolean b(int i5) throws Resources.NotFoundException {
        boolean zRequestFocus;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        } else if (viewFindFocus != null) {
            for (ViewParent parent = viewFindFocus.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                if (parent == this) {
                    break;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append(viewFindFocus.getClass().getSimpleName());
            for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                sb.append(" => ");
                sb.append(parent2.getClass().getSimpleName());
            }
            Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i5);
        boolean zL = false;
        if (viewFindNextFocus != null && viewFindNextFocus != viewFindFocus) {
            Rect rect = this.f;
            if (i5 == 17) {
                int i6 = f(rect, viewFindNextFocus).left;
                int i7 = f(rect, viewFindFocus).left;
                if (viewFindFocus == null || i6 < i7) {
                    zRequestFocus = viewFindNextFocus.requestFocus();
                    zL = zRequestFocus;
                } else {
                    int i8 = this.f5008h;
                    if (i8 > 0) {
                        u(i8 + this.f5004d0, true);
                        zL = true;
                    }
                }
            } else if (i5 == 66) {
                zRequestFocus = (viewFindFocus == null || f(rect, viewFindNextFocus).left > f(rect, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : l();
                zL = zRequestFocus;
            }
        } else if (i5 == 17 || i5 == 1) {
            int i9 = this.f5008h;
            if (i9 > 0) {
                u(i9 + this.f5004d0, true);
                zL = true;
            }
        } else if (i5 == 66 || i5 == 2) {
            zL = l();
        }
        if (zL) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i5));
        }
        return zL;
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i5) {
        if (this.f5007g == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i5 < 0 ? scrollX > ((int) (((float) clientWidth) * this.f5017r)) : i5 > 0 && scrollX < ((int) (((float) clientWidth) * this.f5018s));
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() throws Resources.NotFoundException {
        this.f5012l = true;
        Scroller scroller = this.f5011k;
        if (scroller.isFinished() || !scroller.computeScrollOffset()) {
            d(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = scroller.getCurrX();
        int currY = scroller.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!m(currX)) {
                scroller.abortAnimation();
                scrollTo(0, currY);
            }
        }
        WeakHashMap weakHashMap = Q.f940a;
        postInvalidateOnAnimation();
    }

    public final void d(boolean z4) throws Resources.NotFoundException {
        Scroller scroller = this.f5011k;
        boolean z5 = this.f4998W == 2;
        if (z5) {
            setScrollingCacheEnabled(false);
            if (!scroller.isFinished()) {
                scroller.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = scroller.getCurrX();
                int currY = scroller.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m(currX);
                    }
                }
            }
        }
        this.f5021v = false;
        int i5 = 0;
        while (true) {
            ArrayList arrayList = this.f5003d;
            if (i5 >= arrayList.size()) {
                break;
            }
            e eVar = (e) arrayList.get(i5);
            if (eVar.f667c) {
                eVar.f667c = false;
                z5 = true;
            }
            i5++;
        }
        if (z5) {
            h hVar = this.f4997V;
            if (!z4) {
                hVar.run();
            } else {
                WeakHashMap weakHashMap = Q.f940a;
                postOnAnimation(hVar);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0061  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) throws Resources.NotFoundException {
        boolean zB;
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        if (keyEvent.getAction() != 0) {
            zB = false;
        } else {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 21) {
                if (keyCode == 22) {
                    zB = keyEvent.hasModifiers(2) ? l() : b(66);
                } else if (keyCode == 61) {
                    if (keyEvent.hasNoModifiers()) {
                        zB = b(2);
                    } else if (keyEvent.hasModifiers(1)) {
                        zB = b(1);
                    }
                }
            } else if (keyEvent.hasModifiers(2)) {
                int i5 = this.f5008h;
                if (i5 > 0) {
                    u(i5 + this.f5004d0, true);
                    zB = true;
                }
            } else {
                zB = b(17);
            }
        }
        return zB;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        e eVarG;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() == 0 && (eVarG = g(childAt)) != null && eVarG.f666b == this.f5008h && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        a aVar;
        EdgeEffect edgeEffect = this.f4992O;
        EdgeEffect edgeEffect2 = this.f4991N;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (aVar = this.f5007g) != null && aVar.b() > 1)) {
            if (!edgeEffect2.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                if (t()) {
                    canvas.translate(getPaddingTop() + (-height), ((-(this.f5018s + 1.0f)) * width) + 1.6777216E7f);
                } else {
                    canvas.translate(getPaddingTop() + (-height), this.f5017r * width);
                }
                edgeEffect2.setSize(height, width);
                zDraw = edgeEffect2.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!edgeEffect.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                if (t()) {
                    canvas.translate(-getPaddingTop(), (this.f5017r * width2) - 1.6777216E7f);
                } else {
                    canvas.translate(-getPaddingTop(), (-(this.f5018s + 1.0f)) * width2);
                }
                edgeEffect.setSize(height2, width2);
                zDraw |= edgeEffect.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            edgeEffect2.finish();
            edgeEffect.finish();
        }
        if (zDraw) {
            WeakHashMap weakHashMap = Q.f940a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f5014o;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public final void e() {
        int iB = this.f5007g.b();
        this.f5001c = iB;
        ArrayList arrayList = this.f5003d;
        boolean z4 = arrayList.size() < (this.f5022w * 2) + 1 && arrayList.size() < iB;
        int iMax = this.f5008h;
        boolean z5 = false;
        while (arrayList.size() > 0) {
            e eVar = (e) arrayList.get(0);
            a aVar = this.f5007g;
            H h5 = eVar.f665a;
            aVar.getClass();
            arrayList.remove(0);
            if (!z5) {
                a aVar2 = this.f5007g;
                aVar2.getClass();
                PathInterpolator pathInterpolator = SeslDatePicker.u0;
                ((C0165g) aVar2).f4516d.getClass();
                z5 = true;
            }
            this.f5007g.a(this, eVar.f666b, eVar.f665a);
            int i5 = this.f5008h;
            if (i5 == eVar.f666b) {
                iMax = Math.max(0, Math.min(i5, iB - 1));
            }
            z4 = true;
        }
        if (z5) {
            a aVar3 = this.f5007g;
            aVar3.getClass();
            PathInterpolator pathInterpolator2 = SeslDatePicker.u0;
            ((C0165g) aVar3).f4516d.getClass();
        }
        Collections.sort(arrayList, g0);
        if (z4) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                f fVar = (f) getChildAt(i6).getLayoutParams();
                if (!fVar.f670a) {
                    fVar.f672c = 0.0f;
                }
            }
            v(iMax, 0, false, true);
            requestLayout();
        }
    }

    public final Rect f(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    public final e g(View view) {
        int i5 = 0;
        while (true) {
            ArrayList arrayList = this.f5003d;
            if (i5 >= arrayList.size()) {
                return null;
            }
            e eVar = (e) arrayList.get(i5);
            a aVar = this.f5007g;
            H h5 = eVar.f665a;
            ((C0165g) aVar).getClass();
            if (view != null && view.equals(h5)) {
                return eVar;
            }
            i5++;
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        f fVar = new f(-1, -1);
        fVar.f672c = 0.0f;
        return fVar;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public a getAdapter() {
        return this.f5007g;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i5, int i6) {
        throw null;
    }

    public int getCurrentItem() {
        return this.f5008h;
    }

    public int getOffscreenPageLimit() {
        return this.f5022w;
    }

    public int getPageMargin() {
        return this.n;
    }

    public final e h() {
        e eVar;
        int i5;
        int scrollStart = getScrollStart();
        int clientWidth = getClientWidth();
        float f = 0.0f;
        float f5 = clientWidth > 0 ? scrollStart / clientWidth : 0.0f;
        float f6 = clientWidth > 0 ? this.n / clientWidth : 0.0f;
        int i6 = 0;
        boolean z4 = true;
        e eVar2 = null;
        int i7 = -1;
        float f7 = 0.0f;
        while (true) {
            ArrayList arrayList = this.f5003d;
            if (i6 >= arrayList.size()) {
                return eVar2;
            }
            e eVar3 = (e) arrayList.get(i6);
            if (z4 || eVar3.f666b == (i5 = i7 + 1)) {
                eVar = eVar3;
            } else {
                float f8 = f + f7 + f6;
                e eVar4 = this.f5005e;
                eVar4.f669e = f8;
                eVar4.f666b = i5;
                this.f5007g.getClass();
                eVar4.f668d = 1.0f;
                i6--;
                eVar = eVar4;
            }
            f = eVar.f669e;
            float f9 = eVar.f668d + f + f6;
            if (!z4 && f5 < f) {
                return eVar2;
            }
            if (f5 < f9 || i6 == arrayList.size() - 1) {
                break;
            }
            int i8 = eVar.f666b;
            float f10 = eVar.f668d;
            i6++;
            z4 = false;
            e eVar5 = eVar;
            i7 = i8;
            f7 = f10;
            eVar2 = eVar5;
        }
        return eVar;
    }

    public final e i(int i5) {
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f5003d;
            if (i6 >= arrayList.size()) {
                return null;
            }
            e eVar = (e) arrayList.get(i6);
            if (eVar.f666b == i5) {
                return eVar;
            }
            i6++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j() {
        int iMax;
        int width;
        int left;
        if (this.f4995T > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.f670a) {
                    int i6 = fVar.f671b & 7;
                    if (i6 != 1) {
                        if (i6 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i6 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    } else {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i7 = iMax;
                    width = paddingLeft;
                    paddingLeft = i7;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                    }
                    paddingLeft = width;
                }
            }
        }
        this.f4994R = true;
    }

    public final void k(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f4985H) {
            int i5 = actionIndex == 0 ? 1 : 0;
            this.f4982D = motionEvent.getX(i5);
            this.f4985H = motionEvent.getPointerId(i5);
            VelocityTracker velocityTracker = this.f4986I;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean l() throws Resources.NotFoundException {
        a aVar = this.f5007g;
        if (aVar == null || this.f5008h >= aVar.b() - 1) {
            return false;
        }
        u(this.f5008h - this.f5004d0, true);
        return true;
    }

    public final boolean m(int i5) {
        if (this.f5003d.size() == 0) {
            if (this.f4993Q) {
                return false;
            }
            this.f4994R = false;
            j();
            if (this.f4994R) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        t();
        e eVarH = h();
        getClientWidth();
        int i6 = eVarH.f666b;
        this.f4994R = false;
        j();
        if (this.f4994R) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean n(float f, float f5) {
        EdgeEffect edgeEffect;
        EdgeEffect edgeEffect2;
        float f6;
        float f7;
        float f8;
        boolean z4;
        float f9;
        float f10;
        float f11;
        if (t()) {
            this.f5000b0 = false;
        }
        if (t()) {
            edgeEffect = this.f4992O;
            edgeEffect2 = this.f4991N;
        } else {
            edgeEffect = this.f4991N;
            edgeEffect2 = this.f4992O;
        }
        float f12 = this.f4982D - f;
        this.f4982D = f;
        float height = f5 / getHeight();
        float width = f12 / getWidth();
        float fB = (L2.b.n(this.f4991N) != 0.0f ? -L2.b.B(this.f4991N, -width, 1.0f - height) : L2.b.n(this.f4992O) != 0.0f ? L2.b.B(this.f4992O, width, height) : 0.0f) * getWidth();
        float f13 = f12 - fB;
        boolean z5 = true;
        boolean z6 = fB != 0.0f;
        if (Math.abs(f13) < 1.0E-4f) {
            return z6;
        }
        float scrollX = getScrollX() + f13;
        if (t()) {
            scrollX = 1.6777216E7f - scrollX;
        }
        int clientWidth = getClientWidth();
        ArrayList arrayList = this.f5003d;
        e eVar = (e) arrayList.get(0);
        e eVar2 = (e) arrayList.get(arrayList.size() - 1);
        boolean z7 = eVar.f666b == 0;
        if (!z7) {
            f6 = eVar.f669e;
            f7 = clientWidth;
        } else {
            if (t()) {
                float f14 = clientWidth;
                f8 = (this.f5017r * f14) + f14;
                z4 = eVar2.f666b == this.f5007g.b() - 1;
                if (z4) {
                    f9 = eVar2.f669e;
                    f10 = clientWidth;
                } else {
                    if (t()) {
                        float f15 = clientWidth;
                        f11 = (this.f5018s * f15) + f15;
                        if (scrollX < f8) {
                            if (z7) {
                                L2.b.B(edgeEffect, (f8 - scrollX) / clientWidth, 1.0f - (f5 / getHeight()));
                            } else {
                                z5 = z6;
                            }
                            z6 = z5;
                            scrollX = f8;
                        } else if (scrollX > f11) {
                            if (z4) {
                                L2.b.B(edgeEffect2, (scrollX - f11) / clientWidth, f5 / getHeight());
                            } else {
                                z5 = z6;
                            }
                            z6 = z5;
                            scrollX = f11;
                        }
                        if (t()) {
                            scrollX = 1.6777216E7f - scrollX;
                        }
                        int i5 = (int) scrollX;
                        this.f4982D = (scrollX - i5) + this.f4982D;
                        scrollTo(i5, getScrollY());
                        m(i5);
                        return z6;
                    }
                    f9 = clientWidth;
                    f10 = this.f5018s;
                }
                f11 = f10 * f9;
                if (scrollX < f8) {
                }
                if (t()) {
                }
                int i52 = (int) scrollX;
                this.f4982D = (scrollX - i52) + this.f4982D;
                scrollTo(i52, getScrollY());
                m(i52);
                return z6;
            }
            f6 = clientWidth;
            f7 = this.f5017r;
        }
        f8 = f7 * f6;
        if (eVar2.f666b == this.f5007g.b() - 1) {
        }
        if (z4) {
        }
        f11 = f10 * f9;
        if (scrollX < f8) {
        }
        if (t()) {
        }
        int i522 = (int) scrollX;
        this.f4982D = (scrollX - i522) + this.f4982D;
        scrollTo(i522, getScrollY());
        m(i522);
        return z6;
    }

    public final void o() {
        p(this.f5008h);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f4993Q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f4997V);
        Scroller scroller = this.f5011k;
        if (scroller != null && !scroller.isFinished()) {
            this.f5011k.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i5;
        float f;
        ArrayList arrayList;
        float f5;
        super.onDraw(canvas);
        if (this.n <= 0 || this.f5014o == null) {
            return;
        }
        ArrayList arrayList2 = this.f5003d;
        if (arrayList2.size() <= 0 || this.f5007g == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f6 = this.n / width;
        int i6 = 0;
        e eVar = (e) arrayList2.get(0);
        float f7 = eVar.f669e;
        int size = arrayList2.size();
        int i7 = eVar.f666b;
        int i8 = ((e) arrayList2.get(size - 1)).f666b;
        while (i7 < i8) {
            while (true) {
                i5 = eVar.f666b;
                if (i7 <= i5 || i6 >= size) {
                    break;
                }
                i6++;
                eVar = (e) arrayList2.get(i6);
            }
            if (i7 == i5) {
                f = t() ? 1.6777216E7f - eVar.f669e : (eVar.f669e + eVar.f668d) * width;
                f7 = eVar.f669e + eVar.f668d + f6;
            } else {
                this.f5007g.getClass();
                f = t() ? 1.6777216E7f - f7 : (f7 + 1.0f) * width;
                f7 = 1.0f + f6 + f7;
            }
            if (this.n + f > scrollX) {
                arrayList = arrayList2;
                f5 = f6;
                this.f5014o.setBounds(Math.round(f), this.f5015p, Math.round(this.n + f), this.f5016q);
                this.f5014o.draw(canvas);
            } else {
                arrayList = arrayList2;
                f5 = f6;
            }
            if (f > scrollX + r3) {
                return;
            }
            i7++;
            arrayList2 = arrayList;
            f6 = f5;
        }
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        if (this.f4999a0 && (motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue > 0.0f) {
                u(this.f5008h - 1, true);
                return true;
            }
            if (axisValue < 0.0f) {
                u(this.f5008h + 1, true);
                return true;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        int iFindPointerIndex;
        EdgeEffect edgeEffect = this.f4992O;
        EdgeEffect edgeEffect2 = this.f4991N;
        int i5 = this.f4980B;
        Scroller scroller = this.f5011k;
        int action = motionEvent.getAction() & CustomDeviceManager.CALL_SCREEN_ALL;
        if (action == 3 || action == 1) {
            r();
            return false;
        }
        if (action != 0) {
            if (this.f5023x) {
                return true;
            }
            if (this.f5024y) {
                return false;
            }
        }
        if (action == 0) {
            float x4 = motionEvent.getX();
            this.f4983F = x4;
            this.f4982D = x4;
            float y3 = motionEvent.getY();
            this.f4984G = y3;
            this.E = y3;
            this.f4985H = motionEvent.getPointerId(0);
            this.f5024y = false;
            this.f5012l = true;
            scroller.computeScrollOffset();
            if (this.f4998W == 2 && Math.abs(scroller.getFinalX() - scroller.getCurrX()) > this.f4990M) {
                scroller.abortAnimation();
                this.f5021v = false;
                o();
                this.f5023x = true;
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                setScrollState(1);
            } else if (L2.b.n(edgeEffect2) == 0.0f && L2.b.n(edgeEffect) == 0.0f) {
                d(false);
                this.f5023x = false;
            } else {
                this.f5023x = true;
                setScrollState(1);
                if (L2.b.n(edgeEffect2) != 0.0f) {
                    L2.b.B(edgeEffect2, 0.0f, 1.0f - (this.E / getHeight()));
                }
                if (L2.b.n(edgeEffect) != 0.0f) {
                    L2.b.B(edgeEffect, 0.0f, this.E / getHeight());
                }
            }
        } else if (action == 2) {
            int i6 = this.f4985H;
            if (i6 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i6)) != -1) {
                float x5 = motionEvent.getX(iFindPointerIndex);
                float f = x5 - this.f4982D;
                float fAbs = Math.abs(f);
                float y4 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y4 - this.f4984G);
                if (f != 0.0f) {
                    float f5 = this.f4982D;
                    if ((this.f4981C || ((f5 >= this.f4979A || f <= 0.0f) && (f5 <= getWidth() - this.f4979A || f >= 0.0f))) && c((int) f, (int) x5, (int) y4, this, false)) {
                        this.f4982D = x5;
                        this.E = y4;
                        this.f5024y = true;
                        return false;
                    }
                }
                float f6 = i5;
                if (fAbs > f6 && fAbs * this.f5002c0 > fAbs2) {
                    this.f5023x = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    setScrollState(1);
                    this.f4982D = f > 0.0f ? this.f4983F + i5 : this.f4983F - i5;
                    this.E = y4;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > f6) {
                    this.f5024y = true;
                }
                if (this.f5023x && n(x5, y4)) {
                    WeakHashMap weakHashMap = Q.f940a;
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            k(motionEvent);
        }
        if (this.f4986I == null) {
            this.f4986I = VelocityTracker.obtain();
        }
        this.f4986I.addMovement(motionEvent);
        return this.f5023x;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) throws Resources.NotFoundException {
        boolean z5;
        e eVarG;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i9 = i7 - i5;
        int i10 = i8 - i6;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.f670a) {
                    int i13 = fVar.f671b;
                    int i14 = i13 & 7;
                    int i15 = i13 & 112;
                    if (i14 != 1) {
                        if (i14 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i14 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i9 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i15 == 16) {
                            if (i15 == 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i15 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i10 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i16 = paddingLeft + scrollX;
                            childAt.layout(i16, paddingTop, childAt.getMeasuredWidth() + i16, childAt.getMeasuredHeight() + paddingTop);
                            i11++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = Math.max((i10 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i17 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i17;
                        int i162 = paddingLeft + scrollX;
                        childAt.layout(i162, paddingTop, childAt.getMeasuredWidth() + i162, childAt.getMeasuredHeight() + paddingTop);
                        i11++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = Math.max((i9 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i18 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i18;
                    if (i15 == 16) {
                    }
                    int i172 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i172;
                    int i1622 = paddingLeft + scrollX;
                    childAt.layout(i1622, paddingTop, childAt.getMeasuredWidth() + i1622, childAt.getMeasuredHeight() + paddingTop);
                    i11++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i19 = (i9 - paddingLeft) - paddingRight;
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt2 = getChildAt(i20);
            if (childAt2.getVisibility() != 8) {
                f fVar2 = (f) childAt2.getLayoutParams();
                if (!fVar2.f670a && (eVarG = g(childAt2)) != null) {
                    float f = i19;
                    int i21 = (int) (eVarG.f669e * f);
                    int measuredWidth2 = t() ? ((IDMEnablerInterface.FLAG_RECEIVER_INCLUDE_BACKGROUND - paddingRight) - i21) - childAt2.getMeasuredWidth() : paddingLeft + i21;
                    if (fVar2.f673d) {
                        fVar2.f673d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f * fVar2.f672c), 1073741824), View.MeasureSpec.makeMeasureSpec((i10 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(measuredWidth2, paddingTop, childAt2.getMeasuredWidth() + measuredWidth2, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.f5015p = paddingTop;
        this.f5016q = i10 - paddingBottom;
        this.f4995T = i11;
        if (this.f4993Q || this.f5000b0) {
            z5 = false;
            s(this.f5008h, 0, false, false);
            this.f5000b0 = false;
        } else {
            z5 = false;
        }
        this.f4993Q = z5;
    }

    @Override // android.view.View
    public final void onMeasure(int i5, int i6) {
        f fVar;
        f fVar2;
        int i7;
        setMeasuredDimension(View.getDefaultSize(0, i5), View.getDefaultSize(0, i6));
        int measuredWidth = getMeasuredWidth();
        this.f4979A = Math.min(measuredWidth / 10, this.f5025z);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i8 = 0;
        while (true) {
            boolean z4 = true;
            int i9 = 1073741824;
            if (i8 >= childCount) {
                break;
            }
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8 && (fVar2 = (f) childAt.getLayoutParams()) != null && fVar2.f670a) {
                int i10 = fVar2.f671b;
                int i11 = i10 & 7;
                int i12 = i10 & 112;
                boolean z5 = i12 == 48 || i12 == 80;
                if (i11 != 3 && i11 != 5) {
                    z4 = false;
                }
                int i13 = Integer.MIN_VALUE;
                if (z5) {
                    i7 = Integer.MIN_VALUE;
                    i13 = 1073741824;
                } else {
                    i7 = z4 ? 1073741824 : Integer.MIN_VALUE;
                }
                int i14 = ((ViewGroup.LayoutParams) fVar2).width;
                if (i14 != -2) {
                    if (i14 == -1) {
                        i14 = paddingLeft;
                    }
                    i13 = 1073741824;
                } else {
                    i14 = paddingLeft;
                }
                int i15 = ((ViewGroup.LayoutParams) fVar2).height;
                if (i15 == -2) {
                    i15 = measuredHeight;
                    i9 = i7;
                } else if (i15 == -1) {
                    i15 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i14, i13), View.MeasureSpec.makeMeasureSpec(i15, i9));
                if (z5) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z4) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i8++;
        }
        View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.f5019t = true;
        o();
        this.f5019t = false;
        int childCount2 = getChildCount();
        for (int i16 = 0; i16 < childCount2; i16++) {
            View childAt2 = getChildAt(i16);
            if (childAt2.getVisibility() != 8 && (fVar = (f) childAt2.getLayoutParams()) != null && !fVar.f670a) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * fVar.f672c), 1073741824), iMakeMeasureSpec);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i5, Rect rect) {
        int i6;
        int i7;
        int i8;
        e eVarG;
        int childCount = getChildCount();
        if ((i5 & 2) != 0) {
            i7 = childCount;
            i6 = 0;
            i8 = 1;
        } else {
            i6 = childCount - 1;
            i7 = -1;
            i8 = -1;
        }
        while (i6 != i7) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() == 0 && (eVarG = g(childAt)) != null && eVarG.f666b == this.f5008h && childAt.requestFocus(i5, rect)) {
                return true;
            }
            i6 += i8;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) throws Resources.NotFoundException {
        if (!(parcelable instanceof i)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        i iVar = (i) parcelable;
        super.onRestoreInstanceState(iVar.f2270c);
        if (this.f5007g != null) {
            v(iVar.f676e, 0, false, true);
        } else {
            this.f5009i = iVar.f676e;
            this.f5010j = iVar.f;
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i5) {
        super.onRtlPropertiesChanged(i5);
        if (this.f5006e0) {
            this.f5004d0 = i5 == 0 ? -1 : 1;
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        i iVar = new i(super.onSaveInstanceState());
        iVar.f676e = this.f5008h;
        a aVar = this.f5007g;
        if (aVar != null) {
            aVar.getClass();
            iVar.f = null;
        }
        return iVar;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i5, int i6, int i7, int i8) throws Resources.NotFoundException {
        super.onSizeChanged(i5, i6, i7, i8);
        if (i5 != i7) {
            int i9 = this.n;
            q(i5, i7, i9, i9);
            if (this.n > 0) {
                v(this.f5008h, 0, false, true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00e5  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        a aVar;
        int iN;
        EdgeEffect edgeEffect = this.f4992O;
        EdgeEffect edgeEffect2 = this.f4991N;
        int i5 = this.f4980B;
        boolean zR = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (aVar = this.f5007g) == null || aVar.b() == 0) {
            return false;
        }
        if (this.f4986I == null) {
            this.f4986I = VelocityTracker.obtain();
        }
        this.f4986I.addMovement(motionEvent);
        int action = motionEvent.getAction() & CustomDeviceManager.CALL_SCREEN_ALL;
        if (action == 0) {
            this.f5011k.abortAnimation();
            this.f5021v = false;
            o();
            float x4 = motionEvent.getX();
            this.f4983F = x4;
            this.f4982D = x4;
            float y3 = motionEvent.getY();
            this.f4984G = y3;
            this.E = y3;
            this.f4985H = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.f4982D = motionEvent.getX(actionIndex);
                        this.f4985H = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        k(motionEvent);
                        int iFindPointerIndex = motionEvent.findPointerIndex(this.f4985H);
                        if (iFindPointerIndex == -1) {
                            zR = r();
                        } else {
                            this.f4982D = motionEvent.getX(iFindPointerIndex);
                        }
                    }
                } else if (this.f5023x) {
                    s(this.f5008h, 0, true, false);
                    zR = r();
                }
            } else if (!this.f5023x) {
                int iFindPointerIndex2 = motionEvent.findPointerIndex(this.f4985H);
                if (iFindPointerIndex2 == -1) {
                    zR = r();
                } else {
                    float x5 = motionEvent.getX(iFindPointerIndex2);
                    float fAbs = Math.abs(x5 - this.f4982D);
                    float y4 = motionEvent.getY(iFindPointerIndex2);
                    float fAbs2 = Math.abs(y4 - this.E);
                    if (fAbs > i5 && fAbs > fAbs2) {
                        this.f5023x = true;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        float f = this.f4983F;
                        this.f4982D = x5 - f > 0.0f ? f + i5 : f - i5;
                        this.E = y4;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.f5023x) {
                    }
                }
            } else if (this.f5023x) {
                int iFindPointerIndex3 = motionEvent.findPointerIndex(this.f4985H);
                zR = iFindPointerIndex3 == -1 ? r() : n(motionEvent.getX(iFindPointerIndex3), motionEvent.getY(iFindPointerIndex3));
            }
        } else if (this.f5023x) {
            VelocityTracker velocityTracker = this.f4986I;
            velocityTracker.computeCurrentVelocity(1000, this.f4988K);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f4985H);
            this.f5021v = true;
            float clientWidth = getClientWidth();
            float scrollStart = getScrollStart() / clientWidth;
            e eVarH = h();
            float f5 = this.n / clientWidth;
            int i6 = eVarH.f666b;
            float f6 = t() ? (eVarH.f669e - scrollStart) / (eVarH.f668d + f5) : (scrollStart - eVarH.f669e) / (eVarH.f668d + f5);
            int iFindPointerIndex4 = motionEvent.findPointerIndex(this.f4985H);
            if (iFindPointerIndex4 == -1) {
                zR = r();
            } else {
                if (Math.abs((int) (motionEvent.getX(iFindPointerIndex4) - this.f4983F)) <= this.f4989L || Math.abs(xVelocity) <= this.f4987J || L2.b.n(edgeEffect2) != 0.0f || L2.b.n(edgeEffect) != 0.0f) {
                    iN = i6 - (this.f5004d0 * ((int) (f6 + (i6 >= this.f5008h ? 0.4f : 0.6f))));
                } else {
                    iN = i6 - (xVelocity > 0 ? 0 : this.f5004d0);
                }
                ArrayList arrayList = this.f5003d;
                if (arrayList.size() > 0) {
                    iN = j.n(iN, ((e) arrayList.get(0)).f666b, ((e) arrayList.get(arrayList.size() - 1)).f666b);
                }
                v(iN, xVelocity, true, true);
                zR = r();
                if (iN == i6 && zR) {
                    if (L2.b.n(edgeEffect) != 0.0f) {
                        edgeEffect.onAbsorb(-xVelocity);
                    } else if (L2.b.n(edgeEffect2) != 0.0f) {
                        edgeEffect2.onAbsorb(xVelocity);
                    }
                }
            }
        }
        if (zR) {
            WeakHashMap weakHashMap = Q.f940a;
            postInvalidateOnAnimation();
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0073, code lost:
    
        r10 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d1 A[PHI: r8 r11 r12
      0x00d1: PHI (r8v15 int) = (r8v14 int), (r8v4 int), (r8v17 int) binds: [B:65:0x00f2, B:62:0x00de, B:55:0x00c8] A[DONT_GENERATE, DONT_INLINE]
      0x00d1: PHI (r11v39 float) = (r11v37 float), (r11v38 float), (r11v2 float) binds: [B:65:0x00f2, B:62:0x00de, B:55:0x00c8] A[DONT_GENERATE, DONT_INLINE]
      0x00d1: PHI (r12v27 int) = (r12v1 int), (r12v26 int), (r12v29 int) binds: [B:65:0x00f2, B:62:0x00de, B:55:0x00c8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0154 A[PHI: r3 r13
      0x0154: PHI (r3v20 float) = (r3v18 float), (r3v19 float), (r3v17 float) binds: [B:99:0x017b, B:96:0x0165, B:89:0x014b] A[DONT_GENERATE, DONT_INLINE]
      0x0154: PHI (r13v25 int) = (r13v23 int), (r13v24 int), (r13v22 int) binds: [B:99:0x017b, B:96:0x0165, B:89:0x014b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(int i5) throws Resources.NotFoundException {
        e eVarI;
        String hexString;
        ArrayList arrayList;
        e eVarA;
        e eVarG;
        e eVarG2;
        int i6;
        int i7;
        e eVar;
        e eVar2;
        int i8 = this.f5008h;
        if (i8 != i5) {
            i = this.f5006e0 ? i8 < i5 ? 66 : 17 : 2;
            eVarI = i(i8);
            this.f5008h = i5;
        } else {
            eVarI = null;
        }
        if (this.f5007g == null || this.f5021v || getWindowToken() == null) {
            return;
        }
        a aVar = this.f5007g;
        aVar.getClass();
        PathInterpolator pathInterpolator = SeslDatePicker.u0;
        ((C0165g) aVar).f4516d.getClass();
        int i9 = this.f5022w;
        int iMax = Math.max(0, this.f5008h - i9);
        int iB = this.f5007g.b();
        int iMin = Math.min(iB - 1, this.f5008h + i9);
        if (iB != this.f5001c) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources.NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.f5001c + ", found: " + iB + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.f5007g.getClass());
        }
        int i10 = 0;
        while (true) {
            arrayList = this.f5003d;
            if (i10 >= arrayList.size()) {
                break;
            }
            eVarA = (e) arrayList.get(i10);
            int i11 = eVarA.f666b;
            int i12 = this.f5008h;
            if (i11 >= i12) {
                if (i11 != i12) {
                    break;
                }
            } else {
                i10++;
            }
        }
        if (eVarA == null && iB > 0) {
            eVarA = a(this.f5008h, i10);
        }
        if (eVarA != null) {
            int i13 = i10 - 1;
            e eVar3 = i13 >= 0 ? (e) arrayList.get(i13) : null;
            int clientWidth = getClientWidth();
            float paddingLeft = clientWidth <= 0 ? 0.0f : (getPaddingLeft() / clientWidth) + (2.0f - eVarA.f668d);
            float f = 0.0f;
            for (int i14 = this.f5008h - 1; i14 >= 0; i14--) {
                if (f >= paddingLeft && i14 < iMax) {
                    if (eVar3 == null) {
                        break;
                    }
                    if (i14 == eVar3.f666b && !eVar3.f667c) {
                        arrayList.remove(i13);
                        this.f5007g.a(this, i14, eVar3.f665a);
                        i13--;
                        i10--;
                        if (i13 >= 0) {
                            eVar3 = (e) arrayList.get(i13);
                        }
                    }
                } else if (eVar3 == null || i14 != eVar3.f666b) {
                    f += a(i14, i13 + 1).f668d;
                    i10++;
                    eVar3 = i13 >= 0 ? (e) arrayList.get(i13) : null;
                } else {
                    f += eVar3.f668d;
                    i13--;
                    if (i13 >= 0) {
                        eVar3 = (e) arrayList.get(i13);
                    }
                }
            }
            float f5 = eVarA.f668d;
            int i15 = i10 + 1;
            if (f5 < 2.0f) {
                e eVar4 = i15 < arrayList.size() ? (e) arrayList.get(i15) : null;
                float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                int i16 = i15;
                for (int i17 = this.f5008h + 1; i17 < iB; i17++) {
                    if (f5 >= paddingRight && i17 > iMin) {
                        if (eVar4 == null) {
                            break;
                        }
                        if (i17 == eVar4.f666b && !eVar4.f667c) {
                            arrayList.remove(i16);
                            this.f5007g.a(this, i17, eVar4.f665a);
                            if (i16 < arrayList.size()) {
                                eVar4 = (e) arrayList.get(i16);
                            }
                        }
                    } else if (eVar4 == null || i17 != eVar4.f666b) {
                        e eVarA2 = a(i17, i16);
                        i16++;
                        f5 += eVarA2.f668d;
                        eVar4 = i16 < arrayList.size() ? (e) arrayList.get(i16) : null;
                    } else {
                        f5 += eVar4.f668d;
                        i16++;
                        if (i16 < arrayList.size()) {
                            eVar4 = (e) arrayList.get(i16);
                        }
                    }
                }
            }
            int iB2 = this.f5007g.b();
            int clientWidth2 = getClientWidth();
            float f6 = clientWidth2 > 0 ? this.n / clientWidth2 : 0.0f;
            if (eVarI != null) {
                int i18 = eVarI.f666b;
                int i19 = eVarA.f666b;
                if (i18 < i19) {
                    float f7 = eVarI.f669e + eVarI.f668d + f6;
                    int i20 = i18 + 1;
                    int i21 = 0;
                    while (i20 <= eVarA.f666b && i21 < arrayList.size()) {
                        Object obj = arrayList.get(i21);
                        while (true) {
                            eVar2 = (e) obj;
                            if (i20 <= eVar2.f666b || i21 >= arrayList.size() - 1) {
                                break;
                            }
                            i21++;
                            obj = arrayList.get(i21);
                        }
                        while (i20 < eVar2.f666b) {
                            this.f5007g.getClass();
                            f7 += 1.0f + f6;
                            i20++;
                        }
                        eVar2.f669e = f7;
                        f7 += eVar2.f668d + f6;
                        i20++;
                    }
                } else if (i18 > i19) {
                    int size = arrayList.size() - 1;
                    float f8 = eVarI.f669e;
                    while (true) {
                        i18--;
                        if (i18 < eVarA.f666b || size < 0) {
                            break;
                        }
                        Object obj2 = arrayList.get(size);
                        while (true) {
                            eVar = (e) obj2;
                            if (i18 >= eVar.f666b || size <= 0) {
                                break;
                            }
                            size--;
                            obj2 = arrayList.get(size);
                        }
                        while (i18 > eVar.f666b) {
                            this.f5007g.getClass();
                            f8 -= 1.0f + f6;
                            i18--;
                        }
                        f8 -= eVar.f668d + f6;
                        eVar.f669e = f8;
                    }
                }
            }
            int size2 = arrayList.size();
            float f9 = eVarA.f669e;
            int i22 = eVarA.f666b;
            int i23 = i22 - 1;
            this.f5017r = i22 == 0 ? f9 : -3.4028235E38f;
            int i24 = iB2 - 1;
            this.f5018s = i22 == i24 ? (eVarA.f668d + f9) - 1.0f : Float.MAX_VALUE;
            int i25 = i10 - 1;
            while (i25 >= 0) {
                e eVar5 = (e) arrayList.get(i25);
                while (true) {
                    i7 = eVar5.f666b;
                    if (i23 <= i7) {
                        break;
                    }
                    i23--;
                    this.f5007g.getClass();
                    f9 -= 1.0f + f6;
                }
                f9 -= eVar5.f668d + f6;
                eVar5.f669e = f9;
                if (i7 == 0) {
                    this.f5017r = f9;
                }
                i25--;
                i23--;
            }
            float f10 = eVarA.f669e + eVarA.f668d + f6;
            int i26 = eVarA.f666b;
            while (true) {
                i26++;
                if (i15 >= size2) {
                    break;
                }
                e eVar6 = (e) arrayList.get(i15);
                while (true) {
                    i6 = eVar6.f666b;
                    if (i26 >= i6) {
                        break;
                    }
                    i26++;
                    this.f5007g.getClass();
                    f10 += 1.0f + f6;
                }
                if (i6 == i24) {
                    this.f5018s = (eVar6.f668d + f10) - 1.0f;
                }
                eVar6.f669e = f10;
                f10 += eVar6.f668d + f6;
                i15++;
            }
            this.f5007g.getClass();
        }
        a aVar2 = this.f5007g;
        aVar2.getClass();
        PathInterpolator pathInterpolator2 = SeslDatePicker.u0;
        ((C0165g) aVar2).f4516d.getClass();
        int childCount = getChildCount();
        for (int i27 = 0; i27 < childCount; i27++) {
            View childAt = getChildAt(i27);
            f fVar = (f) childAt.getLayoutParams();
            fVar.getClass();
            if (!fVar.f670a && fVar.f672c == 0.0f && (eVarG2 = g(childAt)) != null) {
                fVar.f672c = eVarG2.f668d;
                int i28 = eVarG2.f666b;
                fVar.getClass();
            }
        }
        if (hasFocus()) {
            View viewFindFocus = findFocus();
            if (viewFindFocus != null) {
                while (true) {
                    Object parent = viewFindFocus.getParent();
                    if (parent == this) {
                        eVarG = g(viewFindFocus);
                        break;
                    } else if (!(parent instanceof View)) {
                        break;
                    } else {
                        viewFindFocus = (View) parent;
                    }
                }
                eVarG = null;
            } else {
                eVarG = null;
            }
            if (eVarG == null || eVarG.f666b != this.f5008h) {
                for (int i29 = 0; i29 < getChildCount(); i29++) {
                    View childAt2 = getChildAt(i29);
                    e eVarG3 = g(childAt2);
                    if (eVarG3 != null && eVarG3.f666b == this.f5008h && childAt2.requestFocus(i)) {
                        return;
                    }
                }
            }
        }
    }

    public final void q(int i5, int i6, int i7, int i8) throws Resources.NotFoundException {
        if (i6 <= 0 || this.f5003d.isEmpty()) {
            e eVarI = i(this.f5008h);
            int iMin = (int) ((eVarI != null ? Math.min(eVarI.f669e, this.f5018s) : 0.0f) * ((i5 - getPaddingLeft()) - getPaddingRight()));
            if (iMin != getScrollX()) {
                d(false);
                scrollTo(iMin, getScrollY());
                return;
            }
            return;
        }
        if (!this.f5011k.isFinished()) {
            this.f5011k.setFinalX(getCurrentItem() * getClientWidth());
            return;
        }
        int paddingLeft = ((i5 - getPaddingLeft()) - getPaddingRight()) + i7;
        float scrollStart = getScrollStart() / (((i6 - getPaddingLeft()) - getPaddingRight()) + i8);
        scrollTo(t() ? (int) (1.6777216E7f - (scrollStart * paddingLeft)) : (int) (scrollStart * paddingLeft), getScrollY());
    }

    public final boolean r() {
        this.f4985H = -1;
        this.f5023x = false;
        this.f5024y = false;
        VelocityTracker velocityTracker = this.f4986I;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f4986I = null;
        }
        this.f4991N.onRelease();
        this.f4992O.onRelease();
        return (this.f4991N.isFinished() && this.f4992O.isFinished()) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f5019t) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public final void s(int i5, int i6, boolean z4, boolean z5) throws Resources.NotFoundException {
        int i7;
        g gVar;
        int scrollX;
        int iAbs;
        g gVar2;
        Scroller scroller = this.f5011k;
        e eVarI = i(i5);
        if (eVarI != null) {
            float clientWidth = getClientWidth();
            float f = eVarI.f669e;
            float f5 = this.f5017r;
            float f6 = this.f5018s;
            if (f < f5) {
                f = f5;
            } else if (f > f6) {
                f = f6;
            }
            i7 = (int) (f * clientWidth);
            if (t()) {
                i7 = (IDMEnablerInterface.FLAG_RECEIVER_INCLUDE_BACKGROUND - ((int) ((clientWidth * eVarI.f668d) + 0.5f))) - i7;
            }
        } else {
            i7 = 0;
        }
        if (!z4) {
            if (z5 && (gVar = this.f4996U) != null) {
                SeslDatePicker seslDatePicker = (SeslDatePicker) ((C0164f) gVar).f4514a;
                if (seslDatePicker.f4411j) {
                    seslDatePicker.f4406g = false;
                }
                seslDatePicker.f4386K = i5;
                int minMonth = seslDatePicker.getMinMonth() + i5;
                int minYear = seslDatePicker.getMinYear() + (minMonth / 12);
                int i8 = minMonth % 12;
                int actualMaximum = seslDatePicker.f4415m.get(5);
                Calendar calendar = seslDatePicker.f4417p;
                boolean z6 = minYear != calendar.get(1);
                calendar.set(1, minYear);
                calendar.set(2, i8);
                calendar.set(5, 1);
                if (actualMaximum > calendar.getActualMaximum(5)) {
                    actualMaximum = calendar.getActualMaximum(5);
                }
                calendar.set(5, actualMaximum);
                HandlerC0161c handlerC0161c = seslDatePicker.s0;
                Message messageObtainMessage = handlerC0161c.obtainMessage();
                messageObtainMessage.what = 1000;
                messageObtainMessage.obj = Boolean.valueOf(z6);
                handlerC0161c.sendMessage(messageObtainMessage);
                Message messageObtainMessage2 = handlerC0161c.obtainMessage();
                messageObtainMessage2.what = IDMCallbackStatusInterface.IDM_STATUS_INITIALIZING;
                handlerC0161c.sendMessage(messageObtainMessage2);
                SparseArray sparseArray = seslDatePicker.f4391Q.f4515c;
                if (sparseArray.get(i5) != null) {
                    ((H) sparseArray.get(i5)).a();
                    ((H) sparseArray.get(i5)).setImportantForAccessibility(1);
                }
                if (i5 != 0) {
                    int i9 = i5 - 1;
                    if (sparseArray.get(i9) != null) {
                        ((H) sparseArray.get(i9)).a();
                        ((H) sparseArray.get(i9)).setImportantForAccessibility(2);
                    }
                }
                if (i5 != seslDatePicker.f4387L - 1) {
                    int i10 = i5 + 1;
                    if (sparseArray.get(i10) != null) {
                        ((H) sparseArray.get(i10)).a();
                        ((H) sparseArray.get(i10)).setImportantForAccessibility(2);
                    }
                }
            }
            d(false);
            scrollTo(i7, 0);
            m(i7);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            if (scroller == null || scroller.isFinished()) {
                scrollX = getScrollX();
            } else {
                scrollX = this.f5012l ? scroller.getCurrX() : scroller.getStartX();
                scroller.abortAnimation();
                setScrollingCacheEnabled(false);
            }
            int i11 = scrollX;
            int scrollY = getScrollY();
            int i12 = i7 - i11;
            int i13 = 0 - scrollY;
            if (i12 == 0 && i13 == 0) {
                d(false);
                o();
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(2);
                int clientWidth2 = getClientWidth();
                int i14 = clientWidth2 / 2;
                float f7 = clientWidth2;
                float f8 = i14;
                float fSin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i12) * 1.0f) / f7) - 0.5f) * 0.47123894f)) * f8) + f8;
                int iAbs2 = Math.abs(i6);
                if (iAbs2 > 0) {
                    iAbs = Math.round(Math.abs(fSin / iAbs2) * 1000.0f) * 4;
                } else {
                    this.f5007g.getClass();
                    iAbs = (int) (((Math.abs(i12) / ((f7 * 1.0f) + this.n)) + 1.0f) * 100.0f);
                }
                int iMin = Math.min(iAbs, 600);
                this.f5012l = false;
                Scroller scroller2 = this.f5011k;
                if (scroller2 != null) {
                    scroller2.startScroll(i11, scrollY, i12, i13, iMin);
                }
                WeakHashMap weakHashMap = Q.f940a;
                postInvalidateOnAnimation();
            }
        }
        if (!z5 || (gVar2 = this.f4996U) == null) {
            return;
        }
        SeslDatePicker seslDatePicker2 = (SeslDatePicker) ((C0164f) gVar2).f4514a;
        if (seslDatePicker2.f4411j) {
            seslDatePicker2.f4406g = false;
        }
        seslDatePicker2.f4386K = i5;
        int minMonth2 = seslDatePicker2.getMinMonth() + i5;
        int minYear2 = seslDatePicker2.getMinYear() + (minMonth2 / 12);
        int i15 = minMonth2 % 12;
        int actualMaximum2 = seslDatePicker2.f4415m.get(5);
        Calendar calendar2 = seslDatePicker2.f4417p;
        boolean z7 = minYear2 != calendar2.get(1);
        calendar2.set(1, minYear2);
        calendar2.set(2, i15);
        calendar2.set(5, 1);
        if (actualMaximum2 > calendar2.getActualMaximum(5)) {
            actualMaximum2 = calendar2.getActualMaximum(5);
        }
        calendar2.set(5, actualMaximum2);
        HandlerC0161c handlerC0161c2 = seslDatePicker2.s0;
        Message messageObtainMessage3 = handlerC0161c2.obtainMessage();
        messageObtainMessage3.what = 1000;
        messageObtainMessage3.obj = Boolean.valueOf(z7);
        handlerC0161c2.sendMessage(messageObtainMessage3);
        Message messageObtainMessage4 = handlerC0161c2.obtainMessage();
        messageObtainMessage4.what = IDMCallbackStatusInterface.IDM_STATUS_INITIALIZING;
        handlerC0161c2.sendMessage(messageObtainMessage4);
        SparseArray sparseArray2 = seslDatePicker2.f4391Q.f4515c;
        if (sparseArray2.get(i5) != null) {
            ((H) sparseArray2.get(i5)).a();
            ((H) sparseArray2.get(i5)).setImportantForAccessibility(1);
        }
        if (i5 != 0) {
            int i16 = i5 - 1;
            if (sparseArray2.get(i16) != null) {
                ((H) sparseArray2.get(i16)).a();
                ((H) sparseArray2.get(i16)).setImportantForAccessibility(2);
            }
        }
        if (i5 != seslDatePicker2.f4387L - 1) {
            int i17 = i5 + 1;
            if (sparseArray2.get(i17) != null) {
                ((H) sparseArray2.get(i17)).a();
                ((H) sparseArray2.get(i17)).setImportantForAccessibility(2);
            }
        }
    }

    public void setAdapter(a aVar) throws Resources.NotFoundException {
        ArrayList arrayList;
        a aVar2 = this.f5007g;
        int i5 = 0;
        if (aVar2 != null) {
            synchronized (aVar2) {
                aVar2.f662b = null;
            }
            a aVar3 = this.f5007g;
            aVar3.getClass();
            PathInterpolator pathInterpolator = SeslDatePicker.u0;
            ((C0165g) aVar3).f4516d.getClass();
            int i6 = 0;
            while (true) {
                arrayList = this.f5003d;
                if (i6 >= arrayList.size()) {
                    break;
                }
                e eVar = (e) arrayList.get(i6);
                this.f5007g.a(this, eVar.f666b, eVar.f665a);
                i6++;
            }
            a aVar4 = this.f5007g;
            aVar4.getClass();
            PathInterpolator pathInterpolator2 = SeslDatePicker.u0;
            ((C0165g) aVar4).f4516d.getClass();
            arrayList.clear();
            int i7 = 0;
            while (i7 < getChildCount()) {
                if (!((f) getChildAt(i7).getLayoutParams()).f670a) {
                    removeViewAt(i7);
                    i7--;
                }
                i7++;
            }
            this.f5008h = 0;
            scrollTo(0, 0);
        }
        this.f5007g = aVar;
        this.f5001c = 0;
        if (aVar != null) {
            if (this.f5013m == null) {
                this.f5013m = new F0.h(i5, this);
            }
            a aVar5 = this.f5007g;
            F0.h hVar = this.f5013m;
            synchronized (aVar5) {
                aVar5.f662b = hVar;
            }
            this.f5021v = false;
            boolean z4 = this.f4993Q;
            this.f4993Q = true;
            this.f5001c = this.f5007g.b();
            if (this.f5009i >= 0) {
                this.f5007g.getClass();
                v(this.f5009i, 0, false, true);
                this.f5009i = -1;
            } else if (z4) {
                requestLayout();
            } else {
                o();
            }
        }
    }

    public void setCurrentItem(int i5) throws Resources.NotFoundException {
        this.f5021v = false;
        v(i5, 0, !this.f4993Q, false);
    }

    public void setDragInGutterEnabled(boolean z4) {
        this.f4981C = z4;
    }

    public void setOffscreenPageLimit(int i5) {
        if (i5 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i5 + " too small; defaulting to 1");
            i5 = 1;
        }
        if (i5 != this.f5022w) {
            this.f5022w = i5;
            o();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(g gVar) {
        this.f4996U = gVar;
    }

    public void setPageMargin(int i5) throws Resources.NotFoundException {
        int i6 = this.n;
        this.n = i5;
        int width = getWidth();
        q(width, width, i5, i6);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f5014o = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i5) {
        if (this.f4998W == i5) {
            return;
        }
        this.f4998W = i5;
    }

    public final boolean t() {
        if (this.f5006e0) {
            WeakHashMap weakHashMap = Q.f940a;
            if (getLayoutDirection() == 1) {
                return true;
            }
        }
        return false;
    }

    public final void u(int i5, boolean z4) throws Resources.NotFoundException {
        this.f5021v = false;
        v(i5, 0, z4, false);
    }

    public final void v(int i5, int i6, boolean z4, boolean z5) throws Resources.NotFoundException {
        g gVar;
        a aVar = this.f5007g;
        if (aVar == null || aVar.b() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        ArrayList arrayList = this.f5003d;
        if (!z5 && this.f5008h == i5 && arrayList.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i5 < 0) {
            i5 = 0;
        } else if (i5 >= this.f5007g.b()) {
            i5 = this.f5007g.b() - 1;
        }
        int i7 = this.f5022w;
        int i8 = this.f5008h;
        if (i5 > i8 + i7 || i5 < i8 - i7) {
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                ((e) arrayList.get(i9)).f667c = true;
            }
        }
        boolean z6 = this.f5008h != i5;
        if (!this.f4993Q) {
            p(i5);
            s(i5, i6, z4, z6);
            return;
        }
        this.f5008h = i5;
        if (z6 && (gVar = this.f4996U) != null) {
            SeslDatePicker seslDatePicker = (SeslDatePicker) ((C0164f) gVar).f4514a;
            if (seslDatePicker.f4411j) {
                seslDatePicker.f4406g = false;
            }
            seslDatePicker.f4386K = i5;
            int minMonth = seslDatePicker.getMinMonth() + i5;
            int minYear = seslDatePicker.getMinYear() + (minMonth / 12);
            int i10 = minMonth % 12;
            int actualMaximum = seslDatePicker.f4415m.get(5);
            Calendar calendar = seslDatePicker.f4417p;
            boolean z7 = minYear != calendar.get(1);
            calendar.set(1, minYear);
            calendar.set(2, i10);
            calendar.set(5, 1);
            if (actualMaximum > calendar.getActualMaximum(5)) {
                actualMaximum = calendar.getActualMaximum(5);
            }
            calendar.set(5, actualMaximum);
            HandlerC0161c handlerC0161c = seslDatePicker.s0;
            Message messageObtainMessage = handlerC0161c.obtainMessage();
            messageObtainMessage.what = 1000;
            messageObtainMessage.obj = Boolean.valueOf(z7);
            handlerC0161c.sendMessage(messageObtainMessage);
            Message messageObtainMessage2 = handlerC0161c.obtainMessage();
            messageObtainMessage2.what = IDMCallbackStatusInterface.IDM_STATUS_INITIALIZING;
            handlerC0161c.sendMessage(messageObtainMessage2);
            SparseArray sparseArray = seslDatePicker.f4391Q.f4515c;
            if (sparseArray.get(i5) != null) {
                ((H) sparseArray.get(i5)).a();
                ((H) sparseArray.get(i5)).setImportantForAccessibility(1);
            }
            if (i5 != 0) {
                int i11 = i5 - 1;
                if (sparseArray.get(i11) != null) {
                    ((H) sparseArray.get(i11)).a();
                    ((H) sparseArray.get(i11)).setImportantForAccessibility(2);
                }
            }
            if (i5 != seslDatePicker.f4387L - 1) {
                int i12 = i5 + 1;
                if (sparseArray.get(i12) != null) {
                    ((H) sparseArray.get(i12)).a();
                    ((H) sparseArray.get(i12)).setImportantForAccessibility(2);
                }
            }
        }
        requestLayout();
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f5014o;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        f fVar = new f(context, attributeSet);
        fVar.f672c = 0.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f4977f0);
        fVar.f671b = typedArrayObtainStyledAttributes.getInteger(0, 48);
        typedArrayObtainStyledAttributes.recycle();
        return fVar;
    }

    public void setPageMarginDrawable(int i5) {
        setPageMarginDrawable(AbstractC0933a.b(getContext(), i5));
    }
}
