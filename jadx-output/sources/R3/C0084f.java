package R3;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: R3.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0084f {

    /* renamed from: c, reason: collision with root package name */
    public int f2386c;

    /* renamed from: e, reason: collision with root package name */
    public final InputStream f2388e;
    public int f;

    /* renamed from: i, reason: collision with root package name */
    public int f2391i;

    /* renamed from: h, reason: collision with root package name */
    public int f2390h = Integer.MAX_VALUE;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f2384a = new byte[4096];

    /* renamed from: b, reason: collision with root package name */
    public int f2385b = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f2387d = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f2389g = 0;

    public C0084f(InputStream inputStream) {
        this.f2388e = inputStream;
    }

    public final void a(int i5) {
        if (this.f != i5) {
            throw new C0098u("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final int b() {
        int i5 = this.f2390h;
        if (i5 == Integer.MAX_VALUE) {
            return -1;
        }
        return i5 - (this.f2389g + this.f2387d);
    }

    public final void c(int i5) {
        this.f2390h = i5;
        o();
    }

    public final int d(int i5) {
        if (i5 < 0) {
            throw new C0098u("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i6 = this.f2389g + this.f2387d + i5;
        int i7 = this.f2390h;
        if (i6 > i7) {
            throw C0098u.a();
        }
        this.f2390h = i6;
        o();
        return i7;
    }

    public final z e() {
        int iK = k();
        int i5 = this.f2385b;
        int i6 = this.f2387d;
        if (iK > i5 - i6 || iK <= 0) {
            return iK == 0 ? AbstractC0083e.f2383c : new z(h(iK));
        }
        byte[] bArr = new byte[iK];
        System.arraycopy(this.f2384a, i6, bArr, 0, iK);
        z zVar = new z(bArr);
        this.f2387d += iK;
        return zVar;
    }

    public final int f() {
        return k();
    }

    public final AbstractC0080b g(AbstractC0081c abstractC0081c, C0087i c0087i) throws C0098u {
        int iK = k();
        if (this.f2391i >= 64) {
            throw new C0098u("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iD = d(iK);
        this.f2391i++;
        AbstractC0080b abstractC0080b = (AbstractC0080b) abstractC0081c.a(this, c0087i);
        a(0);
        this.f2391i--;
        c(iD);
        return abstractC0080b;
    }

    public final byte[] h(int i5) throws C0098u {
        if (i5 <= 0) {
            if (i5 == 0) {
                return AbstractC0097t.f2415a;
            }
            throw new C0098u("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i6 = this.f2389g;
        int i7 = this.f2387d;
        int i8 = i6 + i7 + i5;
        int i9 = this.f2390h;
        if (i8 > i9) {
            r((i9 - i6) - i7);
            throw C0098u.a();
        }
        byte[] bArr = this.f2384a;
        if (i5 < 4096) {
            byte[] bArr2 = new byte[i5];
            int i10 = this.f2385b - i7;
            System.arraycopy(bArr, i7, bArr2, 0, i10);
            int i11 = this.f2385b;
            this.f2387d = i11;
            int i12 = i5 - i10;
            if (i11 - i11 < i12) {
                p(i12);
            }
            System.arraycopy(bArr, 0, bArr2, i10, i12);
            this.f2387d = i12;
            return bArr2;
        }
        int i13 = this.f2385b;
        this.f2389g = i6 + i13;
        this.f2387d = 0;
        this.f2385b = 0;
        int length = i13 - i7;
        int i14 = i5 - length;
        ArrayList arrayList = new ArrayList();
        while (i14 > 0) {
            int iMin = Math.min(i14, 4096);
            byte[] bArr3 = new byte[iMin];
            int i15 = 0;
            while (i15 < iMin) {
                InputStream inputStream = this.f2388e;
                int i16 = inputStream == null ? -1 : inputStream.read(bArr3, i15, iMin - i15);
                if (i16 == -1) {
                    throw C0098u.a();
                }
                this.f2389g += i16;
                i15 += i16;
            }
            i14 -= iMin;
            arrayList.add(bArr3);
        }
        byte[] bArr4 = new byte[i5];
        System.arraycopy(bArr, i7, bArr4, 0, length);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            byte[] bArr5 = (byte[]) it.next();
            System.arraycopy(bArr5, 0, bArr4, length, bArr5.length);
            length += bArr5.length;
        }
        return bArr4;
    }

    public final int i() throws C0098u {
        int i5 = this.f2387d;
        if (this.f2385b - i5 < 4) {
            p(4);
            i5 = this.f2387d;
        }
        this.f2387d = i5 + 4;
        byte[] bArr = this.f2384a;
        return ((bArr[i5 + 3] & 255) << 24) | (bArr[i5] & 255) | ((bArr[i5 + 1] & 255) << 8) | ((bArr[i5 + 2] & 255) << 16);
    }

    public final long j() throws C0098u {
        int i5 = this.f2387d;
        if (this.f2385b - i5 < 8) {
            p(8);
            i5 = this.f2387d;
        }
        this.f2387d = i5 + 8;
        byte[] bArr = this.f2384a;
        return ((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255) | ((bArr[i5 + 2] & 255) << 16) | ((bArr[i5 + 3] & 255) << 24) | ((bArr[i5 + 4] & 255) << 32) | ((bArr[i5 + 5] & 255) << 40) | ((bArr[i5 + 6] & 255) << 48) | ((bArr[i5 + 7] & 255) << 56);
    }

    public final int k() {
        int i5;
        int i6 = this.f2387d;
        int i7 = this.f2385b;
        if (i7 != i6) {
            int i8 = i6 + 1;
            byte[] bArr = this.f2384a;
            byte b3 = bArr[i6];
            if (b3 >= 0) {
                this.f2387d = i8;
                return b3;
            }
            if (i7 - i8 >= 9) {
                int i9 = i6 + 2;
                int i10 = (bArr[i8] << 7) ^ b3;
                long j3 = i10;
                if (j3 < 0) {
                    i5 = (int) ((-128) ^ j3);
                } else {
                    int i11 = i6 + 3;
                    int i12 = (bArr[i9] << 14) ^ i10;
                    long j5 = i12;
                    if (j5 >= 0) {
                        i5 = (int) (16256 ^ j5);
                    } else {
                        int i13 = i6 + 4;
                        long j6 = i12 ^ (bArr[i11] << 21);
                        if (j6 < 0) {
                            i5 = (int) ((-2080896) ^ j6);
                        } else {
                            i11 = i6 + 5;
                            int i14 = (int) ((r1 ^ (r2 << 28)) ^ 266354560);
                            if (bArr[i13] < 0) {
                                i13 = i6 + 6;
                                if (bArr[i11] < 0) {
                                    i11 = i6 + 7;
                                    if (bArr[i13] < 0) {
                                        i13 = i6 + 8;
                                        if (bArr[i11] < 0) {
                                            i11 = i6 + 9;
                                            if (bArr[i13] < 0) {
                                                int i15 = i6 + 10;
                                                if (bArr[i11] >= 0) {
                                                    i9 = i15;
                                                    i5 = i14;
                                                }
                                            }
                                        }
                                    }
                                }
                                i5 = i14;
                            }
                            i5 = i14;
                        }
                        i9 = i13;
                    }
                    i9 = i11;
                }
                this.f2387d = i9;
                return i5;
            }
        }
        return (int) m();
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b6, code lost:
    
        if (r3[r2] < 0) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long l() {
        long j3;
        long j5;
        long j6;
        int i5 = this.f2387d;
        int i6 = this.f2385b;
        if (i6 != i5) {
            int i7 = i5 + 1;
            byte[] bArr = this.f2384a;
            byte b3 = bArr[i5];
            if (b3 >= 0) {
                this.f2387d = i7;
                return b3;
            }
            if (i6 - i7 >= 9) {
                int i8 = i5 + 2;
                long j7 = (bArr[i7] << 7) ^ b3;
                if (j7 >= 0) {
                    int i9 = i5 + 3;
                    long j8 = j7 ^ (bArr[i8] << 14);
                    if (j8 >= 0) {
                        j6 = 16256;
                    } else {
                        i8 = i5 + 4;
                        j7 = j8 ^ (bArr[i9] << 21);
                        if (j7 < 0) {
                            j5 = -2080896;
                        } else {
                            i9 = i5 + 5;
                            j8 = j7 ^ (bArr[i8] << 28);
                            if (j8 >= 0) {
                                j6 = 266354560;
                            } else {
                                i8 = i5 + 6;
                                j7 = j8 ^ (bArr[i9] << 35);
                                if (j7 < 0) {
                                    j5 = -34093383808L;
                                } else {
                                    i9 = i5 + 7;
                                    j8 = j7 ^ (bArr[i8] << 42);
                                    if (j8 >= 0) {
                                        j6 = 4363953127296L;
                                    } else {
                                        i8 = i5 + 8;
                                        j7 = j8 ^ (bArr[i9] << 49);
                                        if (j7 >= 0) {
                                            long j9 = (j7 ^ (bArr[i8] << 56)) ^ 71499008037633920L;
                                            i8 = j9 < 0 ? i5 + 10 : i5 + 9;
                                            j3 = j9;
                                            this.f2387d = i8;
                                            return j3;
                                        }
                                        j5 = -558586000294016L;
                                    }
                                }
                            }
                        }
                    }
                    i8 = i9;
                    j3 = j6 ^ j8;
                    this.f2387d = i8;
                    return j3;
                }
                j5 = -128;
                j3 = j5 ^ j7;
                this.f2387d = i8;
                return j3;
            }
        }
        return m();
    }

    public final long m() throws C0098u {
        long j3 = 0;
        for (int i5 = 0; i5 < 64; i5 += 7) {
            if (this.f2387d == this.f2385b) {
                p(1);
            }
            int i6 = this.f2387d;
            this.f2387d = i6 + 1;
            j3 |= (r3 & 127) << i5;
            if ((this.f2384a[i6] & 128) == 0) {
                return j3;
            }
        }
        throw new C0098u("CodedInputStream encountered a malformed varint.");
    }

    public final int n() throws C0098u {
        if (this.f2387d == this.f2385b && !s(1)) {
            this.f = 0;
            return 0;
        }
        int iK = k();
        this.f = iK;
        if ((iK >>> 3) != 0) {
            return iK;
        }
        throw new C0098u("Protocol message contained an invalid tag (zero).");
    }

    public final void o() {
        int i5 = this.f2385b + this.f2386c;
        this.f2385b = i5;
        int i6 = this.f2389g + i5;
        int i7 = this.f2390h;
        if (i6 <= i7) {
            this.f2386c = 0;
            return;
        }
        int i8 = i6 - i7;
        this.f2386c = i8;
        this.f2385b = i5 - i8;
    }

    public final void p(int i5) throws C0098u {
        if (!s(i5)) {
            throw C0098u.a();
        }
    }

    public final boolean q(int i5, B1.j jVar) throws IOException {
        int iN;
        int i6 = i5 & 7;
        if (i6 == 0) {
            long jL = l();
            jVar.w(i5);
            jVar.x(jL);
            return true;
        }
        if (i6 == 1) {
            long j3 = j();
            jVar.w(i5);
            jVar.v(j3);
            return true;
        }
        if (i6 == 2) {
            z zVarE = e();
            jVar.w(i5);
            jVar.w(zVarE.size());
            jVar.s(zVarE);
            return true;
        }
        if (i6 != 3) {
            if (i6 == 4) {
                return false;
            }
            if (i6 != 5) {
                throw new C0098u("Protocol message tag had invalid wire type.");
            }
            int i7 = i();
            jVar.w(i5);
            jVar.u(i7);
            return true;
        }
        jVar.w(i5);
        do {
            iN = n();
            if (iN == 0) {
                break;
            }
        } while (q(iN, jVar));
        int i8 = ((i5 >>> 3) << 3) | 4;
        a(i8);
        jVar.w(i8);
        return true;
    }

    public final void r(int i5) throws C0098u {
        int i6 = this.f2385b;
        int i7 = this.f2387d;
        int i8 = i6 - i7;
        if (i5 <= i8 && i5 >= 0) {
            this.f2387d = i7 + i5;
            return;
        }
        if (i5 < 0) {
            throw new C0098u("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i9 = this.f2389g;
        int i10 = i9 + i7 + i5;
        int i11 = this.f2390h;
        if (i10 > i11) {
            r((i11 - i9) - i7);
            throw C0098u.a();
        }
        this.f2387d = i6;
        p(1);
        while (true) {
            int i12 = i5 - i8;
            int i13 = this.f2385b;
            if (i12 <= i13) {
                this.f2387d = i12;
                return;
            } else {
                i8 += i13;
                this.f2387d = i13;
                p(1);
            }
        }
    }

    public final boolean s(int i5) throws IOException {
        InputStream inputStream;
        int i6 = this.f2387d;
        int i7 = i6 + i5;
        int i8 = this.f2385b;
        if (i7 <= i8) {
            StringBuilder sb = new StringBuilder(77);
            sb.append("refillBuffer() called when ");
            sb.append(i5);
            sb.append(" bytes were already available in buffer");
            throw new IllegalStateException(sb.toString());
        }
        if (this.f2389g + i6 + i5 <= this.f2390h && (inputStream = this.f2388e) != null) {
            byte[] bArr = this.f2384a;
            if (i6 > 0) {
                if (i8 > i6) {
                    System.arraycopy(bArr, i6, bArr, 0, i8 - i6);
                }
                this.f2389g += i6;
                this.f2385b -= i6;
                this.f2387d = 0;
            }
            int i9 = this.f2385b;
            int i10 = inputStream.read(bArr, i9, bArr.length - i9);
            if (i10 == 0 || i10 < -1 || i10 > bArr.length) {
                StringBuilder sb2 = new StringBuilder(102);
                sb2.append("InputStream#read(byte[]) returned invalid result: ");
                sb2.append(i10);
                sb2.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb2.toString());
            }
            if (i10 > 0) {
                this.f2385b += i10;
                if ((this.f2389g + i5) - 67108864 > 0) {
                    throw new C0098u("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
                }
                o();
                if (this.f2385b >= i5) {
                    return true;
                }
                return s(i5);
            }
        }
        return false;
    }
}
