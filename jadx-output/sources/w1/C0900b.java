package w1;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import o.C0722k;

/* renamed from: w1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0900b {

    /* renamed from: a, reason: collision with root package name */
    public final C0722k f9600a = new C0722k();

    /* renamed from: b, reason: collision with root package name */
    public final C0722k f9601b = new C0722k();

    public static C0900b a(Context context, int i5) throws Resources.NotFoundException {
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i5);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                return b(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(animatorLoadAnimator);
            return b(arrayList);
        } catch (Exception e5) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i5), e5);
            return null;
        }
    }

    public static C0900b b(ArrayList arrayList) {
        C0900b c0900b = new C0900b();
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            Animator animator = (Animator) arrayList.get(i5);
            if (!(animator instanceof ObjectAnimator)) {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            c0900b.f9601b.put(objectAnimator.getPropertyName(), objectAnimator.getValues());
            String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            TimeInterpolator interpolator = objectAnimator.getInterpolator();
            if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
                interpolator = AbstractC0899a.f9597b;
            } else if (interpolator instanceof AccelerateInterpolator) {
                interpolator = AbstractC0899a.f9598c;
            } else if (interpolator instanceof DecelerateInterpolator) {
                interpolator = AbstractC0899a.f9599d;
            }
            C0901c c0901c = new C0901c();
            c0901c.f9605d = 0;
            c0901c.f9606e = 1;
            c0901c.f9602a = startDelay;
            c0901c.f9603b = duration;
            c0901c.f9604c = interpolator;
            c0901c.f9605d = objectAnimator.getRepeatCount();
            c0901c.f9606e = objectAnimator.getRepeatMode();
            c0900b.f9600a.put(propertyName, c0901c);
        }
        return c0900b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0900b) {
            return this.f9600a.equals(((C0900b) obj).f9600a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f9600a.hashCode();
    }

    public final String toString() {
        return "\n" + C0900b.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f9600a + "}\n";
    }
}
