package androidx.picker.widget;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class y implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4546a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ D f4547b;

    public /* synthetic */ y(D d2, int i5) {
        this.f4546a = i5;
        this.f4547b = d2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f4546a) {
            case 0:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                D d2 = this.f4547b;
                d2.f4114N0 = fFloatValue;
                ((SeslNumberPicker) d2.f4233b).invalidate();
                break;
            default:
                int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                D d5 = this.f4547b;
                d5.r0 = iIntValue;
                ((SeslNumberPicker) d5.f4233b).invalidate();
                break;
        }
    }
}
