package k;

import android.view.MotionEvent;
import android.view.View;

/* renamed from: k.w0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnTouchListenerC0631w0 implements View.OnTouchListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0633x0 f8021c;

    public ViewOnTouchListenerC0631w0(C0633x0 c0633x0) {
        this.f8021c = c0633x0;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C0636z c0636z;
        int action = motionEvent.getAction();
        int x4 = (int) motionEvent.getX();
        int y3 = (int) motionEvent.getY();
        C0633x0 c0633x0 = this.f8021c;
        if (action == 0 && (c0636z = c0633x0.f8050z) != null && c0636z.isShowing() && x4 >= 0 && x4 < c0633x0.f8050z.getWidth() && y3 >= 0 && y3 < c0633x0.f8050z.getHeight()) {
            c0633x0.f8046v.postDelayed(c0633x0.f8042r, 250L);
            return false;
        }
        if (action != 1) {
            return false;
        }
        c0633x0.f8046v.removeCallbacks(c0633x0.f8042r);
        return false;
    }
}
