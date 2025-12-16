package l3;

import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import com.idm.providers.mo.IDMMoDatabaseConstants;
import d3.AbstractC0393e;
import d3.InterfaceC0391c;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import r3.AbstractC0811n;
import r3.InterfaceC0783K;
import r3.InterfaceC0800c;
import r3.InterfaceC0807j;
import x3.AbstractC0917d;

/* renamed from: l3.C, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0647C implements InterfaceC0391c {

    /* renamed from: c, reason: collision with root package name */
    public static final Q2.a f8104c = new Q2.a("<v#(\\d+)>");

    public static Method m(Class cls, String str, Class[] clsArr, Class cls2, boolean z4) throws NoSuchMethodException, SecurityException {
        Class clsR;
        Method methodM;
        if (z4) {
            clsArr[0] = cls;
        }
        Method methodP = p(cls, str, clsArr, cls2);
        if (methodP != null) {
            return methodP;
        }
        Class superclass = cls.getSuperclass();
        if (superclass != null && (methodM = m(superclass, str, clsArr, cls2, z4)) != null) {
            return methodM;
        }
        Class<?>[] interfaces = cls.getInterfaces();
        d3.i.d("interfaces", interfaces);
        for (Class<?> cls3 : interfaces) {
            d3.i.d("superInterface", cls3);
            Method methodM2 = m(cls3, str, clsArr, cls2, z4);
            if (methodM2 != null) {
                return methodM2;
            }
            if (z4 && (clsR = o4.a.r(AbstractC0917d.d(cls3), cls3.getName().concat("$DefaultImpls"))) != null) {
                clsArr[0] = cls3;
                Method methodP2 = p(clsR, str, clsArr, cls2);
                if (methodP2 != null) {
                    return methodP2;
                }
            }
        }
        return null;
    }

    public static Constructor o(Class cls, ArrayList arrayList) {
        try {
            Class[] clsArr = (Class[]) arrayList.toArray(new Class[0]);
            return cls.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static Method p(Class cls, String str, Class[] clsArr, Class cls2) throws NoSuchMethodException, SecurityException {
        try {
            Method declaredMethod = cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            if (d3.i.a(declaredMethod.getReturnType(), cls2)) {
                return declaredMethod;
            }
            Method[] declaredMethods = cls.getDeclaredMethods();
            d3.i.d("declaredMethods", declaredMethods);
            for (Method method : declaredMethods) {
                if (d3.i.a(method.getName(), str) && d3.i.a(method.getReturnType(), cls2) && Arrays.equals(method.getParameterTypes(), clsArr)) {
                    return method;
                }
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public final void b(ArrayList arrayList, String str, boolean z4) {
        ArrayList arrayListJ = j(str);
        arrayList.addAll(arrayListJ);
        int size = (arrayListJ.size() + 31) / 32;
        for (int i5 = 0; i5 < size; i5++) {
            Class cls = Integer.TYPE;
            d3.i.d("TYPE", cls);
            arrayList.add(cls);
        }
        if (!z4) {
            arrayList.add(Object.class);
        } else {
            arrayList.remove(AbstractC0393e.class);
            arrayList.add(AbstractC0393e.class);
        }
    }

    public final Method c(String str, String str2) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        Method methodM;
        d3.i.e("name", str);
        d3.i.e("desc", str2);
        if (d3.i.a(str, "<init>")) {
            return null;
        }
        Class[] clsArr = (Class[]) j(str2).toArray(new Class[0]);
        Class clsN = n(s4.h.m(str2, ')', 0, false, 6) + 1, str2.length(), str2);
        Method methodM2 = m(h(), str, clsArr, clsN, false);
        if (methodM2 != null) {
            return methodM2;
        }
        if (!h().isInterface() || (methodM = m(Object.class, str, clsArr, clsN, false)) == null) {
            return null;
        }
        return methodM;
    }

    public abstract Collection d();

    public abstract Collection e(Q3.f fVar);

    public abstract InterfaceC0783K f(int i5);

    /* JADX WARN: Removed duplicated region for block: B:17:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List g(a4.o oVar, int i5) {
        AbstractC0693r abstractC0693r;
        d3.i.e(IDMMoDatabaseConstants.IDM_SCOPE, oVar);
        B.f.x(i5, "belonginess");
        C0646B c0646b = new C0646B(this);
        Collection<InterfaceC0807j> collectionH = i3.x.H(oVar, null, 3);
        ArrayList arrayList = new ArrayList();
        for (InterfaceC0807j interfaceC0807j : collectionH) {
            if (interfaceC0807j instanceof InterfaceC0800c) {
                InterfaceC0800c interfaceC0800c = (InterfaceC0800c) interfaceC0807j;
                if (!d3.i.a(interfaceC0800c.c(), AbstractC0811n.f8815h)) {
                    abstractC0693r = (interfaceC0800c.k0() != 2) == (i5 == 1) ? (AbstractC0693r) interfaceC0807j.F0(c0646b, Q2.k.f2225a) : null;
                }
            }
            if (abstractC0693r != null) {
                arrayList.add(abstractC0693r);
            }
        }
        return R2.m.g1(arrayList);
    }

    public Class h() {
        Class clsA = a();
        List list = AbstractC0917d.f9651a;
        d3.i.e("<this>", clsA);
        Class cls = (Class) AbstractC0917d.f9653c.get(clsA);
        return cls == null ? a() : cls;
    }

    public abstract Collection i(Q3.f fVar);

    public final ArrayList j(String str) {
        int iM;
        ArrayList arrayList = new ArrayList();
        int i5 = 1;
        while (str.charAt(i5) != ')') {
            int i6 = i5;
            while (str.charAt(i6) == '[') {
                i6++;
            }
            char cCharAt = str.charAt(i6);
            if (s4.h.m("VZCBSIFJD", cCharAt, 0, false, 2) >= 0) {
                iM = i6 + 1;
            } else {
                if (cCharAt != 'L') {
                    throw new Q2.d("Unknown type prefix in the method signature: ".concat(str), 2);
                }
                iM = s4.h.m(str, ';', i5, false, 4) + 1;
            }
            arrayList.add(n(i5, iM, str));
            i5 = iM;
        }
        return arrayList;
    }

    public final Class n(int i5, int i6, String str) throws ClassNotFoundException {
        char cCharAt = str.charAt(i5);
        if (cCharAt == 'L') {
            ClassLoader classLoaderD = AbstractC0917d.d(a());
            String strSubstring = str.substring(i5 + 1, i6 - 1);
            d3.i.d("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
            Class<?> clsLoadClass = classLoaderD.loadClass(s4.h.q(strSubstring, IDMTndsXmlWbxmlDefine.XML_SLASH, '.'));
            d3.i.d("jClass.safeClassLoader.l…d - 1).replace('/', '.'))", clsLoadClass);
            return clsLoadClass;
        }
        if (cCharAt == '[') {
            Class clsN = n(i5 + 1, i6, str);
            Q3.c cVar = w0.f8238a;
            d3.i.e("<this>", clsN);
            return Array.newInstance((Class<?>) clsN, 0).getClass();
        }
        if (cCharAt == 'V') {
            Class cls = Void.TYPE;
            d3.i.d("TYPE", cls);
            return cls;
        }
        if (cCharAt == 'Z') {
            return Boolean.TYPE;
        }
        if (cCharAt == 'C') {
            return Character.TYPE;
        }
        if (cCharAt == 'B') {
            return Byte.TYPE;
        }
        if (cCharAt == 'S') {
            return Short.TYPE;
        }
        if (cCharAt == 'I') {
            return Integer.TYPE;
        }
        if (cCharAt == 'F') {
            return Float.TYPE;
        }
        if (cCharAt == 'J') {
            return Long.TYPE;
        }
        if (cCharAt == 'D') {
            return Double.TYPE;
        }
        throw new Q2.d("Unknown type prefix in the method signature: ".concat(str), 2);
    }
}
