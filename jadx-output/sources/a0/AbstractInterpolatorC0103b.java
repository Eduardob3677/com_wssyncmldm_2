package a0;

import android.view.animation.Interpolator;

/* renamed from: a0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractInterpolatorC0103b implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f3030a;

    /* renamed from: b, reason: collision with root package name */
    public final float f3031b;

    public AbstractInterpolatorC0103b(float[] fArr) {
        this.f3030a = fArr;
        this.f3031b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f3030a;
        int iMin = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f5 = this.f3031b;
        float f6 = (f - (iMin * f5)) / f5;
        float f7 = fArr[iMin];
        return ((fArr[iMin + 1] - f7) * f6) + f7;
    }
}
