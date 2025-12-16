package E3;

import c3.InterfaceC0221a;
import java.util.ArrayList;
import java.util.Iterator;
import p0.AbstractC0739a;
import r3.InterfaceC0789Q;
import x3.C0911C;

/* renamed from: E3.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0024g extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f589d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j f590e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0024g(j jVar, int i5) {
        super(0);
        this.f589d = i5;
        this.f590e = jVar;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f589d) {
            case 0:
                return AbstractC0739a.f(this.f590e);
            case 1:
                j jVar = this.f590e;
                ArrayList arrayListU = jVar.f595k.u();
                ArrayList arrayList = new ArrayList(R2.o.C0(arrayListU));
                Iterator it = arrayListU.iterator();
                while (it.hasNext()) {
                    C0911C c0911c = (C0911C) it.next();
                    InterfaceC0789Q interfaceC0789QA = ((D3.g) jVar.f597m.f500e).a(c0911c);
                    if (interfaceC0789QA == null) {
                        throw new AssertionError("Parameter " + c0911c + " surely belongs to class " + jVar.f595k + ", so it must be resolved");
                    }
                    arrayList.add(interfaceC0789QA);
                }
                return arrayList;
            default:
                j jVar2 = this.f590e;
                if (X3.f.f(jVar2) == null) {
                    return null;
                }
                ((D3.a) jVar2.f594j.f499d).f489w.getClass();
                return null;
        }
    }
}
