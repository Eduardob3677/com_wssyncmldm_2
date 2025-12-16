package V3;

import h4.AbstractC0468v;
import h4.AbstractC0472z;
import r3.InterfaceC0802e;
import r3.InterfaceC0821x;

/* loaded from: classes.dex */
public final class i extends g {

    /* renamed from: b, reason: collision with root package name */
    public final Q3.b f2799b;

    /* renamed from: c, reason: collision with root package name */
    public final Q3.f f2800c;

    public i(Q3.b bVar, Q3.f fVar) {
        super(new Q2.e(bVar, fVar));
        this.f2799b = bVar;
        this.f2800c = fVar;
    }

    @Override // V3.g
    public final AbstractC0468v a(InterfaceC0821x interfaceC0821x) {
        d3.i.e("module", interfaceC0821x);
        Q3.b bVar = this.f2799b;
        InterfaceC0802e interfaceC0802eE = o4.a.e(interfaceC0821x, bVar);
        AbstractC0472z abstractC0472zQ = null;
        if (interfaceC0802eE != null) {
            if (!T3.e.o(interfaceC0802eE, 3)) {
                interfaceC0802eE = null;
            }
            if (interfaceC0802eE != null) {
                abstractC0472zQ = interfaceC0802eE.q();
            }
        }
        if (abstractC0472zQ != null) {
            return abstractC0472zQ;
        }
        j4.h hVar = j4.h.f7620C;
        String string = bVar.toString();
        d3.i.d("enumClassId.toString()", string);
        String str = this.f2800c.f2242c;
        d3.i.d("enumEntryName.toString()", str);
        return j4.i.c(hVar, string, str);
    }

    @Override // V3.g
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2799b.j());
        sb.append('.');
        sb.append(this.f2800c);
        return sb.toString();
    }
}
