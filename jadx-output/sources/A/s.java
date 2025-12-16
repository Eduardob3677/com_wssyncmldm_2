package A;

/* loaded from: classes.dex */
public final class s {

    /* renamed from: k, reason: collision with root package name */
    public static final s f39k;

    /* renamed from: a, reason: collision with root package name */
    public final float f40a;

    /* renamed from: b, reason: collision with root package name */
    public final float f41b;

    /* renamed from: c, reason: collision with root package name */
    public final float f42c;

    /* renamed from: d, reason: collision with root package name */
    public final float f43d;

    /* renamed from: e, reason: collision with root package name */
    public final float f44e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f45g;

    /* renamed from: h, reason: collision with root package name */
    public final float f46h;

    /* renamed from: i, reason: collision with root package name */
    public final float f47i;

    /* renamed from: j, reason: collision with root package name */
    public final float f48j;

    static {
        float[] fArr = b.f7c;
        float fM = (float) ((b.m() * 63.66197723675813d) / 100.0d);
        float[][] fArr2 = b.f5a;
        float f = fArr[0];
        float[] fArr3 = fArr2[0];
        float f5 = fArr3[0] * f;
        float f6 = fArr[1];
        float f7 = (fArr3[1] * f6) + f5;
        float f8 = fArr[2];
        float f9 = (fArr3[2] * f8) + f7;
        float[] fArr4 = fArr2[1];
        float f10 = (fArr4[2] * f8) + (fArr4[1] * f6) + (fArr4[0] * f);
        float[] fArr5 = fArr2[2];
        float f11 = (f8 * fArr5[2]) + (f6 * fArr5[1]) + (f * fArr5[0]);
        float f12 = ((double) 1.0f) >= 0.9d ? 0.69f : 0.655f;
        float fExp = (1.0f - (((float) Math.exp(((-fM) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d2 = fExp;
        if (d2 > 1.0d) {
            fExp = 1.0f;
        } else if (d2 < 0.0d) {
            fExp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f9) * fExp) + 1.0f) - fExp, (((100.0f / f10) * fExp) + 1.0f) - fExp, (((100.0f / f11) * fExp) + 1.0f) - fExp};
        float f13 = 1.0f / ((5.0f * fM) + 1.0f);
        float f14 = f13 * f13 * f13 * f13;
        float f15 = 1.0f - f14;
        float fCbrt = (0.1f * f15 * f15 * ((float) Math.cbrt(fM * 5.0d))) + (f14 * fM);
        float fM2 = b.m() / fArr[1];
        double d5 = fM2;
        float fSqrt = ((float) Math.sqrt(d5)) + 1.48f;
        float fPow = 0.725f / ((float) Math.pow(d5, 0.2d));
        float[] fArr7 = {(float) Math.pow(((fArr6[0] * fCbrt) * f9) / 100.0d, 0.42d), (float) Math.pow(((fArr6[1] * fCbrt) * f10) / 100.0d, 0.42d), (float) Math.pow(((fArr6[2] * fCbrt) * f11) / 100.0d, 0.42d)};
        float f16 = fArr7[0];
        float f17 = (f16 * 400.0f) / (f16 + 27.13f);
        float f18 = fArr7[1];
        float f19 = (f18 * 400.0f) / (f18 + 27.13f);
        float f20 = fArr7[2];
        float[] fArr8 = {f17, f19, (400.0f * f20) / (f20 + 27.13f)};
        f39k = new s(fM2, ((fArr8[2] * 0.05f) + (fArr8[0] * 2.0f) + fArr8[1]) * fPow, fPow, fPow, f12, 1.0f, fArr6, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt);
    }

    public s(float f, float f5, float f6, float f7, float f8, float f9, float[] fArr, float f10, float f11, float f12) {
        this.f = f;
        this.f40a = f5;
        this.f41b = f6;
        this.f42c = f7;
        this.f43d = f8;
        this.f44e = f9;
        this.f45g = fArr;
        this.f46h = f10;
        this.f47i = f11;
        this.f48j = f12;
    }
}
