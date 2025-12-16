package d3;

import R2.z;
import c3.InterfaceC0221a;
import c3.InterfaceC0222b;
import c3.InterfaceC0223c;
import c3.InterfaceC0224d;
import i3.InterfaceC0482c;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import l3.InterfaceC0678e;

/* renamed from: d3.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0392d implements InterfaceC0482c, InterfaceC0391c {

    /* renamed from: d, reason: collision with root package name */
    public static final Map f6506d;

    /* renamed from: e, reason: collision with root package name */
    public static final HashMap f6507e;

    /* renamed from: c, reason: collision with root package name */
    public final Class f6508c;

    static {
        List listY0 = R2.n.y0(InterfaceC0221a.class, InterfaceC0222b.class, InterfaceC0223c.class, InterfaceC0224d.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class, InterfaceC0678e.class);
        ArrayList arrayList = new ArrayList(R2.o.C0(listY0));
        int i5 = 0;
        for (Object obj : listY0) {
            int i6 = i5 + 1;
            if (i5 < 0) {
                R2.n.B0();
                throw null;
            }
            arrayList.add(new Q2.e((Class) obj, Integer.valueOf(i5)));
            i5 = i6;
        }
        f6506d = z.C1(arrayList);
        HashMap map = new HashMap();
        map.put("boolean", "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put("float", "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        HashMap map2 = new HashMap();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        HashMap map3 = new HashMap();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        Collection<String> collectionValues = map.values();
        i.d("primitiveFqNames.values", collectionValues);
        for (String str : collectionValues) {
            StringBuilder sb = new StringBuilder("kotlin.jvm.internal.");
            i.d("kotlinName", str);
            sb.append(s4.h.u(str, '.'));
            sb.append("CompanionObject");
            map3.put(sb.toString(), str.concat(".Companion"));
        }
        for (Map.Entry entry : f6506d.entrySet()) {
            Class cls = (Class) entry.getKey();
            int iIntValue = ((Number) entry.getValue()).intValue();
            map3.put(cls.getName(), "kotlin.Function" + iIntValue);
        }
        f6507e = map3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(z.y1(map3.size()));
        for (Map.Entry entry2 : map3.entrySet()) {
            linkedHashMap.put(entry2.getKey(), s4.h.u((String) entry2.getValue(), '.'));
        }
    }

    public C0392d(Class cls) {
        i.e("jClass", cls);
        this.f6508c = cls;
    }

    @Override // d3.InterfaceC0391c
    public final Class a() {
        return this.f6508c;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0392d) && i.a(L2.b.r(this), L2.b.r((InterfaceC0482c) obj));
    }

    public final int hashCode() {
        return L2.b.r(this).hashCode();
    }

    @Override // i3.InterfaceC0482c
    public final Collection k() {
        throw new Q2.d();
    }

    @Override // i3.InterfaceC0482c
    public final String l() {
        String str;
        Class cls = this.f6508c;
        i.e("jClass", cls);
        String strConcat = null;
        if (cls.isAnonymousClass() || cls.isLocalClass()) {
            return null;
        }
        boolean zIsArray = cls.isArray();
        HashMap map = f6507e;
        if (!zIsArray) {
            String str2 = (String) map.get(cls.getName());
            return str2 == null ? cls.getCanonicalName() : str2;
        }
        Class<?> componentType = cls.getComponentType();
        if (componentType.isPrimitive() && (str = (String) map.get(componentType.getName())) != null) {
            strConcat = str.concat("Array");
        }
        return strConcat == null ? "kotlin.Array" : strConcat;
    }

    public final String toString() {
        return this.f6508c.toString() + " (Kotlin reflection is not available)";
    }
}
