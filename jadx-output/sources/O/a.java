package O;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public int f1910a;

    /* renamed from: b, reason: collision with root package name */
    public int f1911b;

    /* renamed from: c, reason: collision with root package name */
    public float f1912c;

    /* renamed from: d, reason: collision with root package name */
    public float f1913d;

    /* renamed from: e, reason: collision with root package name */
    public long f1914e;
    public long f;

    /* renamed from: g, reason: collision with root package name */
    public long f1915g;

    /* renamed from: h, reason: collision with root package name */
    public float f1916h;

    /* renamed from: i, reason: collision with root package name */
    public int f1917i;

    public final float a(long j3) {
        if (j3 < this.f1914e) {
            return 0.0f;
        }
        long j5 = this.f1915g;
        if (j5 < 0 || j3 < j5) {
            return g.b((j3 - r0) / this.f1910a, 0.0f, 1.0f) * 0.5f;
        }
        float f = this.f1916h;
        return (g.b((j3 - j5) / this.f1917i, 0.0f, 1.0f) * f) + (1.0f - f);
    }
}
