package androidx.core.widget;

import A1.a;
import J.A;
import J.B;
import J.C;
import J.C0029c;
import J.C0039m;
import J.C0042p;
import J.I;
import J.InterfaceC0040n;
import J.InterfaceC0041o;
import J.Q;
import J.U;
import L2.b;
import O.e;
import O.h;
import O.i;
import O.j;
import O.k;
import O.l;
import O.m;
import android.R;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcelable;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import p.AbstractC0735a;
import p0.AbstractC0739a;
import p0.AbstractC0740b;
import s2.C0837c;

/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements InterfaceC0041o {

    /* renamed from: h0, reason: collision with root package name */
    public static final float f3612h0 = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* renamed from: i0, reason: collision with root package name */
    public static final i f3613i0 = new i(0);

    /* renamed from: j0, reason: collision with root package name */
    public static final int[] f3614j0 = {R.attr.fillViewport};

    /* renamed from: A, reason: collision with root package name */
    public final C0039m f3615A;

    /* renamed from: B, reason: collision with root package name */
    public float f3616B;

    /* renamed from: C, reason: collision with root package name */
    public boolean f3617C;

    /* renamed from: D, reason: collision with root package name */
    public int f3618D;
    public boolean E;

    /* renamed from: F, reason: collision with root package name */
    public final Rect f3619F;

    /* renamed from: G, reason: collision with root package name */
    public int f3620G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f3621H;

    /* renamed from: I, reason: collision with root package name */
    public final boolean f3622I;

    /* renamed from: J, reason: collision with root package name */
    public boolean f3623J;

    /* renamed from: K, reason: collision with root package name */
    public boolean f3624K;

    /* renamed from: L, reason: collision with root package name */
    public k f3625L;

    /* renamed from: M, reason: collision with root package name */
    public int f3626M;

    /* renamed from: N, reason: collision with root package name */
    public int f3627N;

    /* renamed from: O, reason: collision with root package name */
    public int f3628O;

    /* renamed from: Q, reason: collision with root package name */
    public long f3629Q;

    /* renamed from: R, reason: collision with root package name */
    public long f3630R;

    /* renamed from: T, reason: collision with root package name */
    public final long f3631T;

    /* renamed from: U, reason: collision with root package name */
    public long f3632U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f3633V;

    /* renamed from: W, reason: collision with root package name */
    public final Context f3634W;

    /* renamed from: a0, reason: collision with root package name */
    public int f3635a0;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f3636b0;

    /* renamed from: c, reason: collision with root package name */
    public final float f3637c;

    /* renamed from: c0, reason: collision with root package name */
    public final int[] f3638c0;

    /* renamed from: d, reason: collision with root package name */
    public long f3639d;

    /* renamed from: d0, reason: collision with root package name */
    public int f3640d0;

    /* renamed from: e, reason: collision with root package name */
    public final Rect f3641e;

    /* renamed from: e0, reason: collision with root package name */
    public int f3642e0;
    public final OverScroller f;

    /* renamed from: f0, reason: collision with root package name */
    public final C0029c f3643f0;

    /* renamed from: g, reason: collision with root package name */
    public final EdgeEffect f3644g;
    public final h g0;

    /* renamed from: h, reason: collision with root package name */
    public final EdgeEffect f3645h;

    /* renamed from: i, reason: collision with root package name */
    public int f3646i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3647j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f3648k;

    /* renamed from: l, reason: collision with root package name */
    public View f3649l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f3650m;
    public VelocityTracker n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f3651o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f3652p;

    /* renamed from: q, reason: collision with root package name */
    public final int f3653q;

    /* renamed from: r, reason: collision with root package name */
    public final int f3654r;

    /* renamed from: s, reason: collision with root package name */
    public final int f3655s;

    /* renamed from: t, reason: collision with root package name */
    public int f3656t;

    /* renamed from: u, reason: collision with root package name */
    public final int[] f3657u;

    /* renamed from: v, reason: collision with root package name */
    public final int[] f3658v;

    /* renamed from: w, reason: collision with root package name */
    public int f3659w;

    /* renamed from: x, reason: collision with root package name */
    public int f3660x;

    /* renamed from: y, reason: collision with root package name */
    public m f3661y;

    /* renamed from: z, reason: collision with root package name */
    public final C0042p f3662z;

    static {
        new LinearInterpolator();
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.wssyncmldm.R.attr.nestedScrollViewStyle);
        this.f3641e = new Rect();
        this.f3647j = true;
        this.f3648k = false;
        this.f3649l = null;
        this.f3650m = false;
        this.f3652p = true;
        this.f3656t = -1;
        this.f3657u = new int[2];
        this.f3658v = new int[2];
        this.f3617C = false;
        this.f3618D = 0;
        this.E = false;
        this.f3619F = new Rect();
        this.f3620G = 0;
        new PathInterpolator(0.33f, 0.0f, 0.3f, 1.0f);
        Paint paint = new Paint();
        new h(this, 1);
        new h(this, 2);
        new h(this, 3);
        this.f3621H = false;
        this.f3622I = true;
        this.f3623J = false;
        this.f3624K = false;
        this.f3626M = 0;
        this.f3627N = 0;
        this.f3628O = -1;
        this.f3629Q = 0L;
        this.f3630R = 0L;
        this.f3631T = 300L;
        this.f3632U = 0L;
        this.f3633V = false;
        this.f3635a0 = 0;
        this.f3636b0 = false;
        this.f3638c0 = new int[2];
        this.f3640d0 = 0;
        this.f3642e0 = 0;
        this.f3643f0 = new C0029c(getContext(), new C0837c((Object) this));
        View.OnLayoutChangeListener aVar = new a(1, this);
        h hVar = new h(this, 0);
        this.g0 = hVar;
        this.f3634W = context;
        this.f3644g = AbstractC0740b.c() ? e.a(context, attributeSet) : new EdgeEffect(context);
        this.f3645h = AbstractC0740b.c() ? e.a(context, attributeSet) : new EdgeEffect(context);
        this.f3637c = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.f = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f3653q = viewConfiguration.getScaledTouchSlop();
        this.f3654r = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f3655s = viewConfiguration.getScaledMaximumFlingVelocity();
        post(hVar);
        addOnLayoutChangeListener(aVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f3614j0, com.wssyncmldm.R.attr.nestedScrollViewStyle, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.f3662z = new C0042p();
        this.f3615A = new C0039m(this);
        setNestedScrollingEnabled(true);
        Q.h(this, f3613i0);
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
    }

    public static boolean o(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && o((View) parent, view2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupGoToTop(int i5) {
        String string;
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (accessibilityManager == null || !accessibilityManager.isEnabled() || (string = Settings.Secure.getString(getContext().getContentResolver(), "enabled_accessibility_services")) == null || string.matches("(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*") || string.matches("(?i).*com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService.*") || string.matches("(?i).*com.google.android.marvin.talkback.TalkBackService.*")) {
            return;
        }
        string.matches("(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*");
    }

    @Override // J.InterfaceC0040n
    public final void a(View view, View view2, int i5, int i6) {
        C0042p c0042p = this.f3662z;
        if (i6 == 1) {
            c0042p.f1000b = i5;
        } else {
            c0042p.f999a = i5;
        }
        x(2, i6);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // J.InterfaceC0040n
    public final void b(View view, int i5, int i6, int[] iArr, int i7) {
        this.f3615A.c(i5, i6, iArr, null, i7);
    }

    @Override // J.InterfaceC0040n
    public final void c(int i5, View view) {
        C0042p c0042p = this.f3662z;
        if (i5 == 1) {
            c0042p.f1000b = 0;
        } else {
            c0042p.f999a = 0;
        }
        z(i5);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fb  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void computeScroll() {
        int iRound;
        int i5;
        if (this.f.isFinished()) {
            return;
        }
        this.f.computeScrollOffset();
        int currY = this.f.getCurrY();
        int i6 = currY - this.f3660x;
        int height = getHeight();
        EdgeEffect edgeEffect = this.f3645h;
        EdgeEffect edgeEffect2 = this.f3644g;
        if (i6 <= 0 || b.n(edgeEffect2) == 0.0f) {
            if (i6 < 0 && b.n(edgeEffect) != 0.0f) {
                float f = height;
                iRound = Math.round(b.B(edgeEffect, (i6 * 4.0f) / f, 0.5f) * (f / 4.0f));
                if (iRound != i6) {
                    edgeEffect.finish();
                }
            }
            this.f3660x = currY;
            int[] iArr = this.f3658v;
            iArr[1] = 0;
            this.f3615A.c(0, i6, iArr, null, 1);
            i5 = i6 - iArr[1];
            int scrollRange = getScrollRange();
            if (i5 != 0) {
                int scrollY = getScrollY();
                s(i5, getScrollX(), scrollY, scrollRange);
                int scrollY2 = getScrollY() - scrollY;
                int i7 = i5 - scrollY2;
                iArr[1] = 0;
                boolean zD = this.f3615A.d(0, scrollY2, 0, i7, this.f3657u, 1, iArr);
                int[] iArr2 = this.f3657u;
                if (zD) {
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                }
                if (iArr2[0] < 0 || iArr2[1] < 0) {
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                }
                i5 = i7 - iArr[1];
            }
            if (i5 != 0) {
                int overScrollMode = getOverScrollMode();
                if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                    if (i5 < 0) {
                        if (edgeEffect2.isFinished()) {
                            edgeEffect2.onAbsorb((int) this.f.getCurrVelocity());
                        }
                    } else if (edgeEffect.isFinished()) {
                        edgeEffect.onAbsorb((int) this.f.getCurrVelocity());
                    }
                }
                this.f.abortAnimation();
                z(1);
            }
            if (this.f.isFinished()) {
                postInvalidateOnAnimation();
            } else {
                z(1);
            }
            AbstractC0739a.s(this, Math.abs(this.f.getCurrVelocity()));
        }
        iRound = Math.round(b.B(edgeEffect2, ((-i6) * 4.0f) / height, 0.5f) * ((-height) / 4.0f));
        if (iRound != i6) {
            edgeEffect2.finish();
        }
        i6 -= iRound;
        this.f3660x = currY;
        int[] iArr3 = this.f3658v;
        iArr3[1] = 0;
        this.f3615A.c(0, i6, iArr3, null, 1);
        i5 = i6 - iArr3[1];
        int scrollRange2 = getScrollRange();
        if (i5 != 0) {
        }
        if (i5 != 0) {
        }
        if (this.f.isFinished()) {
        }
        AbstractC0739a.s(this, Math.abs(this.f.getCurrVelocity()));
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int iMax = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > iMax ? bottom + (scrollY - iMax) : bottom;
    }

    @Override // J.InterfaceC0041o
    public final void d(View view, int i5, int i6, int i7, int i8, int i9, int[] iArr) {
        q(iArr, i8, i9);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        Context context = this.f3634W;
        if (action == 9) {
            if (this.f3636b0) {
                int[] iArr = this.f3638c0;
                getLocationInWindow(iArr);
                int i5 = this.f3642e0;
                int i6 = this.f3635a0;
                int i7 = iArr[1];
                int i8 = i6 - i7;
                int i9 = i5 - i8;
                this.f3640d0 = i9;
                if (i8 < 0) {
                    this.f3642e0 = i9;
                    this.f3635a0 = i7;
                }
            }
            int toolType = motionEvent.getToolType(0);
            this.f3624K = true;
            if (!this.f3621H || !this.f3622I) {
                this.f3624K = false;
            }
            if (this.f3624K && toolType == 2) {
                if (Settings.System.getInt(context.getContentResolver(), AbstractC0735a.g(), 0) != 1) {
                    this.f3624K = false;
                }
            }
            if (this.f3624K && toolType == 3) {
                this.f3624K = false;
            }
        }
        if (!this.f3624K) {
            return super.dispatchHoverEvent(motionEvent);
        }
        int x4 = (int) motionEvent.getX();
        int y3 = (int) motionEvent.getY();
        int childCount = getChildCount();
        int scrollRange = getScrollRange();
        if (this.f3625L == null) {
            this.f3625L = new k(this);
        }
        if (this.f3626M <= 0 || this.f3627N <= 0) {
            this.f3626M = (int) (TypedValue.applyDimension(1, 25.0f, context.getResources().getDisplayMetrics()) + 0.5f);
            this.f3627N = (int) (TypedValue.applyDimension(1, 25.0f, context.getResources().getDisplayMetrics()) + 0.5f);
        }
        int height = childCount != 0 ? getHeight() : 0;
        boolean z4 = motionEvent.getToolType(0) == 2;
        if ((y3 > this.f3626M && y3 < (height - this.f3627N) - this.f3640d0) || x4 <= 0 || x4 > getRight() || scrollRange == 0 || ((y3 >= 0 && y3 <= this.f3626M && getScrollY() <= 0 && this.f3633V) || ((y3 >= height - this.f3627N && y3 <= height && getScrollY() >= scrollRange && this.f3633V) || ((z4 && motionEvent.getButtonState() == 32) || !z4 || ((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode())))) {
            if (this.f3625L.hasMessages(1)) {
                this.f3625L.removeMessages(1);
                v(motionEvent, o4.a.i());
            }
            if ((y3 > this.f3626M && y3 < height - this.f3627N) || x4 <= 0 || x4 > getRight()) {
                this.f3633V = false;
            }
            if (this.f3623J || this.f3632U != 0) {
                v(motionEvent, o4.a.i());
            }
            this.f3630R = 0L;
            this.f3632U = 0L;
            this.f3623J = false;
            return super.dispatchHoverEvent(motionEvent);
        }
        if (!this.f3623J) {
            this.f3632U = System.currentTimeMillis();
        }
        if (action != 7) {
            if (action == 9) {
                this.f3623J = true;
                if (y3 < 0 || y3 > this.f3626M) {
                    if (y3 >= (height - this.f3627N) - this.f3640d0 && y3 <= height && !this.f3625L.hasMessages(1)) {
                        this.f3630R = System.currentTimeMillis();
                        v(motionEvent, o4.a.k());
                        this.f3628O = 1;
                        this.f3625L.sendEmptyMessage(1);
                    }
                } else if (!this.f3625L.hasMessages(1)) {
                    this.f3630R = System.currentTimeMillis();
                    v(motionEvent, o4.a.l());
                    this.f3628O = 2;
                    this.f3625L.sendEmptyMessage(1);
                }
            } else if (action == 10) {
                if (this.f3625L.hasMessages(1)) {
                    this.f3625L.removeMessages(1);
                }
                v(motionEvent, o4.a.i());
                this.f3630R = 0L;
                this.f3632U = 0L;
                this.f3633V = false;
                this.f3623J = false;
                this.f.forceFinished(true);
                return super.dispatchHoverEvent(motionEvent);
            }
        } else {
            if (!this.f3623J) {
                this.f3623J = true;
                motionEvent.setAction(10);
                return super.dispatchHoverEvent(motionEvent);
            }
            if (y3 < 0 || y3 > this.f3626M) {
                if (y3 >= (height - this.f3627N) - this.f3640d0 && y3 <= height && !this.f3625L.hasMessages(1)) {
                    this.f3630R = System.currentTimeMillis();
                    if (!this.f3633V || this.f3628O == 2) {
                        v(motionEvent, o4.a.k());
                    }
                    this.f3628O = 1;
                    this.f3625L.sendEmptyMessage(1);
                }
            } else if (!this.f3625L.hasMessages(1)) {
                this.f3630R = System.currentTimeMillis();
                if (!this.f3633V || this.f3628O == 1) {
                    v(motionEvent, o4.a.l());
                }
                this.f3628O = 2;
                this.f3625L.sendEmptyMessage(1);
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || l(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f5, boolean z4) {
        return this.f3615A.a(f, f5, z4);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f5) {
        AbstractC0739a.s(this, 1.0f);
        return this.f3615A.b(f, f5);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i5, int i6, int[] iArr, int[] iArr2) {
        return this.f3615A.c(i5, i6, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i5, int i6, int i7, int i8, int[] iArr) {
        return this.f3615A.d(i5, i6, i7, i8, iArr, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        int height;
        int i5;
        int x4 = (int) motionEvent.getX();
        int y3 = (int) motionEvent.getY();
        int childCount = getChildCount();
        int scrollRange = getScrollRange();
        if (this.f3625L == null) {
            this.f3625L = new k(this);
        }
        if (this.f3626M <= 0 || this.f3627N <= 0) {
            Context context = this.f3634W;
            this.f3626M = (int) (TypedValue.applyDimension(1, 25.0f, context.getResources().getDisplayMetrics()) + 0.5f);
            this.f3627N = (int) (TypedValue.applyDimension(1, 25.0f, context.getResources().getDisplayMetrics()) + 0.5f);
        }
        if (childCount != 0) {
            height = getHeight();
            motionEvent2 = motionEvent;
        } else {
            motionEvent2 = motionEvent;
            height = 0;
        }
        boolean z4 = motionEvent2.getToolType(0) == 2;
        int action = motionEvent.getAction();
        Rect rect = this.f3619F;
        if (action == 0) {
            this.f3617C = false;
            if (this.E && this.f3620G != 2 && rect.contains(x4, y3)) {
                setupGoToTop(2);
                throw null;
            }
        } else if (action != 1) {
            if (action != 2) {
                if (action == 3 && this.E && this.f3620G != 0) {
                    int[] iArr = StateSet.NOTHING;
                    throw null;
                }
            } else if (this.E && this.f3620G == 2) {
                if (rect.contains(x4, y3)) {
                    return true;
                }
                this.f3620G = 1;
                int[] iArr2 = StateSet.NOTHING;
                throw null;
            }
        } else if (this.E && this.f3620G == 2) {
            if (canScrollVertically(-1)) {
                post(new h(this, 4));
            }
            this.f3620G = 1;
            int[] iArr3 = StateSet.NOTHING;
            throw null;
        }
        if ((y3 > this.f3626M && y3 < height - this.f3627N) || scrollRange == 0 || !z4 || motionEvent.getButtonState() != 32) {
            if (this.f3625L.hasMessages(1)) {
                this.f3625L.removeMessages(1);
            }
            this.f3630R = 0L;
            this.f3632U = 0L;
            this.f3623J = false;
            this.f3633V = false;
            return super.dispatchTouchEvent(motionEvent);
        }
        if (!this.f3623J) {
            this.f3632U = System.currentTimeMillis();
        }
        switch (action) {
            case 211:
                if (this.E && this.f3620G != 2 && rect.contains(x4, y3)) {
                    setupGoToTop(2);
                    throw null;
                }
                break;
            case 212:
                if (!this.E || this.f3620G != 2) {
                    if (this.f3625L.hasMessages(1)) {
                        this.f3625L.removeMessages(1);
                    }
                    this.f3630R = 0L;
                    this.f3632U = 0L;
                    this.f3633V = false;
                    this.f3623J = false;
                    return super.dispatchTouchEvent(motionEvent);
                }
                Log.d("NestedScrollView", "pen up false GOTOTOP");
                if (canScrollVertically(-1)) {
                    i5 = 0;
                    w(0 - getScrollX(), 0 - getScrollY(), 250);
                    this.f3644g.onAbsorb(IDMCallbackStatusInterface.IDM_RESULTS);
                    invalidate();
                } else {
                    i5 = 0;
                }
                setupGoToTop(i5);
                int[] iArr4 = StateSet.NOTHING;
                throw null;
            case 213:
                if (this.E && this.f3620G == 2 && !rect.contains(x4, y3)) {
                    this.f3620G = 1;
                    int[] iArr5 = StateSet.NOTHING;
                    throw null;
                }
                break;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        int scrollY = getScrollY();
        EdgeEffect edgeEffect = this.f3644g;
        int paddingLeft2 = 0;
        if (!edgeEffect.isFinished()) {
            int iSave = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int iMin = Math.min(0, scrollY);
            if (j.a(this)) {
                width -= getPaddingRight() + getPaddingLeft();
                paddingLeft = getPaddingLeft();
            } else {
                paddingLeft = 0;
            }
            if (j.a(this)) {
                height -= getPaddingBottom() + getPaddingTop();
                iMin += getPaddingTop();
            }
            canvas.translate(paddingLeft, iMin);
            edgeEffect.setSize(width, height);
            if (edgeEffect.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect2 = this.f3645h;
        if (edgeEffect2.isFinished()) {
            return;
        }
        int iSave2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int iMax = Math.max(getScrollRange(), scrollY) + height2;
        if (j.a(this)) {
            width2 -= getPaddingRight() + getPaddingLeft();
            paddingLeft2 = getPaddingLeft();
        }
        if (j.a(this)) {
            height2 -= getPaddingBottom() + getPaddingTop();
            iMax -= getPaddingBottom();
        }
        canvas.translate(paddingLeft2 - width2, iMax);
        canvas.rotate(180.0f, width2, 0.0f);
        edgeEffect2.setSize(width2, height2);
        if (edgeEffect2.draw(canvas)) {
            postInvalidateOnAnimation();
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // J.InterfaceC0040n
    public final void e(View view, int i5, int i6, int i7, int i8, int i9) {
        q(null, i8, i9);
    }

    @Override // J.InterfaceC0040n
    public final boolean f(View view, View view2, int i5, int i6) {
        return (i5 & 2) != 0;
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        C0042p c0042p = this.f3662z;
        return c0042p.f1000b | c0042p.f999a;
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public float getVerticalScrollFactorCompat() {
        if (this.f3616B == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f3616B = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f3616B;
    }

    public final boolean h(int i5) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i5);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !p(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i5 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i5 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i5 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            k(maxScrollAmount);
        } else {
            Rect rect = this.f3641e;
            viewFindNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, rect);
            int iJ = j(rect);
            this.f3660x = getScrollY();
            k(iJ);
            viewFindNextFocus.requestFocus(i5);
        }
        if (viewFindFocus != null && viewFindFocus.isFocused() && (!p(viewFindFocus, 0, getHeight()))) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(NetworkAnalyticsConstants.DataPoints.FLAG_PPID);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.f3615A.f(0);
    }

    public final boolean i() {
        int overScrollMode = getOverScrollMode();
        if (overScrollMode != 0) {
            return overScrollMode == 1 && getScrollRange() > 0;
        }
        return true;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.f3615A.f995d;
    }

    public final int j(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i5 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i6 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i5 - verticalFadingEdgeLength : i5;
        int i7 = rect.bottom;
        if (i7 > i6 && rect.top > scrollY) {
            return Math.min(rect.height() > height ? rect.top - scrollY : rect.bottom - i6, (childAt.getBottom() + layoutParams.bottomMargin) - i5);
        }
        if (rect.top >= scrollY || i7 >= i6) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i6 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    public final void k(int i5) {
        if (i5 != 0) {
            if (this.f3652p) {
                w(0, i5, 250);
            } else {
                scrollBy(0, i5);
            }
        }
    }

    public final boolean l(KeyEvent keyEvent) {
        Rect rect = this.f3641e;
        rect.setEmpty();
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                if (keyEvent.getAction() != 0) {
                    return false;
                }
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 19) {
                    return !keyEvent.isAltPressed() ? h(33) : n(33);
                }
                if (keyCode == 20) {
                    return !keyEvent.isAltPressed() ? h(130) : n(130);
                }
                if (keyCode != 62) {
                    return false;
                }
                int i5 = keyEvent.isShiftPressed() ? 33 : 130;
                boolean z4 = i5 == 130;
                int height = getHeight();
                if (z4) {
                    rect.top = getScrollY() + height;
                    int childCount = getChildCount();
                    if (childCount > 0) {
                        View childAt2 = getChildAt(childCount - 1);
                        int paddingBottom = getPaddingBottom() + childAt2.getBottom() + ((FrameLayout.LayoutParams) childAt2.getLayoutParams()).bottomMargin;
                        if (rect.top + height > paddingBottom) {
                            rect.top = paddingBottom - height;
                        }
                    }
                } else {
                    int scrollY = getScrollY() - height;
                    rect.top = scrollY;
                    if (scrollY < 0) {
                        rect.top = 0;
                    }
                }
                int i6 = rect.top;
                int i7 = height + i6;
                rect.bottom = i7;
                t(i5, i6, i7);
                return false;
            }
        }
        if (!isFocused() || keyEvent.getKeyCode() == 4) {
            return false;
        }
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
        return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(130)) ? false : true;
    }

    public final void m(int i5) {
        if (getChildCount() > 0) {
            this.f.fling(getScrollX(), getScrollY(), 0, i5, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            AbstractC0739a.s(this, Math.abs(this.f.getCurrVelocity()));
            x(2, 1);
            this.f3660x = getScrollY();
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i5, int i6) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i5, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i5, int i6, int i7, int i8) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i5, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i6, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public final boolean n(int i5) {
        int childCount;
        boolean z4 = i5 == 130;
        int height = getHeight();
        Rect rect = this.f3641e;
        rect.top = 0;
        rect.bottom = height;
        if (z4 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.bottom = paddingBottom;
            rect.top = paddingBottom - height;
        }
        return t(i5, rect.top, rect.bottom);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3648k = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0111  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue;
        int i5;
        boolean z4;
        boolean z5;
        int i6;
        int scaledMinimumFlingVelocity;
        int scaledMaximumFlingVelocity;
        int dimensionPixelSize;
        char c2;
        boolean z6;
        int i7;
        float yVelocity;
        float f;
        long j3;
        float fSqrt;
        int i8;
        int i9;
        int i10;
        float fAbs;
        int i11;
        float f5;
        if (motionEvent.getAction() != 8 || this.f3650m) {
            return false;
        }
        if (b.z(motionEvent, 2)) {
            i5 = 9;
            axisValue = motionEvent.getAxisValue(9);
        } else if (b.z(motionEvent, 4194304)) {
            axisValue = motionEvent.getAxisValue(26);
            i5 = 26;
        } else {
            axisValue = 0.0f;
            i5 = 0;
        }
        if (axisValue == 0.0f) {
            return false;
        }
        int verticalScrollFactorCompat = (int) (getVerticalScrollFactorCompat() * axisValue);
        int scrollRange = getScrollRange();
        int scrollY = getScrollY();
        int i12 = scrollY - verticalScrollFactorCompat;
        if (i12 < 0) {
            if (!i() || b.z(motionEvent, 8194)) {
                z4 = false;
            } else {
                EdgeEffect edgeEffect = this.f3644g;
                b.B(edgeEffect, (-i12) / getHeight(), 0.5f);
                edgeEffect.onRelease();
                invalidate();
                z4 = true;
            }
            scrollRange = 0;
        } else {
            if (i12 <= scrollRange) {
                scrollRange = i12;
            } else if (i() && !b.z(motionEvent, 8194)) {
                EdgeEffect edgeEffect2 = this.f3645h;
                b.B(edgeEffect2, (i12 - scrollRange) / getHeight(), 0.5f);
                edgeEffect2.onRelease();
                invalidate();
                z4 = true;
            }
            z4 = false;
        }
        if (i5 != 0) {
            C0029c c0029c = this.f3643f0;
            c0029c.getClass();
            int source = motionEvent.getSource();
            int deviceId = motionEvent.getDeviceId();
            int i13 = c0029c.f964h;
            int[] iArr = c0029c.f966j;
            if (i13 == source && c0029c.f965i == deviceId && c0029c.f963g == i5) {
                z5 = z4;
                c2 = 0;
                z6 = false;
            } else {
                c0029c.f960c.getClass();
                Context context = c0029c.f958a;
                ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
                int deviceId2 = motionEvent.getDeviceId();
                int source2 = motionEvent.getSource();
                int i14 = Build.VERSION.SDK_INT;
                z5 = z4;
                if (i14 >= 34) {
                    scaledMinimumFlingVelocity = U.b(viewConfiguration, deviceId2, i5, source2);
                } else {
                    InputDevice device = InputDevice.getDevice(deviceId2);
                    if (device == null || device.getMotionRange(i5, source2) == null) {
                        scaledMinimumFlingVelocity = Integer.MAX_VALUE;
                    } else {
                        Resources resources = context.getResources();
                        int identifier = (source2 == 4194304 && i5 == 26) ? resources.getIdentifier("config_viewMinRotaryEncoderFlingVelocity", "dimen", "android") : -1;
                        Objects.requireNonNull(viewConfiguration);
                        if (identifier == -1) {
                            scaledMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
                        } else if (identifier == 0 || (scaledMinimumFlingVelocity = resources.getDimensionPixelSize(identifier)) < 0) {
                        }
                    }
                }
                iArr[0] = scaledMinimumFlingVelocity;
                int deviceId3 = motionEvent.getDeviceId();
                int source3 = motionEvent.getSource();
                if (i14 >= 34) {
                    scaledMaximumFlingVelocity = U.a(viewConfiguration, deviceId3, i5, source3);
                } else {
                    InputDevice device2 = InputDevice.getDevice(deviceId3);
                    int i15 = Integer.MIN_VALUE;
                    if ((device2 == null || device2.getMotionRange(i5, source3) == null) ? false : true) {
                        Resources resources2 = context.getResources();
                        int identifier2 = (source3 == 4194304 && i5 == 26) ? resources2.getIdentifier("config_viewMaxRotaryEncoderFlingVelocity", "dimen", "android") : -1;
                        Objects.requireNonNull(viewConfiguration);
                        if (identifier2 != -1) {
                            if (identifier2 != 0 && (dimensionPixelSize = resources2.getDimensionPixelSize(identifier2)) >= 0) {
                                i15 = dimensionPixelSize;
                            }
                            scaledMaximumFlingVelocity = i15;
                        } else {
                            scaledMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
                        }
                    } else {
                        scaledMaximumFlingVelocity = i15;
                    }
                }
                iArr[1] = scaledMaximumFlingVelocity;
                c0029c.f964h = source;
                c0029c.f965i = deviceId;
                c0029c.f963g = i5;
                c2 = 0;
                z6 = true;
            }
            if (iArr[c2] == Integer.MAX_VALUE) {
                VelocityTracker velocityTracker = c0029c.f962e;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    c0029c.f962e = null;
                }
                i7 = scrollRange;
            } else {
                if (c0029c.f962e == null) {
                    c0029c.f962e = VelocityTracker.obtain();
                }
                VelocityTracker velocityTracker2 = c0029c.f962e;
                c0029c.f961d.getClass();
                Map map = B.f927a;
                velocityTracker2.addMovement(motionEvent);
                if (Build.VERSION.SDK_INT < 34 && motionEvent.getSource() == 4194304) {
                    Map map2 = B.f927a;
                    if (!map2.containsKey(velocityTracker2)) {
                        map2.put(velocityTracker2, new C());
                    }
                    C c5 = (C) map2.get(velocityTracker2);
                    c5.getClass();
                    long eventTime = motionEvent.getEventTime();
                    int i16 = c5.f931d;
                    long[] jArr = c5.f929b;
                    if (i16 != 0 && eventTime - jArr[c5.f932e] > 40) {
                        c5.f931d = 0;
                        c5.f930c = 0.0f;
                    }
                    int i17 = (c5.f932e + 1) % 20;
                    c5.f932e = i17;
                    int i18 = c5.f931d;
                    if (i18 != 20) {
                        c5.f931d = i18 + 1;
                    }
                    c5.f928a[i17] = motionEvent.getAxisValue(26);
                    jArr[c5.f932e] = eventTime;
                }
                velocityTracker2.computeCurrentVelocity(1000, Float.MAX_VALUE);
                C c6 = (C) B.f927a.get(velocityTracker2);
                if (c6 != null) {
                    int i19 = c6.f931d;
                    if (i19 < 2) {
                        i8 = 1000;
                        i7 = scrollRange;
                        fSqrt = 0.0f;
                        f5 = fSqrt * i8;
                        c6.f930c = f5;
                        if (f5 >= (-Math.abs(Float.MAX_VALUE))) {
                            c6.f930c = -Math.abs(Float.MAX_VALUE);
                        } else if (c6.f930c > Math.abs(Float.MAX_VALUE)) {
                            c6.f930c = Math.abs(Float.MAX_VALUE);
                        }
                    } else {
                        int i20 = c6.f932e;
                        int i21 = ((i20 + 20) - (i19 - 1)) % 20;
                        long[] jArr2 = c6.f929b;
                        long j5 = jArr2[i20];
                        while (true) {
                            j3 = jArr2[i21];
                            if (j5 - j3 <= 100) {
                                break;
                            }
                            c6.f931d--;
                            i21 = (i21 + 1) % 20;
                        }
                        int i22 = c6.f931d;
                        if (i22 >= 2) {
                            float[] fArr = c6.f928a;
                            if (i22 == 2) {
                                int i23 = (i21 + 1) % 20;
                                if (j3 != jArr2[i23]) {
                                    float f6 = fArr[i23] / (r7 - j3);
                                    i7 = scrollRange;
                                    i8 = 1000;
                                    fSqrt = f6;
                                }
                            } else {
                                float f7 = 0.0f;
                                int i24 = 0;
                                int i25 = 0;
                                while (true) {
                                    if (i24 >= c6.f931d - 1) {
                                        break;
                                    }
                                    int i26 = i24 + i21;
                                    long j6 = jArr2[i26 % 20];
                                    int i27 = (i26 + 1) % 20;
                                    if (jArr2[i27] == j6) {
                                        fAbs = f7;
                                        i10 = scrollRange;
                                        i11 = 1;
                                        i9 = i21;
                                    } else {
                                        i25++;
                                        i9 = i21;
                                        i10 = scrollRange;
                                        float fSqrt2 = (f7 < 0.0f ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(f7) * 2.0f));
                                        float f8 = fArr[i27] / (jArr2[i27] - j6);
                                        fAbs = (Math.abs(f8) * (f8 - fSqrt2)) + f7;
                                        i11 = 1;
                                        if (i25 == 1) {
                                            fAbs *= 0.5f;
                                        }
                                    }
                                    i24 += i11;
                                    f7 = fAbs;
                                    i21 = i9;
                                    scrollRange = i10;
                                }
                                i7 = scrollRange;
                                fSqrt = ((float) Math.sqrt(Math.abs(f7) * 2.0f)) * (f7 < 0.0f ? -1.0f : 1.0f);
                                i8 = 1000;
                            }
                            f5 = fSqrt * i8;
                            c6.f930c = f5;
                            if (f5 >= (-Math.abs(Float.MAX_VALUE))) {
                            }
                        }
                    }
                } else {
                    i7 = scrollRange;
                }
                if (Build.VERSION.SDK_INT >= 34) {
                    yVelocity = A.a(velocityTracker2, i5);
                } else if (i5 == 0) {
                    yVelocity = velocityTracker2.getXVelocity();
                } else if (i5 == 1) {
                    yVelocity = velocityTracker2.getYVelocity();
                } else {
                    C c7 = (C) B.f927a.get(velocityTracker2);
                    yVelocity = (c7 == null || i5 != 26) ? 0.0f : c7.f930c;
                }
                C0837c c0837c = c0029c.f959b;
                float f9 = yVelocity * (-((NestedScrollView) c0837c.f9022c).getVerticalScrollFactorCompat());
                float fSignum = Math.signum(f9);
                NestedScrollView nestedScrollView = (NestedScrollView) c0837c.f9022c;
                if (z6 || (fSignum != Math.signum(c0029c.f) && fSignum != 0.0f)) {
                    nestedScrollView.f.abortAnimation();
                }
                if (Math.abs(f9) >= iArr[0]) {
                    float fMax = Math.max(-r2, Math.min(f9, iArr[1]));
                    if (fMax == 0.0f) {
                        f = 0.0f;
                    } else {
                        nestedScrollView.f.abortAnimation();
                        nestedScrollView.m((int) fMax);
                        f = fMax;
                    }
                    c0029c.f = f;
                }
            }
            i6 = i7;
        } else {
            z5 = z4;
            i6 = scrollRange;
        }
        if (i6 == scrollY) {
            return z5;
        }
        super.scrollTo(getScrollX(), i6);
        x(i6, 1);
        if (this.f3615A.c(0, i6, null, null, 1)) {
            return true;
        }
        super.scrollTo(getScrollX(), i6);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0124  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z4 = true;
        if (action == 2 && this.f3650m) {
            return true;
        }
        int i5 = action & CustomDeviceManager.CALL_SCREEN_ALL;
        if (i5 == 0) {
            int y3 = (int) motionEvent.getY();
            int x4 = (int) motionEvent.getX();
            if (getChildCount() > 0) {
                int scrollY = getScrollY();
                View childAt = getChildAt(0);
                if (y3 < childAt.getTop() - scrollY || y3 >= childAt.getBottom() - scrollY || x4 < childAt.getLeft() || x4 >= childAt.getRight()) {
                    if (!y(motionEvent) && this.f.isFinished()) {
                        z4 = false;
                    }
                    this.f3650m = z4;
                    VelocityTracker velocityTracker = this.n;
                    if (velocityTracker != null) {
                        velocityTracker.recycle();
                        this.n = null;
                    }
                } else {
                    this.f3646i = y3;
                    this.f3656t = motionEvent.getPointerId(0);
                    VelocityTracker velocityTracker2 = this.n;
                    if (velocityTracker2 == null) {
                        this.n = VelocityTracker.obtain();
                    } else {
                        velocityTracker2.clear();
                    }
                    this.n.addMovement(motionEvent);
                    this.f.computeScrollOffset();
                    AbstractC0739a.s(this, Math.abs(this.f.getCurrVelocity()));
                    if (!y(motionEvent) && this.f.isFinished()) {
                        z4 = false;
                    }
                    this.f3650m = z4;
                    x(2, 0);
                }
            }
        } else if (i5 == 1) {
            this.f3650m = false;
            this.f3656t = -1;
            VelocityTracker velocityTracker3 = this.n;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.n = null;
            }
            if (this.f.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
            z(0);
        } else if (i5 == 2) {
            int i6 = this.f3656t;
            if (i6 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i6);
                if (iFindPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + i6 + " in onInterceptTouchEvent");
                } else {
                    int y4 = (int) motionEvent.getY(iFindPointerIndex);
                    if (Math.abs(y4 - this.f3646i) > this.f3653q && (2 & getNestedScrollAxes()) == 0) {
                        this.f3650m = true;
                        this.f3646i = y4;
                        if (this.n == null) {
                            this.n = VelocityTracker.obtain();
                        }
                        this.n.addMovement(motionEvent);
                        this.f3659w = 0;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            }
        } else if (i5 != 3) {
            if (i5 == 6) {
                r(motionEvent);
            }
        }
        return this.f3650m;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) throws Resources.NotFoundException {
        int measuredHeight;
        super.onLayout(z4, i5, i6, i7, i8);
        this.f3647j = false;
        View view = this.f3649l;
        if (view != null && o(view, this)) {
            View view2 = this.f3649l;
            Rect rect = this.f3641e;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iJ = j(rect);
            if (iJ != 0) {
                scrollBy(0, iJ);
            }
        }
        this.f3649l = null;
        if (z4) {
            getResources().getDimensionPixelOffset(com.wssyncmldm.R.dimen.sesl_nestedscrollview_overlay_feature_hidden_height);
        }
        if (!this.f3648k) {
            if (this.f3661y != null) {
                scrollTo(getScrollX(), this.f3661y.f1939c);
                this.f3661y = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                measuredHeight = 0;
            }
            int paddingTop = ((i8 - i6) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int i9 = (paddingTop >= measuredHeight || scrollY < 0) ? 0 : paddingTop + scrollY > measuredHeight ? measuredHeight - paddingTop : scrollY;
            if (i9 != scrollY) {
                scrollTo(getScrollX(), i9);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f3648k = true;
        if (!z4 || super.computeHorizontalScrollRange() > super.computeHorizontalScrollExtent()) {
            return;
        }
        this.f3636b0 = false;
        ViewParent parent = getParent();
        while (true) {
            if (parent == null || !(parent instanceof ViewGroup)) {
                break;
            }
            if (parent instanceof InterfaceC0040n) {
                for (Class<?> superclass = parent.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    if (superclass.getSimpleName().equals("CoordinatorLayout")) {
                        ViewGroup viewGroup = (ViewGroup) parent;
                        int[] iArr = this.f3638c0;
                        viewGroup.getLocationInWindow(iArr);
                        int height = viewGroup.getHeight() + iArr[1];
                        getLocationInWindow(iArr);
                        this.f3635a0 = iArr[1];
                        int height2 = getHeight() - (height - this.f3635a0);
                        this.f3640d0 = height2;
                        if (height2 < 0) {
                            this.f3640d0 = 0;
                        }
                        this.f3642e0 = this.f3640d0;
                        this.f3636b0 = true;
                    }
                }
            }
            parent = parent.getParent();
        }
        if (this.f3636b0) {
            return;
        }
        this.f3635a0 = 0;
        this.f3640d0 = 0;
        this.f3642e0 = 0;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i5, int i6) {
        super.onMeasure(i5, i6);
        if (this.f3651o && View.MeasureSpec.getMode(i6) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i5, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f5, boolean z4) {
        if (z4) {
            return false;
        }
        dispatchNestedFling(0.0f, f5, true);
        m((int) f5);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f5) {
        return dispatchNestedPreFling(f, f5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i5, int i6, int[] iArr) {
        this.f3615A.c(i5, i6, iArr, null, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i5, int i6, int i7, int i8) {
        q(null, i8, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i5) {
        a(view, view2, i5, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i5, int i6, boolean z4, boolean z5) {
        super.scrollTo(i5, i6);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i5, Rect rect) {
        if (i5 == 2) {
            i5 = 130;
        } else if (i5 == 1) {
            i5 = 33;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i5) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i5);
        if (viewFindNextFocus == null || (!p(viewFindNextFocus, 0, getHeight()))) {
            return false;
        }
        return viewFindNextFocus.requestFocus(i5, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof m)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        m mVar = (m) parcelable;
        super.onRestoreInstanceState(mVar.getSuperState());
        this.f3661y = mVar;
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        m mVar = new m(super.onSaveInstanceState());
        mVar.f1939c = getScrollY();
        return mVar;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i5, int i6, int i7, int i8) {
        super.onScrollChanged(i5, i6, i7, i8);
        i();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i5, int i6, int i7, int i8) {
        super.onSizeChanged(i5, i6, i7, i8);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !p(viewFindFocus, 0, i8)) {
            return;
        }
        Rect rect = this.f3641e;
        viewFindFocus.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(viewFindFocus, rect);
        k(j(rect));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i5) {
        return f(view, view2, i5, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        c(0, view);
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0220  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        boolean z4;
        float fB;
        int iRound;
        int i5;
        boolean z5;
        VelocityTracker velocityTracker;
        ViewParent parent2;
        if (this.n == null) {
            this.n = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f3659w = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        float f = 0.0f;
        motionEventObtain.offsetLocation(0.0f, this.f3659w);
        if (actionMasked != 0) {
            EdgeEffect edgeEffect = this.f3645h;
            EdgeEffect edgeEffect2 = this.f3644g;
            if (actionMasked == 1) {
                VelocityTracker velocityTracker2 = this.n;
                velocityTracker2.computeCurrentVelocity(1000, this.f3655s);
                int yVelocity = (int) velocityTracker2.getYVelocity(this.f3656t);
                if (Math.abs(yVelocity) >= this.f3654r) {
                    if (b.n(edgeEffect2) != 0.0f) {
                        if (u(edgeEffect2, yVelocity)) {
                            edgeEffect2.onAbsorb(yVelocity);
                        } else {
                            m(-yVelocity);
                        }
                    } else if (b.n(edgeEffect) != 0.0f) {
                        int i6 = -yVelocity;
                        if (u(edgeEffect, i6)) {
                            edgeEffect.onAbsorb(i6);
                        } else {
                            m(i6);
                        }
                    } else {
                        z4 = false;
                        if (!z4) {
                            int i7 = -yVelocity;
                            float f5 = i7;
                            if (!dispatchNestedPreFling(0.0f, f5)) {
                                dispatchNestedFling(0.0f, f5, true);
                                m(i7);
                            }
                        }
                    }
                    z4 = true;
                    if (!z4) {
                    }
                } else if (this.f.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                this.f3656t = -1;
                this.f3650m = false;
                VelocityTracker velocityTracker3 = this.n;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.n = null;
                }
                z(0);
                this.f3644g.onRelease();
                this.f3645h.onRelease();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f3656t);
                if (iFindPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.f3656t + " in onTouchEvent");
                } else {
                    int y3 = (int) motionEvent.getY(iFindPointerIndex);
                    int i8 = this.f3646i - y3;
                    float x4 = motionEvent.getX(iFindPointerIndex) / getWidth();
                    float height = i8 / getHeight();
                    if (b.n(edgeEffect2) != 0.0f) {
                        fB = -b.B(edgeEffect2, -height, x4);
                        if (b.n(edgeEffect2) == 0.0f) {
                            edgeEffect2.onRelease();
                        }
                    } else {
                        if (b.n(edgeEffect) != 0.0f) {
                            fB = b.B(edgeEffect, height, 1.0f - x4);
                            if (b.n(edgeEffect) == 0.0f) {
                                edgeEffect.onRelease();
                            }
                        }
                        iRound = Math.round(f * getHeight());
                        if (iRound != 0) {
                            invalidate();
                        }
                        i5 = i8 - iRound;
                        if (!this.f3650m && Math.abs(i5) > this.f3653q) {
                            parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.f3650m = true;
                            i5 = i5 <= 0 ? i5 - this.f3653q : i5 + this.f3653q;
                        }
                        if (this.f3650m) {
                            boolean zC = this.f3615A.c(0, i5, this.f3658v, this.f3657u, 0);
                            int[] iArr = this.f3658v;
                            int[] iArr2 = this.f3657u;
                            if (zC) {
                                i5 -= iArr[1];
                                this.f3659w += iArr2[1];
                            }
                            this.f3646i = y3 - iArr2[1];
                            int scrollY = getScrollY();
                            int scrollRange = getScrollRange();
                            int overScrollMode = getOverScrollMode();
                            boolean z6 = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                            boolean z7 = s(i5, 0, getScrollY(), scrollRange) && !this.f3615A.f(0);
                            int scrollY2 = getScrollY() - scrollY;
                            iArr[1] = 0;
                            this.f3615A.d(0, scrollY2, 0, i5 - scrollY2, this.f3657u, 0, iArr);
                            int i9 = this.f3646i;
                            int i10 = iArr2[1];
                            this.f3646i = i9 - i10;
                            this.f3659w += i10;
                            if (z6) {
                                int i11 = i5 - iArr[1];
                                int i12 = scrollY + i11;
                                if (i12 < 0) {
                                    b.B(edgeEffect2, (-i11) / getHeight(), motionEvent.getX(iFindPointerIndex) / getWidth());
                                    if (!edgeEffect.isFinished()) {
                                        edgeEffect.onRelease();
                                    }
                                } else if (i12 > scrollRange) {
                                    b.B(edgeEffect, i11 / getHeight(), 1.0f - (motionEvent.getX(iFindPointerIndex) / getWidth()));
                                    if (!edgeEffect2.isFinished()) {
                                        edgeEffect2.onRelease();
                                    }
                                }
                                if (!edgeEffect2.isFinished() || !edgeEffect.isFinished()) {
                                    postInvalidateOnAnimation();
                                    z5 = false;
                                }
                                if (z5) {
                                    velocityTracker.clear();
                                }
                            } else {
                                z5 = z7;
                                if (z5 && (velocityTracker = this.n) != null) {
                                    velocityTracker.clear();
                                }
                            }
                        }
                    }
                    f = fB;
                    iRound = Math.round(f * getHeight());
                    if (iRound != 0) {
                    }
                    i5 = i8 - iRound;
                    if (!this.f3650m) {
                        parent2 = getParent();
                        if (parent2 != null) {
                        }
                        this.f3650m = true;
                        if (i5 <= 0) {
                        }
                    }
                    if (this.f3650m) {
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f3650m && getChildCount() > 0 && this.f.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                this.f3656t = -1;
                this.f3650m = false;
                VelocityTracker velocityTracker4 = this.n;
                if (velocityTracker4 != null) {
                    velocityTracker4.recycle();
                    this.n = null;
                }
                z(0);
                this.f3644g.onRelease();
                this.f3645h.onRelease();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f3646i = (int) motionEvent.getY(actionIndex);
                this.f3656t = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                r(motionEvent);
                this.f3646i = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f3656t));
            }
        } else {
            if (getChildCount() == 0) {
                motionEventObtain.recycle();
                return false;
            }
            if (this.f3650m && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f.isFinished()) {
                this.f.abortAnimation();
                z(1);
            }
            this.f3646i = (int) motionEvent.getY();
            this.f3656t = motionEvent.getPointerId(0);
            x(2, 0);
        }
        VelocityTracker velocityTracker5 = this.n;
        if (velocityTracker5 != null) {
            velocityTracker5.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    public final boolean p(View view, int i5, int i6) {
        Rect rect = this.f3641e;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        return rect.bottom + i5 >= getScrollY() && rect.top - i5 <= getScrollY() + i6;
    }

    public final void q(int[] iArr, int i5, int i6) {
        if (!this.f3617C || this.f.isFinished()) {
            int scrollY = getScrollY();
            scrollBy(0, i5);
            this.f3660x = getScrollY();
            if (this.f.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
            int scrollY2 = getScrollY() - scrollY;
            if (iArr != null) {
                iArr[1] = iArr[1] + scrollY2;
            }
            this.f3615A.d(0, scrollY2, 0, i5 - scrollY2, null, i6, iArr);
        }
    }

    public final void r(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f3656t) {
            int i5 = actionIndex == 0 ? 1 : 0;
            this.f3646i = (int) motionEvent.getY(i5);
            this.f3656t = motionEvent.getPointerId(i5);
            VelocityTracker velocityTracker = this.n;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (this.f3647j) {
            this.f3649l = view2;
        } else {
            Rect rect = this.f3641e;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iJ = j(rect);
            if (iJ != 0) {
                scrollBy(0, iJ);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z4) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int iJ = j(rect);
        boolean z5 = iJ != 0;
        if (z5) {
            if (z4) {
                scrollBy(0, iJ);
            } else {
                w(0, iJ, 250);
            }
        }
        return z5;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z4) {
        VelocityTracker velocityTracker;
        if (z4 && (velocityTracker = this.n) != null) {
            velocityTracker.recycle();
            this.n = null;
        }
        super.requestDisallowInterceptTouchEvent(z4);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f3647j = true;
        super.requestLayout();
    }

    public final boolean s(int i5, int i6, int i7, int i8) {
        boolean z4;
        boolean z5;
        getOverScrollMode();
        super.computeHorizontalScrollRange();
        super.computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        super.computeVerticalScrollExtent();
        int i9 = i7 + i5;
        if (i6 <= 0 && i6 >= 0) {
            z4 = false;
        } else {
            i6 = 0;
            z4 = true;
        }
        if (i9 > i8) {
            z5 = true;
        } else if (i9 < 0) {
            i8 = 0;
            z5 = true;
        } else {
            i8 = i9;
            z5 = false;
        }
        if (z5 && !this.f3615A.f(1)) {
            this.f.springBack(i6, i8, 0, 0, 0, getScrollRange());
        }
        super.scrollTo(i6, i8);
        return z4 || z5;
    }

    @Override // android.view.View
    public final void scrollTo(int i5, int i6) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i5 < 0) {
                i5 = 0;
            } else if (width + i5 > width2) {
                i5 = width2 - width;
            }
            if (height >= height2 || i6 < 0) {
                i6 = 0;
            } else if (height + i6 > height2) {
                i6 = height2 - height;
            }
            if (i5 == getScrollX() && i6 == getScrollY()) {
                return;
            }
            super.scrollTo(i5, i6);
        }
    }

    public void setFillViewport(boolean z4) {
        if (z4 != this.f3651o) {
            this.f3651o = z4;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z4) {
        C0039m c0039m = this.f3615A;
        if (c0039m.f995d) {
            WeakHashMap weakHashMap = Q.f940a;
            I.z(c0039m.f994c);
        }
        c0039m.f995d = z4;
    }

    public void setOnScrollChangeListener(l lVar) {
    }

    public void setSmoothScrollingEnabled(boolean z4) {
        this.f3652p = z4;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i5) {
        return this.f3615A.g(i5, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        z(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean t(int i5, int i6, int i7) {
        boolean z4;
        int height = getHeight();
        int scrollY = getScrollY();
        int i8 = height + scrollY;
        boolean z5 = i5 == 33;
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z6 = false;
        for (int i9 = 0; i9 < size; i9++) {
            View view2 = focusables.get(i9);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i6 < bottom && top < i7) {
                boolean z7 = i6 < top && bottom < i7;
                if (view == null) {
                    view = view2;
                    z6 = z7;
                } else {
                    boolean z8 = (z5 && top < view.getTop()) || (!z5 && bottom > view.getBottom());
                    if (z6) {
                        if (z7 && z8) {
                            view = view2;
                        }
                    } else if (z7) {
                        view = view2;
                        z6 = true;
                    } else if (z8) {
                    }
                }
            }
        }
        if (view == null) {
            view = this;
        }
        if (i6 < scrollY || i7 > i8) {
            k(z5 ? i6 - scrollY : i7 - i8);
            z4 = true;
        } else {
            z4 = false;
        }
        if (view != findFocus()) {
            view.requestFocus(i5);
        }
        return z4;
    }

    public final boolean u(EdgeEffect edgeEffect, int i5) {
        if (i5 > 0) {
            return true;
        }
        float fN = b.n(edgeEffect) * getHeight();
        float fAbs = Math.abs(-i5) * 0.35f;
        float f = this.f3637c * 0.015f;
        double dLog = Math.log(fAbs / f);
        double d2 = f3612h0;
        return ((float) (Math.exp((d2 / (d2 - 1.0d)) * dLog) * ((double) f))) < fN;
    }

    public final void v(MotionEvent motionEvent, int i5) {
        motionEvent.getDevice();
        AbstractC0739a.q(this, motionEvent.getToolType(0), i5 == 20001 ? null : PointerIcon.getSystemIcon(this.f3634W, i5));
    }

    public final void w(int i5, int i6, int i7) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f3639d > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i6 + scrollY, Math.max(0, height - height2))) - scrollY, i7);
            z(1);
            this.f3660x = getScrollY();
            postInvalidateOnAnimation();
        } else {
            if (!this.f.isFinished()) {
                this.f.abortAnimation();
                z(1);
            }
            scrollBy(i5, i6);
        }
        this.f3639d = AnimationUtils.currentAnimationTimeMillis();
    }

    public final void x(int i5, int i6) {
        this.f3615A.g(i5, i6);
    }

    public final boolean y(MotionEvent motionEvent) {
        boolean z4;
        EdgeEffect edgeEffect = this.f3644g;
        if (b.n(edgeEffect) != 0.0f) {
            b.B(edgeEffect, 0.0f, motionEvent.getX() / getWidth());
            z4 = true;
        } else {
            z4 = false;
        }
        EdgeEffect edgeEffect2 = this.f3645h;
        if (b.n(edgeEffect2) == 0.0f) {
            return z4;
        }
        b.B(edgeEffect2, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    public final void z(int i5) {
        this.f3615A.h(i5);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i5) {
        if (getChildCount() <= 0) {
            super.addView(view, i5);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i5, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i5, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
