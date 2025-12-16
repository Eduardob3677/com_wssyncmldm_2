package a4;

import f1.AbstractC0420a;
import java.util.ArrayList;
import r3.InterfaceC0800c;

/* loaded from: classes.dex */
public final class g extends AbstractC0420a {
    public final /* synthetic */ ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ h f3114g;

    public g(ArrayList arrayList, h hVar) {
        this.f = arrayList;
        this.f3114g = hVar;
    }

    @Override // f1.AbstractC0420a
    public final void a(InterfaceC0800c interfaceC0800c) {
        d3.i.e("fakeOverride", interfaceC0800c);
        T3.n.r(interfaceC0800c, null);
        this.f.add(interfaceC0800c);
    }

    @Override // f1.AbstractC0420a
    public final void d(InterfaceC0800c interfaceC0800c, InterfaceC0800c interfaceC0800c2) {
        d3.i.e("fromCurrent", interfaceC0800c2);
        throw new IllegalStateException(("Conflict in scope of " + this.f3114g.f3116b + ": " + interfaceC0800c + " vs " + interfaceC0800c2).toString());
    }
}
