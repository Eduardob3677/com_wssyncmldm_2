package d;

import android.view.animation.PathInterpolator;

/* renamed from: d.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0385a {

    /* renamed from: a, reason: collision with root package name */
    public static final PathInterpolator f6483a;

    /* renamed from: b, reason: collision with root package name */
    public static final PathInterpolator f6484b;

    static {
        new PathInterpolator(0.33f, 0.0f, 0.3f, 1.0f);
        f6483a = new PathInterpolator(0.33f, 0.0f, 0.2f, 1.0f);
        f6484b = new PathInterpolator(0.33f, 0.0f, 0.1f, 1.0f);
        new PathInterpolator(0.17f, 0.17f, 0.2f, 1.0f);
        new PathInterpolator(0.17f, 0.17f, 0.3f, 1.0f);
    }
}
