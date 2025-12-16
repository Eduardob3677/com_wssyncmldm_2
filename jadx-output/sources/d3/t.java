package d3;

import R2.C0077a;
import c3.InterfaceC0221a;
import c3.InterfaceC0222b;
import c3.InterfaceC0223c;
import e3.InterfaceC0416a;
import e3.InterfaceC0417b;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class t {
    public static Set a(Object obj) {
        if ((obj instanceof InterfaceC0416a) && !(obj instanceof InterfaceC0417b)) {
            d("kotlin.collections.MutableSet", obj);
            throw null;
        }
        try {
            return (Set) obj;
        } catch (ClassCastException e5) {
            i.f(e5, t.class.getName());
            throw e5;
        }
    }

    public static void b(InterfaceC0223c interfaceC0223c) {
        if (interfaceC0223c != null) {
            if ((interfaceC0223c instanceof InterfaceC0394f ? ((InterfaceC0394f) interfaceC0223c).b() : interfaceC0223c instanceof InterfaceC0221a ? 0 : interfaceC0223c instanceof InterfaceC0222b ? 1 : 2) == 2) {
                return;
            }
            d("kotlin.jvm.functions.Function2", interfaceC0223c);
            throw null;
        }
    }

    public static final C0077a c(Object[] objArr) {
        i.e("array", objArr);
        return new C0077a(objArr);
    }

    public static void d(String str, Object obj) {
        ClassCastException classCastException = new ClassCastException((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to " + str);
        i.f(classCastException, t.class.getName());
        throw classCastException;
    }
}
