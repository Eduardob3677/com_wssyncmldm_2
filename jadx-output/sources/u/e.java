package u;

import android.view.ViewGroup;
import s.C0827d;

/* loaded from: classes.dex */
public final class e extends ViewGroup.MarginLayoutParams {

    /* renamed from: A, reason: collision with root package name */
    public float f9158A;

    /* renamed from: B, reason: collision with root package name */
    public String f9159B;

    /* renamed from: C, reason: collision with root package name */
    public int f9160C;

    /* renamed from: D, reason: collision with root package name */
    public float f9161D;
    public float E;

    /* renamed from: F, reason: collision with root package name */
    public int f9162F;

    /* renamed from: G, reason: collision with root package name */
    public int f9163G;

    /* renamed from: H, reason: collision with root package name */
    public int f9164H;

    /* renamed from: I, reason: collision with root package name */
    public int f9165I;

    /* renamed from: J, reason: collision with root package name */
    public int f9166J;

    /* renamed from: K, reason: collision with root package name */
    public int f9167K;

    /* renamed from: L, reason: collision with root package name */
    public int f9168L;

    /* renamed from: M, reason: collision with root package name */
    public int f9169M;

    /* renamed from: N, reason: collision with root package name */
    public float f9170N;

    /* renamed from: O, reason: collision with root package name */
    public float f9171O;

    /* renamed from: P, reason: collision with root package name */
    public int f9172P;

    /* renamed from: Q, reason: collision with root package name */
    public int f9173Q;

    /* renamed from: R, reason: collision with root package name */
    public int f9174R;

    /* renamed from: S, reason: collision with root package name */
    public boolean f9175S;

    /* renamed from: T, reason: collision with root package name */
    public boolean f9176T;

    /* renamed from: U, reason: collision with root package name */
    public String f9177U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f9178V;

    /* renamed from: W, reason: collision with root package name */
    public boolean f9179W;

    /* renamed from: X, reason: collision with root package name */
    public boolean f9180X;

    /* renamed from: Y, reason: collision with root package name */
    public boolean f9181Y;

    /* renamed from: Z, reason: collision with root package name */
    public boolean f9182Z;

    /* renamed from: a, reason: collision with root package name */
    public int f9183a;

    /* renamed from: a0, reason: collision with root package name */
    public int f9184a0;

    /* renamed from: b, reason: collision with root package name */
    public int f9185b;

    /* renamed from: b0, reason: collision with root package name */
    public int f9186b0;

    /* renamed from: c, reason: collision with root package name */
    public float f9187c;

    /* renamed from: c0, reason: collision with root package name */
    public int f9188c0;

    /* renamed from: d, reason: collision with root package name */
    public int f9189d;

    /* renamed from: d0, reason: collision with root package name */
    public int f9190d0;

    /* renamed from: e, reason: collision with root package name */
    public int f9191e;

    /* renamed from: e0, reason: collision with root package name */
    public int f9192e0;
    public int f;

    /* renamed from: f0, reason: collision with root package name */
    public int f9193f0;

    /* renamed from: g, reason: collision with root package name */
    public int f9194g;
    public float g0;

    /* renamed from: h, reason: collision with root package name */
    public int f9195h;

    /* renamed from: h0, reason: collision with root package name */
    public int f9196h0;

    /* renamed from: i, reason: collision with root package name */
    public int f9197i;

    /* renamed from: i0, reason: collision with root package name */
    public int f9198i0;

    /* renamed from: j, reason: collision with root package name */
    public int f9199j;

    /* renamed from: j0, reason: collision with root package name */
    public float f9200j0;

    /* renamed from: k, reason: collision with root package name */
    public int f9201k;
    public C0827d k0;

    /* renamed from: l, reason: collision with root package name */
    public int f9202l;

    /* renamed from: m, reason: collision with root package name */
    public int f9203m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public float f9204o;

    /* renamed from: p, reason: collision with root package name */
    public int f9205p;

    /* renamed from: q, reason: collision with root package name */
    public int f9206q;

    /* renamed from: r, reason: collision with root package name */
    public int f9207r;

    /* renamed from: s, reason: collision with root package name */
    public int f9208s;

    /* renamed from: t, reason: collision with root package name */
    public int f9209t;

    /* renamed from: u, reason: collision with root package name */
    public int f9210u;

    /* renamed from: v, reason: collision with root package name */
    public int f9211v;

    /* renamed from: w, reason: collision with root package name */
    public int f9212w;

    /* renamed from: x, reason: collision with root package name */
    public int f9213x;

    /* renamed from: y, reason: collision with root package name */
    public int f9214y;

    /* renamed from: z, reason: collision with root package name */
    public float f9215z;

