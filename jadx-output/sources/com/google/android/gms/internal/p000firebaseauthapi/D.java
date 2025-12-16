package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class D {
    public static final D f = new D(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    public int f5350a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f5351b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f5352c;

    /* renamed from: d, reason: collision with root package name */
    public int f5353d = -1;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5354e;

    public D(int i5, int[] iArr, Object[] objArr, boolean z4) {
        this.f5350a = i5;
        this.f5351b = iArr;
        this.f5352c = objArr;
        this.f5354e = z4;
    }

    public static D b() {
        return new D(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int iA0;
        int iB0;
        int i5 = this.f5353d;
        if (i5 != -1) {
            return i5;
        }
        int iR = 0;
        for (int i6 = 0; i6 < this.f5350a; i6++) {
            int i7 = this.f5351b[i6];
            int i8 = i7 >>> 3;
            int i9 = i7 & 7;
            if (i9 != 0) {
                if (i9 == 1) {
                    ((Long) this.f5352c[i6]).getClass();
                    iR = f.r(i8 << 3, 8, iR);
                } else if (i9 == 2) {
                    Z4 z4 = (Z4) this.f5352c[i6];
                    int iA02 = f5.a0(i8 << 3);
                    int iN = z4.n();
                    iR = f.s(iN, iN, iA02, iR);
                } else if (i9 == 3) {
                    int iZ = f5.Z(i8);
                    iA0 = iZ + iZ;
                    iB0 = ((D) this.f5352c[i6]).a();
                } else {
                    if (i9 != 5) {
                        throw new IllegalStateException(C0255f.a());
                    }
                    ((Integer) this.f5352c[i6]).getClass();
                    iR = f.r(i8 << 3, 4, iR);
                }
            } else {
                long jLongValue = ((Long) this.f5352c[i6]).longValue();
                iA0 = f5.a0(i8 << 3);
                iB0 = f5.b0(jLongValue);
            }
            iR = iB0 + iA0 + iR;
        }
        this.f5353d = iR;
        return iR;
    }

    public final void c(int i5, Object obj) {
        if (!this.f5354e) {
            throw new UnsupportedOperationException();
        }
        int i6 = this.f5350a;
        int[] iArr = this.f5351b;
        if (i6 == iArr.length) {
            int i7 = i6 + (i6 < 4 ? 8 : i6 >> 1);
            this.f5351b = Arrays.copyOf(iArr, i7);
            this.f5352c = Arrays.copyOf(this.f5352c, i7);
        }
        int[] iArr2 = this.f5351b;
        int i8 = this.f5350a;
        iArr2[i8] = i5;
        this.f5352c[i8] = obj;
        this.f5350a = i8 + 1;
    }

    public final void d(C0303n c0303n) {
        if (this.f5350a != 0) {
            for (int i5 = 0; i5 < this.f5350a; i5++) {
                int i6 = this.f5351b[i5];
                Object obj = this.f5352c[i5];
                int i7 = i6 >>> 3;
                int i8 = i6 & 7;
                if (i8 == 0) {
                    c0303n.E(i7, ((Long) obj).longValue());
                } else if (i8 == 1) {
                    c0303n.A(i7, ((Long) obj).longValue());
                } else if (i8 == 2) {
                    c0303n.r(i7, (Z4) obj);
                } else if (i8 == 3) {
                    ((f5) c0303n.f5655d).o0(i7, 3);
                    ((D) obj).d(c0303n);
                    ((f5) c0303n.f5655d).o0(i7, 4);
                } else {
                    if (i8 != 5) {
                        throw new RuntimeException(C0255f.a());
                    }
                    c0303n.z(i7, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof D)) {
            return false;
        }
        D d2 = (D) obj;
        int i5 = this.f5350a;
        if (i5 == d2.f5350a) {
            int[] iArr = this.f5351b;
            int[] iArr2 = d2.f5351b;
            int i6 = 0;
            while (true) {
                if (i6 >= i5) {
                    Object[] objArr = this.f5352c;
                    Object[] objArr2 = d2.f5352c;
                    int i7 = this.f5350a;
                    for (int i8 = 0; i8 < i7; i8++) {
                        if (objArr[i8].equals(objArr2[i8])) {
                        }
                    }
                    return true;
                }
                if (iArr[i6] != iArr2[i6]) {
                    break;
                }
                i6++;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i5 = this.f5350a;
        int i6 = (i5 + 527) * 31;
        int[] iArr = this.f5351b;
        int iHashCode = 17;
        int i7 = 17;
        for (int i8 = 0; i8 < i5; i8++) {
            i7 = (i7 * 31) + iArr[i8];
        }
        int i9 = (i6 + i7) * 31;
        Object[] objArr = this.f5352c;
        int i10 = this.f5350a;
        for (int i11 = 0; i11 < i10; i11++) {
            iHashCode = (iHashCode * 31) + objArr[i11].hashCode();
        }
        return i9 + iHashCode;
    }
}
