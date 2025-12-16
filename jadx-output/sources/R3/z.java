package R3;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;

/* loaded from: classes.dex */
public class z extends AbstractC0083e {

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f2424d;

    /* renamed from: e, reason: collision with root package name */
    public int f2425e = 0;

    public z(byte[] bArr) {
        this.f2424d = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0083e) || size() != ((AbstractC0083e) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof z) {
            return z((z) obj, 0, size());
        }
        if (obj instanceof E) {
            return obj.equals(this);
        }
        String strValueOf = String.valueOf(obj.getClass());
        throw new IllegalArgumentException(B.f.w(new StringBuilder(strValueOf.length() + 49), "Has a new type of ByteString been created? Found ", strValueOf));
    }

    public final int hashCode() {
        int iT = this.f2425e;
        if (iT == 0) {
            int size = size();
            iT = t(size, 0, size);
            if (iT == 0) {
                iT = 1;
            }
            this.f2425e = iT;
        }
        return iT;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return new y(this);
    }

    @Override // R3.AbstractC0083e
    public void o(int i5, int i6, int i7, byte[] bArr) {
        System.arraycopy(this.f2424d, i5, bArr, i6, i7);
    }

    @Override // R3.AbstractC0083e
    public final int p() {
        return 0;
    }

    @Override // R3.AbstractC0083e
    public final boolean q() {
        return true;
    }

    @Override // R3.AbstractC0083e
    public final boolean r() {
        byte[] bArr = this.f2424d;
        return I.c(bArr, 0, bArr.length) == 0;
    }

    @Override // R3.AbstractC0083e
    public int size() {
        return this.f2424d.length;
    }

    @Override // R3.AbstractC0083e
    public final int t(int i5, int i6, int i7) {
        for (int i8 = i6; i8 < i6 + i7; i8++) {
            i5 = (i5 * 31) + this.f2424d[i8];
        }
        return i5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0019, code lost:
    
        if (r6[r8] > (-65)) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x001c, code lost:
    
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004d, code lost:
    
        if (r6[r8] > (-65)) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0096, code lost:
    
        if (r6[r7] > (-65)) goto L14;
     */
    @Override // R3.AbstractC0083e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int u(int i5, int i6, int i7) {
        byte b3;
        int i8;
        int i9;
        int i10 = i7 + i6;
        byte[] bArr = this.f2424d;
        if (i5 != 0) {
            if (i6 >= i10) {
                return i5;
            }
            byte b5 = (byte) i5;
            if (b5 < -32) {
                if (b5 >= -62) {
                    i9 = i6 + 1;
                }
                return -1;
            }
            if (b5 < -16) {
                byte b6 = (byte) (~(i5 >> 8));
                if (b6 == 0) {
                    int i11 = i6 + 1;
                    byte b7 = bArr[i6];
                    if (i11 >= i10) {
                        return I.a(b5, b7);
                    }
                    i6 = i11;
                    b6 = b7;
                }
                if (b6 <= -65 && ((b5 != -32 || b6 >= -96) && (b5 != -19 || b6 < -96))) {
                    i9 = i6 + 1;
                }
            } else {
                byte b8 = (byte) (~(i5 >> 8));
                if (b8 == 0) {
                    i8 = i6 + 1;
                    b8 = bArr[i6];
                    if (i8 >= i10) {
                        return I.a(b5, b8);
                    }
                    b3 = 0;
                } else {
                    b3 = (byte) (i5 >> 16);
                    i8 = i6;
                }
                if (b3 == 0) {
                    int i12 = i8 + 1;
                    byte b9 = bArr[i8];
                    if (i12 < i10) {
                        b3 = b9;
                        i8 = i12;
                    } else if (b5 <= -12 && b8 <= -65 && b9 <= -65) {
                        return ((b8 << 8) ^ b5) ^ (b9 << 16);
                    }
                }
                if (b8 <= -65) {
                    if ((((b8 + 112) + (b5 << 28)) >> 30) == 0 && b3 <= -65) {
                        i6 = i8 + 1;
                    }
                }
            }
            return -1;
        }
        return I.c(bArr, i6, i10);
    }

    @Override // R3.AbstractC0083e
    public final int v() {
        return this.f2425e;
    }

    @Override // R3.AbstractC0083e
    public final String w() {
        byte[] bArr = this.f2424d;
        return new String(bArr, 0, bArr.length, "UTF-8");
    }

    @Override // R3.AbstractC0083e
    public final void y(OutputStream outputStream, int i5, int i6) throws IOException {
        outputStream.write(this.f2424d, i5, i6);
    }

    public final boolean z(z zVar, int i5, int i6) {
        byte[] bArr = zVar.f2424d;
        int length = bArr.length;
        byte[] bArr2 = this.f2424d;
        if (i6 > length) {
            int length2 = bArr2.length;
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i6);
            sb.append(length2);
            throw new IllegalArgumentException(sb.toString());
        }
        int i7 = i5 + i6;
        int length3 = bArr.length;
        byte[] bArr3 = zVar.f2424d;
        if (i7 <= length3) {
            int i8 = 0;
            while (i8 < i6) {
                if (bArr2[i8] != bArr3[i5]) {
                    return false;
                }
                i8++;
                i5++;
            }
            return true;
        }
        int length4 = bArr3.length;
        StringBuilder sb2 = new StringBuilder(59);
        sb2.append("Ran off end of other: ");
        sb2.append(i5);
        sb2.append(", ");
        sb2.append(i6);
        sb2.append(", ");
        sb2.append(length4);
        throw new IllegalArgumentException(sb2.toString());
    }
}
