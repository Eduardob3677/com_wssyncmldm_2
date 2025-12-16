package C0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import o.C0713b;

/* loaded from: classes.dex */
public final class p extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0713b f294a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f295b;

    public p(t tVar, C0713b c0713b) {
        this.f295b = tVar;
        this.f294a = c0713b;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f294a.remove(animator);
        this.f295b.f316o.remove(animator);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f295b.f316o.add(animator);
    }
}
