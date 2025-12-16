package x1;

import android.os.CancellationSignal;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import com.google.android.material.appbar.SeslImmersiveScrollBehavior;

/* renamed from: x1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class WindowInsetsAnimationControlListenerC0905a implements WindowInsetsAnimationControlListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SeslImmersiveScrollBehavior f9630a;

    public WindowInsetsAnimationControlListenerC0905a(SeslImmersiveScrollBehavior seslImmersiveScrollBehavior) {
        this.f9630a = seslImmersiveScrollBehavior;
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public final void onCancelled(WindowInsetsAnimationController windowInsetsAnimationController) {
        SeslImmersiveScrollBehavior seslImmersiveScrollBehavior = this.f9630a;
        WindowInsetsAnimationController windowInsetsAnimationController2 = seslImmersiveScrollBehavior.f5814k;
        if (windowInsetsAnimationController2 != null) {
            windowInsetsAnimationController2.finish(seslImmersiveScrollBehavior.f5815l);
        }
        CancellationSignal cancellationSignal = seslImmersiveScrollBehavior.f5813j;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
        }
        seslImmersiveScrollBehavior.f5814k = null;
        seslImmersiveScrollBehavior.f5813j = null;
        seslImmersiveScrollBehavior.f5815l = false;
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public final void onFinished(WindowInsetsAnimationController windowInsetsAnimationController) {
        SeslImmersiveScrollBehavior seslImmersiveScrollBehavior = this.f9630a;
        seslImmersiveScrollBehavior.f5814k = null;
        seslImmersiveScrollBehavior.f5813j = null;
        seslImmersiveScrollBehavior.f5815l = false;
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public final void onReady(WindowInsetsAnimationController windowInsetsAnimationController, int i5) {
        this.f9630a.getClass();
    }
}
