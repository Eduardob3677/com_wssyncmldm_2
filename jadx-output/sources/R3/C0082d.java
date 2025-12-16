package R3;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: R3.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0082d extends OutputStream {

    /* renamed from: h, reason: collision with root package name */
    public static final byte[] f2378h = new byte[0];

    /* renamed from: e, reason: collision with root package name */
    public int f2381e;

    /* renamed from: g, reason: collision with root package name */
    public int f2382g;

    /* renamed from: c, reason: collision with root package name */
    public final int f2379c = 128;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f2380d = new ArrayList();
    public byte[] f = new byte[128];

    public final void g(int i5) {
        this.f2380d.add(new z(this.f));
        int length = this.f2381e + this.f.length;
        this.f2381e = length;
        this.f = new byte[Math.max(this.f2379c, Math.max(i5, length >>> 1))];
        this.f2382g = 0;
    }

    public final void h() {
        int i5 = this.f2382g;
        byte[] bArr = this.f;
        int length = bArr.length;
        ArrayList arrayList = this.f2380d;
        if (i5 >= length) {
            arrayList.add(new z(this.f));
            this.f = f2378h;
        } else if (i5 > 0) {
            byte[] bArr2 = new byte[i5];
            System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i5));
            arrayList.add(new z(bArr2));
        }
        this.f2381e += this.f2382g;
        this.f2382g = 0;
    }

    public final synchronized AbstractC0083e l() {
        ArrayList arrayList;
        h();
        arrayList = this.f2380d;
        if (!(arrayList instanceof Collection)) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add((AbstractC0083e) it.next());
            }
            arrayList = arrayList2;
        }
        return arrayList.isEmpty() ? AbstractC0083e.f2383c : AbstractC0083e.l(arrayList.iterator(), arrayList.size());
    }

    public final String toString() {
        int i5;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        synchronized (this) {
            i5 = this.f2381e + this.f2382g;
        }
        return String.format("<ByteString.Output@%s size=%d>", hexString, Integer.valueOf(i5));
    }

    @Override // java.io.OutputStream
    public final synchronized void write(int i5) {
        try {
            if (this.f2382g == this.f.length) {
                g(1);
            }
            byte[] bArr = this.f;
            int i6 = this.f2382g;
            this.f2382g = i6 + 1;
            bArr[i6] = (byte) i5;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i5, int i6) {
        try {
            byte[] bArr2 = this.f;
            int length = bArr2.length;
            int i7 = this.f2382g;
            if (i6 <= length - i7) {
                System.arraycopy(bArr, i5, bArr2, i7, i6);
                this.f2382g += i6;
            } else {
                int length2 = bArr2.length - i7;
                System.arraycopy(bArr, i5, bArr2, i7, length2);
                int i8 = i6 - length2;
                g(i8);
                System.arraycopy(bArr, i5 + length2, this.f, 0, i8);
                this.f2382g = i8;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
