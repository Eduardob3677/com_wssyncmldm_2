package o4;

import B.f;
import L2.b;
import Q3.c;
import R2.m;
import T3.o;
import a4.k;
import a4.n;
import com.google.firebase.messaging.p;
import d3.i;
import i3.x;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import r3.C0813p;
import r3.C0814q;
import r3.InterfaceC0780H;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0821x;
import s3.InterfaceC0839b;
import s3.InterfaceC0845h;
import u3.y;
import x3.AbstractC0917d;
import x3.C0918e;

/* loaded from: classes.dex */
public abstract class a {
    public static final String a(String str) {
        char cCharAt;
        i.e("<this>", str);
        if (str.length() == 0 || 'a' > (cCharAt = str.charAt(0)) || cCharAt >= '{') {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        String strSubstring = str.substring(1);
        i.d("this as java.lang.String).substring(startIndex)", strSubstring);
        return upperCase + strSubstring;
    }

    public static final Collection b(Collection collection, Collection collection2) {
        i.e("collection", collection2);
        if (collection2.isEmpty()) {
            return collection;
        }
        if (collection == null) {
            return collection2;
        }
        if (collection instanceof LinkedHashSet) {
            ((LinkedHashSet) collection).addAll(collection2);
            return collection;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        linkedHashSet.addAll(collection2);
        return linkedHashSet;
    }

    public static InterfaceC0839b c(InterfaceC0845h interfaceC0845h, c cVar) {
        Object next;
        i.e("fqName", cVar);
        Iterator it = interfaceC0845h.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (i.a(((InterfaceC0839b) next).a(), cVar)) {
                break;
            }
        }
        return (InterfaceC0839b) next;
    }

    public static final C0918e d(Annotation[] annotationArr, c cVar) {
        Annotation annotation;
        i.e("<this>", annotationArr);
        i.e("fqName", cVar);
        int length = annotationArr.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                annotation = null;
                break;
            }
            annotation = annotationArr[i5];
            if (i.a(AbstractC0917d.a(b.q(b.k(annotation))).b(), cVar)) {
                break;
            }
            i5++;
        }
        if (annotation != null) {
            return new C0918e(annotation);
        }
        return null;
    }

    public static final InterfaceC0802e e(InterfaceC0821x interfaceC0821x, Q3.b bVar) {
        i.e("<this>", interfaceC0821x);
        i.e("classId", bVar);
        InterfaceC0804g interfaceC0804gF = f(interfaceC0821x, bVar);
        if (interfaceC0804gF instanceof InterfaceC0802e) {
            return (InterfaceC0802e) interfaceC0804gF;
        }
        return null;
    }

    public static final InterfaceC0804g f(InterfaceC0821x interfaceC0821x, Q3.b bVar) {
        i.e("<this>", interfaceC0821x);
        i.e("classId", bVar);
        f.F(interfaceC0821x.U(o.f2739a));
        c cVarH = bVar.h();
        i.d("classId.packageFqName", cVarH);
        InterfaceC0780H interfaceC0780HA0 = interfaceC0821x.a0(cVarH);
        List listE = bVar.i().f2234a.e();
        k kVar = ((y) interfaceC0780HA0).f9516i;
        Object objM0 = m.M0(listE);
        i.d("segments.first()", objM0);
        z3.b bVar2 = z3.b.f9734i;
        InterfaceC0804g interfaceC0804gC = kVar.c((Q3.f) objM0, bVar2);
        if (interfaceC0804gC == null) {
            return null;
        }
        for (Q3.f fVar : listE.subList(1, listE.size())) {
            if (!(interfaceC0804gC instanceof InterfaceC0802e)) {
                return null;
            }
            a4.o oVarR = ((InterfaceC0802e) interfaceC0804gC).R();
            i.d("name", fVar);
            InterfaceC0804g interfaceC0804gC2 = oVarR.c(fVar, bVar2);
            interfaceC0804gC = interfaceC0804gC2 instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gC2 : null;
            if (interfaceC0804gC == null) {
                return null;
            }
        }
        return interfaceC0804gC;
    }

    public static final InterfaceC0802e g(InterfaceC0821x interfaceC0821x, Q3.b bVar, p pVar) {
        i.e("<this>", interfaceC0821x);
        i.e("classId", bVar);
        i.e("notFoundClasses", pVar);
        InterfaceC0802e interfaceC0802eE = e(interfaceC0821x, bVar);
        return interfaceC0802eE != null ? interfaceC0802eE : pVar.v(bVar, r4.m.n(r4.m.l(r4.m.k(bVar, C0813p.f8823l), C0814q.f8824e)));
    }

    public static final ArrayList h(Annotation[] annotationArr) {
        i.e("<this>", annotationArr);
        ArrayList arrayList = new ArrayList(annotationArr.length);
        for (Annotation annotation : annotationArr) {
            arrayList.add(new C0918e(annotation));
        }
        return arrayList;
    }

    public static int i() {
        Method methodK = x.K("android.view.PointerIcon", "hidden_SEM_TYPE_STYLUS_DEFAULT", new Class[0]);
        Object objJ0 = methodK != null ? x.j0(null, methodK, new Object[0]) : null;
        if (objJ0 instanceof Integer) {
            return ((Integer) objJ0).intValue();
        }
        return 1;
    }

    public static int j() {
        Method methodK = x.K("android.view.PointerIcon", "hidden_SEM_TYPE_STYLUS_PEN_SELECT", new Class[0]);
        Object objJ0 = methodK != null ? x.j0(null, methodK, new Object[0]) : null;
        if (objJ0 instanceof Integer) {
            return ((Integer) objJ0).intValue();
        }
        return 21;
    }

    public static int k() {
        Method methodK = x.K("android.view.PointerIcon", "hidden_SEM_TYPE_STYLUS_SCROLL_DOWN", new Class[0]);
        Object objJ0 = methodK != null ? x.j0(null, methodK, new Object[0]) : null;
        if (objJ0 instanceof Integer) {
            return ((Integer) objJ0).intValue();
        }
        return 15;
    }

    public static int l() {
        Method methodK = x.K("android.view.PointerIcon", "hidden_SEM_TYPE_STYLUS_SCROLL_UP", new Class[0]);
        Object objJ0 = methodK != null ? x.j0(null, methodK, new Object[0]) : null;
        if (objJ0 instanceof Integer) {
            return ((Integer) objJ0).intValue();
        }
        return 11;
    }

    public static int m() {
        Method methodK = x.K("com.samsung.android.widget.SemHoverPopupWindow", "hidden_TYPE_NONE", new Class[0]);
        Object objJ0 = methodK != null ? x.j0(null, methodK, new Object[0]) : null;
        if (objJ0 instanceof Integer) {
            return ((Integer) objJ0).intValue();
        }
        return 0;
    }

    public static boolean n(InterfaceC0845h interfaceC0845h, c cVar) {
        i.e("fqName", cVar);
        return interfaceC0845h.f(cVar) != null;
    }

    public static final boolean o(int i5, String str) {
        char cCharAt = str.charAt(i5);
        return 'A' <= cCharAt && cCharAt < '[';
    }

    public static final q4.f p(ArrayList arrayList) {
        q4.f fVar = new q4.f();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            a4.o oVar = (a4.o) next;
            if (oVar != null && oVar != n.f3128b) {
                fVar.add(next);
            }
        }
        return fVar;
    }

    public static final String q(String str) {
        i.e("<this>", str);
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        for (int i5 = 0; i5 < length; i5++) {
            char cCharAt = str.charAt(i5);
            if ('A' <= cCharAt && cCharAt < '[') {
                cCharAt = Character.toLowerCase(cCharAt);
            }
            sb.append(cCharAt);
        }
        String string = sb.toString();
        i.d("builder.toString()", string);
        return string;
    }

    public static final Class r(ClassLoader classLoader, String str) {
        i.e("<this>", classLoader);
        i.e("fqName", str);
        try {
            return Class.forName(str, false, classLoader);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
