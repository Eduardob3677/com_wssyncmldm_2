package p3;

import R2.m;
import R2.o;
import d3.i;
import h4.AbstractC0468v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n4.s;
import o3.AbstractC0729f;
import r3.InterfaceC0786N;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import s3.C0844g;
import s3.InterfaceC0845h;
import u3.AbstractC0889v;
import u3.C0888u;
import u3.N;
import u3.V;

/* renamed from: p3.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0749g extends N {
    public C0749g(InterfaceC0807j interfaceC0807j, C0749g c0749g, int i5, boolean z4) {
        super(interfaceC0807j, c0749g, C0844g.f9041a, s.f8380g, i5, InterfaceC0786N.f8790a);
        this.f9496o = true;
        this.f9505x = z4;
        this.f9506y = false;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0820w
    public final boolean D() {
        return false;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0816s
    public final boolean O() {
        return false;
    }

    @Override // u3.N, u3.AbstractC0889v
    public final AbstractC0889v S0(int i5, Q3.f fVar, InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, InterfaceC0786N interfaceC0786N, InterfaceC0845h interfaceC0845h) {
        i.e("newOwner", interfaceC0807j);
        B.f.x(i5, "kind");
        i.e("annotations", interfaceC0845h);
        return new C0749g(interfaceC0807j, (C0749g) interfaceC0816s, i5, this.f9505x);
    }

    @Override // u3.AbstractC0889v
    public final AbstractC0889v T0(C0888u c0888u) {
        Q3.f fVar;
        i.e("configuration", c0888u);
        C0749g c0749g = (C0749g) super.T0(c0888u);
        if (c0749g == null) {
            return null;
        }
        List listW0 = c0749g.w0();
        i.d("substituted.valueParameters", listW0);
        if (listW0.isEmpty()) {
            return c0749g;
        }
        Iterator it = listW0.iterator();
        while (it.hasNext()) {
            AbstractC0468v abstractC0468vE = ((V) it.next()).e();
            i.d("it.type", abstractC0468vE);
            if (AbstractC0729f.f(abstractC0468vE) != null) {
                List listW02 = c0749g.w0();
                i.d("substituted.valueParameters", listW02);
                ArrayList arrayList = new ArrayList(o.C0(listW02));
                Iterator it2 = listW02.iterator();
                while (it2.hasNext()) {
                    AbstractC0468v abstractC0468vE2 = ((V) it2.next()).e();
                    i.d("it.type", abstractC0468vE2);
                    arrayList.add(AbstractC0729f.f(abstractC0468vE2));
                }
                int size = c0749g.w0().size() - arrayList.size();
                boolean z4 = true;
                if (size == 0) {
                    List listW03 = c0749g.w0();
                    i.d("valueParameters", listW03);
                    ArrayList arrayListL1 = m.l1(arrayList, listW03);
                    if (arrayListL1.isEmpty()) {
                        return c0749g;
                    }
                    Iterator it3 = arrayListL1.iterator();
                    while (it3.hasNext()) {
                        Q2.e eVar = (Q2.e) it3.next();
                        if (!i.a((Q3.f) eVar.f2212c, ((V) eVar.f2213d).getName())) {
                        }
                    }
                    return c0749g;
                }
                List<V> listW04 = c0749g.w0();
                i.d("valueParameters", listW04);
                ArrayList arrayList2 = new ArrayList(o.C0(listW04));
                for (V v4 : listW04) {
                    Q3.f name = v4.getName();
                    i.d("it.name", name);
                    int i5 = v4.f9408h;
                    int i6 = i5 - size;
                    if (i6 >= 0 && (fVar = (Q3.f) arrayList.get(i6)) != null) {
                        name = fVar;
                    }
                    arrayList2.add(v4.Q0(c0749g, name, i5));
                }
                C0888u c0888uW0 = c0749g.W0(h4.V.f7041b);
                if (arrayList.isEmpty()) {
                    z4 = false;
                } else {
                    Iterator it4 = arrayList.iterator();
                    while (it4.hasNext()) {
                        if (((Q3.f) it4.next()) == null) {
                            break;
                        }
                    }
                    z4 = false;
                }
                c0888uW0.f9481x = Boolean.valueOf(z4);
                c0888uW0.f9467i = arrayList2;
                c0888uW0.f9465g = c0749g.a();
                AbstractC0889v abstractC0889vT0 = super.T0(c0888uW0);
                i.b(abstractC0889vT0);
                return abstractC0889vT0;
            }
        }
        return c0749g;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0816s
    public final boolean j() {
        return false;
    }
}
