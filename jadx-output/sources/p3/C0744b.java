package p3;

import R2.m;
import R2.n;
import R2.o;
import R2.u;
import d3.i;
import f1.AbstractC0420a;
import h4.AbstractC0449b;
import h4.C0451d;
import h4.G;
import h4.O;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import r3.C0787O;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0821x;
import u3.E;

/* renamed from: p3.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0744b extends AbstractC0449b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0745c f8581c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0744b(C0745c c0745c) {
        super(c0745c.f8583g);
        this.f8581c = c0745c;
    }

    @Override // h4.AbstractC0454g
    public final Collection b() {
        List<Q3.b> listV;
        Iterable iterableV;
        C0745c c0745c = this.f8581c;
        int iOrdinal = c0745c.f8585i.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            listV = AbstractC0420a.V(C0745c.n);
        } else {
            int i5 = c0745c.f8586j;
            if (iOrdinal == 2) {
                listV = n.y0(C0745c.f8582o, new Q3.b(o3.n.f8538j, EnumC0747e.f.a(i5)));
            } else {
                if (iOrdinal != 3) {
                    throw new A0.c();
                }
                listV = n.y0(C0745c.f8582o, new Q3.b(o3.n.f8534e, EnumC0747e.f8593g.a(i5)));
            }
        }
        InterfaceC0821x interfaceC0821xL = ((E) c0745c.f8584h).l();
        ArrayList arrayList = new ArrayList(o.C0(listV));
        for (Q3.b bVar : listV) {
            InterfaceC0802e interfaceC0802eE = o4.a.e(interfaceC0821xL, bVar);
            if (interfaceC0802eE == null) {
                throw new IllegalStateException(("Built-in class " + bVar + " not found").toString());
            }
            int size = interfaceC0802eE.H().k().size();
            List list = c0745c.f8589m;
            i.e("<this>", list);
            if (size < 0) {
                throw new IllegalArgumentException(("Requested element count " + size + " is less than zero.").toString());
            }
            if (size == 0) {
                iterableV = u.f2325c;
            } else {
                int size2 = list.size();
                if (size >= size2) {
                    iterableV = m.g1(list);
                } else if (size == 1) {
                    iterableV = AbstractC0420a.V(m.U0(list));
                } else {
                    ArrayList arrayList2 = new ArrayList(size);
                    if (list instanceof RandomAccess) {
                        for (int i6 = size2 - size; i6 < size2; i6++) {
                            arrayList2.add(list.get(i6));
                        }
                    } else {
                        ListIterator listIterator = list.listIterator(size2 - size);
                        while (listIterator.hasNext()) {
                            arrayList2.add(listIterator.next());
                        }
                    }
                    iterableV = arrayList2;
                }
            }
            ArrayList arrayList3 = new ArrayList(o.C0(iterableV));
            Iterator it = iterableV.iterator();
            while (it.hasNext()) {
                arrayList3.add(new O(((InterfaceC0789Q) it.next()).q()));
            }
            G.f7019d.getClass();
            arrayList.add(C0451d.q(G.f7020e, interfaceC0802eE, arrayList3));
        }
        return m.g1(arrayList);
    }

    @Override // h4.AbstractC0454g
    public final C0787O d() {
        return C0787O.f8792e;
    }

    @Override // h4.J
    public final boolean h() {
        return true;
    }

    @Override // h4.AbstractC0449b, h4.J
    public final InterfaceC0804g i() {
        return this.f8581c;
    }

    @Override // h4.J
    public final List k() {
        return this.f8581c.f8589m;
    }

    @Override // h4.AbstractC0449b
    /* renamed from: n */
    public final InterfaceC0802e i() {
        return this.f8581c;
    }

    public final String toString() {
        return this.f8581c.toString();
    }
}
