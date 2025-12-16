package r;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public boolean f8743a;

    /* renamed from: e, reason: collision with root package name */
    public float f8747e;

    /* renamed from: l, reason: collision with root package name */
    public int f8753l;

    /* renamed from: b, reason: collision with root package name */
    public int f8744b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f8745c = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f8746d = 0;
    public boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f8748g = new float[9];

    /* renamed from: h, reason: collision with root package name */
    public final float[] f8749h = new float[9];

    /* renamed from: i, reason: collision with root package name */
    public C0765b[] f8750i = new C0765b[16];

    /* renamed from: j, reason: collision with root package name */
    public int f8751j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f8752k = 0;

    public f(int i5) {
        this.f8753l = i5;
    }

    public final void a(C0765b c0765b) {
        int i5 = 0;
        while (true) {
            int i6 = this.f8751j;
            if (i5 >= i6) {
                C0765b[] c0765bArr = this.f8750i;
                if (i6 >= c0765bArr.length) {
                    this.f8750i = (C0765b[]) Arrays.copyOf(c0765bArr, c0765bArr.length * 2);
                }
                C0765b[] c0765bArr2 = this.f8750i;
                int i7 = this.f8751j;
                c0765bArr2[i7] = c0765b;
                this.f8751j = i7 + 1;
                return;
            }
            if (this.f8750i[i5] == c0765b) {
                return;
            } else {
                i5++;
            }
        }
    }

    public final void b(C0765b c0765b) {
        int i5 = this.f8751j;
        int i6 = 0;
        while (i6 < i5) {
            if (this.f8750i[i6] == c0765b) {
                while (i6 < i5 - 1) {
                    C0765b[] c0765bArr = this.f8750i;
                    int i7 = i6 + 1;
                    c0765bArr[i6] = c0765bArr[i7];
                    i6 = i7;
                }
                this.f8751j--;
                return;
            }
            i6++;
        }
    }

    public final void c() {
        this.f8753l = 5;
        this.f8746d = 0;
        this.f8744b = -1;
        this.f8745c = -1;
        this.f8747e = 0.0f;
        this.f = false;
        int i5 = this.f8751j;
        for (int i6 = 0; i6 < i5; i6++) {
            this.f8750i[i6] = null;
        }
        this.f8751j = 0;
        this.f8752k = 0;
        this.f8743a = false;
        Arrays.fill(this.f8749h, 0.0f);
    }

    public final void d(c cVar, float f) {
        this.f8747e = f;
        this.f = true;
        int i5 = this.f8751j;
        this.f8745c = -1;
        for (int i6 = 0; i6 < i5; i6++) {
            this.f8750i[i6].h(cVar, this, false);
        }
        this.f8751j = 0;
    }

    public final void e(c cVar, C0765b c0765b) {
        int i5 = this.f8751j;
        for (int i6 = 0; i6 < i5; i6++) {
            this.f8750i[i6].i(cVar, c0765b, false);
        }
        this.f8751j = 0;
    }

    public final String toString() {
        return "" + this.f8744b;
    }
}
