package A3;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: c, reason: collision with root package name */
    public static final v f155c;

    /* renamed from: a, reason: collision with root package name */
    public final x f156a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f157b;

    static {
        Q3.c cVar = s.f146a;
        Q2.b bVar = Q2.b.f;
        d3.i.e("configuredKotlinVersion", bVar);
        t tVar = s.f149d;
        Q2.b bVar2 = tVar.f152b;
        E e5 = (bVar2 == null || bVar2.f2211e - bVar.f2211e > 0) ? tVar.f151a : tVar.f153c;
        d3.i.e("globalReportLevel", e5);
        x xVar = new x(e5, e5 == E.WARN ? null : e5);
        u uVar = u.f154l;
        f155c = new v(xVar);
    }

    public v(x xVar) {
        u uVar = u.f154l;
        this.f156a = xVar;
        this.f157b = xVar.f162d || uVar.e(s.f146a) == E.IGNORE;
    }

    public final String toString() {
        return "JavaTypeEnhancementState(jsr305=" + this.f156a + ", getReportLevelForAnnotation=" + u.f154l + ')';
    }
}
