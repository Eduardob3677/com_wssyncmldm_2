package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.wssyncmldm.R;

/* renamed from: androidx.fragment.app.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0115g extends AbstractC0116h {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3862c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3863d;

    /* renamed from: e, reason: collision with root package name */
    public H f3864e;

    public C0115g(u0 u0Var, F.f fVar, boolean z4) {
        super(u0Var, fVar);
        this.f3862c = z4;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final H c(Context context) throws Resources.NotFoundException {
        Animation animationLoadAnimation;
        H h5;
        H h6;
        if (this.f3863d) {
            return this.f3864e;
        }
        u0 u0Var = this.f3870a;
        Fragment fragment = u0Var.f3954c;
        boolean z4 = u0Var.f3952a == 2;
        int nextTransition = fragment.getNextTransition();
        int popEnterAnim = this.f3862c ? z4 ? fragment.getPopEnterAnim() : fragment.getPopExitAnim() : z4 ? fragment.getEnterAnim() : fragment.getExitAnim();
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
            fragment.mContainer.setTag(R.id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            Animation animationOnCreateAnimation = fragment.onCreateAnimation(nextTransition, z4, popEnterAnim);
            if (animationOnCreateAnimation != null) {
                h6 = new H(animationOnCreateAnimation);
            } else {
                Animator animatorOnCreateAnimator = fragment.onCreateAnimator(nextTransition, z4, popEnterAnim);
                if (animatorOnCreateAnimator != null) {
                    h6 = new H(animatorOnCreateAnimator);
                } else {
                    if (popEnterAnim == 0 && nextTransition != 0) {
                        popEnterAnim = nextTransition != 4097 ? nextTransition != 8194 ? nextTransition != 8197 ? nextTransition != 4099 ? nextTransition != 4100 ? -1 : z4 ? L2.b.M(context, android.R.attr.activityOpenEnterAnimation) : L2.b.M(context, android.R.attr.activityOpenExitAnimation) : z4 ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit : z4 ? L2.b.M(context, android.R.attr.activityCloseEnterAnimation) : L2.b.M(context, android.R.attr.activityCloseExitAnimation) : z4 ? R.animator.fragment_close_enter : R.animator.fragment_close_exit : z4 ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
                    }
                    if (popEnterAnim == 0) {
                        h6 = null;
                    } else {
                        boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(popEnterAnim));
                        if (zEquals) {
                            try {
                                animationLoadAnimation = AnimationUtils.loadAnimation(context, popEnterAnim);
                            } catch (Resources.NotFoundException e5) {
                                throw e5;
                            } catch (RuntimeException unused) {
                            }
                            if (animationLoadAnimation != null) {
                                h5 = new H(animationLoadAnimation);
                                h6 = h5;
                            }
                            h6 = null;
                        } else {
                            try {
                                Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, popEnterAnim);
                                if (animatorLoadAnimator != null) {
                                    h5 = new H(animatorLoadAnimator);
                                    h6 = h5;
                                }
                            } catch (RuntimeException e6) {
                                if (zEquals) {
                                    throw e6;
                                }
                                Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, popEnterAnim);
                                if (animationLoadAnimation2 != null) {
                                    h6 = new H(animationLoadAnimation2);
                                }
                            }
                            h6 = null;
                        }
                    }
                }
            }
        }
        this.f3864e = h6;
        this.f3863d = true;
        return h6;
    }
}
