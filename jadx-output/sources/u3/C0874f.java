package u3;

import c3.InterfaceC0221a;
import r3.C0787O;

/* renamed from: u3.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0874f implements InterfaceC0221a {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g4.o f9423c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0787O f9424d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractC0878j f9425e;

    public C0874f(AbstractC0878j abstractC0878j, g4.o oVar, C0787O c0787o) {
        this.f9425e = abstractC0878j;
        this.f9423c = oVar;
        this.f9424d = c0787o;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        return new C0877i(this.f9425e, this.f9423c, this.f9424d);
    }
}
