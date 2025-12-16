package B3;

import R2.o;
import R2.s;
import R2.w;
import R2.z;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import s3.EnumC0850m;
import s3.EnumC0851n;
import x3.t;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f236a = z.A1(new Q2.e("PACKAGE", EnumSet.noneOf(EnumC0851n.class)), new Q2.e("TYPE", EnumSet.of(EnumC0851n.CLASS, EnumC0851n.FILE)), new Q2.e("ANNOTATION_TYPE", EnumSet.of(EnumC0851n.ANNOTATION_CLASS)), new Q2.e("TYPE_PARAMETER", EnumSet.of(EnumC0851n.TYPE_PARAMETER)), new Q2.e("FIELD", EnumSet.of(EnumC0851n.FIELD)), new Q2.e("LOCAL_VARIABLE", EnumSet.of(EnumC0851n.LOCAL_VARIABLE)), new Q2.e("PARAMETER", EnumSet.of(EnumC0851n.VALUE_PARAMETER)), new Q2.e("CONSTRUCTOR", EnumSet.of(EnumC0851n.CONSTRUCTOR)), new Q2.e("METHOD", EnumSet.of(EnumC0851n.FUNCTION, EnumC0851n.PROPERTY_GETTER, EnumC0851n.PROPERTY_SETTER)), new Q2.e("TYPE_USE", EnumSet.of(EnumC0851n.TYPE)));

    /* renamed from: b, reason: collision with root package name */
    public static final Map f237b = z.A1(new Q2.e("RUNTIME", EnumC0850m.f9051c), new Q2.e("CLASS", EnumC0850m.f9052d), new Q2.e("SOURCE", EnumC0850m.f9053e));

    public static V3.b a(List list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof t) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Iterable iterable = (EnumSet) f236a.get(Q3.f.e(((t) it.next()).f9671b.name()).b());
            if (iterable == null) {
                iterable = w.f2327c;
            }
            s.E0(arrayList2, iterable);
        }
        ArrayList arrayList3 = new ArrayList(o.C0(arrayList2));
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(new V3.i(Q3.b.k(o3.m.f8524u), Q3.f.e(((EnumC0851n) it2.next()).name())));
        }
        return new V3.b(arrayList3, f.f235d);
    }
}
