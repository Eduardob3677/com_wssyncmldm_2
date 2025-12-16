package l3;

import c3.InterfaceC0221a;
import java.lang.reflect.Type;
import x3.AbstractC0917d;

/* loaded from: classes.dex */
public final class k0 extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8187d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ l0 f8188e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k0(int i5, l0 l0Var) {
        super(0);
        this.f8187d = i5;
        this.f8188e = l0Var;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f8187d) {
            case 0:
                p0 p0Var = this.f8188e.f8193b;
                Type type = p0Var != null ? (Type) p0Var.a() : null;
                d3.i.b(type);
                return AbstractC0917d.c(type);
            default:
                l0 l0Var = this.f8188e;
                return l0Var.a(l0Var.f8192a);
        }
    }
}
