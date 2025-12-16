package k;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.appcompat.widget.SwitchCompat;

/* loaded from: classes.dex */
public final class u1 extends Animation {

    /* renamed from: c, reason: collision with root package name */
    public final float f8012c;

    /* renamed from: d, reason: collision with root package name */
    public final float f8013d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SwitchCompat f8014e;

    public u1(SwitchCompat switchCompat, float f, float f5) {
        this.f8014e = switchCompat;
        this.f8012c = f;
        this.f8013d = f5 - f;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        this.f8014e.setThumbPosition((this.f8013d * f) + this.f8012c);
    }
}
