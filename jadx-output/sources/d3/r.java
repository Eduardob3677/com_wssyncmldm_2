package d3;

import i3.InterfaceC0482c;
import i3.InterfaceC0484e;
import i3.InterfaceC0485f;
import i3.InterfaceC0488i;
import i3.InterfaceC0493n;

/* loaded from: classes.dex */
public class r {
    public InterfaceC0485f a(AbstractC0395g abstractC0395g) {
        return abstractC0395g;
    }

    public InterfaceC0482c b(Class cls) {
        return new C0392d(cls);
    }

    public InterfaceC0484e c(Class cls, String str) {
        return new m(cls, str);
    }

    public InterfaceC0488i d(l lVar) {
        return lVar;
    }

    public InterfaceC0493n e(n nVar) {
        return nVar;
    }

    public String f(InterfaceC0394f interfaceC0394f) {
        String string = interfaceC0394f.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith("kotlin.jvm.functions.") ? string.substring(21) : string;
    }

    public String g(k kVar) {
        return f(kVar);
    }
}
