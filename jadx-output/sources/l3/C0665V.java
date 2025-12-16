package l3;

import c3.InterfaceC0221a;
import f1.AbstractC0420a;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* renamed from: l3.V, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0665V extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8139d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0666W f8140e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0665V(C0666W c0666w, int i5) {
        super(0);
        this.f8139d = i5;
        this.f8140e = c0666w;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() throws SecurityException, W1.h {
        switch (this.f8139d) {
            case 0:
                return new C0664U(this.f8140e);
            default:
                C0666W c0666w = this.f8140e;
                Object objO = c0666w.o();
                try {
                    Object obj = j0.f8180j;
                    Object objC = c0666w.n() ? AbstractC0420a.c(c0666w.f8183g, c0666w.k()) : null;
                    if (objC == obj) {
                        objC = null;
                    }
                    c0666w.n();
                    AccessibleObject accessibleObject = objO instanceof AccessibleObject ? (AccessibleObject) objO : null;
                    if (accessibleObject != null) {
                        accessibleObject.setAccessible(W1.a.N(c0666w));
                    }
                    if (objO == null) {
                        return null;
                    }
                    if (objO instanceof Field) {
                        return ((Field) objO).get(objC);
                    }
                    if (!(objO instanceof Method)) {
                        throw new AssertionError("delegate field/method " + objO + " neither field nor method");
                    }
                    int length = ((Method) objO).getParameterTypes().length;
                    if (length == 0) {
                        return ((Method) objO).invoke(null, null);
                    }
                    if (length == 1) {
                        Method method = (Method) objO;
                        if (objC == null) {
                            Class<?> cls = ((Method) objO).getParameterTypes()[0];
                            d3.i.d("fieldOrMethod.parameterTypes[0]", cls);
                            objC = w0.e(cls);
                        }
                        return method.invoke(null, objC);
                    }
                    if (length == 2) {
                        Method method2 = (Method) objO;
                        Class<?> cls2 = ((Method) objO).getParameterTypes()[1];
                        d3.i.d("fieldOrMethod.parameterTypes[1]", cls2);
                        return method2.invoke(null, objC, w0.e(cls2));
                    }
                    throw new AssertionError("delegate method " + objO + " should take 0, 1, or 2 parameters");
                } catch (IllegalAccessException e5) {
                    throw new W1.h("Cannot obtain the delegate of a non-accessible property. Use \"isAccessible = true\" to make the property accessible", e5);
                }
        }
    }
}
