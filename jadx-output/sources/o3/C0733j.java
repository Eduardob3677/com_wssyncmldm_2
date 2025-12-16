package o3;

import c3.InterfaceC0221a;

/* renamed from: o3.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0733j extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8459d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ EnumC0734k f8460e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0733j(EnumC0734k enumC0734k, int i5) {
        super(0);
        this.f8459d = i5;
        this.f8460e = enumC0734k;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f8459d) {
            case 0:
                return n.f8538j.c(this.f8460e.f8471d);
            default:
                return n.f8538j.c(this.f8460e.f8470c);
        }
    }
}
