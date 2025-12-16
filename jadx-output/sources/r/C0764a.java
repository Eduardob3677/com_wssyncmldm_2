package r;

import J.r0;
import h0.AbstractC0432c;
import java.util.Arrays;

/* renamed from: r.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0764a {

    /* renamed from: b, reason: collision with root package name */
    public final C0765b f8710b;

    /* renamed from: c, reason: collision with root package name */
    public final r0 f8711c;

    /* renamed from: a, reason: collision with root package name */
    public int f8709a = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f8712d = 8;

    /* renamed from: e, reason: collision with root package name */
    public int[] f8713e = new int[8];
    public int[] f = new int[8];

    /* renamed from: g, reason: collision with root package name */
    public float[] f8714g = new float[8];

    /* renamed from: h, reason: collision with root package name */
    public int f8715h = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f8716i = -1;

    /* renamed from: j, reason: collision with root package name */
    public boolean f8717j = false;

    public C0764a(C0765b c0765b, r0 r0Var) {
        this.f8710b = c0765b;
        this.f8711c = r0Var;
    }

    public final void a(f fVar, float f, boolean z4) {
        if (f <= -0.001f || f >= 0.001f) {
            int i5 = this.f8715h;
            C0765b c0765b = this.f8710b;
            if (i5 == -1) {
                this.f8715h = 0;
                this.f8714g[0] = f;
                this.f8713e[0] = fVar.f8744b;
                this.f[0] = -1;
                fVar.f8752k++;
                fVar.a(c0765b);
                this.f8709a++;
                if (this.f8717j) {
                    return;
                }
                int i6 = this.f8716i + 1;
                this.f8716i = i6;
                int[] iArr = this.f8713e;
                if (i6 >= iArr.length) {
                    this.f8717j = true;
                    this.f8716i = iArr.length - 1;
                    return;
                }
                return;
            }
            int i7 = -1;
            for (int i8 = 0; i5 != -1 && i8 < this.f8709a; i8++) {
                int i9 = this.f8713e[i5];
                int i10 = fVar.f8744b;
                if (i9 == i10) {
                    float[] fArr = this.f8714g;
                    float f5 = fArr[i5] + f;
                    if (f5 > -0.001f && f5 < 0.001f) {
                        f5 = 0.0f;
                    }
                    fArr[i5] = f5;
                    if (f5 == 0.0f) {
                        if (i5 == this.f8715h) {
                            this.f8715h = this.f[i5];
                        } else {
                            int[] iArr2 = this.f;
                            iArr2[i7] = iArr2[i5];
                        }
                        if (z4) {
                            fVar.b(c0765b);
                        }
                        if (this.f8717j) {
                            this.f8716i = i5;
                        }
                        fVar.f8752k--;
                        this.f8709a--;
                        return;
                    }
                    return;
                }
                if (i9 < i10) {
                    i7 = i5;
                }
                i5 = this.f[i5];
            }
            int length = this.f8716i;
            int i11 = length + 1;
            if (this.f8717j) {
                int[] iArr3 = this.f8713e;
                if (iArr3[length] != -1) {
                    length = iArr3.length;
                }
            } else {
                length = i11;
            }
            int[] iArr4 = this.f8713e;
            if (length >= iArr4.length && this.f8709a < iArr4.length) {
                int i12 = 0;
                while (true) {
                    int[] iArr5 = this.f8713e;
                    if (i12 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i12] == -1) {
                        length = i12;
                        break;
                    }
                    i12++;
                }
            }
            int[] iArr6 = this.f8713e;
            if (length >= iArr6.length) {
                length = iArr6.length;
                int i13 = this.f8712d * 2;
                this.f8712d = i13;
                this.f8717j = false;
                this.f8716i = length - 1;
                this.f8714g = Arrays.copyOf(this.f8714g, i13);
                this.f8713e = Arrays.copyOf(this.f8713e, this.f8712d);
                this.f = Arrays.copyOf(this.f, this.f8712d);
            }
            this.f8713e[length] = fVar.f8744b;
            this.f8714g[length] = f;
            if (i7 != -1) {
                int[] iArr7 = this.f;
                iArr7[length] = iArr7[i7];
                iArr7[i7] = length;
            } else {
                this.f[length] = this.f8715h;
                this.f8715h = length;
            }
            fVar.f8752k++;
            fVar.a(c0765b);
            this.f8709a++;
            if (!this.f8717j) {
                this.f8716i++;
            }
            int i14 = this.f8716i;
            int[] iArr8 = this.f8713e;
            if (i14 >= iArr8.length) {
                this.f8717j = true;
                this.f8716i = iArr8.length - 1;
            }
        }
    }

    public final void b() {
        int i5 = this.f8715h;
        for (int i6 = 0; i5 != -1 && i6 < this.f8709a; i6++) {
            f fVar = ((f[]) this.f8711c.f1008e)[this.f8713e[i5]];
            if (fVar != null) {
                fVar.b(this.f8710b);
            }
            i5 = this.f[i5];
        }
        this.f8715h = -1;
        this.f8716i = -1;
        this.f8717j = false;
        this.f8709a = 0;
    }

    public final boolean c(f fVar) {
        int i5 = this.f8715h;
        if (i5 == -1) {
            return false;
        }
        for (int i6 = 0; i5 != -1 && i6 < this.f8709a; i6++) {
            if (this.f8713e[i5] == fVar.f8744b) {
                return true;
            }
            i5 = this.f[i5];
        }
        return false;
    }

    public final void d(float f) {
        int i5 = this.f8715h;
        for (int i6 = 0; i5 != -1 && i6 < this.f8709a; i6++) {
            float[] fArr = this.f8714g;
            fArr[i5] = fArr[i5] / f;
            i5 = this.f[i5];
        }
    }

    public final float e(f fVar) {
        int i5 = this.f8715h;
        for (int i6 = 0; i5 != -1 && i6 < this.f8709a; i6++) {
            if (this.f8713e[i5] == fVar.f8744b) {
                return this.f8714g[i5];
            }
            i5 = this.f[i5];
        }
        return 0.0f;
    }

    public final int f() {
        return this.f8709a;
    }

    public final f g(int i5) {
        int i6 = this.f8715h;
        for (int i7 = 0; i6 != -1 && i7 < this.f8709a; i7++) {
            if (i7 == i5) {
                return ((f[]) this.f8711c.f1008e)[this.f8713e[i6]];
            }
            i6 = this.f[i6];
        }
        return null;
    }

    public final float h(int i5) {
        int i6 = this.f8715h;
        for (int i7 = 0; i6 != -1 && i7 < this.f8709a; i7++) {
            if (i7 == i5) {
                return this.f8714g[i6];
            }
            i6 = this.f[i6];
        }
        return 0.0f;
    }

    public final void i() {
        int i5 = this.f8715h;
        for (int i6 = 0; i5 != -1 && i6 < this.f8709a; i6++) {
            float[] fArr = this.f8714g;
            fArr[i5] = fArr[i5] * (-1.0f);
            i5 = this.f[i5];
        }
    }

    public final void j(f fVar, float f) {
        if (f == 0.0f) {
            k(fVar, true);
            return;
        }
        int i5 = this.f8715h;
        C0765b c0765b = this.f8710b;
        if (i5 == -1) {
            this.f8715h = 0;
            this.f8714g[0] = f;
            this.f8713e[0] = fVar.f8744b;
            this.f[0] = -1;
            fVar.f8752k++;
            fVar.a(c0765b);
            this.f8709a++;
            if (this.f8717j) {
                return;
            }
            int i6 = this.f8716i + 1;
            this.f8716i = i6;
            int[] iArr = this.f8713e;
            if (i6 >= iArr.length) {
                this.f8717j = true;
                this.f8716i = iArr.length - 1;
                return;
            }
            return;
        }
        int i7 = -1;
        for (int i8 = 0; i5 != -1 && i8 < this.f8709a; i8++) {
            int i9 = this.f8713e[i5];
            int i10 = fVar.f8744b;
            if (i9 == i10) {
                this.f8714g[i5] = f;
                return;
            }
            if (i9 < i10) {
                i7 = i5;
            }
            i5 = this.f[i5];
        }
        int length = this.f8716i;
        int i11 = length + 1;
        if (this.f8717j) {
            int[] iArr2 = this.f8713e;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i11;
        }
        int[] iArr3 = this.f8713e;
        if (length >= iArr3.length && this.f8709a < iArr3.length) {
            int i12 = 0;
            while (true) {
                int[] iArr4 = this.f8713e;
                if (i12 >= iArr4.length) {
                    break;
                }
                if (iArr4[i12] == -1) {
                    length = i12;
                    break;
                }
                i12++;
            }
        }
        int[] iArr5 = this.f8713e;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i13 = this.f8712d * 2;
            this.f8712d = i13;
            this.f8717j = false;
            this.f8716i = length - 1;
            this.f8714g = Arrays.copyOf(this.f8714g, i13);
            this.f8713e = Arrays.copyOf(this.f8713e, this.f8712d);
            this.f = Arrays.copyOf(this.f, this.f8712d);
        }
        this.f8713e[length] = fVar.f8744b;
        this.f8714g[length] = f;
        if (i7 != -1) {
            int[] iArr6 = this.f;
            iArr6[length] = iArr6[i7];
            iArr6[i7] = length;
        } else {
            this.f[length] = this.f8715h;
            this.f8715h = length;
        }
        fVar.f8752k++;
        fVar.a(c0765b);
        int i14 = this.f8709a + 1;
        this.f8709a = i14;
        if (!this.f8717j) {
            this.f8716i++;
        }
        int[] iArr7 = this.f8713e;
        if (i14 >= iArr7.length) {
            this.f8717j = true;
        }
        if (this.f8716i >= iArr7.length) {
            this.f8717j = true;
            this.f8716i = iArr7.length - 1;
        }
    }

    public final float k(f fVar, boolean z4) {
        int i5 = this.f8715h;
        if (i5 == -1) {
            return 0.0f;
        }
        int i6 = 0;
        int i7 = -1;
        while (i5 != -1 && i6 < this.f8709a) {
            if (this.f8713e[i5] == fVar.f8744b) {
                if (i5 == this.f8715h) {
                    this.f8715h = this.f[i5];
                } else {
                    int[] iArr = this.f;
                    iArr[i7] = iArr[i5];
                }
                if (z4) {
                    fVar.b(this.f8710b);
                }
                fVar.f8752k--;
                this.f8709a--;
                this.f8713e[i5] = -1;
                if (this.f8717j) {
                    this.f8716i = i5;
                }
                return this.f8714g[i5];
            }
            i6++;
            i7 = i5;
            i5 = this.f[i5];
        }
        return 0.0f;
    }

    public final float l(C0765b c0765b, boolean z4) {
        float fE = e(c0765b.f8718a);
        k(c0765b.f8718a, z4);
        C0764a c0764a = c0765b.f8721d;
        int iF = c0764a.f();
        for (int i5 = 0; i5 < iF; i5++) {
            f fVarG = c0764a.g(i5);
            a(fVarG, c0764a.e(fVarG) * fE, z4);
        }
        return fE;
    }

    public final String toString() {
        int i5 = this.f8715h;
        String str = "";
        for (int i6 = 0; i5 != -1 && i6 < this.f8709a; i6++) {
            str = (AbstractC0432c.h(str, " -> ") + this.f8714g[i5] + " : ") + ((f[]) this.f8711c.f1008e)[this.f8713e[i5]];
            i5 = this.f[i5];
        }
        return str;
    }
}
