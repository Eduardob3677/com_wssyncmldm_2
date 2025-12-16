package i4;

import h4.AbstractC0450c;
import h4.AbstractC0472z;
import h4.I;
import h4.V;

/* loaded from: classes.dex */
public final class a extends AbstractC0450c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f7167a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ V f7168b;

    public a(b bVar, V v4) {
        this.f7167a = bVar;
        this.f7168b = v4;
    }

    @Override // h4.AbstractC0450c
    public final k4.d x(I i5, k4.c cVar) {
        d3.i.e("state", i5);
        d3.i.e("type", cVar);
        b bVar = this.f7167a;
        AbstractC0472z abstractC0472zZ = bVar.Z(this.f7168b.h(1, bVar.o(cVar)));
        d3.i.b(abstractC0472zZ);
        return abstractC0472zZ;
    }
}
