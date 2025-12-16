package r;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class e extends C0765b {
    public f[] f;

    /* renamed from: g, reason: collision with root package name */
    public f[] f8740g;

    /* renamed from: h, reason: collision with root package name */
    public int f8741h;

    /* renamed from: i, reason: collision with root package name */
    public d f8742i;

    @Override // r.C0765b
    public final f d(boolean[] zArr) {
        int i5 = -1;
        for (int i6 = 0; i6 < this.f8741h; i6++) {
            f[] fVarArr = this.f;
            f fVar = fVarArr[i6];
            if (!zArr[fVar.f8744b]) {
                d dVar = this.f8742i;
                dVar.f8738c = fVar;
                int i7 = 8;
                if (i5 == -1) {
                    while (i7 >= 0) {
                        float f = dVar.f8738c.f8749h[i7];
                        if (f <= 0.0f) {
                            if (f < 0.0f) {
                                i5 = i6;
                                break;
                            }
                            i7--;
                        }
                    }
                } else {
                    f fVar2 = fVarArr[i5];
                    while (true) {
                        if (i7 >= 0) {
                            float f5 = fVar2.f8749h[i7];
                            float f6 = dVar.f8738c.f8749h[i7];
                            if (f6 == f5) {
                                i7--;
                            } else if (f6 < f5) {
                            }
                        }
                    }
                }
            }
        }
        if (i5 == -1) {
            return null;
        }
        return this.f[i5];
    }

    @Override // r.C0765b
    public final boolean e() {
        return this.f8741h == 0;
    }

    @Override // r.C0765b
    public final void i(c cVar, C0765b c0765b, boolean z4) {
        f fVar = c0765b.f8718a;
        if (fVar == null) {
            return;
        }
        C0764a c0764a = c0765b.f8721d;
        int iF = c0764a.f();
        for (int i5 = 0; i5 < iF; i5++) {
            f fVarG = c0764a.g(i5);
            float fH = c0764a.h(i5);
            d dVar = this.f8742i;
            dVar.f8738c = fVarG;
            boolean z5 = fVarG.f8743a;
            float[] fArr = fVar.f8749h;
            if (z5) {
                boolean z6 = true;
                for (int i6 = 0; i6 < 9; i6++) {
                    float[] fArr2 = dVar.f8738c.f8749h;
                    float f = (fArr[i6] * fH) + fArr2[i6];
                    fArr2[i6] = f;
                    if (Math.abs(f) < 1.0E-4f) {
                        dVar.f8738c.f8749h[i6] = 0.0f;
                    } else {
                        z6 = false;
                    }
                }
                if (z6) {
                    dVar.f8739d.k(dVar.f8738c);
                }
            } else {
                for (int i7 = 0; i7 < 9; i7++) {
                    float f5 = fArr[i7];
                    if (f5 != 0.0f) {
                        float f6 = f5 * fH;
                        if (Math.abs(f6) < 1.0E-4f) {
                            f6 = 0.0f;
                        }
                        dVar.f8738c.f8749h[i7] = f6;
                    } else {
                        dVar.f8738c.f8749h[i7] = 0.0f;
                    }
                }
                j(fVarG);
            }
            this.f8719b = (c0765b.f8719b * fH) + this.f8719b;
        }
        k(fVar);
    }

    public final void j(f fVar) {
        int i5;
        int i6 = this.f8741h + 1;
        f[] fVarArr = this.f;
        if (i6 > fVarArr.length) {
            f[] fVarArr2 = (f[]) Arrays.copyOf(fVarArr, fVarArr.length * 2);
            this.f = fVarArr2;
            this.f8740g = (f[]) Arrays.copyOf(fVarArr2, fVarArr2.length * 2);
        }
        f[] fVarArr3 = this.f;
        int i7 = this.f8741h;
        fVarArr3[i7] = fVar;
        int i8 = i7 + 1;
        this.f8741h = i8;
        if (i8 > 1 && fVarArr3[i7].f8744b > fVar.f8744b) {
            int i9 = 0;
            while (true) {
                i5 = this.f8741h;
                if (i9 >= i5) {
                    break;
                }
                this.f8740g[i9] = this.f[i9];
                i9++;
            }
            Arrays.sort(this.f8740g, 0, i5, new F0.b(7));
            for (int i10 = 0; i10 < this.f8741h; i10++) {
                this.f[i10] = this.f8740g[i10];
            }
        }
        fVar.f8743a = true;
        fVar.a(this);
    }

    public final void k(f fVar) {
        int i5 = 0;
        while (i5 < this.f8741h) {
            if (this.f[i5] == fVar) {
                while (true) {
                    int i6 = this.f8741h;
                    if (i5 >= i6 - 1) {
                        this.f8741h = i6 - 1;
                        fVar.f8743a = false;
                        return;
                    } else {
                        f[] fVarArr = this.f;
                        int i7 = i5 + 1;
                        fVarArr[i5] = fVarArr[i7];
                        i5 = i7;
                    }
                }
            } else {
                i5++;
            }
        }
    }

    @Override // r.C0765b
    public final String toString() {
        String str = " goal -> (" + this.f8719b + ") : ";
        for (int i5 = 0; i5 < this.f8741h; i5++) {
            f fVar = this.f[i5];
            d dVar = this.f8742i;
            dVar.f8738c = fVar;
            str = str + dVar + " ";
        }
        return str;
    }
}
