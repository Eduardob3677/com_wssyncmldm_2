package A3;

import r3.InterfaceC0816s;
import u3.AbstractC0883o;

/* renamed from: A3.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0008g extends I {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f128m = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public static final InterfaceC0816s a(InterfaceC0816s interfaceC0816s) {
        d3.i.e("functionDescriptor", interfaceC0816s);
        Q3.f name = ((AbstractC0883o) interfaceC0816s).getName();
        d3.i.d("functionDescriptor.name", name);
        if (b(name)) {
            return (InterfaceC0816s) X3.f.b(interfaceC0816s, C0007f.f121e);
        }
        return null;
    }

    public static boolean b(Q3.f fVar) {
        d3.i.e("<this>", fVar);
        return I.f.contains(fVar);
    }
}
