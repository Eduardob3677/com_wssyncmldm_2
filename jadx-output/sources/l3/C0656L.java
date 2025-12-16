package l3;

import c3.InterfaceC0221a;
import p.AbstractC0735a;

/* renamed from: l3.L, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0656L extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8118d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0661Q f8119e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0656L(C0661Q c0661q, int i5) {
        super(0);
        this.f8118d = i5;
        this.f8119e = c0661q;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f8118d) {
            case 0:
                return AbstractC0735a.f(this.f8119e.f8129d);
            default:
                return new C0659O(this.f8119e);
        }
    }
}
