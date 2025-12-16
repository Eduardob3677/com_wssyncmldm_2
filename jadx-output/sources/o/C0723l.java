package o;

/* renamed from: o.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0723l implements Cloneable {
    public static final Object f = new Object();

    /* renamed from: c, reason: collision with root package name */
    public int[] f8441c;

    /* renamed from: d, reason: collision with root package name */
    public Object[] f8442d;

    /* renamed from: e, reason: collision with root package name */
    public int f8443e;

    public C0723l() {
        int i5;
        int i6 = 4;
        while (true) {
            i5 = 40;
            if (i6 >= 32) {
                break;
            }
            int i7 = (1 << i6) - 12;
            if (40 <= i7) {
                i5 = i7;
                break;
            }
            i6++;
        }
        int i8 = i5 / 4;
        this.f8441c = new int[i8];
        this.f8442d = new Object[i8];
    }

    public final void a(int i5, Object obj) {
        int i6 = this.f8443e;
        if (i6 != 0 && i5 <= this.f8441c[i6 - 1]) {
            e(i5, obj);
            return;
        }
        if (i6 >= this.f8441c.length) {
            int i7 = (i6 + 1) * 4;
            int i8 = 4;
            while (true) {
                if (i8 >= 32) {
                    break;
                }
                int i9 = (1 << i8) - 12;
                if (i7 <= i9) {
                    i7 = i9;
                    break;
                }
                i8++;
            }
            int i10 = i7 / 4;
            int[] iArr = new int[i10];
            Object[] objArr = new Object[i10];
            int[] iArr2 = this.f8441c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f8442d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f8441c = iArr;
            this.f8442d = objArr;
        }
        this.f8441c[i6] = i5;
        this.f8442d[i6] = obj;
        this.f8443e = i6 + 1;
    }

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C0723l clone() {
        try {
            C0723l c0723l = (C0723l) super.clone();
            c0723l.f8441c = (int[]) this.f8441c.clone();
            c0723l.f8442d = (Object[]) this.f8442d.clone();
            return c0723l;
        } catch (CloneNotSupportedException e5) {
            throw new AssertionError(e5);
        }
    }

    public final Object c(Integer num, int i5) {
        Object obj;
        int iA = AbstractC0715d.a(this.f8441c, this.f8443e, i5);
        return (iA < 0 || (obj = this.f8442d[iA]) == f) ? num : obj;
    }

    public final int d(int i5) {
        return this.f8441c[i5];
    }

    public final void e(int i5, Object obj) {
        int iA = AbstractC0715d.a(this.f8441c, this.f8443e, i5);
        if (iA >= 0) {
            this.f8442d[iA] = obj;
            return;
        }
        int i6 = ~iA;
        int i7 = this.f8443e;
        if (i6 < i7) {
            Object[] objArr = this.f8442d;
            if (objArr[i6] == f) {
                this.f8441c[i6] = i5;
                objArr[i6] = obj;
                return;
            }
        }
        if (i7 >= this.f8441c.length) {
            int i8 = (i7 + 1) * 4;
            int i9 = 4;
            while (true) {
                if (i9 >= 32) {
                    break;
                }
                int i10 = (1 << i9) - 12;
                if (i8 <= i10) {
                    i8 = i10;
                    break;
                }
                i9++;
            }
            int i11 = i8 / 4;
            int[] iArr = new int[i11];
            Object[] objArr2 = new Object[i11];
            int[] iArr2 = this.f8441c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f8442d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f8441c = iArr;
            this.f8442d = objArr2;
        }
        int i12 = this.f8443e - i6;
        if (i12 != 0) {
            int[] iArr3 = this.f8441c;
            int i13 = i6 + 1;
            System.arraycopy(iArr3, i6, iArr3, i13, i12);
            Object[] objArr4 = this.f8442d;
            System.arraycopy(objArr4, i6, objArr4, i13, this.f8443e - i6);
        }
        this.f8441c[i6] = i5;
        this.f8442d[i6] = obj;
        this.f8443e++;
    }

    public final int f() {
        return this.f8443e;
    }

    public final Object g(int i5) {
        return this.f8442d[i5];
    }

    public final String toString() {
        if (f() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f8443e * 28);
        sb.append('{');
        for (int i5 = 0; i5 < this.f8443e; i5++) {
            if (i5 > 0) {
                sb.append(", ");
            }
            sb.append(d(i5));
            sb.append('=');
            Object objG = g(i5);
            if (objG != this) {
                sb.append(objG);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
