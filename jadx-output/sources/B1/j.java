package B1;

import J.e0;
import J.q0;
import J.r0;
import R3.AbstractC0080b;
import R3.AbstractC0083e;
import R3.C0085g;
import S1.n;
import android.content.res.TypedArray;
import android.util.SparseArray;
import android.view.View;
import android.view.WindowInsetsAnimation;
import com.samsung.android.knox.custom.CustomDeviceManager;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import w1.AbstractC0899a;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public int f215a;

    /* renamed from: b, reason: collision with root package name */
    public int f216b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f217c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f218d;

    public j(OutputStream outputStream, byte[] bArr) {
        this.f218d = outputStream;
        this.f217c = bArr;
        this.f216b = 0;
        this.f215a = bArr.length;
    }

    public static int a(int i5, int i6) {
        return c(i6) + h(i5);
    }

    public static int b(int i5, int i6) {
        return c(i6) + h(i5);
    }

    public static int c(int i5) {
        if (i5 >= 0) {
            return f(i5);
        }
        return 10;
    }

    public static int d(int i5, AbstractC0080b abstractC0080b) {
        return e(abstractC0080b) + h(i5);
    }

    public static int e(AbstractC0080b abstractC0080b) {
        int iC = abstractC0080b.c();
        return f(iC) + iC;
    }

    public static int f(int i5) {
        if ((i5 & (-128)) == 0) {
            return 1;
        }
        if ((i5 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i5) == 0) {
            return 3;
        }
        return (i5 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int g(long j3) {
        if (((-128) & j3) == 0) {
            return 1;
        }
        if (((-16384) & j3) == 0) {
            return 2;
        }
        if (((-2097152) & j3) == 0) {
            return 3;
        }
        if (((-268435456) & j3) == 0) {
            return 4;
        }
        if (((-34359738368L) & j3) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j3) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j3) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j3) == 0) {
            return 8;
        }
        return (j3 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int h(int i5) {
        return f(i5 << 3);
    }

    public static j j(OutputStream outputStream, int i5) {
        return new j(outputStream, new byte[i5]);
    }

    public void i() throws IOException {
        if (((OutputStream) this.f218d) != null) {
            l();
        }
    }

    public void k(q0 q0Var, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if ((((WindowInsetsAnimation) ((e0) it.next()).f972a.f9022c).getTypeMask() & 8) != 0) {
                ((View) this.f217c).setTranslationY(AbstractC0899a.c(this.f216b, ((WindowInsetsAnimation) r3.f972a.f9022c).getInterpolatedFraction(), 0));
                return;
            }
        }
    }

    public void l() throws IOException {
        OutputStream outputStream = (OutputStream) this.f218d;
        if (outputStream == null) {
            throw new C0085g("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
        outputStream.write((byte[]) this.f217c, 0, this.f216b);
        this.f216b = 0;
    }

    public void m(int i5, int i6) throws IOException {
        y(i5, 0);
        o(i6);
    }

    public void n(int i5, int i6) throws IOException {
        y(i5, 0);
        o(i6);
    }

    public void o(int i5) throws IOException {
        if (i5 >= 0) {
            w(i5);
        } else {
            x(i5);
        }
    }

    public void p(int i5, AbstractC0080b abstractC0080b) throws IOException {
        y(i5, 2);
        q(abstractC0080b);
    }

    public void q(AbstractC0080b abstractC0080b) throws IOException {
        w(abstractC0080b.c());
        abstractC0080b.f(this);
    }

    public void r(int i5) throws IOException {
        byte b3 = (byte) i5;
        if (this.f216b == this.f215a) {
            l();
        }
        int i6 = this.f216b;
        this.f216b = i6 + 1;
        ((byte[]) this.f217c)[i6] = b3;
    }

    public void s(AbstractC0083e abstractC0083e) throws IOException {
        int size = abstractC0083e.size();
        int i5 = this.f216b;
        int i6 = this.f215a;
        int i7 = i6 - i5;
        byte[] bArr = (byte[]) this.f217c;
        if (i7 >= size) {
            abstractC0083e.n(0, i5, size, bArr);
            this.f216b += size;
            return;
        }
        abstractC0083e.n(0, i5, i7, bArr);
        int i8 = size - i7;
        this.f216b = i6;
        l();
        if (i8 <= i6) {
            abstractC0083e.n(i7, 0, i8, bArr);
            this.f216b = i8;
            return;
        }
        if (i7 < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i7);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i8 < 0) {
            StringBuilder sb2 = new StringBuilder(23);
            sb2.append("Length < 0: ");
            sb2.append(i8);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        int i9 = i7 + i8;
        if (i9 <= abstractC0083e.size()) {
            if (i8 > 0) {
                abstractC0083e.y((OutputStream) this.f218d, i7, i8);
            }
        } else {
            StringBuilder sb3 = new StringBuilder(39);
            sb3.append("Source end offset exceeded: ");
            sb3.append(i9);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
    }

    public void t(byte[] bArr) throws IOException {
        int length = bArr.length;
        int i5 = this.f216b;
        int i6 = this.f215a;
        int i7 = i6 - i5;
        byte[] bArr2 = (byte[]) this.f217c;
        if (i7 >= length) {
            System.arraycopy(bArr, 0, bArr2, i5, length);
            this.f216b += length;
            return;
        }
        System.arraycopy(bArr, 0, bArr2, i5, i7);
        int i8 = length - i7;
        this.f216b = i6;
        l();
        if (i8 > i6) {
            ((OutputStream) this.f218d).write(bArr, i7, i8);
        } else {
            System.arraycopy(bArr, i7, bArr2, 0, i8);
            this.f216b = i8;
        }
    }

    public void u(int i5) throws IOException {
        r(i5 & CustomDeviceManager.CALL_SCREEN_ALL);
        r((i5 >> 8) & CustomDeviceManager.CALL_SCREEN_ALL);
        r((i5 >> 16) & CustomDeviceManager.CALL_SCREEN_ALL);
        r((i5 >> 24) & CustomDeviceManager.CALL_SCREEN_ALL);
    }

    public void v(long j3) throws IOException {
        r(((int) j3) & CustomDeviceManager.CALL_SCREEN_ALL);
        r(((int) (j3 >> 8)) & CustomDeviceManager.CALL_SCREEN_ALL);
        r(((int) (j3 >> 16)) & CustomDeviceManager.CALL_SCREEN_ALL);
        r(((int) (j3 >> 24)) & CustomDeviceManager.CALL_SCREEN_ALL);
        r(((int) (j3 >> 32)) & CustomDeviceManager.CALL_SCREEN_ALL);
        r(((int) (j3 >> 40)) & CustomDeviceManager.CALL_SCREEN_ALL);
        r(((int) (j3 >> 48)) & CustomDeviceManager.CALL_SCREEN_ALL);
        r(((int) (j3 >> 56)) & CustomDeviceManager.CALL_SCREEN_ALL);
    }

    public void w(int i5) throws IOException {
        while ((i5 & (-128)) != 0) {
            r((i5 & 127) | 128);
            i5 >>>= 7;
        }
        r(i5);
    }

    public void x(long j3) throws IOException {
        while (((-128) & j3) != 0) {
            r((((int) j3) & 127) | 128);
            j3 >>>= 7;
        }
        r((int) j3);
    }

    public void y(int i5, int i6) throws IOException {
        w((i5 << 3) | i6);
    }

    public j(View view) {
        this.f218d = new int[2];
        this.f217c = view;
    }

    public j(n nVar, r0 r0Var) {
        this.f217c = new SparseArray();
        this.f218d = nVar;
        TypedArray typedArray = (TypedArray) r0Var.f1007d;
        this.f215a = typedArray.getResourceId(28, 0);
        this.f216b = typedArray.getResourceId(52, 0);
    }
}
