package k;

import android.view.animation.Animation;
import androidx.appcompat.widget.SwitchCompat;

/* loaded from: classes.dex */
public final class t1 implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f8005a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SwitchCompat f8006b;

    public t1(SwitchCompat switchCompat, boolean z4) {
        this.f8006b = switchCompat;
        this.f8005a = z4;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        SwitchCompat switchCompat = this.f8006b;
        if (switchCompat.f3481N == animation) {
            switchCompat.setThumbPosition(this.f8005a ? 1.0f : 0.0f);
            switchCompat.f3481N = null;
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
