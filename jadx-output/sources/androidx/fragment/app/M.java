package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class M implements View.OnAttachStateChangeListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g0 f3753c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ N f3754d;

    public M(N n, g0 g0Var) {
        this.f3754d = n;
        this.f3753c = g0Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        g0 g0Var = this.f3753c;
        Fragment fragment = g0Var.f3867c;
        g0Var.k();
        C0120l.l((ViewGroup) fragment.mView.getParent(), this.f3754d.f3755c).k();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
