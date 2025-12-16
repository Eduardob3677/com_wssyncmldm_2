package D0;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import com.samsung.android.knox.custom.CustomDeviceManager;
import java.util.ArrayList;
import o.C0713b;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: p, reason: collision with root package name */
    public static final Matrix f420p = new Matrix();

    /* renamed from: a, reason: collision with root package name */
    public final Path f421a;

    /* renamed from: b, reason: collision with root package name */
    public final Path f422b;

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f423c;

    /* renamed from: d, reason: collision with root package name */
    public Paint f424d;

    /* renamed from: e, reason: collision with root package name */
    public Paint f425e;
    public PathMeasure f;

    /* renamed from: g, reason: collision with root package name */
    public final j f426g;

    /* renamed from: h, reason: collision with root package name */
    public float f427h;

    /* renamed from: i, reason: collision with root package name */
    public float f428i;

    /* renamed from: j, reason: collision with root package name */
    public float f429j;

    /* renamed from: k, reason: collision with root package name */
    public float f430k;

    /* renamed from: l, reason: collision with root package name */
    public int f431l;

    /* renamed from: m, reason: collision with root package name */
    public String f432m;
    public Boolean n;

    /* renamed from: o, reason: collision with root package name */
    public final C0713b f433o;

    public m() {
        this.f423c = new Matrix();
        this.f427h = 0.0f;
        this.f428i = 0.0f;
        this.f429j = 0.0f;
        this.f430k = 0.0f;
        this.f431l = CustomDeviceManager.CALL_SCREEN_ALL;
        this.f432m = null;
        this.n = null;
        this.f433o = new C0713b();
        this.f426g = new j();
        this.f421a = new Path();
        this.f422b = new Path();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01e6  */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(j jVar, Matrix matrix, Canvas canvas, int i5, int i6) {
        Matrix matrix2;
        int i7;
        float f;
        float f5;
        A.d dVar;
        A.d dVar2;
        Paint.Join join;
        Paint.Cap cap;
        Shader shader;
        int i8 = 1;
        jVar.f405a.set(matrix);
        Matrix matrix3 = jVar.f405a;
        matrix3.preConcat(jVar.f413j);
        canvas.save();
        ?? r11 = 0;
        int i9 = 0;
        while (true) {
            ArrayList arrayList = jVar.f406b;
            if (i9 >= arrayList.size()) {
                canvas.restore();
                return;
            }
            k kVar = (k) arrayList.get(i9);
            if (kVar instanceof j) {
                a((j) kVar, matrix3, canvas, i5, i6);
                i7 = i8;
                matrix2 = matrix3;
            } else if (kVar instanceof l) {
                l lVar = (l) kVar;
                float f6 = i5 / this.f429j;
                float f7 = i6 / this.f430k;
                float fMin = Math.min(f6, f7);
                Matrix matrix4 = this.f423c;
                matrix4.set(matrix3);
                matrix4.postScale(f6, f7);
                float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                matrix3.mapVectors(fArr);
                float fHypot = (float) Math.hypot(fArr[r11], fArr[i8]);
                matrix2 = matrix3;
                float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                float f8 = (fArr[r11] * fArr[3]) - (fArr[1] * fArr[2]);
                float fMax = Math.max(fHypot, fHypot2);
                float fAbs = fMax > 0.0f ? Math.abs(f8) / fMax : 0.0f;
                if (fAbs != 0.0f) {
                    Path path = this.f421a;
                    lVar.getClass();
                    path.reset();
                    B.g[] gVarArr = lVar.f416a;
                    if (gVarArr != null) {
                        B.g.b(gVarArr, path);
                    }
                    Path path2 = this.f422b;
                    path2.reset();
                    if (lVar instanceof h) {
                        path2.setFillType(lVar.f418c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                        path2.addPath(path, matrix4);
                        canvas.clipPath(path2);
                    } else {
                        i iVar = (i) lVar;
                        float f9 = iVar.f400j;
                        if (f9 == 0.0f) {
                            f = 1.0f;
                            if (iVar.f401k != 1.0f) {
                            }
                            path2.addPath(path, matrix4);
                            dVar = iVar.f397g;
                            if ((((Shader) dVar.f11b) == null && dVar.f10a == 0) ? r11 : true) {
                                if (this.f425e == null) {
                                    Paint paint = new Paint(1);
                                    this.f425e = paint;
                                    paint.setStyle(Paint.Style.FILL);
                                }
                                Paint paint2 = this.f425e;
                                Shader shader2 = (Shader) dVar.f11b;
                                if (shader2 != null) {
                                    shader2.setLocalMatrix(matrix4);
                                    paint2.setShader(shader2);
                                    paint2.setAlpha(Math.round(iVar.f399i * 255.0f));
                                } else {
                                    paint2.setShader(null);
                                    paint2.setAlpha(CustomDeviceManager.CALL_SCREEN_ALL);
                                    int i10 = dVar.f10a;
                                    float f10 = iVar.f399i;
                                    PorterDuff.Mode mode = p.f446l;
                                    paint2.setColor((i10 & 16777215) | (((int) (Color.alpha(i10) * f10)) << 24));
                                }
                                paint2.setColorFilter(null);
                                path2.setFillType(iVar.f418c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                canvas.drawPath(path2, paint2);
                            }
                            dVar2 = iVar.f396e;
                            if (((Shader) dVar2.f11b) == null || dVar2.f10a != 0) {
                                if (this.f424d == null) {
                                    Paint paint3 = new Paint(1);
                                    this.f424d = paint3;
                                    paint3.setStyle(Paint.Style.STROKE);
                                }
                                Paint paint4 = this.f424d;
                                join = iVar.n;
                                if (join != null) {
                                    paint4.setStrokeJoin(join);
                                }
                                cap = iVar.f403m;
                                if (cap != null) {
                                    paint4.setStrokeCap(cap);
                                }
                                paint4.setStrokeMiter(iVar.f404o);
                                shader = (Shader) dVar2.f11b;
                                if (shader == null) {
                                    shader.setLocalMatrix(matrix4);
                                    paint4.setShader(shader);
                                    paint4.setAlpha(Math.round(iVar.f398h * 255.0f));
                                } else {
                                    paint4.setShader(null);
                                    paint4.setAlpha(CustomDeviceManager.CALL_SCREEN_ALL);
                                    int i11 = dVar2.f10a;
                                    float f11 = iVar.f398h;
                                    PorterDuff.Mode mode2 = p.f446l;
                                    paint4.setColor((i11 & 16777215) | (((int) (Color.alpha(i11) * f11)) << 24));
                                }
                                paint4.setColorFilter(null);
                                paint4.setStrokeWidth(iVar.f * fAbs * fMin);
                                canvas.drawPath(path2, paint4);
                            }
                        } else {
                            f = 1.0f;
                        }
                        float f12 = iVar.f402l;
                        float f13 = (f9 + f12) % f;
                        float f14 = (iVar.f401k + f12) % f;
                        if (this.f == null) {
                            this.f = new PathMeasure();
                        }
                        this.f.setPath(path, r11);
                        float length = this.f.getLength();
                        float f15 = f13 * length;
                        float f16 = f14 * length;
                        path.reset();
                        if (f15 > f16) {
                            this.f.getSegment(f15, length, path, true);
                            f5 = 0.0f;
                            this.f.getSegment(0.0f, f16, path, true);
                        } else {
                            f5 = 0.0f;
                            this.f.getSegment(f15, f16, path, true);
                        }
                        path.rLineTo(f5, f5);
                        path2.addPath(path, matrix4);
                        dVar = iVar.f397g;
                        if (((Shader) dVar.f11b) == null) {
                            if ((((Shader) dVar.f11b) == null && dVar.f10a == 0) ? r11 : true) {
                            }
                            dVar2 = iVar.f396e;
                            if (((Shader) dVar2.f11b) == null) {
                                if (this.f424d == null) {
                                }
                                Paint paint42 = this.f424d;
                                join = iVar.n;
                                if (join != null) {
                                }
                                cap = iVar.f403m;
                                if (cap != null) {
                                }
                                paint42.setStrokeMiter(iVar.f404o);
                                shader = (Shader) dVar2.f11b;
                                if (shader == null) {
                                }
                                paint42.setColorFilter(null);
                                paint42.setStrokeWidth(iVar.f * fAbs * fMin);
                                canvas.drawPath(path2, paint42);
                            }
                        }
                    }
                }
                i7 = 1;
            } else {
                matrix2 = matrix3;
                i7 = i8;
            }
            i9 += i7;
            i8 = i7;
            matrix3 = matrix2;
            r11 = 0;
        }
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.f431l;
    }

    public void setAlpha(float f) {
        setRootAlpha((int) (f * 255.0f));
    }

    public void setRootAlpha(int i5) {
        this.f431l = i5;
    }

    public m(m mVar) {
        this.f423c = new Matrix();
        this.f427h = 0.0f;
        this.f428i = 0.0f;
        this.f429j = 0.0f;
        this.f430k = 0.0f;
        this.f431l = CustomDeviceManager.CALL_SCREEN_ALL;
        this.f432m = null;
        this.n = null;
        C0713b c0713b = new C0713b();
        this.f433o = c0713b;
        this.f426g = new j(mVar.f426g, c0713b);
        this.f421a = new Path(mVar.f421a);
        this.f422b = new Path(mVar.f422b);
        this.f427h = mVar.f427h;
        this.f428i = mVar.f428i;
        this.f429j = mVar.f429j;
        this.f430k = mVar.f430k;
        this.f431l = mVar.f431l;
        this.f432m = mVar.f432m;
        String str = mVar.f432m;
        if (str != null) {
            c0713b.put(str, this);
        }
        this.n = mVar.n;
    }
}
