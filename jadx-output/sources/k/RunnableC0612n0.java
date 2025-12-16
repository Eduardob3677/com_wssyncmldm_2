package k;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* renamed from: k.n0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0612n0 implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7939c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AbstractViewOnTouchListenerC0615o0 f7940d;

    public /* synthetic */ RunnableC0612n0(AbstractViewOnTouchListenerC0615o0 abstractViewOnTouchListenerC0615o0, int i5) {
        this.f7939c = i5;
        this.f7940d = abstractViewOnTouchListenerC0615o0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7939c) {
            case 0:
                ViewParent parent = this.f7940d.f.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                    break;
                }
                break;
            default:
                AbstractViewOnTouchListenerC0615o0 abstractViewOnTouchListenerC0615o0 = this.f7940d;
                abstractViewOnTouchListenerC0615o0.a();
                View view = abstractViewOnTouchListenerC0615o0.f;
                if (view.isEnabled() && !view.isLongClickable() && abstractViewOnTouchListenerC0615o0.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    abstractViewOnTouchListenerC0615o0.f7951i = true;
                    break;
                }
                break;
        }
    }
}
