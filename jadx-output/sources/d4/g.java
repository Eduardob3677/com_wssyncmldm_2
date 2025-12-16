package d4;

import A3.C0005d;
import java.util.Set;
import r3.InterfaceC0802e;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: c, reason: collision with root package name */
    public static final Set f6525c = L2.b.I(Q3.b.k(o3.m.f8507c.g()));

    /* renamed from: a, reason: collision with root package name */
    public final i f6526a;

    /* renamed from: b, reason: collision with root package name */
    public final g4.j f6527b;

    public g(i iVar) {
        d3.i.e("components", iVar);
        this.f6526a = iVar;
        this.f6527b = ((g4.l) iVar.f6529a).c(new C0005d(15, this));
    }

    public final InterfaceC0802e a(Q3.b bVar, d dVar) {
        d3.i.e("classId", bVar);
        return (InterfaceC0802e) this.f6527b.e(new f(bVar, dVar));
    }
}
