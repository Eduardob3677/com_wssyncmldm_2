package h3;

import e3.InterfaceC0416a;
import i3.x;
import java.util.Iterator;

/* renamed from: h3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0445a implements Iterable, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final int f7002c;

    /* renamed from: d, reason: collision with root package name */
    public final int f7003d;

    /* renamed from: e, reason: collision with root package name */
    public final int f7004e;

    public C0445a(int i5, int i6, int i7) {
        if (i7 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i7 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f7002c = i5;
        this.f7003d = x.Y(i5, i6, i7);
        this.f7004e = i7;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C0445a) {
            if (!isEmpty() || !((C0445a) obj).isEmpty()) {
                C0445a c0445a = (C0445a) obj;
                if (this.f7002c != c0445a.f7002c || this.f7003d != c0445a.f7003d || this.f7004e != c0445a.f7004e) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return this.f7004e + (((this.f7002c * 31) + this.f7003d) * 31);
    }

    public boolean isEmpty() {
        int i5 = this.f7004e;
        int i6 = this.f7003d;
        int i7 = this.f7002c;
        if (i5 > 0) {
            if (i7 <= i6) {
                return false;
            }
        } else if (i7 >= i6) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C0446b(this.f7002c, this.f7003d, this.f7004e);
    }

    public String toString() {
        StringBuilder sb;
        int i5 = this.f7003d;
        int i6 = this.f7002c;
        int i7 = this.f7004e;
        if (i7 > 0) {
            sb = new StringBuilder();
            sb.append(i6);
            sb.append("..");
            sb.append(i5);
            sb.append(" step ");
        } else {
            sb = new StringBuilder();
            sb.append(i6);
            sb.append(" downTo ");
            sb.append(i5);
            sb.append(" step ");
            i7 = -i7;
        }
        sb.append(i7);
        return sb.toString();
    }
}
