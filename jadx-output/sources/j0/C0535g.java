package j0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: j0.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0535g extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b0 f7443a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7444b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f7445c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f7446d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f7447e;
    public final /* synthetic */ C0539k f;

    public C0535g(C0539k c0539k, b0 b0Var, int i5, View view, int i6, ViewPropertyAnimator viewPropertyAnimator) {
        this.f = c0539k;
        this.f7443a = b0Var;
        this.f7444b = i5;
        this.f7445c = view;
        this.f7446d = i6;
        this.f7447e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i5 = this.f7444b;
        View view = this.f7445c;
        if (i5 != 0) {
            view.setTranslationX(0.0f);
        }
        if (this.f7446d != 0) {
            view.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f7447e.setListener(null);
        C0539k c0539k = this.f;
        b0 b0Var = this.f7443a;
        c0539k.c(b0Var);
        c0539k.f7491m.remove(b0Var);
        c0539k.i();
        int i5 = c0539k.f7493p;
        if ((i5 & 2) != 0) {
            c0539k.f7493p = i5 & (-3);
        }
        int i6 = c0539k.f7493p;
        if ((i6 & 8) != 0) {
            c0539k.f7493p = i6 | 16;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f.getClass();
    }
}
