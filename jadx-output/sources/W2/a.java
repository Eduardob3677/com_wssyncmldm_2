package W2;

import J.r0;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import d3.i;
import i3.x;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class a implements U2.a, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final U2.a f2836c;

    public a(U2.a aVar) {
        this.f2836c = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // U2.a
    public final void c(Object obj) {
        while (true) {
            a aVar = this;
            U2.a aVar2 = aVar.f2836c;
            i.b(aVar2);
            try {
                obj = aVar.g(obj);
                if (obj == V2.a.f2785c) {
                    return;
                }
            } catch (Throwable th) {
                obj = x.w(th);
            }
            aVar.h();
            if (!(aVar2 instanceof a)) {
                aVar2.c(obj);
                return;
            }
            this = aVar2;
        }
    }

    public U2.a e(Object obj, U2.a aVar) {
        i.e("completion", aVar);
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public final StackTraceElement f() throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        int iIntValue;
        String strC;
        c cVar = (c) getClass().getAnnotation(c.class);
        String str = null;
        if (cVar == null) {
            return null;
        }
        int iV = cVar.v();
        if (iV > 1) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + iV + ". Please update the Kotlin standard library.").toString());
        }
        try {
            Field declaredField = getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            iIntValue = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            iIntValue = -1;
        }
        int i5 = iIntValue >= 0 ? cVar.l()[iIntValue] : -1;
        r0 r0Var = d.f2839b;
        r0 r0Var2 = d.f2838a;
        if (r0Var == null) {
            try {
                r0 r0Var3 = new r0(Class.class.getDeclaredMethod("getModule", null), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
                d.f2839b = r0Var3;
                r0Var = r0Var3;
            } catch (Exception unused2) {
                d.f2839b = r0Var2;
                r0Var = r0Var2;
            }
        }
        if (r0Var != r0Var2) {
            Method method = (Method) r0Var.f1006c;
            Object objInvoke = method != null ? method.invoke(getClass(), null) : null;
            if (objInvoke != null) {
                Method method2 = (Method) r0Var.f1007d;
                Object objInvoke2 = method2 != null ? method2.invoke(objInvoke, null) : null;
                if (objInvoke2 != null) {
                    Method method3 = (Method) r0Var.f1008e;
                    Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, null) : null;
                    if (objInvoke3 instanceof String) {
                        str = (String) objInvoke3;
                    }
                }
            }
        }
        if (str == null) {
            strC = cVar.c();
        } else {
            strC = str + IDMTndsXmlWbxmlDefine.XML_SLASH + cVar.c();
        }
        return new StackTraceElement(strC, cVar.m(), cVar.f(), i5);
    }

    public abstract Object g(Object obj);

    public void h() {
    }

    public String toString() throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Object objF = f();
        if (objF == null) {
            objF = getClass().getName();
        }
        sb.append(objF);
        return sb.toString();
    }
}
