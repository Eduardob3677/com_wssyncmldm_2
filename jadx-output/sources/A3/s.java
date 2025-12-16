package A3;

/* loaded from: classes.dex */
public abstract class s {

    /* renamed from: a, reason: collision with root package name */
    public static final Q3.c f146a;

    /* renamed from: b, reason: collision with root package name */
    public static final Q3.c[] f147b;

    /* renamed from: c, reason: collision with root package name */
    public static final D f148c;

    /* renamed from: d, reason: collision with root package name */
    public static final t f149d;

    static {
        Q3.c cVar = new Q3.c("org.jspecify.nullness");
        Q3.c cVar2 = new Q3.c("org.jspecify.annotations");
        f146a = cVar2;
        Q3.c cVar3 = new Q3.c("io.reactivex.rxjava3.annotations");
        Q3.c cVar4 = new Q3.c("org.checkerframework.checker.nullness.compatqual");
        String strB = cVar3.b();
        f147b = new Q3.c[]{new Q3.c(strB.concat(".Nullable")), new Q3.c(strB.concat(".NonNull"))};
        Q3.c cVar5 = new Q3.c("org.jetbrains.annotations");
        t tVar = t.f150d;
        Q2.e eVar = new Q2.e(cVar5, tVar);
        Q2.e eVar2 = new Q2.e(new Q3.c("androidx.annotation"), tVar);
        Q2.e eVar3 = new Q2.e(new Q3.c("android.support.annotation"), tVar);
        Q2.e eVar4 = new Q2.e(new Q3.c("android.annotation"), tVar);
        Q2.e eVar5 = new Q2.e(new Q3.c("com.android.annotations"), tVar);
        Q2.e eVar6 = new Q2.e(new Q3.c("org.eclipse.jdt.annotation"), tVar);
        Q2.e eVar7 = new Q2.e(new Q3.c("org.checkerframework.checker.nullness.qual"), tVar);
        Q2.e eVar8 = new Q2.e(cVar4, tVar);
        Q2.e eVar9 = new Q2.e(new Q3.c("javax.annotation"), tVar);
        Q2.e eVar10 = new Q2.e(new Q3.c("edu.umd.cs.findbugs.annotations"), tVar);
        Q2.e eVar11 = new Q2.e(new Q3.c("io.reactivex.annotations"), tVar);
        Q3.c cVar6 = new Q3.c("androidx.annotation.RecentlyNullable");
        E e5 = E.WARN;
        Q2.e eVar12 = new Q2.e(cVar6, new t(e5, 4));
        Q2.e eVar13 = new Q2.e(new Q3.c("androidx.annotation.RecentlyNonNull"), new t(e5, 4));
        Q2.e eVar14 = new Q2.e(new Q3.c("lombok"), tVar);
        Q2.b bVar = new Q2.b(9, 0);
        E e6 = E.STRICT;
        f148c = new D(R2.z.A1(eVar, eVar2, eVar3, eVar4, eVar5, eVar6, eVar7, eVar8, eVar9, eVar10, eVar11, eVar12, eVar13, eVar14, new Q2.e(cVar, new t(e5, bVar, e6)), new Q2.e(cVar2, new t(e5, new Q2.b(9, 0), e6)), new Q2.e(cVar3, new t(e5, new Q2.b(8, 0), e6))));
        f149d = new t(e5, 4);
    }
}
