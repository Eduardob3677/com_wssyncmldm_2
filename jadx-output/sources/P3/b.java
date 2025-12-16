package P3;

import R2.m;
import R2.n;
import com.idm.agent.dm.uic.IDMDmUICInterface;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import com.idm.fotaagent.enabler.fumo.IDMFumoExtInterface;
import d3.i;
import h0.AbstractC0432c;
import i3.x;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final String f2154a = m.S0(n.y0('k', 'o', 't', 'l', 'i', 'n'), "", null, null, null, 62);

    /* renamed from: b, reason: collision with root package name */
    public static final LinkedHashMap f2155b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List listY0 = n.y0("Boolean", "Z", "Char", "C", "Byte", "B", "Short", "S", "Int", IDMDmUICInterface.IDM_UIC_OPTION_IT_I, "Float", IDMFumoExtInterface.IDM_FUMO_BINARY_CHECK_DISABLED, "Long", "J", "Double", IDMDmUICInterface.IDM_UIC_OPTION_IT_D);
        int iY = x.Y(0, listY0.size() - 1, 2);
        if (iY >= 0) {
            int i5 = 0;
            while (true) {
                StringBuilder sb = new StringBuilder();
                String str = f2154a;
                sb.append(str);
                sb.append(IDMTndsXmlWbxmlDefine.XML_SLASH);
                sb.append((String) listY0.get(i5));
                int i6 = i5 + 1;
                linkedHashMap.put(sb.toString(), listY0.get(i6));
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(IDMTndsXmlWbxmlDefine.XML_SLASH);
                linkedHashMap.put(B.f.w(sb2, (String) listY0.get(i5), "Array"), "[" + ((String) listY0.get(i6)));
                if (i5 == iY) {
                    break;
                } else {
                    i5 += 2;
                }
            }
        }
        linkedHashMap.put(f2154a + "/Unit", "V");
        a(linkedHashMap, "Any", "java/lang/Object");
        a(linkedHashMap, "Nothing", "java/lang/Void");
        a(linkedHashMap, "Annotation", "java/lang/annotation/Annotation");
        for (String str2 : n.y0("String", "CharSequence", "Throwable", "Cloneable", "Number", "Comparable", "Enum")) {
            a(linkedHashMap, str2, "java/lang/" + str2);
        }
        for (String str3 : n.y0("Iterator", "Collection", "List", "Set", "Map", "ListIterator")) {
            a(linkedHashMap, AbstractC0432c.i("collections/", str3), "java/util/" + str3);
            a(linkedHashMap, "collections/Mutable" + str3, "java/util/" + str3);
        }
        a(linkedHashMap, "collections/Iterable", "java/lang/Iterable");
        a(linkedHashMap, "collections/MutableIterable", "java/lang/Iterable");
        a(linkedHashMap, "collections/Map.Entry", "java/util/Map$Entry");
        a(linkedHashMap, "collections/MutableMap.MutableEntry", "java/util/Map$Entry");
        for (int i7 = 0; i7 < 23; i7++) {
            String strT = B.f.t(i7, "Function");
            StringBuilder sb3 = new StringBuilder();
            String str4 = f2154a;
            sb3.append(str4);
            sb3.append("/jvm/functions/Function");
            sb3.append(i7);
            a(linkedHashMap, strT, sb3.toString());
            a(linkedHashMap, "reflect/KFunction" + i7, str4 + "/reflect/KFunction");
        }
        for (String str5 : n.y0("Char", "Byte", "Short", "Int", "Float", "Long", "Double", "String", "Enum")) {
            a(linkedHashMap, AbstractC0432c.h(str5, ".Companion"), f2154a + "/jvm/internal/" + str5 + "CompanionObject");
        }
        f2155b = linkedHashMap;
    }

    public static final void a(LinkedHashMap linkedHashMap, String str, String str2) {
        linkedHashMap.put(f2154a + IDMTndsXmlWbxmlDefine.XML_SLASH + str, "L" + str2 + ';');
    }

    public static final String b(String str) {
        i.e("classId", str);
        String str2 = (String) f2155b.get(str);
        if (str2 != null) {
            return str2;
        }
        return "L" + s4.h.q(str, '.', '$') + ';';
    }
}
