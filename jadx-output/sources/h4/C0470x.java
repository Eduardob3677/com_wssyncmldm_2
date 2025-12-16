package h4;

import c3.InterfaceC0221a;
import java.util.List;

/* renamed from: h4.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0470x extends AbstractC0468v {

    /* renamed from: d, reason: collision with root package name */
    public final g4.o f7081d;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC0221a f7082e;
    public final g4.i f;

    public C0470x(g4.o oVar, InterfaceC0221a interfaceC0221a) {
        d3.i.e("storageManager", oVar);
        this.f7081d = oVar;
        this.f7082e = interfaceC0221a;
        this.f = new g4.i((g4.l) oVar, interfaceC0221a);
    }

    @Override // h4.AbstractC0468v
    public final G I0() {
        return N0().I0();
    }

    @Override // h4.AbstractC0468v
    public final J J0() {
        return N0().J0();
    }

    @Override // h4.AbstractC0468v
    public final boolean K0() {
        return N0().K0();
    }

    @Override // h4.AbstractC0468v
    public final AbstractC0468v L0(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        return new C0470x(this.f7081d, new B3.c(fVar, 7, this));
    }

    @Override // h4.AbstractC0468v
    public final Z M0() {
        AbstractC0468v abstractC0468vN0 = N0();
        while (abstractC0468vN0 instanceof C0470x) {
            abstractC0468vN0 = ((C0470x) abstractC0468vN0).N0();
        }
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.types.UnwrappedType", abstractC0468vN0);
        return (Z) abstractC0468vN0;
    }

    public final AbstractC0468v N0() {
        return (AbstractC0468v) this.f.a();
    }

    @Override // h4.AbstractC0468v
    public final a4.o q0() {
        return N0().q0();
    }

    public final String toString() {
        g4.i iVar = this.f;
        return (iVar.f6940e == g4.k.f6944c || iVar.f6940e == g4.k.f6945d) ? "<Not computed yet>" : N0().toString();
    }

    @Override // h4.AbstractC0468v
    public final List u0() {
        return N0().u0();
    }
}
