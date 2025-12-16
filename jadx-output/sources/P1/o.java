package P1;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;

/* loaded from: classes.dex */
public final class o extends t {

    /* renamed from: c, reason: collision with root package name */
    public final q f2132c;

    public o(q qVar) {
        this.f2132c = qVar;
    }

    @Override // P1.t
    public final void a(Matrix matrix, O1.a aVar, int i5, Canvas canvas) {
        q qVar = this.f2132c;
        float f = qVar.f;
        float f5 = qVar.f2141g;
        RectF rectF = new RectF(qVar.f2137b, qVar.f2138c, qVar.f2139d, qVar.f2140e);
        aVar.getClass();
        boolean z4 = f5 < 0.0f;
        Path path = aVar.f1949g;
        int[] iArr = O1.a.f1942k;
        if (z4) {
            iArr[0] = 0;
            iArr[1] = aVar.f;
            iArr[2] = aVar.f1948e;
            iArr[3] = aVar.f1947d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f5);
            path.close();
            float f6 = -i5;
            rectF.inset(f6, f6);
            iArr[0] = 0;
            iArr[1] = aVar.f1947d;
            iArr[2] = aVar.f1948e;
            iArr[3] = aVar.f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f7 = 1.0f - (i5 / fWidth);
        float[] fArr = O1.a.f1943l;
        fArr[1] = f7;
        fArr[2] = ((1.0f - f7) / 2.0f) + f7;
        RadialGradient radialGradient = new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, iArr, fArr, Shader.TileMode.CLAMP);
        Paint paint = aVar.f1945b;
        paint.setShader(radialGradient);
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z4) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, aVar.f1950h);
        }
        canvas.drawArc(rectF, f, f5, true, paint);
        canvas.restore();
    }
}
