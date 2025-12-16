package com.google.android.gms.internal.p000firebaseauthapi;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import k.Q0;
import s.C0826c;
import s.C0827d;
import s.e;
import s.g;
import s.j;
import t.C0853b;
import u.p;

/* loaded from: classes.dex */
public final class a5 {

    /* renamed from: a, reason: collision with root package name */
    public int f5511a;

    /* renamed from: b, reason: collision with root package name */
    public int f5512b;

    /* renamed from: c, reason: collision with root package name */
    public int f5513c;

    /* renamed from: d, reason: collision with root package name */
    public int f5514d;

    /* renamed from: e, reason: collision with root package name */
    public int f5515e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public Object f5516g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f5517h;

    public /* synthetic */ a5(byte[] bArr, int i5) {
        this.f = Integer.MAX_VALUE;
        this.f5517h = bArr;
        this.f5512b = i5;
        this.f5514d = 0;
    }

    public static boolean a(int i5, int i6, int i7) {
        if (i5 == i6) {
            return true;
        }
        int mode = View.MeasureSpec.getMode(i5);
        View.MeasureSpec.getSize(i5);
        int mode2 = View.MeasureSpec.getMode(i6);
        int size = View.MeasureSpec.getSize(i6);
        if (mode2 == 1073741824) {
            return (mode == Integer.MIN_VALUE || mode == 0) && i7 == size;
        }
        return false;
    }

    public static int k(int i5) {
        return (-(i5 & 1)) ^ (i5 >>> 1);
    }

    public static long l(long j3) {
        return (-(j3 & 1)) ^ (j3 >>> 1);
    }

