package o;

/* renamed from: o.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0716e implements Cloneable {

    /* renamed from: g, reason: collision with root package name */
    public static final Object f8416g = new Object();

    /* renamed from: c, reason: collision with root package name */
    public boolean f8417c = false;

    /* renamed from: d, reason: collision with root package name */
    public long[] f8418d;

    /* renamed from: e, reason: collision with root package name */
    public Object[] f8419e;
    public int f;

    public C0716e() {
        int i5;
        int i6 = 4;
        while (true) {
            i5 = 80;
            if (i6 >= 32) {
                break;
            }
            int i7 = (1 << i6) - 12;
            if (80 <= i7) {
                i5 = i7;
                break;
            }
            i6++;
        }
        int i8 = i5 / 8;
        this.f8418d = new long[i8];
        this.f8419e = new Object[i8];
    }

    public final void a() {
        int i5 = this.f;
        Object[] objArr = this.f8419e;
        for (int i6 = 0; i6 < i5; i6++) {
            objArr[i6] = null;
        }
        this.f = 0;
        this.f8417c = false;
    }

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C0716e clone() {
        try {
            C0716e c0716e = (C0716e) super.clone();
            c0716e.f8418d = (long[]) this.f8418d.clone();
            c0716e.f8419e = (Object[]) this.f8419e.clone();
            return c0716e;
        } catch (CloneNotSupportedException e5) {
            throw new AssertionError(e5);
        }
    }

    public final void c() {
        int i5 = this.f;
        long[] jArr = this.f8418d;
        Object[] objArr = this.f8419e;
        int i6 = 0;
        for (int i7 = 0; i7 < i5; i7++) {
            Object obj = objArr[i7];
            if (obj != f8416g) {
                if (i7 != i6) {
                    jArr[i6] = jArr[i7];
                    objArr[i6] = obj;
                    objArr[i7] = null;
                }
                i6++;
            }
        }
        this.f8417c = false;
        this.f = i6;
    }

    public final Object d(long j3, Long l5) {
        Object obj;
        int iB = AbstractC0715d.b(this.f8418d, this.f, j3);
        return (iB < 0 || (obj = this.f8419e[iB]) == f8416g) ? l5 : obj;
    }

    public final void e(long j3, Object obj) {
        int iB = AbstractC0715d.b(this.f8418d, this.f, j3);
        if (iB >= 0) {
            this.f8419e[iB] = obj;
            return;
        }
        int i5 = ~iB;
        int i6 = this.f;
        if (i5 < i6) {
            Object[] objArr = this.f8419e;
            if (objArr[i5] == f8416g) {
                this.f8418d[i5] = j3;
                objArr[i5] = obj;
                return;
            }
        }
        if (this.f8417c && i6 >= this.f8418d.length) {
            c();
            i5 = ~AbstractC0715d.b(this.f8418d, this.f, j3);
        }
        int i7 = this.f;
        if (i7 >= this.f8418d.length) {
            int i8 = (i7 + 1) * 8;
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
            int i11 = i8 / 8;
            long[] jArr = new long[i11];
            Object[] objArr2 = new Object[i11];
            long[] jArr2 = this.f8418d;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f8419e;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f8418d = jArr;
            this.f8419e = objArr2;
        }
        int i12 = this.f - i5;
        if (i12 != 0) {
            long[] jArr3 = this.f8418d;
            int i13 = i5 + 1;
            System.arraycopy(jArr3, i5, jArr3, i13, i12);
            Object[] objArr4 = this.f8419e;
            System.arraycopy(objArr4, i5, objArr4, i13, this.f - i5);
        }
        this.f8418d[i5] = j3;
        this.f8419e[i5] = obj;
        this.f++;
    }

    public final int f() {
        if (this.f8417c) {
            c();
        }
        return this.f;
    }

    public final Object g(int i5) {
        if (this.f8417c) {
            c();
        }
        return this.f8419e[i5];
    }

    public final String toString() {
        if (f() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f * 28);
        sb.append('{');
        for (int i5 = 0; i5 < this.f; i5++) {
            if (i5 > 0) {
                sb.append(", ");
            }
            if (this.f8417c) {
                c();
            }
            sb.append(this.f8418d[i5]);
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
