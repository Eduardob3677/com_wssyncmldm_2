package j0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: j0.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0533e extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7433a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b0 f7434b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f7435c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f7436d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0539k f7437e;

    public C0533e(C0539k c0539k, b0 b0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f7437e = c0539k;
        this.f7434b = b0Var;
        this.f7436d = viewPropertyAnimator;
        this.f7435c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f7433a) {
            case 1:
                this.f7435c.setAlpha(1.0f);
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f7433a) {
            case 0:
                this.f7436d.setListener(null);
                this.f7435c.setAlpha(1.0f);
                C0539k c0539k = this.f7437e;
                b0 b0Var = this.f7434b;
                c0539k.c(b0Var);
                c0539k.n.remove(b0Var);
                c0539k.i();
                int i5 = c0539k.f7493p;
                if ((i5 & 1) != 0) {
                    c0539k.f7493p = i5 & (-2);
                    break;
                }
                break;
            default:
                this.f7436d.setListener(null);
                C0539k c0539k2 = this.f7437e;
                b0 b0Var2 = this.f7434b;
                c0539k2.c(b0Var2);
                c0539k2.f7490l.remove(b0Var2);
                c0539k2.i();
                int i6 = c0539k2.f7493p;
                if ((i6 & 8) != 0) {
                    c0539k2.f7493p = i6 & (-9);
                }
                int i7 = c0539k2.f7493p;
                if ((i7 & 16) != 0) {
                    c0539k2.f7493p = i7 & (-17);
                    break;
                }
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f7433a) {
            case 0:
                this.f7437e.getClass();
                break;
            default:
                this.f7437e.getClass();
                break;
        }
    }

    public C0533e(C0539k c0539k, b0 b0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f7437e = c0539k;
        this.f7434b = b0Var;
        this.f7435c = view;
        this.f7436d = viewPropertyAnimator;
    }
}
