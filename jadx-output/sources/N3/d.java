package N3;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public final int f1871a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1872b;

    public d(int i5, int i6) {
        this.f1871a = i5;
        this.f1872b = i6;
    }

    public static b a(d dVar) {
        return new b(dVar.f1871a + dVar.f1872b, 1);
    }

    public static b b() {
        return new b(0, 1);
    }
}
