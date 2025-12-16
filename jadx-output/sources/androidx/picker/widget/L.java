package androidx.picker.widget;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class L implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4239a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ P f4240b;

    public /* synthetic */ L(P p4, int i5) {
        this.f4239a = i5;
        this.f4240b = p4;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f4239a) {
            case 0:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                P p4 = this.f4240b;
                p4.f4322z0 = fFloatValue;
                ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate();
                break;
            default:
                int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                P p5 = this.f4240b;
                p5.f4301j0 = iIntValue;
                ((SeslSpinningDatePickerSpinner) p5.f4233b).invalidate();
                break;
        }
    }
}
