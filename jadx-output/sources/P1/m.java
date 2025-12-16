package P1;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.BitSet;
import s2.C0837c;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final u[] f2119a = new u[4];

    /* renamed from: b, reason: collision with root package name */
    public final Matrix[] f2120b = new Matrix[4];

    /* renamed from: c, reason: collision with root package name */
    public final Matrix[] f2121c = new Matrix[4];

    /* renamed from: d, reason: collision with root package name */
    public final PointF f2122d = new PointF();

    /* renamed from: e, reason: collision with root package name */
    public final Path f2123e = new Path();
    public final Path f = new Path();

    /* renamed from: g, reason: collision with root package name */
    public final u f2124g = new u();

    /* renamed from: h, reason: collision with root package name */
    public final float[] f2125h = new float[2];

    /* renamed from: i, reason: collision with root package name */
    public final float[] f2126i = new float[2];

    /* renamed from: j, reason: collision with root package name */
    public final Path f2127j = new Path();

    /* renamed from: k, reason: collision with root package name */
    public final Path f2128k = new Path();

    /* renamed from: l, reason: collision with root package name */
    public final boolean f2129l = true;

    public m() {
        for (int i5 = 0; i5 < 4; i5++) {
            this.f2119a[i5] = new u();
            this.f2120b[i5] = new Matrix();
            this.f2121c[i5] = new Matrix();
        }
    }

    public final void a(k kVar, float f, RectF rectF, C0837c c0837c, Path path) {
        int i5;
        Matrix[] matrixArr;
        float[] fArr;
        Matrix[] matrixArr2;
        u[] uVarArr;
        int i6;
        m mVar = this;
        path.rewind();
        Path path2 = mVar.f2123e;
        path2.rewind();
        Path path3 = mVar.f;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i7 = 0;
        while (true) {
            i5 = 4;
            matrixArr = mVar.f2121c;
            fArr = mVar.f2125h;
            matrixArr2 = mVar.f2120b;
            uVarArr = mVar.f2119a;
            if (i7 >= 4) {
                break;
            }
            c cVar = i7 != 1 ? i7 != 2 ? i7 != 3 ? kVar.f : kVar.f2111e : kVar.f2113h : kVar.f2112g;
            Z0.j jVar = i7 != 1 ? i7 != 2 ? i7 != 3 ? kVar.f2108b : kVar.f2107a : kVar.f2110d : kVar.f2109c;
            u uVar = uVarArr[i7];
            jVar.getClass();
            jVar.J(uVar, f, cVar.a(rectF));
            int i8 = i7 + 1;
            float f5 = (i8 % 4) * 90;
            matrixArr2[i7].reset();
            PointF pointF = mVar.f2122d;
            if (i7 == 1) {
                i6 = i8;
                pointF.set(rectF.right, rectF.bottom);
            } else if (i7 == 2) {
                i6 = i8;
                pointF.set(rectF.left, rectF.bottom);
            } else if (i7 != 3) {
                i6 = i8;
                pointF.set(rectF.right, rectF.top);
            } else {
                i6 = i8;
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i7].setTranslate(pointF.x, pointF.y);
            matrixArr2[i7].preRotate(f5);
            u uVar2 = uVarArr[i7];
            fArr[0] = uVar2.f2149c;
            fArr[1] = uVar2.f2150d;
            matrixArr2[i7].mapPoints(fArr);
            matrixArr[i7].reset();
            matrixArr[i7].setTranslate(fArr[0], fArr[1]);
            matrixArr[i7].preRotate(f5);
            i7 = i6;
        }
        int i9 = 0;
        while (i9 < i5) {
            u uVar3 = uVarArr[i9];
            fArr[0] = uVar3.f2147a;
            fArr[1] = uVar3.f2148b;
            matrixArr2[i9].mapPoints(fArr);
            if (i9 == 0) {
                path.moveTo(fArr[0], fArr[1]);
            } else {
                path.lineTo(fArr[0], fArr[1]);
            }
            uVarArr[i9].b(matrixArr2[i9], path);
            if (c0837c != null) {
                u uVar4 = uVarArr[i9];
                Matrix matrix = matrixArr2[i9];
                g gVar = (g) c0837c.f9022c;
                BitSet bitSet = gVar.f;
                uVar4.getClass();
                bitSet.set(i9, false);
                uVar4.a(uVar4.f);
                gVar.f2076d[i9] = new n(new ArrayList(uVar4.f2153h), new Matrix(matrix));
            }
            int i10 = i9 + 1;
            int i11 = i10 % 4;
            u uVar5 = uVarArr[i9];
            fArr[0] = uVar5.f2149c;
            fArr[1] = uVar5.f2150d;
            matrixArr2[i9].mapPoints(fArr);
            u uVar6 = uVarArr[i11];
            float f6 = uVar6.f2147a;
            float[] fArr2 = mVar.f2126i;
            fArr2[0] = f6;
            fArr2[1] = uVar6.f2148b;
            matrixArr2[i11].mapPoints(fArr2);
            float fMax = Math.max(((float) Math.hypot(fArr[0] - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
            u uVar7 = uVarArr[i9];
            fArr[0] = uVar7.f2149c;
            fArr[1] = uVar7.f2150d;
            matrixArr2[i9].mapPoints(fArr);
            if (i9 == 1 || i9 == 3) {
                Math.abs(rectF.centerX() - fArr[0]);
            } else {
                Math.abs(rectF.centerY() - fArr[1]);
            }
            u uVar8 = mVar.f2124g;
            uVar8.d(0.0f, 270.0f, 0.0f);
            (i9 != 1 ? i9 != 2 ? i9 != 3 ? kVar.f2115j : kVar.f2114i : kVar.f2117l : kVar.f2116k).getClass();
            uVar8.c(fMax, 0.0f);
            Path path4 = mVar.f2127j;
            path4.reset();
            uVar8.b(matrixArr[i9], path4);
            if (mVar.f2129l && (mVar.b(path4, i9) || mVar.b(path4, i11))) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr[0] = uVar8.f2147a;
                fArr[1] = uVar8.f2148b;
                matrixArr[i9].mapPoints(fArr);
                path2.moveTo(fArr[0], fArr[1]);
                uVar8.b(matrixArr[i9], path2);
            } else {
                uVar8.b(matrixArr[i9], path);
            }
            if (c0837c != null) {
                Matrix matrix2 = matrixArr[i9];
                g gVar2 = (g) c0837c.f9022c;
                gVar2.f.set(i9 + 4, false);
                uVar8.a(uVar8.f);
                gVar2.f2077e[i9] = new n(new ArrayList(uVar8.f2153h), new Matrix(matrix2));
            }
            i5 = 4;
            mVar = this;
            i9 = i10;
        }
        path.close();
        path2.close();
        if (path2.isEmpty()) {
            return;
        }
        path.op(path2, Path.Op.UNION);
    }

    public final boolean b(Path path, int i5) {
        Path path2 = this.f2128k;
        path2.reset();
        this.f2119a[i5].b(this.f2120b[i5], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }
}
