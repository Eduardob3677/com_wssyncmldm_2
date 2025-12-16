package com.google.android.gms.internal.p000firebaseauthapi;

import com.samsung.android.knox.custom.CustomDeviceManager;

/* loaded from: classes.dex */
public final class c5 extends f5 {

    /* renamed from: g, reason: collision with root package name */
    public final byte[] f5543g;

    /* renamed from: h, reason: collision with root package name */
    public final int f5544h;

    /* renamed from: i, reason: collision with root package name */
    public int f5545i;

    public c5(byte[] bArr, int i5) {
        int length = bArr.length;
        if (((length - i5) | i5) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i5)));
        }
        this.f5543g = bArr;
        this.f5545i = 0;
        this.f5544h = i5;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void d0(byte b3) throws d5 {
        try {
            byte[] bArr = this.f5543g;
            int i5 = this.f5545i;
            this.f5545i = i5 + 1;
            bArr[i5] = b3;
        } catch (IndexOutOfBoundsException e5) {
            throw new d5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f5545i), Integer.valueOf(this.f5544h), 1), e5);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void e0(int i5, boolean z4) throws d5 {
        q0(i5 << 3);
        d0(z4 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void f0(int i5, Z4 z4) throws d5 {
        q0((i5 << 3) | 2);
        q0(z4.n());
        Y4 y4 = (Y4) z4;
        k(y4.n(), y4.f5495e);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void g0(int i5, int i6) throws d5 {
        q0((i5 << 3) | 5);
        h0(i6);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void h0(int i5) throws d5 {
        try {
            byte[] bArr = this.f5543g;
            int i6 = this.f5545i;
            bArr[i6] = (byte) (i5 & CustomDeviceManager.CALL_SCREEN_ALL);
            bArr[i6 + 1] = (byte) ((i5 >> 8) & CustomDeviceManager.CALL_SCREEN_ALL);
            bArr[i6 + 2] = (byte) ((i5 >> 16) & CustomDeviceManager.CALL_SCREEN_ALL);
            this.f5545i = i6 + 4;
            bArr[i6 + 3] = (byte) ((i5 >> 24) & CustomDeviceManager.CALL_SCREEN_ALL);
        } catch (IndexOutOfBoundsException e5) {
            throw new d5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f5545i), Integer.valueOf(this.f5544h), 1), e5);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void i0(int i5, long j3) throws d5 {
        q0((i5 << 3) | 1);
        j0(j3);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void j0(long j3) throws d5 {
        try {
            byte[] bArr = this.f5543g;
            int i5 = this.f5545i;
            bArr[i5] = (byte) (((int) j3) & CustomDeviceManager.CALL_SCREEN_ALL);
            bArr[i5 + 1] = (byte) (((int) (j3 >> 8)) & CustomDeviceManager.CALL_SCREEN_ALL);
            bArr[i5 + 2] = (byte) (((int) (j3 >> 16)) & CustomDeviceManager.CALL_SCREEN_ALL);
            bArr[i5 + 3] = (byte) (((int) (j3 >> 24)) & CustomDeviceManager.CALL_SCREEN_ALL);
            bArr[i5 + 4] = (byte) (((int) (j3 >> 32)) & CustomDeviceManager.CALL_SCREEN_ALL);
            bArr[i5 + 5] = (byte) (((int) (j3 >> 40)) & CustomDeviceManager.CALL_SCREEN_ALL);
            bArr[i5 + 6] = (byte) (((int) (j3 >> 48)) & CustomDeviceManager.CALL_SCREEN_ALL);
            this.f5545i = i5 + 8;
            bArr[i5 + 7] = (byte) (((int) (j3 >> 56)) & CustomDeviceManager.CALL_SCREEN_ALL);
        } catch (IndexOutOfBoundsException e5) {
            throw new d5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f5545i), Integer.valueOf(this.f5544h), 1), e5);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0332s
    public final void k(int i5, byte[] bArr) throws d5 {
        try {
            System.arraycopy(bArr, 0, this.f5543g, this.f5545i, i5);
            this.f5545i += i5;
        } catch (IndexOutOfBoundsException e5) {
            throw new d5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f5545i), Integer.valueOf(this.f5544h), Integer.valueOf(i5)), e5);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void k0(int i5, int i6) throws d5 {
        q0(i5 << 3);
        l0(i6);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void l0(int i5) throws d5 {
        if (i5 >= 0) {
            q0(i5);
        } else {
            s0(i5);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void m0(int i5, U4 u42, A a3) throws d5 {
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
    public final void n0(int i5, String str) throws d5 {
        q0((i5 << 3) | 2);
        int i6 = this.f5545i;
        try {
            int iA0 = f5.a0(str.length() * 3);
            int iA02 = f5.a0(str.length());
            int i7 = this.f5544h;
            byte[] bArr = this.f5543g;
            if (iA02 == iA0) {
                int i8 = i6 + iA02;
                this.f5545i = i8;
                int iB = O.b(str, bArr, i8, i7 - i8);
                this.f5545i = i6;
                q0((iB - i6) - iA02);
                this.f5545i = iB;
            } else {
                q0(O.c(str));
                int i9 = this.f5545i;
                this.f5545i = O.b(str, bArr, i9, i7 - i9);
            }
        } catch (N e5) {
            this.f5545i = i6;
            c0(str, e5);
        } catch (IndexOutOfBoundsException e6) {
            throw new d5(e6);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void o0(int i5, int i6) throws d5 {
        q0((i5 << 3) | i6);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void p0(int i5, int i6) throws d5 {
        q0(i5 << 3);
        q0(i6);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void q0(int i5) throws d5 {
        if (f5.f) {
            int i6 = W4.f5485a;
        }
        while (true) {
            int i7 = i5 & (-128);
            byte[] bArr = this.f5543g;
            if (i7 == 0) {
                int i8 = this.f5545i;
                this.f5545i = i8 + 1;
                bArr[i8] = (byte) i5;
                return;
            } else {
                try {
                    int i9 = this.f5545i;
                    this.f5545i = i9 + 1;
                    bArr[i9] = (byte) ((i5 & 127) | 128);
                    i5 >>>= 7;
                } catch (IndexOutOfBoundsException e5) {
                    throw new d5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f5545i), Integer.valueOf(this.f5544h), 1), e5);
                }
            }
            throw new d5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f5545i), Integer.valueOf(this.f5544h), 1), e5);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void r0(int i5, long j3) throws d5 {
        q0(i5 << 3);
        s0(j3);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.f5
    public final void s0(long j3) throws d5 {
        boolean z4 = f5.f;
        int i5 = this.f5544h;
        byte[] bArr = this.f5543g;
        if (z4 && i5 - this.f5545i >= 10) {
            while ((j3 & (-128)) != 0) {
                int i6 = this.f5545i;
                this.f5545i = i6 + 1;
                L.m(bArr, i6, (byte) ((((int) j3) & 127) | 128));
                j3 >>>= 7;
            }
            int i7 = this.f5545i;
            this.f5545i = i7 + 1;
            L.m(bArr, i7, (byte) j3);
            return;
        }
        while ((j3 & (-128)) != 0) {
            try {
                int i8 = this.f5545i;
                this.f5545i = i8 + 1;
                bArr[i8] = (byte) ((((int) j3) & 127) | 128);
                j3 >>>= 7;
            } catch (IndexOutOfBoundsException e5) {
                throw new d5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f5545i), Integer.valueOf(i5), 1), e5);
            }
        }
        int i9 = this.f5545i;
        this.f5545i = i9 + 1;
        bArr[i9] = (byte) j3;
    }

    public final int v0() {
        return this.f5544h - this.f5545i;
    }
}
