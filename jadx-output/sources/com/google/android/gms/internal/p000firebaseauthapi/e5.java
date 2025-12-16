package com.google.android.gms.internal.p000firebaseauthapi;

import com.samsung.android.knox.custom.CustomDeviceManager;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class e5 extends f5 {

    /* renamed from: g, reason: collision with root package name */
    public final byte[] f5556g;

    /* renamed from: h, reason: collision with root package name */
    public final int f5557h;

    /* renamed from: i, reason: collision with root package name */
    public int f5558i;

    /* renamed from: j, reason: collision with root package name */
    public final OutputStream f5559j;

    public e5(OutputStream outputStream, int i5) {
        if (i5 < 0) {
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }
        int iMax = Math.max(i5, 20);
        this.f5556g = new byte[iMax];
        this.f5557h = iMax;
        this.f5559j = outputStream;
    }

    public final void A0(long j3) {
        boolean z4 = f5.f;
        byte[] bArr = this.f5556g;
        if (z4) {
            while ((j3 & (-128)) != 0) {
                int i5 = this.f5558i;
                this.f5558i = i5 + 1;
                L.m(bArr, i5, (byte) ((((int) j3) & 127) | 128));
                j3 >>>= 7;
            }
            int i6 = this.f5558i;
            this.f5558i = i6 + 1;
            L.m(bArr, i6, (byte) j3);
            return;
        }
        while ((j3 & (-128)) != 0) {
            int i7 = this.f5558i;
            this.f5558i = i7 + 1;
            bArr[i7] = (byte) ((((int) j3) & 127) | 128);
            j3 >>>= 7;
        }
        int i8 = this.f5558i;
        this.f5558i = i8 + 1;
        bArr[i8] = (byte) j3;
    }

    public final void B0(int i5, byte[] bArr) throws IOException {
        int i6 = this.f5558i;
        int i7 = this.f5557h;
        int i8 = i7 - i6;
        byte[] bArr2 = this.f5556g;
        if (i8 >= i5) {
            System.arraycopy(bArr, 0, bArr2, i6, i5);
            this.f5558i += i5;
            return;
        }
        System.arraycopy(bArr, 0, bArr2, i6, i8);
        int i9 = i5 - i8;
        this.f5558i = i7;
        v0();
        if (i9 > i7) {
            this.f5559j.write(bArr, i8, i9);
        } else {
            System.arraycopy(bArr, i8, bArr2, 0, i9);
            this.f5558i = i9;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void d0(byte b3) throws IOException {
        if (this.f5558i == this.f5557h) {
            v0();
        }
        int i5 = this.f5558i;
        this.f5558i = i5 + 1;
        this.f5556g[i5] = b3;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void e0(int i5, boolean z4) throws IOException {
        w0(11);
        z0(i5 << 3);
        int i6 = this.f5558i;
        this.f5558i = i6 + 1;
        this.f5556g[i6] = z4 ? (byte) 1 : (byte) 0;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void f0(int i5, Z4 z4) throws IOException {
        q0((i5 << 3) | 2);
        q0(z4.n());
        Y4 y4 = (Y4) z4;
        k(y4.n(), y4.f5495e);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void g0(int i5, int i6) throws IOException {
        w0(14);
        z0((i5 << 3) | 5);
        x0(i6);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void h0(int i5) throws IOException {
        w0(4);
        x0(i5);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void i0(int i5, long j3) throws IOException {
        w0(18);
        z0((i5 << 3) | 1);
        y0(j3);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void j0(long j3) throws IOException {
        w0(8);
        y0(j3);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0332s
    public final void k(int i5, byte[] bArr) throws IOException {
        B0(i5, bArr);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void k0(int i5, int i6) throws IOException {
        w0(20);
        z0(i5 << 3);
        if (i6 >= 0) {
            z0(i6);
        } else {
            A0(i6);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void l0(int i5) throws IOException {
        if (i5 >= 0) {
            q0(i5);
        } else {
            s0(i5);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void m0(int i5, U4 u42, A a3) throws IOException {
        q0((i5 << 3) | 2);
        m5 m5Var = (m5) u42;
        int iE = m5Var.zzd;
        if (iE == -1) {
            iE = a3.e(u42);
            m5Var.zzd = iE;
        }
        q0(iE);
        a3.g(u42, this.f5564d);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void n0(int i5, String str) throws IOException {
        q0((i5 << 3) | 2);
        try {
            int length = str.length() * 3;
            int iA0 = f5.a0(length);
            int i6 = iA0 + length;
            int i7 = this.f5557h;
            if (i6 > i7) {
                byte[] bArr = new byte[length];
                int iB = O.b(str, bArr, 0, length);
                q0(iB);
                B0(iB, bArr);
                return;
            }
            if (i6 > i7 - this.f5558i) {
                v0();
            }
            int iA02 = f5.a0(str.length());
            int i8 = this.f5558i;
            byte[] bArr2 = this.f5556g;
            try {
                if (iA02 == iA0) {
                    int i9 = i8 + iA02;
                    this.f5558i = i9;
                    int iB2 = O.b(str, bArr2, i9, i7 - i9);
                    this.f5558i = i8;
                    z0((iB2 - i8) - iA02);
                    this.f5558i = iB2;
                } else {
                    int iC = O.c(str);
                    z0(iC);
                    this.f5558i = O.b(str, bArr2, this.f5558i, iC);
                }
            } catch (N e5) {
                this.f5558i = i8;
                throw e5;
            } catch (ArrayIndexOutOfBoundsException e6) {
                throw new d5(e6);
            }
        } catch (N e7) {
            c0(str, e7);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void o0(int i5, int i6) throws IOException {
        q0((i5 << 3) | i6);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void p0(int i5, int i6) throws IOException {
        w0(20);
        z0(i5 << 3);
        z0(i6);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void q0(int i5) throws IOException {
        w0(5);
        z0(i5);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void r0(int i5, long j3) throws IOException {
        w0(20);
        z0(i5 << 3);
        A0(j3);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void s0(long j3) throws IOException {
        w0(10);
        A0(j3);
    }

    public final void v0() throws IOException {
        this.f5559j.write(this.f5556g, 0, this.f5558i);
        this.f5558i = 0;
    }

    public final void w0(int i5) throws IOException {
        if (this.f5557h - this.f5558i < i5) {
            v0();
        }
    }

    public final void x0(int i5) {
        int i6 = this.f5558i;
        byte b3 = (byte) (i5 & CustomDeviceManager.CALL_SCREEN_ALL);
        byte[] bArr = this.f5556g;
        bArr[i6] = b3;
        bArr[i6 + 1] = (byte) ((i5 >> 8) & CustomDeviceManager.CALL_SCREEN_ALL);
        bArr[i6 + 2] = (byte) ((i5 >> 16) & CustomDeviceManager.CALL_SCREEN_ALL);
        this.f5558i = i6 + 4;
        bArr[i6 + 3] = (byte) ((i5 >> 24) & CustomDeviceManager.CALL_SCREEN_ALL);
    }

    public final void y0(long j3) {
        int i5 = this.f5558i;
        byte[] bArr = this.f5556g;
        bArr[i5] = (byte) (j3 & 255);
        bArr[i5 + 1] = (byte) ((j3 >> 8) & 255);
        bArr[i5 + 2] = (byte) ((j3 >> 16) & 255);
        bArr[i5 + 3] = (byte) (255 & (j3 >> 24));
        bArr[i5 + 4] = (byte) (((int) (j3 >> 32)) & CustomDeviceManager.CALL_SCREEN_ALL);
        bArr[i5 + 5] = (byte) (((int) (j3 >> 40)) & CustomDeviceManager.CALL_SCREEN_ALL);
        bArr[i5 + 6] = (byte) (((int) (j3 >> 48)) & CustomDeviceManager.CALL_SCREEN_ALL);
        this.f5558i = i5 + 8;
        bArr[i5 + 7] = (byte) (((int) (j3 >> 56)) & CustomDeviceManager.CALL_SCREEN_ALL);
    }

    public final void z0(int i5) {
        boolean z4 = f5.f;
        byte[] bArr = this.f5556g;
        if (z4) {
            while ((i5 & (-128)) != 0) {
                int i6 = this.f5558i;
                this.f5558i = i6 + 1;
                L.m(bArr, i6, (byte) ((i5 & 127) | 128));
                i5 >>>= 7;
            }
            int i7 = this.f5558i;
            this.f5558i = i7 + 1;
            L.m(bArr, i7, (byte) i5);
            return;
        }
        while ((i5 & (-128)) != 0) {
            int i8 = this.f5558i;
            this.f5558i = i8 + 1;
            bArr[i8] = (byte) ((i5 & 127) | 128);
            i5 >>>= 7;
        }
        int i9 = this.f5558i;
        this.f5558i = i9 + 1;
        bArr[i9] = (byte) i5;
    }
}
