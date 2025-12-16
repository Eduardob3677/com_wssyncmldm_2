package f4;

import c3.InterfaceC0221a;
import i3.InterfaceC0494o;
import java.util.Iterator;
import java.util.List;
import s3.InterfaceC0839b;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public class a implements InterfaceC0845h {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f6832d;

    /* renamed from: c, reason: collision with root package name */
    public final g4.i f6833c;

    static {
        d3.r rVar = d3.q.f6516a;
        f6832d = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(a.class), "annotations", "getAnnotations()Ljava/util/List;"))};
    }

    public a(g4.o oVar, InterfaceC0221a interfaceC0221a) {
        d3.i.e("storageManager", oVar);
        this.f6833c = new g4.i((g4.l) oVar, interfaceC0221a);
    }

    @Override // s3.InterfaceC0845h
    public final boolean b(Q3.c cVar) {
        return o4.a.n(this, cVar);
    }

    @Override // s3.InterfaceC0845h
    public final InterfaceC0839b f(Q3.c cVar) {
        return o4.a.c(this, cVar);
    }

    @Override // s3.InterfaceC0845h
    public boolean isEmpty() {
        return ((List) Z0.j.N(this.f6833c, f6832d[0])).isEmpty();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return ((List) Z0.j.N(this.f6833c, f6832d[0])).iterator();
    }
}
