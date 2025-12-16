package w1;

import a0.C0102a;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* renamed from: w1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0899a {

    /* renamed from: a, reason: collision with root package name */
    public static final LinearInterpolator f9596a = new LinearInterpolator();

    /* renamed from: b, reason: collision with root package name */
    public static final C0102a f9597b = new C0102a(1);

    /* renamed from: c, reason: collision with root package name */
    public static final C0102a f9598c = new C0102a(0);

    /* renamed from: d, reason: collision with root package name */
    public static final C0102a f9599d = new C0102a(2);

    static {
        new DecelerateInterpolator();
    }

    public static float a(float f, float f5, float f6) {
        return ((f5 - f) * f6) + f;
    }

    public static float b(float f, float f5, float f6, float f7, float f8) {
        return f8 <= f6 ? f : f8 >= f7 ? f5 : a(f, f5, (f8 - f6) / (f7 - f6));
    }

    public static int c(int i5, float f, int i6) {
        return Math.round(f * (i6 - i5)) + i5;
    }
}
