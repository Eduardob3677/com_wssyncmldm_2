package h4;

import s3.InterfaceC0845h;

/* renamed from: h4.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0463p extends S {

    /* renamed from: b, reason: collision with root package name */
    public final S f7067b;

    /* renamed from: c, reason: collision with root package name */
    public final S f7068c;

    public C0463p(S s5, S s6) {
        this.f7067b = s5;
        this.f7068c = s6;
    }

    @Override // h4.S
    public final boolean a() {
        return this.f7067b.a() || this.f7068c.a();
    }

    @Override // h4.S
    public final boolean b() {
        return this.f7067b.b() || this.f7068c.b();
    }

    @Override // h4.S
    public final InterfaceC0845h c(InterfaceC0845h interfaceC0845h) {
        d3.i.e("annotations", interfaceC0845h);
        return this.f7068c.c(this.f7067b.c(interfaceC0845h));
    }

    @Override // h4.S
    public final N d(AbstractC0468v abstractC0468v) {
        N nD = this.f7067b.d(abstractC0468v);
        return nD == null ? this.f7068c.d(abstractC0468v) : nD;
    }

    @Override // h4.S
    public final AbstractC0468v f(int i5, AbstractC0468v abstractC0468v) {
        d3.i.e("topLevelType", abstractC0468v);
        B.f.x(i5, "position");
        return this.f7068c.f(i5, this.f7067b.f(i5, abstractC0468v));
    }
}
