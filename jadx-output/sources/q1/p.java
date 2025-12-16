package q1;

/* loaded from: classes.dex */
public final class p implements e2.g {

    /* renamed from: a, reason: collision with root package name */
    public boolean f8637a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f8638b = false;

    /* renamed from: c, reason: collision with root package name */
    public e2.c f8639c;

    /* renamed from: d, reason: collision with root package name */
    public final o f8640d;

    public p(o oVar) {
        this.f8640d = oVar;
    }

    @Override // e2.g
    public final e2.g a(String str) {
        if (this.f8637a) {
            throw new e2.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f8637a = true;
        this.f8640d.a(this.f8639c, str, this.f8638b);
        return this;
    }

    @Override // e2.g
    public final e2.g b(boolean z4) {
        if (this.f8637a) {
            throw new e2.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f8637a = true;
        this.f8640d.b(this.f8639c, z4 ? 1 : 0, this.f8638b);
        return this;
    }
}
