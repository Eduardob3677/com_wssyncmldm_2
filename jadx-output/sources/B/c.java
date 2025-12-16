package B;

import android.graphics.Insets;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: e, reason: collision with root package name */
    public static final c f181e = new c(0, 0, 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final int f182a;

    /* renamed from: b, reason: collision with root package name */
    public final int f183b;

    /* renamed from: c, reason: collision with root package name */
    public final int f184c;

    /* renamed from: d, reason: collision with root package name */
    public final int f185d;

    public c(int i5, int i6, int i7, int i8) {
        this.f182a = i5;
        this.f183b = i6;
        this.f184c = i7;
        this.f185d = i8;
    }

    public static c a(c cVar, c cVar2) {
        return b(Math.max(cVar.f182a, cVar2.f182a), Math.max(cVar.f183b, cVar2.f183b), Math.max(cVar.f184c, cVar2.f184c), Math.max(cVar.f185d, cVar2.f185d));
    }

    public static c b(int i5, int i6, int i7, int i8) {
        return (i5 == 0 && i6 == 0 && i7 == 0 && i8 == 0) ? f181e : new c(i5, i6, i7, i8);
    }

    public static c c(Insets insets) {
        return b(insets.left, insets.top, insets.right, insets.bottom);
    }

    public final Insets d() {
        return b.a(this.f182a, this.f183b, this.f184c, this.f185d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f185d == cVar.f185d && this.f182a == cVar.f182a && this.f184c == cVar.f184c && this.f183b == cVar.f183b;
    }

    public final int hashCode() {
        return (((((this.f182a * 31) + this.f183b) * 31) + this.f184c) * 31) + this.f185d;
    }

    public final String toString() {
        return "Insets{left=" + this.f182a + ", top=" + this.f183b + ", right=" + this.f184c + ", bottom=" + this.f185d + '}';
    }
}
