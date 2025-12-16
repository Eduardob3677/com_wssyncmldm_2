package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.animation.Animation;

/* renamed from: androidx.fragment.app.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class AnimationAnimationListenerC0119k implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u0 f3906a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0120l f3907b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f3908c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0115g f3909d;

    public AnimationAnimationListenerC0119k(View view, C0115g c0115g, C0120l c0120l, u0 u0Var) {
        this.f3906a = u0Var;
        this.f3907b = c0120l;
        this.f3908c = view;
        this.f3909d = c0115g;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        d3.i.e("animation", animation);
        C0120l c0120l = this.f3907b;
        c0120l.f3912a.post(new RunnableC0112d(c0120l, this.f3908c, this.f3909d));
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Animation from operation " + this.f3906a + " has ended.");
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
        d3.i.e("animation", animation);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        d3.i.e("animation", animation);
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Animation from operation " + this.f3906a + " has reached onAnimationStart.");
        }
    }
}
