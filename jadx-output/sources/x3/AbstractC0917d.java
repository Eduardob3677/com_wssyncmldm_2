package x3;

import c3.InterfaceC0221a;
import c3.InterfaceC0222b;
import c3.InterfaceC0223c;
import c3.InterfaceC0224d;
import com.idm.agent.dm.uic.IDMDmUICInterface;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import com.idm.fotaagent.enabler.fumo.IDMFumoExtInterface;
import i3.InterfaceC0482c;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import l3.InterfaceC0678e;

/* renamed from: x3.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0917d {

    /* renamed from: a, reason: collision with root package name */
    public static final List f9651a;

    /* renamed from: b, reason: collision with root package name */
    public static final Map f9652b;

    /* renamed from: c, reason: collision with root package name */
    public static final Map f9653c;

    static {
        int i5 = 0;
        Class cls = Boolean.TYPE;
        d3.r rVar = d3.q.f6516a;
        List<InterfaceC0482c> listY0 = R2.n.y0(rVar.b(cls), rVar.b(Byte.TYPE), rVar.b(Character.TYPE), rVar.b(Double.TYPE), rVar.b(Float.TYPE), rVar.b(Integer.TYPE), rVar.b(Long.TYPE), rVar.b(Short.TYPE));
        f9651a = listY0;
        ArrayList arrayList = new ArrayList(R2.o.C0(listY0));
        for (InterfaceC0482c interfaceC0482c : listY0) {
            arrayList.add(new Q2.e(L2.b.r(interfaceC0482c), L2.b.s(interfaceC0482c)));
        }
        f9652b = R2.z.C1(arrayList);
        List<InterfaceC0482c> list = f9651a;
        ArrayList arrayList2 = new ArrayList(R2.o.C0(list));
        for (InterfaceC0482c interfaceC0482c2 : list) {
            arrayList2.add(new Q2.e(L2.b.s(interfaceC0482c2), L2.b.r(interfaceC0482c2)));
        }
        f9653c = R2.z.C1(arrayList2);
        List listY02 = R2.n.y0(InterfaceC0221a.class, InterfaceC0222b.class, InterfaceC0223c.class, InterfaceC0224d.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class);
        ArrayList arrayList3 = new ArrayList(R2.o.C0(listY02));
        for (Object obj : listY02) {
            int i6 = i5 + 1;
            if (i5 < 0) {
                R2.n.B0();
                throw null;
            }
            arrayList3.add(new Q2.e((Class) obj, Integer.valueOf(i5)));
            i5 = i6;
        }
        R2.z.C1(arrayList3);
    }

    public static final Q3.b a(Class cls) {
        Q3.b bVarA;
        d3.i.e("<this>", cls);
        if (cls.isPrimitive()) {
            throw new IllegalArgumentException("Can't compute ClassId for primitive type: " + cls);
        }
        if (cls.isArray()) {
            throw new IllegalArgumentException("Can't compute ClassId for array type: " + cls);
        }
        if (cls.getEnclosingMethod() == null && cls.getEnclosingConstructor() == null && cls.getSimpleName().length() != 0) {
            Class<?> declaringClass = cls.getDeclaringClass();
            return (declaringClass == null || (bVarA = a(declaringClass)) == null) ? Q3.b.k(new Q3.c(cls.getName())) : bVarA.d(Q3.f.e(cls.getSimpleName()));
        }
        Q3.c cVar = new Q3.c(cls.getName());
        return new Q3.b(cVar.e(), Q3.c.j(cVar.f()), true);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final String b(Class cls) {
        d3.i.e("<this>", cls);
        if (!cls.isPrimitive()) {
            if (cls.isArray()) {
                return s4.h.q(cls.getName(), '.', IDMTndsXmlWbxmlDefine.XML_SLASH);
            }
            return "L" + s4.h.q(cls.getName(), '.', IDMTndsXmlWbxmlDefine.XML_SLASH) + ';';
        }
        String name = cls.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    return IDMDmUICInterface.IDM_UIC_OPTION_IT_D;
                }
                break;
            case 104431:
                if (name.equals("int")) {
                    return IDMDmUICInterface.IDM_UIC_OPTION_IT_I;
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                    return "B";
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                    return "C";
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                    return "J";
                }
                break;
            case 3625364:
                if (name.equals("void")) {
                    return "V";
                }
                break;
            case 64711720:
                if (name.equals("boolean")) {
                    return "Z";
                }
                break;
            case 97526364:
                if (name.equals("float")) {
                    return IDMFumoExtInterface.IDM_FUMO_BINARY_CHECK_DISABLED;
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                    return "S";
                }
                break;
        }
        throw new IllegalArgumentException("Unsupported primitive type: " + cls);
    }

    public static final List c(Type type) {
        d3.i.e("<this>", type);
        if (!(type instanceof ParameterizedType)) {
            return R2.u.f2325c;
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        if (parameterizedType.getOwnerType() != null) {
            return r4.m.n(new r4.h(r4.m.k(type, C0916c.f9647e), C0916c.f, r4.p.f8864l));
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        d3.i.d("actualTypeArguments", actualTypeArguments);
        return R2.i.w0(actualTypeArguments);
    }

    public static final ClassLoader d(Class cls) {
        d3.i.e("<this>", cls);
        ClassLoader classLoader = cls.getClassLoader();
        if (classLoader != null) {
            return classLoader;
        }
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        d3.i.d("getSystemClassLoader()", systemClassLoader);
        return systemClassLoader;
    }
}
