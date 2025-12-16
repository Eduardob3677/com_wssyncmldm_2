package A3;

import c3.InterfaceC0222b;
import d3.AbstractC0395g;
import i3.InterfaceC0484e;

/* loaded from: classes.dex */
public final /* synthetic */ class u extends AbstractC0395g implements InterfaceC0222b {

    /* renamed from: l, reason: collision with root package name */
    public static final u f154l = new u(1);

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        Q3.c cVar = (Q3.c) obj;
        d3.i.e("p0", cVar);
        Q3.c cVar2 = s.f146a;
        C.f78a.getClass();
        D d2 = B.f77b;
        Q2.b bVar = new Q2.b(7, 20);
        d3.i.e("configuredReportLevels", d2);
        E e5 = (E) ((g4.j) d2.f81e).e(cVar);
        if (e5 != null) {
            return e5;
        }
        D d5 = s.f148c;
        d5.getClass();
        t tVar = (t) ((g4.j) d5.f81e).e(cVar);
        if (tVar == null) {
            return E.IGNORE;
        }
        Q2.b bVar2 = tVar.f152b;
        return (bVar2 == null || bVar2.f2211e - bVar.f2211e > 0) ? tVar.f151a : tVar.f153c;
    }

    @Override // d3.AbstractC0390b, i3.InterfaceC0481b
    public final String getName() {
        return "getDefaultReportLevelForAnnotation";
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0484e j() {
        return d3.q.f6516a.c(s.class, "compiler.common.jvm");
    }

    @Override // d3.AbstractC0390b
    public final String l() {
        return "getDefaultReportLevelForAnnotation(Lorg/jetbrains/kotlin/name/FqName;)Lorg/jetbrains/kotlin/load/java/ReportLevel;";
    }
}
