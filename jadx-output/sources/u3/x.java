package u3;

import c3.InterfaceC0221a;
import i3.InterfaceC0494o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p.AbstractC0735a;
import r3.InterfaceC0775C;

/* loaded from: classes.dex */
public final class x extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f9510d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ y f9511e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x(y yVar, int i5) {
        super(0);
        this.f9510d = i5;
        this.f9511e = yVar;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f9510d) {
            case 0:
                y yVar = this.f9511e;
                C0867C c0867c = yVar.f9513e;
                c0867c.P0();
                return Boolean.valueOf(AbstractC0735a.k((C0882n) c0867c.f9345m.getValue(), yVar.f));
            case 1:
                y yVar2 = this.f9511e;
                C0867C c0867c2 = yVar2.f9513e;
                c0867c2.P0();
                return AbstractC0735a.m((C0882n) c0867c2.f9345m.getValue(), yVar2.f);
            default:
                y yVar3 = this.f9511e;
                g4.i iVar = yVar3.f9515h;
                InterfaceC0494o[] interfaceC0494oArr = y.f9512j;
                if (((Boolean) Z0.j.N(iVar, interfaceC0494oArr[1])).booleanValue()) {
                    return a4.n.f3128b;
                }
                List list = (List) Z0.j.N(yVar3.f9514g, interfaceC0494oArr[0]);
                ArrayList arrayList = new ArrayList(R2.o.C0(list));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((InterfaceC0775C) it.next()).q0());
                }
                C0867C c0867c3 = yVar3.f9513e;
                Q3.c cVar = yVar3.f;
                return Z0.j.u("package view scope for " + cVar + " in " + c0867c3.getName(), R2.m.Z0(arrayList, new O(c0867c3, cVar)));
        }
    }
}
