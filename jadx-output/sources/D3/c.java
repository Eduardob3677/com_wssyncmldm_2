package D3;

import A3.C0005d;
import d3.i;
import g4.j;
import g4.l;
import java.util.Iterator;
import r4.k;
import r4.m;
import r4.o;
import r4.r;
import s3.InterfaceC0839b;
import s3.InterfaceC0845h;
import x3.C0918e;

/* loaded from: classes.dex */
public final class c implements InterfaceC0845h {

    /* renamed from: c, reason: collision with root package name */
    public final e f493c;

    /* renamed from: d, reason: collision with root package name */
    public final H3.b f494d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f495e;
    public final j f;

    public c(e eVar, H3.b bVar, boolean z4) {
        i.e("c", eVar);
        i.e("annotationOwner", bVar);
        this.f493c = eVar;
        this.f494d = bVar;
        this.f495e = z4;
        this.f = ((l) ((a) eVar.f499d).f469a).c(new C0005d(2, this));
    }

    @Override // s3.InterfaceC0845h
    public final boolean b(Q3.c cVar) {
        return o4.a.n(this, cVar);
    }

    @Override // s3.InterfaceC0845h
    public final InterfaceC0839b f(Q3.c cVar) {
        InterfaceC0839b interfaceC0839b;
        i.e("fqName", cVar);
        H3.b bVar = this.f494d;
        C0918e c0918eV = bVar.v(cVar);
        if (c0918eV != null && (interfaceC0839b = (InterfaceC0839b) this.f.e(c0918eV)) != null) {
            return interfaceC0839b;
        }
        Q3.f fVar = B3.e.f231a;
        return B3.e.a(cVar, bVar, this.f493c);
    }

    @Override // s3.InterfaceC0845h
    public final boolean isEmpty() {
        return this.f494d.t().isEmpty();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        H3.b bVar = this.f494d;
        r rVarL = m.l(R2.m.G0(bVar.t()), this.f);
        Q3.f fVar = B3.e.f231a;
        return new r4.e(new r4.f(m.j(R2.i.h0(new k[]{rVarL, R2.i.h0(new Object[]{B3.e.a(o3.m.f8517m, bVar, this.f493c)})})), false, o.f8862g));
    }
}
