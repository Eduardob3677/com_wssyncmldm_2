package u3;

import c3.InterfaceC0221a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import r3.InterfaceC0776D;

/* renamed from: u3.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0866B extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f9336d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractC0883o f9337e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0866B(AbstractC0883o abstractC0883o, int i5) {
        super(0);
        this.f9336d = i5;
        this.f9337e = abstractC0883o;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f9336d) {
            case 0:
                C0867C c0867c = (C0867C) this.f9337e;
                e.v vVar = c0867c.f9341i;
                if (vVar == null) {
                    StringBuilder sb = new StringBuilder("Dependencies of module ");
                    String str = c0867c.getName().f2242c;
                    d3.i.d("name.toString()", str);
                    sb.append(str);
                    sb.append(" were not set before querying module content");
                    throw new AssertionError(sb.toString());
                }
                c0867c.P0();
                List list = (List) vVar.f6792c;
                list.contains(c0867c);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((C0867C) it.next()).getClass();
                }
                ArrayList arrayList = new ArrayList(R2.o.C0(list));
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    InterfaceC0776D interfaceC0776D = ((C0867C) it2.next()).f9342j;
                    d3.i.b(interfaceC0776D);
                    arrayList.add(interfaceC0776D);
                }
                return new C0882n("CompositeProvider@ModuleDescriptor for " + c0867c.getName(), arrayList);
            default:
                return (List) ((U) this.f9337e).n.getValue();
        }
    }
}
