package C0;

import J.Q;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import j0.C0541m;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class i extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f280a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f281b = false;

    /* renamed from: c, reason: collision with root package name */
    public final Object f282c;

    public i(View view) {
        this.f282c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f280a) {
            case 1:
                this.f281b = true;
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Object obj = this.f282c;
        switch (this.f280a) {
            case 0:
                C0013c c0013c = A.f247a;
                View view = (View) obj;
                view.setTransitionAlpha(1.0f);
                if (this.f281b) {
                    view.setLayerType(0, null);
                    break;
                }
                break;
            default:
                if (!this.f281b) {
                    C0541m c0541m = (C0541m) obj;
                    if (((Float) c0541m.f7533z.getAnimatedValue()).floatValue() != 0.0f) {
                        c0541m.f7508A = 2;
                        c0541m.f7526s.invalidate();
                        break;
                    } else {
                        c0541m.f7508A = 0;
                        c0541m.g(0);
                        break;
                    }
                } else {
                    this.f281b = false;
                    break;
                }
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f280a) {
            case 0:
                WeakHashMap weakHashMap = Q.f940a;
                View view = (View) this.f282c;
                if (view.hasOverlappingRendering() && view.getLayerType() == 0) {
                    this.f281b = true;
                    view.setLayerType(2, null);
                    break;
                }
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }

    public i(C0541m c0541m) {
        this.f282c = c0541m;
    }
}
