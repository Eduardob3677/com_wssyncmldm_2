package s3;

import c3.InterfaceC0222b;
import h4.T;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: s3.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0849l implements InterfaceC0845h {

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0845h f9049c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC0222b f9050d;

    public C0849l(InterfaceC0845h interfaceC0845h, T t2) {
        this.f9049c = interfaceC0845h;
        this.f9050d = t2;
    }

    @Override // s3.InterfaceC0845h
    public final boolean b(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        if (((Boolean) this.f9050d.e(cVar)).booleanValue()) {
            return this.f9049c.b(cVar);
        }
        return false;
    }

    @Override // s3.InterfaceC0845h
    public final InterfaceC0839b f(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        if (((Boolean) this.f9050d.e(cVar)).booleanValue()) {
            return this.f9049c.f(cVar);
        }
        return null;
    }

    @Override // s3.InterfaceC0845h
    public final boolean isEmpty() {
        InterfaceC0845h interfaceC0845h = this.f9049c;
        if ((interfaceC0845h instanceof Collection) && ((Collection) interfaceC0845h).isEmpty()) {
            return false;
        }
        Iterator it = interfaceC0845h.iterator();
        while (it.hasNext()) {
            Q3.c cVarA = ((InterfaceC0839b) it.next()).a();
            if (cVarA != null && ((Boolean) this.f9050d.e(cVarA)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.f9049c) {
            Q3.c cVarA = ((InterfaceC0839b) obj).a();
            if (cVarA != null && ((Boolean) this.f9050d.e(cVarA)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList.iterator();
    }
}
