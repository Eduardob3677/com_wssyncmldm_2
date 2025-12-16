package j0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: j0.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0536h extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7454a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0537i f7455b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f7456c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f7457d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0539k f7458e;

    public /* synthetic */ C0536h(C0539k c0539k, C0537i c0537i, ViewPropertyAnimator viewPropertyAnimator, View view, int i5) {
        this.f7454a = i5;
        this.f7458e = c0539k;
        this.f7455b = c0537i;
        this.f7456c = viewPropertyAnimator;
        this.f7457d = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f7454a) {
            case 0:
                this.f7456c.setListener(null);
                View view = this.f7457d;
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                C0537i c0537i = this.f7455b;
                b0 b0Var = c0537i.f7460a;
                C0539k c0539k = this.f7458e;
                c0539k.c(b0Var);
                c0539k.f7492o.remove(c0537i.f7460a);
                c0539k.i();
                int i5 = c0539k.f7493p;
                if ((i5 & 4) != 0) {
                    c0539k.f7493p = i5 & (-5);
                    break;
                }
                break;
            default:
                this.f7456c.setListener(null);
                View view2 = this.f7457d;
                view2.setAlpha(1.0f);
                view2.setTranslationX(0.0f);
                view2.setTranslationY(0.0f);
                C0537i c0537i2 = this.f7455b;
                b0 b0Var2 = c0537i2.f7461b;
                C0539k c0539k2 = this.f7458e;
                c0539k2.c(b0Var2);
                c0539k2.f7492o.remove(c0537i2.f7461b);
                c0539k2.i();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f7454a) {
            case 0:
                b0 b0Var = this.f7455b.f7460a;
                this.f7458e.getClass();
                break;
            default:
                b0 b0Var2 = this.f7455b.f7461b;
                this.f7458e.getClass();
                break;
        }
    }
}
