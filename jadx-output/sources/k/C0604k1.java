package k;

import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.widget.SeslProgressBar;
import java.lang.ref.WeakReference;

/* renamed from: k.k1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0604k1 extends Animatable2.AnimationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f7903a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f7904b = new Handler(Looper.getMainLooper());

    public C0604k1(SeslProgressBar seslProgressBar) {
        this.f7903a = new WeakReference(seslProgressBar);
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        this.f7904b.post(new RunnableC0603k0(1, this));
    }
}
