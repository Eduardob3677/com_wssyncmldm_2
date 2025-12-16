package b4;

import d3.i;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import r3.InterfaceC0802e;
import u3.AbstractC0870b;

/* loaded from: classes.dex */
public final class c implements d {

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0802e f5156c;

    public c(AbstractC0870b abstractC0870b) {
        i.e("classDescriptor", abstractC0870b);
        this.f5156c = abstractC0870b;
    }

    @Override // b4.d
    public final AbstractC0468v e() {
        AbstractC0472z abstractC0472zQ = this.f5156c.q();
        i.d("classDescriptor.defaultType", abstractC0472zQ);
        return abstractC0472zQ;
    }

    public final boolean equals(Object obj) {
        c cVar = obj instanceof c ? (c) obj : null;
        return i.a(this.f5156c, cVar != null ? cVar.f5156c : null);
    }

    public final int hashCode() {
        return this.f5156c.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Class{");
        AbstractC0472z abstractC0472zQ = this.f5156c.q();
        i.d("classDescriptor.defaultType", abstractC0472zQ);
        sb.append(abstractC0472zQ);
        sb.append('}');
        return sb.toString();
    }
}
