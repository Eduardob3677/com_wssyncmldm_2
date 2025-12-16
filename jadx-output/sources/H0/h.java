package H0;

import android.animation.ValueAnimator;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
public final class h implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f849a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPager2 f850b;

    public /* synthetic */ h(ViewPager2 viewPager2, int i5) {
        this.f849a = i5;
        this.f850b = viewPager2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f849a) {
            case 0:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ViewPager2 viewPager2 = this.f850b;
                viewPager2.f5049y = fFloatValue;
                ViewPager2.a(viewPager2);
                break;
            default:
                float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ViewPager2 viewPager22 = this.f850b;
                viewPager22.f5049y = fFloatValue2;
                ViewPager2.a(viewPager22);
                break;
        }
    }
}
