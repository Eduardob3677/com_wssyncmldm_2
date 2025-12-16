package R3;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.Stack;
import s2.C0837c;

/* renamed from: R3.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0083e implements Iterable {

    /* renamed from: c, reason: collision with root package name */
    public static final z f2383c = new z(new byte[0]);

    public static AbstractC0083e l(Iterator it, int i5) {
        if (i5 == 1) {
            return (AbstractC0083e) it.next();
        }
        int i6 = i5 >>> 1;
        return l(it, i6).m(l(it, i5 - i6));
    }

    public static C0082d s() {
        return new C0082d();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0083e m(AbstractC0083e abstractC0083e) {
        int size = size();
        int size2 = abstractC0083e.size();
        if (size + size2 >= 2147483647L) {
            StringBuilder sb = new StringBuilder(53);
            sb.append("ByteString would be too long: ");
            sb.append(size);
            sb.append("+");
            sb.append(size2);
            throw new IllegalArgumentException(sb.toString());
        }
        int[] iArr = E.f2338j;
        E e5 = this instanceof E ? (E) this : null;
        if (abstractC0083e.size() == 0) {
            return this;
        }
        if (size() != 0) {
            int size3 = abstractC0083e.size() + size();
            if (size3 < 128) {
                int size4 = size();
                int size5 = abstractC0083e.size();
                byte[] bArr = new byte[size4 + size5];
                n(0, 0, size4, bArr);
                abstractC0083e.n(0, size4, size5, bArr);
                return new z(bArr);
            }
            if (e5 != null) {
                AbstractC0083e abstractC0083e2 = e5.f;
                if (abstractC0083e.size() + abstractC0083e2.size() < 128) {
                    int size6 = abstractC0083e2.size();
                    int size7 = abstractC0083e.size();
                    byte[] bArr2 = new byte[size6 + size7];
                    abstractC0083e2.n(0, 0, size6, bArr2);
                    abstractC0083e.n(0, size6, size7, bArr2);
                    abstractC0083e = new E(e5.f2340e, new z(bArr2));
                } else if (e5 != null) {
                    AbstractC0083e abstractC0083e3 = e5.f2340e;
                    int iP = abstractC0083e3.p();
                    AbstractC0083e abstractC0083e4 = e5.f;
                    if (iP > abstractC0083e4.p()) {
                        if (e5.f2342h > abstractC0083e.p()) {
                            abstractC0083e = new E(abstractC0083e3, new E(abstractC0083e4, abstractC0083e));
                        } else {
                            if (size3 >= E.f2338j[Math.max(p(), abstractC0083e.p()) + 1]) {
                                return new E(this, abstractC0083e);
                            }
                            C0837c c0837c = new C0837c(17);
                            c0837c.f(this);
                            c0837c.f(abstractC0083e);
                            Stack stack = (Stack) c0837c.f9022c;
                            abstractC0083e = (AbstractC0083e) stack.pop();
                            while (!stack.isEmpty()) {
                                abstractC0083e = new E((AbstractC0083e) stack.pop(), abstractC0083e);
                            }
                        }
                    }
                }
            }
        }
        return abstractC0083e;
    }

    public final void n(int i5, int i6, int i7, byte[] bArr) {
        if (i5 < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i5);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i6 < 0) {
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Target offset < 0: ");
            sb2.append(i6);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        if (i7 < 0) {
            StringBuilder sb3 = new StringBuilder(23);
            sb3.append("Length < 0: ");
            sb3.append(i7);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
        int i8 = i5 + i7;
        if (i8 > size()) {
            StringBuilder sb4 = new StringBuilder(34);
            sb4.append("Source end offset < 0: ");
            sb4.append(i8);
            throw new IndexOutOfBoundsException(sb4.toString());
        }
        int i9 = i6 + i7;
        if (i9 <= bArr.length) {
            if (i7 > 0) {
                o(i5, i6, i7, bArr);
            }
        } else {
            StringBuilder sb5 = new StringBuilder(34);
            sb5.append("Target end offset < 0: ");
            sb5.append(i9);
            throw new IndexOutOfBoundsException(sb5.toString());
        }
    }

    public abstract void o(int i5, int i6, int i7, byte[] bArr);

    public abstract int p();

    public abstract boolean q();

    public abstract boolean r();

    public abstract int size();

    public abstract int t(int i5, int i6, int i7);

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    public abstract int u(int i5, int i6, int i7);

    public abstract int v();

    public abstract String w();

    public final String x() {
        try {
            return w();
        } catch (UnsupportedEncodingException e5) {
            throw new RuntimeException("UTF-8 not supported?", e5);
        }
    }

    public abstract void y(OutputStream outputStream, int i5, int i6);
}
