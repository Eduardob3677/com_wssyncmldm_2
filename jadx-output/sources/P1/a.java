package P1;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: a, reason: collision with root package name */
    public final float f2051a;

    public a(float f) {
        this.f2051a = f;
    }

    @Override // P1.c
    public final float a(RectF rectF) {
        return this.f2051a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f2051a == ((a) obj).f2051a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f2051a)});
    }
}
