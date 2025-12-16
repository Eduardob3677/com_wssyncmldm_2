package e;

import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.appcompat.widget.ContentFrameLayout;
import f1.AbstractC0420a;

/* loaded from: classes.dex */
public final class A extends ContentFrameLayout {

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ C f6585l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A(C c2, i.e eVar) {
        super(eVar, null);
        this.f6585l = c2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f6585l.v(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int x4 = (int) motionEvent.getX();
            int y3 = (int) motionEvent.getY();
            if (x4 < -5 || y3 < -5 || x4 > getWidth() + 5 || y3 > getHeight() + 5) {
                C c2 = this.f6585l;
                c2.t(c2.A(0), true);
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i5) {
        setBackgroundDrawable(AbstractC0420a.A(getContext(), i5));
    }
}
