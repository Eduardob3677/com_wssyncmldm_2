package l3;

import c3.InterfaceC0221a;

/* renamed from: l3.b0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0673b0 extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8157d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0675c0 f8158e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0673b0(C0675c0 c0675c0, int i5) {
        super(0);
        this.f8157d = i5;
        this.f8158e = c0675c0;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f8157d) {
            case 0:
                return new C0671a0(this.f8158e);
            default:
                return this.f8158e.o();
        }
    }
}
