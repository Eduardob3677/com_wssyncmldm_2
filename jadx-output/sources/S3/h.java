package S3;

import java.util.ArrayList;
import java.util.Set;

/* loaded from: classes.dex */
public enum h {
    VISIBILITY(true),
    MODALITY(true),
    OVERRIDE(true),
    ANNOTATIONS(false),
    INNER(true),
    MEMBER_KIND(true),
    DATA(true),
    INLINE(true),
    EXPECT(true),
    ACTUAL(true),
    CONST(true),
    LATEINIT(true),
    FUN(true),
    VALUE(true);


    /* renamed from: d, reason: collision with root package name */
    public static final Set f2627d;

    /* renamed from: e, reason: collision with root package name */
    public static final Set f2628e;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2642c;

    static {
        h[] hVarArrValues = values();
        ArrayList arrayList = new ArrayList();
        for (h hVar : hVarArrValues) {
            if (hVar.f2642c) {
                arrayList.add(hVar);
            }
        }
        f2627d = R2.m.j1(arrayList);
        f2628e = R2.i.x0(values());
    }

    h(boolean z4) {
        this.f2642c = z4;
    }
}
