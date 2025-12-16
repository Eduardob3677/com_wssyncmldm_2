package h3;

/* renamed from: h3.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0447c extends C0445a {
    public static final C0447c f = new C0447c(1, 0, 1);

    @Override // h3.C0445a
    public final boolean equals(Object obj) {
        if (obj instanceof C0447c) {
            if (!isEmpty() || !((C0447c) obj).isEmpty()) {
                C0447c c0447c = (C0447c) obj;
                if (this.f7002c == c0447c.f7002c) {
                    if (this.f7003d == c0447c.f7003d) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // h3.C0445a
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return this.f7003d + (this.f7002c * 31);
    }

    @Override // h3.C0445a
    public final boolean isEmpty() {
        return this.f7002c > this.f7003d;
    }

    public final boolean l(int i5) {
        return this.f7002c <= i5 && i5 <= this.f7003d;
    }

    @Override // h3.C0445a
    public final String toString() {
        return this.f7002c + ".." + this.f7003d;
    }
}
