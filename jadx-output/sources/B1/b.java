package B1;

import android.animation.ValueAnimator;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import j0.C0541m;

/* loaded from: classes.dex */
public final class b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f194a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f195b;

    public /* synthetic */ b(int i5, Object obj) {
        this.f194a = i5;
        this.f195b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f194a) {
            case 0:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                P1.g gVar = ((BottomSheetBehavior) this.f195b).f5873i;
                if (gVar != null) {
                    P1.f fVar = gVar.f2075c;
                    if (fVar.f2063j != fFloatValue) {
                        fVar.f2063j = fFloatValue;
                        gVar.f2078g = true;
                        gVar.invalidateSelf();
                        break;
                    }
                }
                break;
            case 1:
                ((TextInputLayout) this.f195b).f6140y0.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
                C0541m c0541m = (C0541m) this.f195b;
                c0541m.f7512c.setAlpha(iFloatValue);
                c0541m.f7513d.setAlpha(iFloatValue);
                c0541m.f7526s.invalidate();
                break;
        }
    }
}
