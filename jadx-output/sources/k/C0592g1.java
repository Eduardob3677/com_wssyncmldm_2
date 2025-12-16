package k;

import android.R;
import android.util.FloatProperty;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.SeslProgressBar;

/* renamed from: k.g1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0592g1 extends FloatProperty {
    @Override // android.util.Property
    public final Float get(Object obj) {
        return Float.valueOf(((SeslProgressBar) obj).f3436T);
    }

    @Override // android.util.FloatProperty
    public final void setValue(Object obj, float f) {
        SeslProgressBar seslProgressBar = (SeslProgressBar) obj;
        DecelerateInterpolator decelerateInterpolator = SeslProgressBar.f3419e0;
        seslProgressBar.o(R.id.progress, f);
        seslProgressBar.f3436T = f;
    }
}
