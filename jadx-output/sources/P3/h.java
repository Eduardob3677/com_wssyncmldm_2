package P3;

import L3.C;
import L3.C0052a;
import L3.C0061j;
import L3.C0063l;
import L3.C0075y;
import L3.G;
import L3.Q;
import L3.Z;
import O3.j;
import O3.k;
import R2.m;
import R2.n;
import R2.o;
import R3.AbstractC0080b;
import R3.C0084f;
import R3.C0087i;
import R3.C0094p;
import R3.C0098u;
import d3.i;
import f1.AbstractC0420a;
import i3.x;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import s2.C0837c;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final C0087i f2166a;

    static {
        C0087i c0087i = new C0087i();
        c0087i.a(k.f2016a);
        c0087i.a(k.f2017b);
        c0087i.a(k.f2018c);
        c0087i.a(k.f2019d);
        c0087i.a(k.f2020e);
        c0087i.a(k.f);
        c0087i.a(k.f2021g);
        c0087i.a(k.f2022h);
        c0087i.a(k.f2023i);
        c0087i.a(k.f2024j);
        c0087i.a(k.f2025k);
        c0087i.a(k.f2026l);
        c0087i.a(k.f2027m);
        c0087i.a(k.n);
        f2166a = c0087i;
    }

    public static e a(C0063l c0063l, N3.f fVar, C0837c c0837c) {
        String strS0;
        i.e("proto", c0063l);
        i.e("nameResolver", fVar);
        i.e("typeTable", c0837c);
        C0094p c0094p = k.f2016a;
        i.d("constructorSignature", c0094p);
        O3.c cVar = (O3.c) AbstractC0420a.C(c0063l, c0094p);
        String strR = (cVar == null || (cVar.f1966d & 1) != 1) ? "<init>" : fVar.r(cVar.f1967e);
        if (cVar == null || (cVar.f1966d & 2) != 2) {
            List<Z> list = c0063l.f1715g;
            i.d("proto.valueParameterList", list);
            ArrayList arrayList = new ArrayList(o.C0(list));
            for (Z z4 : list) {
                i.d("it", z4);
                String strE = e(x.h1(z4, c0837c), fVar);
                if (strE == null) {
                    return null;
                }
                arrayList.add(strE);
            }
            strS0 = m.S0(arrayList, "", "(", ")V", null, 56);
        } else {
            strS0 = fVar.r(cVar.f);
        }
        return new e(strR, strS0);
    }

    public static d b(G g5, N3.f fVar, C0837c c0837c, boolean z4) {
        String strE;
        i.e("proto", g5);
        i.e("nameResolver", fVar);
        i.e("typeTable", c0837c);
        C0094p c0094p = k.f2019d;
        i.d("propertySignature", c0094p);
        O3.e eVar = (O3.e) AbstractC0420a.C(g5, c0094p);
        if (eVar == null) {
            return null;
        }
        O3.b bVar = (eVar.f1978d & 1) == 1 ? eVar.f1979e : null;
        if (bVar == null && z4) {
            return null;
        }
        int i5 = (bVar == null || (bVar.f1959d & 1) != 1) ? g5.f1408h : bVar.f1960e;
        if (bVar == null || (bVar.f1959d & 2) != 2) {
            strE = e(x.X0(g5, c0837c), fVar);
            if (strE == null) {
                return null;
            }
        } else {
            strE = fVar.r(bVar.f);
        }
        return new d(fVar.r(i5), strE);
    }

    public static e c(C0075y c0075y, N3.f fVar, C0837c c0837c) {
        String strConcat;
        i.e("proto", c0075y);
        i.e("nameResolver", fVar);
        i.e("typeTable", c0837c);
        C0094p c0094p = k.f2017b;
        i.d("methodSignature", c0094p);
        O3.c cVar = (O3.c) AbstractC0420a.C(c0075y, c0094p);
        int i5 = (cVar == null || (cVar.f1966d & 1) != 1) ? c0075y.f1794h : cVar.f1967e;
        if (cVar == null || (cVar.f1966d & 2) != 2) {
            List listZ0 = n.z0(x.O0(c0075y, c0837c));
            List<Z> list = c0075y.f1802q;
            i.d("proto.valueParameterList", list);
            ArrayList arrayList = new ArrayList(o.C0(list));
            for (Z z4 : list) {
                i.d("it", z4);
                arrayList.add(x.h1(z4, c0837c));
            }
            ArrayList arrayListY0 = m.Y0(listZ0, arrayList);
            ArrayList arrayList2 = new ArrayList(o.C0(arrayListY0));
            Iterator it = arrayListY0.iterator();
            while (it.hasNext()) {
                String strE = e((Q) it.next(), fVar);
                if (strE == null) {
                    return null;
                }
                arrayList2.add(strE);
            }
            String strE2 = e(x.W0(c0075y, c0837c), fVar);
            if (strE2 == null) {
                return null;
            }
            strConcat = m.S0(arrayList2, "", "(", ")", null, 56).concat(strE2);
        } else {
            strConcat = fVar.r(cVar.f);
        }
        return new e(fVar.r(i5), strConcat);
    }

    public static final boolean d(G g5) {
        i.e("proto", g5);
        N3.b bVar = c.f2156a;
        N3.b bVar2 = c.f2156a;
        Object objK = g5.k(k.f2020e);
        i.d("proto.getExtension(JvmProtoBuf.flags)", objK);
        return bVar2.c(((Number) objK).intValue()).booleanValue();
    }

    public static String e(Q q2, N3.f fVar) {
        if (q2.q()) {
            return b.b(fVar.x0(q2.f1484k));
        }
        return null;
    }

    public static final Q2.e f(String[] strArr, String[] strArr2) throws C0098u {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(a.b(strArr));
        g gVarG = g(byteArrayInputStream, strArr2);
        C0052a c0052a = C0061j.f1676M;
        c0052a.getClass();
        C0084f c0084f = new C0084f(byteArrayInputStream);
        AbstractC0080b abstractC0080b = (AbstractC0080b) c0052a.a(c0084f, f2166a);
        try {
            c0084f.a(0);
            if (abstractC0080b.b()) {
                return new Q2.e(gVarG, (C0061j) abstractC0080b);
            }
            C0098u c0098u = new C0098u(new A0.c().getMessage());
            c0098u.f2416c = abstractC0080b;
            throw c0098u;
        } catch (C0098u e5) {
            e5.f2416c = abstractC0080b;
            throw e5;
        }
    }

    public static g g(ByteArrayInputStream byteArrayInputStream, String[] strArr) {
        j jVar = (j) j.f2010j.b(byteArrayInputStream, f2166a);
        i.d("parseDelimitedFrom(this, EXTENSION_REGISTRY)", jVar);
        return new g(jVar, strArr);
    }

    public static final Q2.e h(String[] strArr, String[] strArr2) throws C0098u {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(a.b(strArr));
        g gVarG = g(byteArrayInputStream, strArr2);
        C0052a c0052a = C.n;
        c0052a.getClass();
        C0084f c0084f = new C0084f(byteArrayInputStream);
        AbstractC0080b abstractC0080b = (AbstractC0080b) c0052a.a(c0084f, f2166a);
        try {
            c0084f.a(0);
            if (abstractC0080b.b()) {
                return new Q2.e(gVarG, (C) abstractC0080b);
            }
            C0098u c0098u = new C0098u(new A0.c().getMessage());
            c0098u.f2416c = abstractC0080b;
            throw c0098u;
        } catch (C0098u e5) {
            e5.f2416c = abstractC0080b;
            throw e5;
        }
    }
}