    public final void a() {
        this.f9181Y = false;
        this.f9178V = true;
        this.f9179W = true;
        int i5 = ((ViewGroup.MarginLayoutParams) this).width;
        if (i5 == -2 && this.f9175S) {
            this.f9178V = false;
            if (this.f9164H == 0) {
                this.f9164H = 1;
            }
        }
        int i6 = ((ViewGroup.MarginLayoutParams) this).height;
        if (i6 == -2 && this.f9176T) {
            this.f9179W = false;
            if (this.f9165I == 0) {
                this.f9165I = 1;
            }
        }
        if (i5 == 0 || i5 == -1) {
            this.f9178V = false;
            if (i5 == 0 && this.f9164H == 1) {
                ((ViewGroup.MarginLayoutParams) this).width = -2;
                this.f9175S = true;
            }
        }
        if (i6 == 0 || i6 == -1) {
            this.f9179W = false;
            if (i6 == 0 && this.f9165I == 1) {
                ((ViewGroup.MarginLayoutParams) this).height = -2;
                this.f9176T = true;
            }
        }
        if (this.f9187c == -1.0f && this.f9183a == -1 && this.f9185b == -1) {
            return;
        }
        this.f9181Y = true;
        this.f9178V = true;
        this.f9179W = true;
        if (!(this.k0 instanceof s.h)) {
            this.k0 = new s.h();
        }
        ((s.h) this.k0).L(this.f9174R);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007c  */
    @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void resolveLayoutDirection(int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
        int i11 = ((ViewGroup.MarginLayoutParams) this).rightMargin;
        super.resolveLayoutDirection(i5);
        boolean z4 = false;
        boolean z5 = 1 == getLayoutDirection();
        this.f9188c0 = -1;
        this.f9190d0 = -1;
        this.f9184a0 = -1;
        this.f9186b0 = -1;
        this.f9192e0 = this.f9209t;
        this.f9193f0 = this.f9211v;
        float f = this.f9215z;
        this.g0 = f;
        int i12 = this.f9183a;
        this.f9196h0 = i12;
        int i13 = this.f9185b;
        this.f9198i0 = i13;
        float f5 = this.f9187c;
        this.f9200j0 = f5;
        if (z5) {
            int i14 = this.f9205p;
            if (i14 != -1) {
                this.f9188c0 = i14;
            } else {
                int i15 = this.f9206q;
                if (i15 != -1) {
                    this.f9190d0 = i15;
                }
                i6 = this.f9207r;
                if (i6 != -1) {
                    this.f9186b0 = i6;
                    z4 = true;
                }
                i7 = this.f9208s;
                if (i7 != -1) {
                    this.f9184a0 = i7;
                    z4 = true;
                }
                i8 = this.f9213x;
                if (i8 != -1) {
                    this.f9193f0 = i8;
                }
                i9 = this.f9214y;
                if (i9 != -1) {
                    this.f9192e0 = i9;
                }
                if (z4) {
                    this.g0 = 1.0f - f;
                }
                if (this.f9181Y && this.f9174R == 1) {
                    if (f5 == -1.0f) {
                        this.f9200j0 = 1.0f - f5;
                        this.f9196h0 = -1;
                        this.f9198i0 = -1;
                    } else if (i12 != -1) {
                        this.f9198i0 = i12;
                        this.f9196h0 = -1;
                        this.f9200j0 = -1.0f;
                    } else if (i13 != -1) {
                        this.f9196h0 = i13;
                        this.f9198i0 = -1;
                        this.f9200j0 = -1.0f;
                    }
                }
            }
            z4 = true;
            i6 = this.f9207r;
            if (i6 != -1) {
            }
            i7 = this.f9208s;
            if (i7 != -1) {
            }
            i8 = this.f9213x;
            if (i8 != -1) {
            }
            i9 = this.f9214y;
            if (i9 != -1) {
            }
            if (z4) {
            }
            if (this.f9181Y) {
                if (f5 == -1.0f) {
                }
            }
        } else {
            int i16 = this.f9205p;
            if (i16 != -1) {
                this.f9186b0 = i16;
            }
            int i17 = this.f9206q;
            if (i17 != -1) {
                this.f9184a0 = i17;
            }
            int i18 = this.f9207r;
            if (i18 != -1) {
                this.f9188c0 = i18;
            }
            int i19 = this.f9208s;
            if (i19 != -1) {
                this.f9190d0 = i19;
            }
            int i20 = this.f9213x;
            if (i20 != -1) {
                this.f9192e0 = i20;
            }
            int i21 = this.f9214y;
            if (i21 != -1) {
                this.f9193f0 = i21;
            }
        }
        if (this.f9207r == -1 && this.f9208s == -1 && this.f9206q == -1 && this.f9205p == -1) {
            int i22 = this.f;
            if (i22 != -1) {
                this.f9188c0 = i22;
                if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i11 > 0) {
                    ((ViewGroup.MarginLayoutParams) this).rightMargin = i11;
                }
            } else {
                int i23 = this.f9194g;
                if (i23 != -1) {
                    this.f9190d0 = i23;
                    if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i11 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).rightMargin = i11;
                    }
                }
            }
            int i24 = this.f9189d;
            if (i24 != -1) {
                this.f9184a0 = i24;
                if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i10 <= 0) {
                    return;
                }
                ((ViewGroup.MarginLayoutParams) this).leftMargin = i10;
                return;
            }
            int i25 = this.f9191e;
            if (i25 != -1) {
                this.f9186b0 = i25;
                if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i10 <= 0) {
                    return;
                }
                ((ViewGroup.MarginLayoutParams) this).leftMargin = i10;
            }
        }
    }
}
