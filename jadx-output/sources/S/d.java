package S;

import B1.h;
import J.Q;
import Z0.j;
import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.OverScroller;
import java.util.Arrays;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: v, reason: collision with root package name */
    public static final F0.c f2442v = new F0.c(1);

    /* renamed from: a, reason: collision with root package name */
    public int f2443a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2444b;

    /* renamed from: d, reason: collision with root package name */
    public float[] f2446d;

    /* renamed from: e, reason: collision with root package name */
    public float[] f2447e;
    public float[] f;

    /* renamed from: g, reason: collision with root package name */
    public float[] f2448g;

    /* renamed from: h, reason: collision with root package name */
    public int[] f2449h;

    /* renamed from: i, reason: collision with root package name */
    public int[] f2450i;

    /* renamed from: j, reason: collision with root package name */
    public int[] f2451j;

    /* renamed from: k, reason: collision with root package name */
    public int f2452k;

    /* renamed from: l, reason: collision with root package name */
    public VelocityTracker f2453l;

    /* renamed from: m, reason: collision with root package name */
    public final float f2454m;
    public final float n;

    /* renamed from: o, reason: collision with root package name */
    public final int f2455o;

    /* renamed from: p, reason: collision with root package name */
    public final OverScroller f2456p;

    /* renamed from: q, reason: collision with root package name */
    public final j f2457q;

    /* renamed from: r, reason: collision with root package name */
    public View f2458r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f2459s;

    /* renamed from: t, reason: collision with root package name */
    public final ViewGroup f2460t;

    /* renamed from: c, reason: collision with root package name */
    public int f2445c = -1;

    /* renamed from: u, reason: collision with root package name */
    public final h f2461u = new h(5, this);

    public d(Context context, ViewGroup viewGroup, j jVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (jVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f2460t = viewGroup;
        this.f2457q = jVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f2455o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f2444b = viewConfiguration.getScaledTouchSlop();
        this.f2454m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f2456p = new OverScroller(context, f2442v);
    }

    public final void a() {
        this.f2445c = -1;
        float[] fArr = this.f2446d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f2447e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.f2448g, 0.0f);
            Arrays.fill(this.f2449h, 0);
            Arrays.fill(this.f2450i, 0);
            Arrays.fill(this.f2451j, 0);
            this.f2452k = 0;
        }
        VelocityTracker velocityTracker = this.f2453l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f2453l = null;
        }
    }

    public final void b(int i5, View view) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = this.f2460t;
        if (parent != viewGroup) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + viewGroup + ")");
        }
        this.f2458r = view;
        this.f2445c = i5;
        this.f2457q.Y(i5, view);
        n(1);
    }

    public final boolean c(View view, float f, float f5) {
        if (view == null) {
            return false;
        }
        j jVar = this.f2457q;
        boolean z4 = jVar.O(view) > 0;
        boolean z5 = jVar.P() > 0;
        if (!z4 || !z5) {
            return z4 ? Math.abs(f) > ((float) this.f2444b) : z5 && Math.abs(f5) > ((float) this.f2444b);
        }
        float f6 = (f5 * f5) + (f * f);
        int i5 = this.f2444b;
        return f6 > ((float) (i5 * i5));
    }

    public final void d(int i5) {
        float[] fArr = this.f2446d;
        if (fArr != null) {
            int i6 = this.f2452k;
            int i7 = 1 << i5;
            if ((i6 & i7) != 0) {
                fArr[i5] = 0.0f;
                this.f2447e[i5] = 0.0f;
                this.f[i5] = 0.0f;
                this.f2448g[i5] = 0.0f;
                this.f2449h[i5] = 0;
                this.f2450i[i5] = 0;
                this.f2451j[i5] = 0;
                this.f2452k = (~i7) & i6;
            }
        }
    }

    public final int e(int i5, int i6, int i7) {
        if (i5 == 0) {
            return 0;
        }
        float width = this.f2460t.getWidth() / 2;
        float fSin = (((float) Math.sin((Math.min(1.0f, Math.abs(i5) / r3) - 0.5f) * 0.47123894f)) * width) + width;
        int iAbs = Math.abs(i6);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fSin / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i5) / i7) + 1.0f) * 256.0f), 600);
    }

    public final boolean f() {
        if (this.f2443a == 2) {
            OverScroller overScroller = this.f2456p;
            boolean zComputeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.f2458r.getLeft();
            int top = currY - this.f2458r.getTop();
            if (left != 0) {
                View view = this.f2458r;
                WeakHashMap weakHashMap = Q.f940a;
                view.offsetLeftAndRight(left);
            }
            if (top != 0) {
                View view2 = this.f2458r;
                WeakHashMap weakHashMap2 = Q.f940a;
                view2.offsetTopAndBottom(top);
            }
            if (left != 0 || top != 0) {
                this.f2457q.a0(this.f2458r, currX, currY);
            }
            if (zComputeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                this.f2460t.post(this.f2461u);
            }
        }
        return this.f2443a == 2;
    }

    public final View g(int i5, int i6) {
        ViewGroup viewGroup = this.f2460t;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            this.f2457q.getClass();
            View childAt = viewGroup.getChildAt(childCount);
            if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && i6 >= childAt.getTop() && i6 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean h(int i5, int i6, int i7, int i8) {
        float f;
        float f5;
        float f6;
        float f7;
        int left = this.f2458r.getLeft();
        int top = this.f2458r.getTop();
        int i9 = i5 - left;
        int i10 = i6 - top;
        OverScroller overScroller = this.f2456p;
        int i11 = 0;
        if (i9 == 0 && i10 == 0) {
            overScroller.abortAnimation();
            n(0);
            return false;
        }
        View view = this.f2458r;
        int i12 = (int) this.n;
        int i13 = (int) this.f2454m;
        int iAbs = Math.abs(i7);
        if (iAbs < i12) {
            i7 = 0;
        } else if (iAbs > i13) {
            i7 = i7 > 0 ? i13 : -i13;
        }
        int iAbs2 = Math.abs(i8);
        if (iAbs2 < i12) {
            i8 = i11;
        } else if (iAbs2 > i13) {
            if (i8 > 0) {
                i8 = i13;
            } else {
                i11 = -i13;
                i8 = i11;
            }
        }
        int iAbs3 = Math.abs(i9);
        int iAbs4 = Math.abs(i10);
        int iAbs5 = Math.abs(i7);
        int iAbs6 = Math.abs(i8);
        int i14 = iAbs5 + iAbs6;
        int i15 = iAbs3 + iAbs4;
        if (i7 != 0) {
            f = iAbs5;
            f5 = i14;
        } else {
            f = iAbs3;
            f5 = i15;
        }
        float f8 = f / f5;
        if (i8 != 0) {
            f6 = iAbs6;
            f7 = i14;
        } else {
            f6 = iAbs4;
            f7 = i15;
        }
        float f9 = f6 / f7;
        j jVar = this.f2457q;
        overScroller.startScroll(left, top, i9, i10, (int) ((e(i10, i8, jVar.P()) * f9) + (e(i9, i7, jVar.O(view)) * f8)));
        n(2);
        return true;
    }

    public final boolean i(int i5) {
        if ((this.f2452k & (1 << i5)) != 0 && i5 != -1) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i5 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public final void j(MotionEvent motionEvent) {
        int i5;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f2453l == null) {
            this.f2453l = VelocityTracker.obtain();
        }
        this.f2453l.addMovement(motionEvent);
        int i6 = 0;
        if (actionMasked == 0) {
            float x4 = motionEvent.getX();
            float y3 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewG = g((int) x4, (int) y3);
            l(x4, y3, pointerId);
            q(pointerId, viewG);
            int i7 = this.f2449h[pointerId];
            return;
        }
        if (actionMasked == 1) {
            if (this.f2443a == 1) {
                k();
            }
            a();
            return;
        }
        j jVar = this.f2457q;
        if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f2443a == 1) {
                    this.f2459s = true;
                    jVar.b0(this.f2458r, 0.0f, 0.0f);
                    this.f2459s = false;
                    if (this.f2443a == 1) {
                        n(0);
                    }
                }
                a();
                return;
            }
            if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x5 = motionEvent.getX(actionIndex);
                float y4 = motionEvent.getY(actionIndex);
                l(x5, y4, pointerId2);
                if (this.f2443a == 0) {
                    q(pointerId2, g((int) x5, (int) y4));
                    int i8 = this.f2449h[pointerId2];
                    return;
                }
                int i9 = (int) x5;
                int i10 = (int) y4;
                View view = this.f2458r;
                if (view != null) {
                    i6 = (i9 < view.getLeft() || i9 >= view.getRight() || i10 < view.getTop() || i10 >= view.getBottom()) ? 0 : 1;
                }
                if (i6 != 0) {
                    q(pointerId2, this.f2458r);
                    return;
                }
                return;
            }
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f2443a == 1 && pointerId3 == this.f2445c) {
                int pointerCount = motionEvent.getPointerCount();
                while (true) {
                    if (i6 >= pointerCount) {
                        i5 = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i6);
                    if (pointerId4 != this.f2445c) {
                        View viewG2 = g((int) motionEvent.getX(i6), (int) motionEvent.getY(i6));
                        View view2 = this.f2458r;
                        if (viewG2 == view2 && q(pointerId4, view2)) {
                            i5 = this.f2445c;
                            break;
                        }
                    }
                    i6++;
                }
                if (i5 == -1) {
                    k();
                }
            }
            d(pointerId3);
            return;
        }
        if (this.f2443a == 1) {
            if (i(this.f2445c)) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f2445c);
                float x6 = motionEvent.getX(iFindPointerIndex);
                float y5 = motionEvent.getY(iFindPointerIndex);
                float[] fArr = this.f;
                int i11 = this.f2445c;
                int i12 = (int) (x6 - fArr[i11]);
                int i13 = (int) (y5 - this.f2448g[i11]);
                int left = this.f2458r.getLeft() + i12;
                int top = this.f2458r.getTop() + i13;
                int left2 = this.f2458r.getLeft();
                int top2 = this.f2458r.getTop();
                if (i12 != 0) {
                    left = jVar.o(left, this.f2458r);
                    WeakHashMap weakHashMap = Q.f940a;
                    this.f2458r.offsetLeftAndRight(left - left2);
                }
                if (i13 != 0) {
                    top = jVar.p(top, this.f2458r);
                    WeakHashMap weakHashMap2 = Q.f940a;
                    this.f2458r.offsetTopAndBottom(top - top2);
                }
                if (i12 != 0 || i13 != 0) {
                    jVar.a0(this.f2458r, left, top);
                }
                m(motionEvent);
                return;
            }
            return;
        }
        int pointerCount2 = motionEvent.getPointerCount();
        while (i6 < pointerCount2) {
            int pointerId5 = motionEvent.getPointerId(i6);
            if (i(pointerId5)) {
                float x7 = motionEvent.getX(i6);
                float y6 = motionEvent.getY(i6);
                float f = x7 - this.f2446d[pointerId5];
                float f5 = y6 - this.f2447e[pointerId5];
                Math.abs(f);
                Math.abs(f5);
                int i14 = this.f2449h[pointerId5];
                Math.abs(f5);
                Math.abs(f);
                int i15 = this.f2449h[pointerId5];
                Math.abs(f);
                Math.abs(f5);
                int i16 = this.f2449h[pointerId5];
                Math.abs(f5);
                Math.abs(f);
                int i17 = this.f2449h[pointerId5];
                if (this.f2443a != 1) {
                    View viewG3 = g((int) x7, (int) y6);
                    if (c(viewG3, f, f5) && q(pointerId5, viewG3)) {
                        break;
                    }
                } else {
                    break;
                }
            }
            i6++;
        }
        m(motionEvent);
    }

    public final void k() {
        VelocityTracker velocityTracker = this.f2453l;
        float f = this.f2454m;
        velocityTracker.computeCurrentVelocity(1000, f);
        float xVelocity = this.f2453l.getXVelocity(this.f2445c);
        float f5 = this.n;
        float fAbs = Math.abs(xVelocity);
        float f6 = 0.0f;
        if (fAbs < f5) {
            xVelocity = 0.0f;
        } else if (fAbs > f) {
            xVelocity = xVelocity > 0.0f ? f : -f;
        }
        float yVelocity = this.f2453l.getYVelocity(this.f2445c);
        float fAbs2 = Math.abs(yVelocity);
        if (fAbs2 >= f5) {
            if (fAbs2 > f) {
                if (yVelocity <= 0.0f) {
                    f = -f;
                }
                f6 = f;
            } else {
                f6 = yVelocity;
            }
        }
        this.f2459s = true;
        this.f2457q.b0(this.f2458r, xVelocity, f6);
        this.f2459s = false;
        if (this.f2443a == 1) {
            n(0);
        }
    }

    public final void l(float f, float f5, int i5) {
        float[] fArr = this.f2446d;
        if (fArr == null || fArr.length <= i5) {
            int i6 = i5 + 1;
            float[] fArr2 = new float[i6];
            float[] fArr3 = new float[i6];
            float[] fArr4 = new float[i6];
            float[] fArr5 = new float[i6];
            int[] iArr = new int[i6];
            int[] iArr2 = new int[i6];
            int[] iArr3 = new int[i6];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f2447e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f2448g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f2449h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f2450i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f2451j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f2446d = fArr2;
            this.f2447e = fArr3;
            this.f = fArr4;
            this.f2448g = fArr5;
            this.f2449h = iArr;
            this.f2450i = iArr2;
            this.f2451j = iArr3;
        }
        float[] fArr9 = this.f2446d;
        this.f[i5] = f;
        fArr9[i5] = f;
        float[] fArr10 = this.f2447e;
        this.f2448g[i5] = f5;
        fArr10[i5] = f5;
        int[] iArr7 = this.f2449h;
        int i7 = (int) f;
        int i8 = (int) f5;
        ViewGroup viewGroup = this.f2460t;
        int left = viewGroup.getLeft();
        int i9 = this.f2455o;
        int i10 = i7 < left + i9 ? 1 : 0;
        if (i8 < viewGroup.getTop() + i9) {
            i10 |= 4;
        }
        if (i7 > viewGroup.getRight() - i9) {
            i10 |= 2;
        }
        if (i8 > viewGroup.getBottom() - i9) {
            i10 |= 8;
        }
        iArr7[i5] = i10;
        this.f2452k |= 1 << i5;
    }

    public final void m(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i5 = 0; i5 < pointerCount; i5++) {
            int pointerId = motionEvent.getPointerId(i5);
            if (i(pointerId)) {
                float x4 = motionEvent.getX(i5);
                float y3 = motionEvent.getY(i5);
                this.f[pointerId] = x4;
                this.f2448g[pointerId] = y3;
            }
        }
    }

    public final void n(int i5) {
        this.f2460t.removeCallbacks(this.f2461u);
        if (this.f2443a != i5) {
            this.f2443a = i5;
            this.f2457q.Z(i5);
            if (this.f2443a == 0) {
                this.f2458r = null;
            }
        }
    }

    public final boolean o(int i5, int i6) {
        if (this.f2459s) {
            return h(i5, i6, (int) this.f2453l.getXVelocity(this.f2445c), (int) this.f2453l.getYVelocity(this.f2445c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0114  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean p(MotionEvent motionEvent) {
        View viewG;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f2453l == null) {
            this.f2453l = VelocityTracker.obtain();
        }
        this.f2453l.addMovement(motionEvent);
        if (actionMasked == 0) {
            float x4 = motionEvent.getX();
            float y3 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            l(x4, y3, pointerId);
            View viewG2 = g((int) x4, (int) y3);
            if (viewG2 == this.f2458r && this.f2443a == 2) {
                q(pointerId, viewG2);
            }
            int i5 = this.f2449h[pointerId];
        } else if (actionMasked == 1) {
            a();
        } else if (actionMasked != 2) {
            if (actionMasked != 3) {
                if (actionMasked == 5) {
                    int pointerId2 = motionEvent.getPointerId(actionIndex);
                    float x5 = motionEvent.getX(actionIndex);
                    float y4 = motionEvent.getY(actionIndex);
                    l(x5, y4, pointerId2);
                    int i6 = this.f2443a;
                    if (i6 == 0) {
                        int i7 = this.f2449h[pointerId2];
                    } else if (i6 == 2 && (viewG = g((int) x5, (int) y4)) == this.f2458r) {
                        q(pointerId2, viewG);
                    }
                } else if (actionMasked == 6) {
                    d(motionEvent.getPointerId(actionIndex));
                }
            }
        } else if (this.f2446d != null && this.f2447e != null) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i8 = 0; i8 < pointerCount; i8++) {
                int pointerId3 = motionEvent.getPointerId(i8);
                if (i(pointerId3)) {
                    float x6 = motionEvent.getX(i8);
                    float y5 = motionEvent.getY(i8);
                    float f = x6 - this.f2446d[pointerId3];
                    float f5 = y5 - this.f2447e[pointerId3];
                    View viewG3 = g((int) x6, (int) y5);
                    boolean z4 = viewG3 != null && c(viewG3, f, f5);
                    if (z4) {
                        int left = viewG3.getLeft();
                        j jVar = this.f2457q;
                        int iO = jVar.o(((int) f) + left, viewG3);
                        int top = viewG3.getTop();
                        int iP = jVar.p(((int) f5) + top, viewG3);
                        int iO2 = jVar.O(viewG3);
                        int iP2 = jVar.P();
                        if ((iO2 == 0 || (iO2 > 0 && iO == left)) && (iP2 == 0 || (iP2 > 0 && iP == top))) {
                            break;
                        }
                        Math.abs(f);
                        Math.abs(f5);
                        int i9 = this.f2449h[pointerId3];
                        Math.abs(f5);
                        Math.abs(f);
                        int i10 = this.f2449h[pointerId3];
                        Math.abs(f);
                        Math.abs(f5);
                        int i11 = this.f2449h[pointerId3];
                        Math.abs(f5);
                        Math.abs(f);
                        int i12 = this.f2449h[pointerId3];
                        if (this.f2443a == 1 || (z4 && q(pointerId3, viewG3))) {
                            break;
                        }
                    }
                }
            }
            m(motionEvent);
        }
        return this.f2443a == 1;
    }

    public final boolean q(int i5, View view) {
        if (view == this.f2458r && this.f2445c == i5) {
            return true;
        }
        if (view == null || !this.f2457q.d0(i5, view)) {
            return false;
        }
        this.f2445c = i5;
        b(i5, view);
        return true;
    }
}
