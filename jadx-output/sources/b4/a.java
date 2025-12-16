package b4;

import Q3.f;
import d3.i;
import h4.AbstractC0468v;
import r3.InterfaceC0799b;
import r3.InterfaceC0802e;

/* loaded from: classes.dex */
public final class a extends K3.c implements d {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f5153d = 1;

    /* renamed from: e, reason: collision with root package name */
    public final f f5154e;
    public final Object f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(InterfaceC0799b interfaceC0799b, AbstractC0468v abstractC0468v, f fVar) {
        super(abstractC0468v);
        i.e("receiverType", abstractC0468v);
        this.f = interfaceC0799b;
        this.f5154e = fVar;
    }

    public final f O0() {
        switch (this.f5153d) {
        }
        return this.f5154e;
    }

    public final String toString() {
        switch (this.f5153d) {
            case 0:
                return e() + ": Ctx { " + ((InterfaceC0802e) this.f) + " }";
            default:
                return "Cxt { " + ((InterfaceC0799b) this.f) + " }";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(InterfaceC0802e interfaceC0802e, AbstractC0468v abstractC0468v, f fVar) {
        super(abstractC0468v);
        i.e("classDescriptor", interfaceC0802e);
        i.e("receiverType", abstractC0468v);
        this.f = interfaceC0802e;
        this.f5154e = fVar;
    }
}
