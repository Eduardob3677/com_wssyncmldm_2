package P1;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;

/* loaded from: classes.dex */
public final class p extends t {

    /* renamed from: c, reason: collision with root package name */
    public final r f2133c;

    /* renamed from: d, reason: collision with root package name */
    public final float f2134d;

    /* renamed from: e, reason: collision with root package name */
    public final float f2135e;

    public p(r rVar, float f, float f5) {
        this.f2133c = rVar;
        this.f2134d = f;
        this.f2135e = f5;
    }

    @Override // P1.t
    public final void a(Matrix matrix, O1.a aVar, int i5, Canvas canvas) {
        r rVar = this.f2133c;
        float f = rVar.f2143c;
        float f5 = this.f2135e;
        float f6 = rVar.f2142b;
        float f7 = this.f2134d;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f - f5, f6 - f7), 0.0f);
        Matrix matrix2 = this.f2146a;
        matrix2.set(matrix);
        matrix2.preTranslate(f7, f5);
        matrix2.preRotate(b());
        aVar.getClass();
        rectF.bottom += i5;
        rectF.offset(0.0f, -i5);
        int[] iArr = O1.a.f1940i;
        iArr[0] = aVar.f;
        iArr[1] = aVar.f1948e;
        iArr[2] = aVar.f1947d;
        Paint paint = aVar.f1946c;
        float f8 = rectF.left;
        paint.setShader(new LinearGradient(f8, rectF.top, f8, rectF.bottom, iArr, O1.a.f1941j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public final float b() {
        r rVar = this.f2133c;
        return (float) Math.toDegrees(Math.atan((rVar.f2143c - this.f2135e) / (rVar.f2142b - this.f2134d)));
    }
}
