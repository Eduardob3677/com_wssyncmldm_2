package androidx.databinding;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class c implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f3667c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public long f3668d = 0;

    /* renamed from: e, reason: collision with root package name */
    public long[] f3669e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final b f3670g;

    public c(b bVar) {
        this.f3670g = bVar;
    }

    public final synchronized void a(Object obj) {
        try {
            if (obj == null) {
                throw new IllegalArgumentException("callback cannot be null");
            }
            int iLastIndexOf = this.f3667c.lastIndexOf(obj);
            if (iLastIndexOf < 0 || b(iLastIndexOf)) {
                this.f3667c.add(obj);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean b(int i5) {
        int i6;
        if (i5 < 64) {
            return (this.f3668d & (1 << i5)) != 0;
        }
        long[] jArr = this.f3669e;
        if (jArr != null && (i6 = (i5 / 64) - 1) < jArr.length) {
            return ((1 << (i5 % 64)) & jArr[i6]) != 0;
        }
        return false;
    }

    public final synchronized void c(int i5, Object obj) {
        try {
            this.f++;
            int size = this.f3667c.size();
            int length = this.f3669e == null ? -1 : r0.length - 1;
            e(i5, obj, length);
            d(obj, i5, (length + 2) * 64, size, 0L);
            int i6 = this.f - 1;
            this.f = i6;
            if (i6 == 0) {
                long[] jArr = this.f3669e;
                if (jArr != null) {
                    for (int length2 = jArr.length - 1; length2 >= 0; length2--) {
                        long j3 = this.f3669e[length2];
                        if (j3 != 0) {
                            g((length2 + 1) * 64, j3);
                            this.f3669e[length2] = 0;
                        }
                    }
                }
                long j5 = this.f3668d;
                if (j5 != 0) {
                    g(0, j5);
                    this.f3668d = 0L;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final Object clone() {
        c cVar;
        CloneNotSupportedException e5;
        synchronized (this) {
            try {
                cVar = (c) super.clone();
            } catch (CloneNotSupportedException e6) {
                cVar = null;
                e5 = e6;
            }
            try {
                cVar.f3668d = 0L;
                cVar.f3669e = null;
                cVar.f = 0;
                cVar.f3667c = new ArrayList();
                int size = this.f3667c.size();
                for (int i5 = 0; i5 < size; i5++) {
                    if (!b(i5)) {
                        cVar.f3667c.add(this.f3667c.get(i5));
                    }
                }
            } catch (CloneNotSupportedException e7) {
                e5 = e7;
                e5.printStackTrace();
                return cVar;
            }
        }
        return cVar;
    }

    public final void d(Object obj, int i5, int i6, int i7, long j3) {
        long j5 = 1;
        while (i6 < i7) {
            if ((j3 & j5) == 0) {
                this.f3670g.a(this.f3667c.get(i6), i5, obj);
            }
            j5 <<= 1;
            i6++;
        }
    }

    public final void e(int i5, Object obj, int i6) {
        if (i6 < 0) {
            d(obj, i5, 0, Math.min(64, this.f3667c.size()), this.f3668d);
            return;
        }
        long j3 = this.f3669e[i6];
        int i7 = (i6 + 1) * 64;
        int iMin = Math.min(this.f3667c.size(), i7 + 64);
        e(i5, obj, i6 - 1);
        d(obj, i5, i7, iMin, j3);
    }

    public final synchronized void f(Object obj) {
        try {
            if (this.f == 0) {
                this.f3667c.remove(obj);
            } else {
                int iLastIndexOf = this.f3667c.lastIndexOf(obj);
                if (iLastIndexOf >= 0) {
                    h(iLastIndexOf);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void g(int i5, long j3) {
        long j5 = Long.MIN_VALUE;
        for (int i6 = i5 + 63; i6 >= i5; i6--) {
            if ((j3 & j5) != 0) {
                this.f3667c.remove(i6);
            }
            j5 >>>= 1;
        }
    }

    public final void h(int i5) {
        if (i5 < 64) {
            this.f3668d = (1 << i5) | this.f3668d;
            return;
        }
        int i6 = (i5 / 64) - 1;
        long[] jArr = this.f3669e;
        if (jArr == null) {
            this.f3669e = new long[this.f3667c.size() / 64];
        } else if (jArr.length <= i6) {
            long[] jArr2 = new long[this.f3667c.size() / 64];
            long[] jArr3 = this.f3669e;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.f3669e = jArr2;
        }
        long[] jArr4 = this.f3669e;
        jArr4[i6] = (1 << (i5 % 64)) | jArr4[i6];
    }
}
