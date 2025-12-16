package l3;

import c3.InterfaceC0221a;
import r3.InterfaceC0781I;
import r3.InterfaceC0800c;

/* renamed from: l3.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0692q extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0800c f8213d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f8214e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0692q(InterfaceC0800c interfaceC0800c, int i5) {
        super(0);
        this.f8213d = interfaceC0800c;
        this.f8214e = i5;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        Object obj = this.f8213d.w0().get(this.f8214e);
        d3.i.d("descriptor.valueParameters[i]", obj);
        return (InterfaceC0781I) obj;
    }
}
