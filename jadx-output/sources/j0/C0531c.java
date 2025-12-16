package j0;

/* renamed from: j0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0531c {

    /* renamed from: a, reason: collision with root package name */
    public long f7424a = 0;

    /* renamed from: b, reason: collision with root package name */
    public C0531c f7425b;

    public final void a(int i5) {
        if (i5 < 64) {
            this.f7424a &= ~(1 << i5);
            return;
        }
        C0531c c0531c = this.f7425b;
        if (c0531c != null) {
            c0531c.a(i5 - 64);
        }
    }

    public final int b(int i5) {
        C0531c c0531c = this.f7425b;
        if (c0531c == null) {
            if (i5 >= 64) {
                return Long.bitCount(this.f7424a);
            }
            return Long.bitCount(((1 << i5) - 1) & this.f7424a);
        }
        if (i5 < 64) {
            return Long.bitCount(((1 << i5) - 1) & this.f7424a);
        }
        return Long.bitCount(this.f7424a) + c0531c.b(i5 - 64);
    }

    public final void c() {
        if (this.f7425b == null) {
            this.f7425b = new C0531c();
        }
    }

    public final boolean d(int i5) {
        if (i5 < 64) {
            return ((1 << i5) & this.f7424a) != 0;
        }
        c();
        return this.f7425b.d(i5 - 64);
    }

    public final void e(int i5, boolean z4) {
        if (i5 >= 64) {
            c();
            this.f7425b.e(i5 - 64, z4);
            return;
        }
        long j3 = this.f7424a;
        boolean z5 = (Long.MIN_VALUE & j3) != 0;
        long j5 = (1 << i5) - 1;
        this.f7424a = ((j3 & (~j5)) << 1) | (j3 & j5);
        if (z4) {
            h(i5);
        } else {
            a(i5);
        }
        if (z5 || this.f7425b != null) {
            c();
            this.f7425b.e(0, z5);
        }
    }

    public final boolean f(int i5) {
        if (i5 >= 64) {
            c();
            return this.f7425b.f(i5 - 64);
        }
        long j3 = 1 << i5;
        long j5 = this.f7424a;
        boolean z4 = (j5 & j3) != 0;
        long j6 = j5 & (~j3);
        this.f7424a = j6;
        long j7 = j3 - 1;
        this.f7424a = (j6 & j7) | Long.rotateRight((~j7) & j6, 1);
        C0531c c0531c = this.f7425b;
        if (c0531c != null) {
            if (c0531c.d(0)) {
                h(63);
            }
            this.f7425b.f(0);
        }
        return z4;
    }

    public final void g() {
        this.f7424a = 0L;
        C0531c c0531c = this.f7425b;
        if (c0531c != null) {
            c0531c.g();
        }
    }

    public final void h(int i5) {
        if (i5 < 64) {
            this.f7424a |= 1 << i5;
        } else {
            c();
            this.f7425b.h(i5 - 64);
        }
    }

    public final String toString() {
        if (this.f7425b == null) {
            return Long.toBinaryString(this.f7424a);
        }
        return this.f7425b.toString() + "xx" + Long.toBinaryString(this.f7424a);
    }
}
