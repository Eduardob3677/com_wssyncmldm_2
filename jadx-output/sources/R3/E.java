package R3;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class E extends AbstractC0083e {

    /* renamed from: j, reason: collision with root package name */
    public static final int[] f2338j;

    /* renamed from: d, reason: collision with root package name */
    public final int f2339d;

    /* renamed from: e, reason: collision with root package name */
    public final AbstractC0083e f2340e;
    public final AbstractC0083e f;

    /* renamed from: g, reason: collision with root package name */
    public final int f2341g;

    /* renamed from: h, reason: collision with root package name */
    public final int f2342h;

    /* renamed from: i, reason: collision with root package name */
    public int f2343i = 0;

    static {
        ArrayList arrayList = new ArrayList();
        int i5 = 1;
        int i6 = 1;
        while (i5 > 0) {
            arrayList.add(Integer.valueOf(i5));
            int i7 = i6 + i5;
            i6 = i5;
            i5 = i7;
        }
        arrayList.add(Integer.MAX_VALUE);
        f2338j = new int[arrayList.size()];
        int i8 = 0;
        while (true) {
            int[] iArr = f2338j;
            if (i8 >= iArr.length) {
                return;
            }
            iArr[i8] = ((Integer) arrayList.get(i8)).intValue();
            i8++;
        }
    }

    public E(AbstractC0083e abstractC0083e, AbstractC0083e abstractC0083e2) {
        this.f2340e = abstractC0083e;
        this.f = abstractC0083e2;
        int size = abstractC0083e.size();
        this.f2341g = size;
        this.f2339d = abstractC0083e2.size() + size;
        this.f2342h = Math.max(abstractC0083e.p(), abstractC0083e2.p()) + 1;
    }

    public final boolean equals(Object obj) {
        int iV;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0083e)) {
            return false;
        }
        AbstractC0083e abstractC0083e = (AbstractC0083e) obj;
        int size = abstractC0083e.size();
        int i5 = this.f2339d;
        if (i5 != size) {
            return false;
        }
        if (i5 == 0) {
            return true;
        }
        if (this.f2343i != 0 && (iV = abstractC0083e.v()) != 0 && this.f2343i != iV) {
            return false;
        }
        C c2 = new C(this);
        z zVarA = c2.next();
        C c5 = new C(abstractC0083e);
        z zVarA2 = c5.next();
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int length = zVarA.f2424d.length - i6;
            int length2 = zVarA2.f2424d.length - i7;
            int iMin = Math.min(length, length2);
            if (!(i6 == 0 ? zVarA.z(zVarA2, i7, iMin) : zVarA2.z(zVarA, i6, iMin))) {
                return false;
            }
            i8 += iMin;
            if (i8 >= i5) {
                if (i8 == i5) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == length) {
                zVarA = c2.next();
                i6 = 0;
            } else {
                i6 += iMin;
            }
            if (iMin == length2) {
                zVarA2 = c5.next();
                i7 = 0;
            } else {
                i7 += iMin;
            }
        }
    }

    public final int hashCode() {
        int iT = this.f2343i;
        if (iT == 0) {
            int i5 = this.f2339d;
            iT = t(i5, 0, i5);
            if (iT == 0) {
                iT = 1;
            }
            this.f2343i = iT;
        }
        return iT;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new D(this);
    }

    @Override // R3.AbstractC0083e
    public final void o(int i5, int i6, int i7, byte[] bArr) {
        int i8 = i5 + i7;
        AbstractC0083e abstractC0083e = this.f2340e;
        int i9 = this.f2341g;
        if (i8 <= i9) {
            abstractC0083e.o(i5, i6, i7, bArr);
            return;
        }
        AbstractC0083e abstractC0083e2 = this.f;
        if (i5 >= i9) {
            abstractC0083e2.o(i5 - i9, i6, i7, bArr);
            return;
        }
        int i10 = i9 - i5;
        abstractC0083e.o(i5, i6, i10, bArr);
        abstractC0083e2.o(0, i6 + i10, i7 - i10, bArr);
    }

    @Override // R3.AbstractC0083e
    public final int p() {
        return this.f2342h;
    }

    @Override // R3.AbstractC0083e
    public final boolean q() {
        return this.f2339d >= f2338j[this.f2342h];
    }

    @Override // R3.AbstractC0083e
    public final boolean r() {
        int iU = this.f2340e.u(0, 0, this.f2341g);
        AbstractC0083e abstractC0083e = this.f;
        return abstractC0083e.u(iU, 0, abstractC0083e.size()) == 0;
    }

    @Override // R3.AbstractC0083e
    public final int size() {
        return this.f2339d;
    }

    @Override // R3.AbstractC0083e
    public final int t(int i5, int i6, int i7) {
        int i8 = i6 + i7;
        AbstractC0083e abstractC0083e = this.f2340e;
        int i9 = this.f2341g;
        if (i8 <= i9) {
            return abstractC0083e.t(i5, i6, i7);
        }
        AbstractC0083e abstractC0083e2 = this.f;
        if (i6 >= i9) {
            return abstractC0083e2.t(i5, i6 - i9, i7);
        }
        int i10 = i9 - i6;
        return abstractC0083e2.t(abstractC0083e.t(i5, i6, i10), 0, i7 - i10);
    }

    @Override // R3.AbstractC0083e
    public final int u(int i5, int i6, int i7) {
        int i8 = i6 + i7;
        AbstractC0083e abstractC0083e = this.f2340e;
        int i9 = this.f2341g;
        if (i8 <= i9) {
            return abstractC0083e.u(i5, i6, i7);
        }
        AbstractC0083e abstractC0083e2 = this.f;
        if (i6 >= i9) {
            return abstractC0083e2.u(i5, i6 - i9, i7);
        }
        int i10 = i9 - i6;
        return abstractC0083e2.u(abstractC0083e.u(i5, i6, i10), 0, i7 - i10);
    }

    @Override // R3.AbstractC0083e
    public final int v() {
        return this.f2343i;
    }

    @Override // R3.AbstractC0083e
    public final String w() {
        byte[] bArr;
        int i5 = this.f2339d;
        if (i5 == 0) {
            bArr = AbstractC0097t.f2415a;
        } else {
            byte[] bArr2 = new byte[i5];
            o(0, 0, i5, bArr2);
            bArr = bArr2;
        }
        return new String(bArr, "UTF-8");
    }

    @Override // R3.AbstractC0083e
    public final void y(OutputStream outputStream, int i5, int i6) {
        int i7 = i5 + i6;
        AbstractC0083e abstractC0083e = this.f2340e;
        int i8 = this.f2341g;
        if (i7 <= i8) {
            abstractC0083e.y(outputStream, i5, i6);
            return;
        }
        AbstractC0083e abstractC0083e2 = this.f;
        if (i5 >= i8) {
            abstractC0083e2.y(outputStream, i5 - i8, i6);
            return;
        }
        int i9 = i8 - i5;
        abstractC0083e.y(outputStream, i5, i9);
        abstractC0083e2.y(outputStream, 0, i6 - i9);
    }
}
