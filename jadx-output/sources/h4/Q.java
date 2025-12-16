package h4;

import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class Q extends S {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ S f7039b;

    public Q(S s5) {
        this.f7039b = s5;
    }

    @Override // h4.S
    public final InterfaceC0845h c(InterfaceC0845h interfaceC0845h) {
        d3.i.e("annotations", interfaceC0845h);
        return this.f7039b.c(interfaceC0845h);
    }

    @Override // h4.S
    public final N d(AbstractC0468v abstractC0468v) {
        return this.f7039b.d(abstractC0468v);
    }

    @Override // h4.S
    public final boolean e() {
        return this.f7039b.e();
    }

    @Override // h4.S
    public final AbstractC0468v f(int i5, AbstractC0468v abstractC0468v) {
        d3.i.e("topLevelType", abstractC0468v);
        B.f.x(i5, "position");
        return this.f7039b.f(i5, abstractC0468v);
    }
}
