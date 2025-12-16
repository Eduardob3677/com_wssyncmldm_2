package P1;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;

/* loaded from: classes.dex */
public final class q extends s {

    /* renamed from: h, reason: collision with root package name */
    public static final RectF f2136h = new RectF();

    /* renamed from: b, reason: collision with root package name */
    public final float f2137b;

    /* renamed from: c, reason: collision with root package name */
    public final float f2138c;

    /* renamed from: d, reason: collision with root package name */
    public final float f2139d;

    /* renamed from: e, reason: collision with root package name */
    public final float f2140e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f2141g;

    public q(float f, float f5, float f6, float f7) {
        this.f2137b = f;
        this.f2138c = f5;
        this.f2139d = f6;
        this.f2140e = f7;
    }

    @Override // P1.s
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f2144a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        RectF rectF = f2136h;
        rectF.set(this.f2137b, this.f2138c, this.f2139d, this.f2140e);
        path.arcTo(rectF, this.f, this.f2141g, false);
        path.transform(matrix);
    }
}