    public void b(C0827d c0827d, C0853b c0853b) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        int iMax;
        int i5;
        int iMin;
        boolean z4;
        int baseline;
        int i6;
        if (c0827d == null) {
            return;
        }
        if (c0827d.f8919a0 == 8) {
            c0853b.f9081e = 0;
            c0853b.f = 0;
            c0853b.f9082g = 0;
            return;
        }
        if (c0827d.f8905N == null) {
            return;
        }
        int i7 = c0853b.f9077a;
        int i8 = c0853b.f9078b;
        int i9 = c0853b.f9079c;
        int i10 = c0853b.f9080d;
        int i11 = this.f5511a + this.f5512b;
        int i12 = this.f5513c;
        View view = (View) c0827d.f8917Z;
        int iF = Q0.f(i7);
        C0826c c0826c = c0827d.E;
        C0826c c0826c2 = c0827d.f8895C;
        if (iF == 0) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
        } else if (iF == 1) {
            iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f5515e, i12, -2);
        } else if (iF == 2) {
            iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f5515e, i12, -2);
            boolean z5 = c0827d.f8937l == 1;
            int i13 = c0853b.f9085j;
            if (i13 == 1 || i13 == 2) {
                boolean z6 = view.getMeasuredHeight() == c0827d.k();
                if (c0853b.f9085j == 2 || !z5 || ((z5 && z6) || c0827d.w())) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(c0827d.n(), 1073741824);
                }
            }
        } else if (iF != 3) {
            iMakeMeasureSpec = 0;
        } else {
            int i14 = this.f5515e;
            int i15 = c0826c2 != null ? c0826c2.f8890g : 0;
            if (c0826c != null) {
                i15 += c0826c.f8890g;
            }
            iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(i14, i12 + i15, -1);
        }
        int iF2 = Q0.f(i8);
        if (iF2 == 0) {
            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i10, 1073741824);
        } else if (iF2 == 1) {
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f, i11, -2);
        } else if (iF2 == 2) {
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f, i11, -2);
            boolean z7 = c0827d.f8938m == 1;
            int i16 = c0853b.f9085j;
            if (i16 == 1 || i16 == 2) {
                boolean z8 = view.getMeasuredWidth() == c0827d.n();
                if (c0853b.f9085j == 2 || !z7 || ((z7 && z8) || c0827d.x())) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(c0827d.k(), 1073741824);
                }
            }
        } else if (iF2 != 3) {
            iMakeMeasureSpec2 = 0;
        } else {
            int i17 = this.f;
            int i18 = c0826c2 != null ? c0827d.f8896D.f8890g : 0;
            if (c0826c != null) {
                i18 += c0827d.f8897F.f8890g;
            }
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i17, i11 + i18, -1);
        }
        e eVar = (e) c0827d.f8905N;
        ConstraintLayout constraintLayout = (ConstraintLayout) this.f5517h;
        if (eVar != null && j.c(constraintLayout.f3577k, 256) && view.getMeasuredWidth() == c0827d.n() && view.getMeasuredWidth() < eVar.n() && view.getMeasuredHeight() == c0827d.k() && view.getMeasuredHeight() < eVar.k() && view.getBaseline() == c0827d.f8912U && !c0827d.v() && a(c0827d.f8893A, iMakeMeasureSpec, c0827d.n()) && a(c0827d.f8894B, iMakeMeasureSpec2, c0827d.k())) {
            c0853b.f9081e = c0827d.n();
            c0853b.f = c0827d.k();
            c0853b.f9082g = c0827d.f8912U;
            return;
        }
        boolean z9 = i7 == 3;
        boolean z10 = i8 == 3;
        boolean z11 = i8 == 4 || i8 == 1;
        boolean z12 = i7 == 4 || i7 == 1;
        boolean z13 = z9 && c0827d.f8908Q > 0.0f;
        boolean z14 = z10 && c0827d.f8908Q > 0.0f;
        if (view == null) {
            return;
        }
        u.e eVar2 = (u.e) view.getLayoutParams();
        int i19 = c0853b.f9085j;
        if (i19 != 1 && i19 != 2 && z9 && c0827d.f8937l == 0 && z10 && c0827d.f8938m == 0) {
            i6 = -1;
            baseline = 0;
            z4 = false;
            iMin = 0;
            iMax = 0;
        } else {
            if ((view instanceof p) && (c0827d instanceof g)) {
                ((p) view).i((g) c0827d, iMakeMeasureSpec, iMakeMeasureSpec2);
            } else {
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            }
            c0827d.f8893A = iMakeMeasureSpec;
            c0827d.f8894B = iMakeMeasureSpec2;
            c0827d.f8929g = false;
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            int baseline2 = view.getBaseline();
            int i20 = c0827d.f8939o;
            iMax = i20 > 0 ? Math.max(i20, measuredWidth) : measuredWidth;
            int i21 = c0827d.f8940p;
            if (i21 > 0) {
                iMax = Math.min(i21, iMax);
            }
            int i22 = c0827d.f8942r;
            if (i22 > 0) {
                iMin = Math.max(i22, measuredHeight);
                i5 = iMakeMeasureSpec;
            } else {
                i5 = iMakeMeasureSpec;
                iMin = measuredHeight;
            }
            int i23 = c0827d.f8943s;
            if (i23 > 0) {
                iMin = Math.min(i23, iMin);
            }
            if (!j.c(constraintLayout.f3577k, 1)) {
                if (z13 && z11) {
                    iMax = (int) ((iMin * c0827d.f8908Q) + 0.5f);
                } else if (z14 && z12) {
                    iMin = (int) ((iMax / c0827d.f8908Q) + 0.5f);
                }
            }
            if (measuredWidth == iMax && measuredHeight == iMin) {
                baseline = baseline2;
                i6 = -1;
                z4 = false;
            } else {
                int iMakeMeasureSpec3 = measuredWidth != iMax ? View.MeasureSpec.makeMeasureSpec(iMax, 1073741824) : i5;
                if (measuredHeight != iMin) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                }
                view.measure(iMakeMeasureSpec3, iMakeMeasureSpec2);
                c0827d.f8893A = iMakeMeasureSpec3;
                c0827d.f8894B = iMakeMeasureSpec2;
                z4 = false;
                c0827d.f8929g = false;
                int measuredWidth2 = view.getMeasuredWidth();
                int measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                iMax = measuredWidth2;
                iMin = measuredHeight2;
                i6 = -1;
            }
        }
        boolean z15 = baseline != i6 ? true : z4;
        if (iMax != c0853b.f9079c || iMin != c0853b.f9080d) {
            z4 = true;
        }
        c0853b.f9084i = z4;
        boolean z16 = eVar2.f9180X ? true : z15;
        if (z16 && baseline != -1 && c0827d.f8912U != baseline) {
            c0853b.f9084i = true;
        }
        c0853b.f9081e = iMax;
        c0853b.f = iMin;
        c0853b.f9083h = z16;
        c0853b.f9082g = baseline;
    }

    public int c(int i5) {
        if (i5 < 0) {
            throw C0255f.c();
        }
        int i6 = i5 + this.f5514d;
        if (i6 < 0) {
            throw C0255f.d();
        }
        int i7 = this.f;
        if (i6 > i7) {
            throw C0255f.e();
        }
        this.f = i6;
        int i8 = this.f5512b + this.f5513c;
        this.f5512b = i8;
        if (i8 > i6) {
            int i9 = i8 - i6;
            this.f5513c = i9;
            this.f5512b = i8 - i9;
        } else {
            this.f5513c = 0;
        }
        return i7;
    }

    public int d() throws C0255f {
        int i5 = this.f5514d;
        if (this.f5512b - i5 < 4) {
            throw C0255f.e();
        }
        this.f5514d = i5 + 4;
        byte[] bArr = (byte[]) this.f5517h;
        return ((bArr[i5 + 3] & 255) << 24) | (bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8) | ((bArr[i5 + 2] & 255) << 16);
    }

    public int e() {
        int i5;
        int i6 = this.f5514d;
        int i7 = this.f5512b;
        if (i7 != i6) {
            int i8 = i6 + 1;
            byte[] bArr = (byte[]) this.f5517h;
            byte b3 = bArr[i6];
            if (b3 >= 0) {
                this.f5514d = i8;
                return b3;
            }
            if (i7 - i8 >= 9) {
                int i9 = i6 + 2;
                int i10 = (bArr[i8] << 7) ^ b3;
                if (i10 < 0) {
                    i5 = i10 ^ (-128);
                } else {
                    int i11 = i6 + 3;
                    int i12 = (bArr[i9] << 14) ^ i10;
                    if (i12 >= 0) {
                        i5 = i12 ^ 16256;
                    } else {
                        int i13 = i6 + 4;
                        int i14 = i12 ^ (bArr[i11] << 21);
                        if (i14 < 0) {
                            i5 = (-2080896) ^ i14;
                        } else {
                            i11 = i6 + 5;
                            byte b5 = bArr[i13];
                            int i15 = (i14 ^ (b5 << 28)) ^ 266354560;
                            if (b5 < 0) {
                                i13 = i6 + 6;
                                if (bArr[i11] < 0) {
                                    i11 = i6 + 7;
                                    if (bArr[i13] < 0) {
                                        i13 = i6 + 8;
                                        if (bArr[i11] < 0) {
                                            i11 = i6 + 9;
                                            if (bArr[i13] < 0) {
                                                int i16 = i6 + 10;
                                                if (bArr[i11] >= 0) {
                                                    i9 = i16;
                                                    i5 = i15;
                                                }
                                            }
                                        }
                                    }
                                }
                                i5 = i15;
                            }
                            i5 = i15;
                        }
                        i9 = i13;
                    }
                    i9 = i11;
                }
                this.f5514d = i9;
                return i5;
            }
        }
        return (int) i();
    }

    public int f() throws C0255f {
        if (j()) {
            this.f5515e = 0;
            return 0;
        }
        int iE = e();
        this.f5515e = iE;
        if ((iE >>> 3) != 0) {
            return iE;
        }
        throw new C0255f("Protocol message contained an invalid tag (zero).");
    }

    public long g() throws C0255f {
        int i5 = this.f5514d;
        if (this.f5512b - i5 < 8) {
            throw C0255f.e();
        }
        this.f5514d = i5 + 8;
        byte[] bArr = (byte[]) this.f5517h;
        return ((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255) | ((bArr[i5 + 2] & 255) << 16) | ((bArr[i5 + 3] & 255) << 24) | ((bArr[i5 + 4] & 255) << 32) | ((bArr[i5 + 5] & 255) << 40) | ((bArr[i5 + 6] & 255) << 48) | ((bArr[i5 + 7] & 255) << 56);
    }

    public long h() {
        long j3;
        long j5;
        long j6;
        int i5 = this.f5514d;
        int i6 = this.f5512b;
        if (i6 != i5) {
            int i7 = i5 + 1;
            byte[] bArr = (byte[]) this.f5517h;
            byte b3 = bArr[i5];
            if (b3 >= 0) {
                this.f5514d = i7;
                return b3;
            }
            if (i6 - i7 >= 9) {
                int i8 = i5 + 2;
                int i9 = (bArr[i7] << 7) ^ b3;
                if (i9 < 0) {
                    j3 = i9 ^ (-128);
                } else {
                    int i10 = i5 + 3;
                    int i11 = (bArr[i8] << 14) ^ i9;
                    if (i11 >= 0) {
                        j3 = i11 ^ 16256;
                    } else {
                        int i12 = i5 + 4;
                        int i13 = i11 ^ (bArr[i10] << 21);
                        if (i13 < 0) {
                            long j7 = (-2080896) ^ i13;
                            i8 = i12;
                            j3 = j7;
                        } else {
                            i10 = i5 + 5;
                            long j8 = (bArr[i12] << 28) ^ i13;
                            if (j8 >= 0) {
                                j6 = 266354560;
                            } else {
                                int i14 = i5 + 6;
                                long j9 = j8 ^ (bArr[i10] << 35);
                                if (j9 < 0) {
                                    j5 = -34093383808L;
                                } else {
                                    i10 = i5 + 7;
                                    j8 = j9 ^ (bArr[i14] << 42);
                                    if (j8 >= 0) {
                                        j6 = 4363953127296L;
                                    } else {
                                        i14 = i5 + 8;
                                        j9 = j8 ^ (bArr[i10] << 49);
                                        if (j9 < 0) {
                                            j5 = -558586000294016L;
                                        } else {
                                            i10 = i5 + 9;
                                            long j10 = (j9 ^ (bArr[i14] << 56)) ^ 71499008037633920L;
                                            if (j10 < 0) {
                                                int i15 = i5 + 10;
                                                if (bArr[i10] >= 0) {
                                                    j3 = j10;
                                                    i8 = i15;
                                                }
                                            } else {
                                                j3 = j10;
                                            }
                                        }
                                    }
                                }
                                j3 = j9 ^ j5;
                                i8 = i14;
                            }
                            j3 = j8 ^ j6;
                        }
                    }
                    i8 = i10;
                }
                this.f5514d = i8;
                return j3;
            }
        }
        return i();
    }

    public long i() throws C0255f {
        long j3 = 0;
        for (int i5 = 0; i5 < 64; i5 += 7) {
            int i6 = this.f5514d;
            if (i6 == this.f5512b) {
                throw C0255f.e();
            }
            this.f5514d = i6 + 1;
            j3 |= (r3 & 127) << i5;
            if ((((byte[]) this.f5517h)[i6] & 128) == 0) {
                return j3;
            }
        }
        throw new C0255f("CodedInputStream encountered a malformed varint.");
    }

    public boolean j() {
        return this.f5514d == this.f5512b;
    }

    public a5(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        this.f5517h = constraintLayout;
        this.f5516g = constraintLayout2;
    }
}
