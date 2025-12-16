package k;

/* loaded from: classes.dex */
public final class F0 {

    /* renamed from: a, reason: collision with root package name */
    public int f7678a;

    /* renamed from: b, reason: collision with root package name */
    public int f7679b;

    /* renamed from: c, reason: collision with root package name */
    public int f7680c;

    /* renamed from: d, reason: collision with root package name */
    public int f7681d;

    /* renamed from: e, reason: collision with root package name */
    public int f7682e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7683g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7684h;

    public final void a(int i5, int i6) {
        this.f7680c = i5;
        this.f7681d = i6;
        this.f7684h = true;
        if (this.f7683g) {
            if (i6 != Integer.MIN_VALUE) {
                this.f7678a = i6;
            }
            if (i5 != Integer.MIN_VALUE) {
                this.f7679b = i5;
                return;
            }
            return;
        }
        if (i5 != Integer.MIN_VALUE) {
            this.f7678a = i5;
        }
        if (i6 != Integer.MIN_VALUE) {
            this.f7679b = i6;
        }
    }
}
