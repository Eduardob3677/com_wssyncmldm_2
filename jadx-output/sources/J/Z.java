package J;

import android.R;
import android.animation.ValueAnimator;
import android.graphics.BlendMode;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.appcompat.graphics.drawable.SeslRecoilDrawable;

/* loaded from: classes.dex */
public final /* synthetic */ class Z implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f951a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f952b;

    public /* synthetic */ Z(int i5, Object obj) {
        this.f951a = i5;
        this.f952b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Object obj = this.f952b;
        switch (this.f951a) {
            case 0:
                ((View) ((e.Q) ((c1.w) obj).f5265c).f6687d.getParent()).invalidate();
                break;
            case 1:
                S1.j jVar = (S1.j) obj;
                jVar.getClass();
                jVar.f2522d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 2:
                d.c cVar = (d.c) obj;
                cVar.getClass();
                cVar.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                LinearInterpolator linearInterpolator = SeslRecoilDrawable.f3215m;
                SeslRecoilDrawable seslRecoilDrawable = (SeslRecoilDrawable) obj;
                int iA = seslRecoilDrawable.a();
                Drawable drawableFindDrawableByLayerId = seslRecoilDrawable.findDrawableByLayerId(R.id.mask);
                if (drawableFindDrawableByLayerId != null) {
                    drawableFindDrawableByLayerId.setTint(iA);
                } else {
                    seslRecoilDrawable.setTintBlendMode(BlendMode.HARD_LIGHT);
                    seslRecoilDrawable.setTint(iA);
                }
                seslRecoilDrawable.invalidateSelf();
                break;
        }
    }

    public /* synthetic */ Z(c1.w wVar, View view) {
        this.f951a = 0;
        this.f952b = wVar;
    }
}
