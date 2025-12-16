package T3;

import c3.InterfaceC0223c;
import r3.InterfaceC0799b;
import r3.InterfaceC0807j;

/* loaded from: classes.dex */
public final class a extends d3.k implements InterfaceC0223c {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0799b f2716d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0799b f2717e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(InterfaceC0799b interfaceC0799b, InterfaceC0799b interfaceC0799b2) {
        super(2);
        this.f2716d = interfaceC0799b;
        this.f2717e = interfaceC0799b2;
    }

    @Override // c3.InterfaceC0223c
    public final Object d(Object obj, Object obj2) {
        return Boolean.valueOf(d3.i.a((InterfaceC0807j) obj, this.f2716d) && d3.i.a((InterfaceC0807j) obj2, this.f2717e));
    }
}
