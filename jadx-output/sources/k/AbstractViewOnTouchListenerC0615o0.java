package k;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import j.InterfaceC0524y;

/* renamed from: k.o0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractViewOnTouchListenerC0615o0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: c, reason: collision with root package name */
    public final float f7946c;

    /* renamed from: d, reason: collision with root package name */
    public final int f7947d;

    /* renamed from: e, reason: collision with root package name */
    public final int f7948e;
    public final View f;

    /* renamed from: g, reason: collision with root package name */
    public RunnableC0612n0 f7949g;

    /* renamed from: h, reason: collision with root package name */
    public RunnableC0612n0 f7950h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f7951i;

    /* renamed from: j, reason: collision with root package name */
    public int f7952j;

    /* renamed from: k, reason: collision with root package name */
    public final int[] f7953k = new int[2];

    public AbstractViewOnTouchListenerC0615o0(View view) {
        this.f = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f7946c = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f7947d = tapTimeout;
        this.f7948e = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        RunnableC0612n0 runnableC0612n0 = this.f7950h;
        View view = this.f;
        if (runnableC0612n0 != null) {
            view.removeCallbacks(runnableC0612n0);
        }
        RunnableC0612n0 runnableC0612n02 = this.f7949g;
        if (runnableC0612n02 != null) {
            view.removeCallbacks(runnableC0612n02);
        }
    }

    public abstract InterfaceC0524y b();

    public abstract boolean c();

    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0108  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouch(View view, MotionEvent motionEvent) throws Resources.NotFoundException {
        boolean z4;
        C0606l0 c0606l0J;
        boolean z5 = this.f7951i;
        View view2 = this.f;
        if (z5) {
            InterfaceC0524y interfaceC0524yB = b();
            if (interfaceC0524yB == null || !interfaceC0524yB.b() || (c0606l0J = interfaceC0524yB.j()) == null || !c0606l0J.isShown()) {
                InterfaceC0524y interfaceC0524yB2 = b();
                if (interfaceC0524yB2 != null && interfaceC0524yB2.b()) {
                    interfaceC0524yB2.dismiss();
                }
                z4 = false;
            } else {
                MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                int[] iArr = this.f7953k;
                view2.getLocationOnScreen(iArr);
                motionEventObtainNoHistory.offsetLocation(iArr[0], iArr[1]);
                c0606l0J.getLocationOnScreen(iArr);
                motionEventObtainNoHistory.offsetLocation(-iArr[0], -iArr[1]);
                boolean zB = c0606l0J.b(motionEventObtainNoHistory, this.f7952j);
                motionEventObtainNoHistory.recycle();
                int actionMasked = motionEvent.getActionMasked();
                boolean z6 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                if (zB && z6) {
                    z4 = true;
                }
            }
        } else if (view2.isEnabled()) {
            int actionMasked2 = motionEvent.getActionMasked();
            if (actionMasked2 == 0) {
                this.f7952j = motionEvent.getPointerId(0);
                if (this.f7949g == null) {
                    this.f7949g = new RunnableC0612n0(this, 0);
                }
                view2.postDelayed(this.f7949g, this.f7947d);
                if (this.f7950h == null) {
                    this.f7950h = new RunnableC0612n0(this, 1);
                }
                view2.postDelayed(this.f7950h, this.f7948e);
            } else if (actionMasked2 == 1) {
                a();
            } else if (actionMasked2 == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f7952j);
                if (iFindPointerIndex >= 0) {
                    float x4 = motionEvent.getX(iFindPointerIndex);
                    float y3 = motionEvent.getY(iFindPointerIndex);
                    float f = this.f7946c;
                    float f5 = -f;
                    if (x4 < f5 || y3 < f5 || x4 >= (view2.getRight() - view2.getLeft()) + f || y3 >= (view2.getBottom() - view2.getTop()) + f) {
                        a();
                        view2.getParent().requestDisallowInterceptTouchEvent(true);
                        if (c()) {
                            z4 = true;
                        }
                        if (z4) {
                            long jUptimeMillis = SystemClock.uptimeMillis();
                            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                            view2.onTouchEvent(motionEventObtain);
                            motionEventObtain.recycle();
                        }
                    }
                }
            } else if (actionMasked2 == 3) {
            }
            z4 = false;
            if (z4) {
            }
        } else {
            z4 = false;
            if (z4) {
            }
        }
        this.f7951i = z4;
        return z4 || z5;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f7951i = false;
        this.f7952j = -1;
        RunnableC0612n0 runnableC0612n0 = this.f7949g;
        if (runnableC0612n0 != null) {
            this.f.removeCallbacks(runnableC0612n0);
        }
    }
}
