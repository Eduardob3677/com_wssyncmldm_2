package l3;

import c3.InterfaceC0221a;

/* renamed from: l3.Y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0668Y extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8143d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0669Z f8144e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0668Y(C0669Z c0669z, int i5) {
        super(0);
        this.f8143d = i5;
        this.f8144e = c0669z;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f8143d) {
            case 0:
                return new C0667X(this.f8144e);
            default:
                return this.f8144e.o();
        }
    }
}
