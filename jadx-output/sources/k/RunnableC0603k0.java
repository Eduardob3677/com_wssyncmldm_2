package k;

import android.graphics.drawable.AnimatedVectorDrawable;
import androidx.appcompat.widget.SeslProgressBar;
import androidx.appcompat.widget.Toolbar;

/* renamed from: k.k0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0603k0 implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7901c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7902d;

    public /* synthetic */ RunnableC0603k0(int i5, Object obj) {
        this.f7901c = i5;
        this.f7902d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7901c) {
            case 0:
                C0606l0 c0606l0 = (C0606l0) this.f7902d;
                c0606l0.n = null;
                c0606l0.drawableStateChanged();
                break;
            case 1:
                SeslProgressBar seslProgressBar = (SeslProgressBar) ((C0604k1) this.f7902d).f7903a.get();
                if (seslProgressBar != null) {
                    ((AnimatedVectorDrawable) seslProgressBar.E).start();
                    break;
                }
                break;
            default:
                ((Toolbar) this.f7902d).w();
                break;
        }
    }
}
