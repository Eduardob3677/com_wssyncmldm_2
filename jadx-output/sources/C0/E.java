package C0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class E extends AnimatorListenerAdapter implements s {

    /* renamed from: a, reason: collision with root package name */
    public final View f252a;

    /* renamed from: b, reason: collision with root package name */
    public final int f253b;

    /* renamed from: c, reason: collision with root package name */
    public final ViewGroup f254c;

    /* renamed from: e, reason: collision with root package name */
    public boolean f256e;
    public boolean f = false;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f255d = true;

    public E(int i5, View view) {
        this.f252a = view;
        this.f253b = i5;
        this.f254c = (ViewGroup) view.getParent();
        f(true);
    }

    @Override // C0.s
    public final void a() {
    }

    @Override // C0.s
    public final void b() {
        f(false);
    }

    @Override // C0.s
    public final void c(t tVar) {
        if (!this.f) {
            C0013c c0013c = A.f247a;
            this.f252a.setTransitionVisibility(this.f253b);
            ViewGroup viewGroup = this.f254c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        f(false);
        tVar.w(this);
    }

    @Override // C0.s
    public final void d(t tVar) {
    }

    @Override // C0.s
    public final void e() {
        f(true);
    }

    public final void f(boolean z4) {
        ViewGroup viewGroup;
        if (!this.f255d || this.f256e == z4 || (viewGroup = this.f254c) == null) {
            return;
        }
        this.f256e = z4;
        viewGroup.suppressLayout(z4);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.f) {
            C0013c c0013c = A.f247a;
            this.f252a.setTransitionVisibility(this.f253b);
            ViewGroup viewGroup = this.f254c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        f(false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        if (this.f) {
            return;
        }
        C0013c c0013c = A.f247a;
        this.f252a.setTransitionVisibility(this.f253b);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        if (this.f) {
            return;
        }
        C0013c c0013c = A.f247a;
        this.f252a.setTransitionVisibility(0);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
