package d;

import android.animation.Animator;
import android.animation.ValueAnimator;
import androidx.recyclerview.widget.RecyclerView;
import j0.C0539k;
import j0.F;

/* loaded from: classes.dex */
public final class b implements Animator.AnimatorListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6485a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6486b;

    public /* synthetic */ b(int i5, Object obj) {
        this.f6485a = i5;
        this.f6486b = obj;
    }

    private final void a(Animator animator) {
    }

    private final void b(Animator animator) {
    }

    private final void c(Animator animator) {
    }

    private final void d(Animator animator) {
    }

    private final void e(Animator animator) {
    }

    private final void f(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i5 = this.f6485a;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f6485a) {
            case 0:
                ((c) this.f6486b).a(((Float) ((ValueAnimator) animator).getAnimatedValue()).floatValue());
                break;
            default:
                RecyclerView recyclerView = (RecyclerView) this.f6486b;
                recyclerView.f4789E0 = null;
                recyclerView.f4792F0 = false;
                recyclerView.f4795G0 = false;
                F itemAnimator = recyclerView.getItemAnimator();
                if (itemAnimator instanceof C0539k) {
                    ((C0539k) itemAnimator).f7493p = 0;
                }
                recyclerView.invalidate();
                break;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        int i5 = this.f6485a;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        int i5 = this.f6485a;
    }
}
