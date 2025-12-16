package F1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
public final class p extends AnimatorListenerAdapter {
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        View view = (View) ((s) animator).f744c.get();
        if (view == null) {
            return;
        }
        view.setAlpha(1.0f);
    }
}
