package s3;

import R2.t;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import r3.C0777E;
import r4.p;

/* renamed from: s3.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0846i implements InterfaceC0845h {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f9042c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f9043d;

    public /* synthetic */ C0846i(int i5, Object obj) {
        this.f9042c = i5;
        this.f9043d = obj;
    }

    @Override // s3.InterfaceC0845h
    public final boolean b(Q3.c cVar) {
        switch (this.f9042c) {
            case 1:
                d3.i.e("fqName", cVar);
                Iterator it = ((Iterable) R2.m.G0((List) this.f9043d).f2323b).iterator();
                while (it.hasNext()) {
                    if (((InterfaceC0845h) it.next()).b(cVar)) {
                        break;
                    }
                }
                break;
        }
        return o4.a.n(this, cVar);
    }

    @Override // s3.InterfaceC0845h
    public final InterfaceC0839b f(Q3.c cVar) {
        switch (this.f9042c) {
            case 0:
                return o4.a.c(this, cVar);
            case 1:
                d3.i.e("fqName", cVar);
                r4.e eVar = new r4.e(r4.m.m(R2.m.G0((List) this.f9043d), new C0777E(cVar, 1)));
                return (InterfaceC0839b) (!eVar.hasNext() ? null : eVar.next());
            default:
                d3.i.e("fqName", cVar);
                if (d3.i.a(cVar, (Q3.c) this.f9043d)) {
                    return I3.b.f883a;
                }
                return null;
        }
    }

    @Override // s3.InterfaceC0845h
    public final boolean isEmpty() {
        switch (this.f9042c) {
            case 0:
                return ((List) this.f9043d).isEmpty();
            case 1:
                List list = (List) this.f9043d;
                if ((list instanceof Collection) && list.isEmpty()) {
                    return true;
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (!((InterfaceC0845h) it.next()).isEmpty()) {
                        return false;
                    }
                }
                return true;
            default:
                return false;
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f9042c) {
            case 0:
                return ((List) this.f9043d).iterator();
            case 1:
                return new r4.g(new r4.h(R2.m.G0((List) this.f9043d), C0848k.f9048d, p.f8864l));
            default:
                return t.f2324c;
        }
    }

    public String toString() {
        switch (this.f9042c) {
            case 0:
                return ((List) this.f9043d).toString();
            default:
                return super.toString();
        }
    }

    public C0846i(InterfaceC0845h[] interfaceC0845hArr) {
        this.f9042c = 1;
        this.f9043d = R2.i.w0(interfaceC0845hArr);
    }
}
