package J;

/* renamed from: J.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0048w {

    /* renamed from: e, reason: collision with root package name */
    public static final C0048w f1017e = new C0048w(0, 0, 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final int f1018a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1019b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1020c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1021d;

    public C0048w(int i5, int i6, int i7, int i8) {
        this.f1020c = i5;
        this.f1018a = i6;
        this.f1021d = i7;
        this.f1019b = i8;
    }

    public static C0048w a(int i5, int i6, int i7, int i8) {
        return (i5 == 0 && i6 == 0 && i7 == 0 && i8 == 0) ? f1017e : new C0048w(i5, i6, i7, i8);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0048w.class != obj.getClass()) {
            return false;
        }
        C0048w c0048w = (C0048w) obj;
        return this.f1019b == c0048w.f1019b && this.f1020c == c0048w.f1020c && this.f1021d == c0048w.f1021d && this.f1018a == c0048w.f1018a;
    }

    public final int hashCode() {
        return (((((this.f1020c * 31) + this.f1018a) * 31) + this.f1021d) * 31) + this.f1019b;
    }

    public final String toString() {
        return "ExtraInsets{left=" + this.f1020c + ", top=" + this.f1018a + ", right=" + this.f1021d + ", bottom=" + this.f1019b + '}';
    }
}
