package A3;

import f1.AbstractC0420a;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* renamed from: A3.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0003b {

    /* renamed from: a, reason: collision with root package name */
    public static final Q3.c f109a = new Q3.c("javax.annotation.meta.TypeQualifierNickname");

    /* renamed from: b, reason: collision with root package name */
    public static final Q3.c f110b = new Q3.c("javax.annotation.meta.TypeQualifier");

    /* renamed from: c, reason: collision with root package name */
    public static final Q3.c f111c = new Q3.c("javax.annotation.meta.TypeQualifierDefault");

    /* renamed from: d, reason: collision with root package name */
    public static final Q3.c f112d = new Q3.c("kotlin.annotations.jvm.UnderMigration");

    /* renamed from: e, reason: collision with root package name */
    public static final Map f113e;
    public static final LinkedHashMap f;

    /* renamed from: g, reason: collision with root package name */
    public static final Set f114g;

    static {
        EnumC0002a enumC0002a = EnumC0002a.FIELD;
        EnumC0002a enumC0002a2 = EnumC0002a.METHOD_RETURN_TYPE;
        EnumC0002a enumC0002a3 = EnumC0002a.VALUE_PARAMETER;
        List listY0 = R2.n.y0(enumC0002a, enumC0002a2, enumC0002a3, EnumC0002a.TYPE_PARAMETER_BOUNDS, EnumC0002a.TYPE_USE);
        Q3.c cVar = A.f64c;
        I3.h hVar = I3.h.f898e;
        Map mapA1 = R2.z.A1(new Q2.e(cVar, new o(new I3.i(hVar), listY0, false)), new Q2.e(A.f, new o(new I3.i(hVar), listY0, false)));
        f113e = mapA1;
        LinkedHashMap linkedHashMap = new LinkedHashMap(R2.z.A1(new Q2.e(new Q3.c("javax.annotation.ParametersAreNullableByDefault"), new o(new I3.i(I3.h.f897d), AbstractC0420a.V(enumC0002a3))), new Q2.e(new Q3.c("javax.annotation.ParametersAreNonnullByDefault"), new o(new I3.i(hVar), AbstractC0420a.V(enumC0002a3)))));
        linkedHashMap.putAll(mapA1);
        f = linkedHashMap;
        f114g = R2.B.T(A.f68h, A.f69i);
    }
}
