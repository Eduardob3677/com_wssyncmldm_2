package P1;

import android.graphics.Matrix;
import android.graphics.Path;

/* loaded from: classes.dex */
public final class r extends s {

    /* renamed from: b, reason: collision with root package name */
    public float f2142b;

    /* renamed from: c, reason: collision with root package name */
    public float f2143c;

    @Override // P1.s
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f2144a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        path.lineTo(this.f2142b, this.f2143c);
        path.transform(matrix);
    }
}
