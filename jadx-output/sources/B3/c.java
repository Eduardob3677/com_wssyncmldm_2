package B3;

import A3.w;
import E3.s;
import E3.x;
import L3.C0070t;
import L3.Q;
import R2.n;
import R2.o;
import R2.u;
import c3.InterfaceC0221a;
import c3.InterfaceC0222b;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import com.google.firebase.messaging.p;
import f1.AbstractC0420a;
import f4.t;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0470x;
import h4.N;
import h4.V;
import h4.Z;
import i3.C0497r;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import k.Q0;
import l3.AbstractC0647C;
import l3.C0649E;
import l3.C0672b;
import l3.k0;
import l3.l0;
import l3.u0;
import q3.C0754a;
import q3.C0760g;
import q3.C0763j;
import r3.InterfaceC0786N;
import r3.InterfaceC0802e;
import r3.InterfaceC0803f;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import r3.InterfaceC0821x;
import s3.InterfaceC0845h;
import u3.C0867C;
import u3.C0879k;
import u3.C0881m;
import u3.C0890w;
import u3.S;
import x3.y;

/* loaded from: classes.dex */
public final class c extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f224d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f225e;
    public final /* synthetic */ Object f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(Object obj, int i5, Object obj2) {
        super(0);
        this.f224d = i5;
        this.f225e = obj;
        this.f = obj2;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() throws IOException {
        C0497r c0497r;
        switch (this.f224d) {
            case 0:
                AbstractC0472z abstractC0472zQ = ((D3.a) ((D3.e) this.f225e).f499d).f481o.g().i(((d) this.f).f227a).q();
                d3.i.d("c.module.builtIns.getBui…qName(fqName).defaultType", abstractC0472zQ);
                return abstractC0472zQ;
            case 1:
                InterfaceC0845h interfaceC0845hT = ((InterfaceC0803f) this.f).t();
                D3.e eVar = (D3.e) this.f225e;
                d3.i.e("<this>", eVar);
                d3.i.e("additionalAnnotations", interfaceC0845hT);
                return ((D3.a) eVar.f499d).f483q.b((w) ((Q2.c) eVar.f501g).getValue(), interfaceC0845hT);
            case 2:
                D3.e eVar2 = (D3.e) this.f225e;
                d3.i.e("<this>", eVar2);
                InterfaceC0845h interfaceC0845h = (InterfaceC0845h) this.f;
                d3.i.e("additionalAnnotations", interfaceC0845h);
                return ((D3.a) eVar2.f499d).f483q.b((w) ((Q2.c) eVar2.f501g).getValue(), interfaceC0845h);
            case 3:
                return new s(((D3.d) this.f225e).f496a, (y) this.f);
            case 4:
                c1.w wVar = ((D3.a) ((D3.e) this.f225e).f499d).f470b;
                Q3.c cVar = ((x) this.f).f643o.f9353g;
                wVar.getClass();
                d3.i.e("packageFqName", cVar);
                return null;
            case 5:
                G4 g42 = (G4) ((J3.c) this.f225e).f1138d;
                return ((d4.i) g42.f5377c).f6533e.j0((Q) this.f, (N3.f) g42.f5378d);
            case 6:
                f4.i iVar = (f4.i) this.f225e;
                return R2.m.g1(((d4.i) iVar.n.f5377c).f6533e.y(iVar.f6866x, (C0070t) this.f));
            case 7:
                return ((i4.f) this.f225e).a((k4.c) ((C0470x) this.f).f7082e.a());
            case 8:
                Iterable iterable = (List) ((i4.i) this.f225e).f7183e.getValue();
                if (iterable == null) {
                    iterable = u.f2325c;
                }
                ArrayList arrayList = new ArrayList(o.C0(iterable));
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((Z) it.next()).L0((i4.f) this.f));
                }
                return arrayList;
            case 9:
                C0649E c0649e = (C0649E) this.f225e;
                AbstractC0647C abstractC0647C = c0649e.f8108d;
                abstractC0647C.getClass();
                String str = (String) this.f;
                d3.i.e("name", str);
                String str2 = c0649e.f8109e;
                d3.i.e("signature", str2);
                Collection collectionG1 = d3.i.a(str, "<init>") ? R2.m.g1(abstractC0647C.d()) : abstractC0647C.e(Q3.f.e(str));
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : collectionG1) {
                    if (d3.i.a(u0.c((InterfaceC0816s) obj).e(), str2)) {
                        arrayList2.add(obj);
                    }
                }
                if (arrayList2.size() == 1) {
                    return (InterfaceC0816s) R2.m.b1(arrayList2);
                }
                String strS0 = R2.m.S0(collectionG1, "\n", null, null, C0672b.f8151i, 30);
                StringBuilder sb = new StringBuilder("Function '");
                sb.append(str);
                sb.append("' (JVM signature: ");
                sb.append(str2);
                sb.append(") not resolved in ");
                sb.append(abstractC0647C);
                sb.append(':');
                sb.append(strS0.length() == 0 ? " no members found" : "\n".concat(strS0));
                throw new Q2.d(sb.toString(), 2);
            case 10:
                l0 l0Var = (l0) this.f225e;
                List listU0 = l0Var.f8192a.u0();
                if (listU0.isEmpty()) {
                    return u.f2325c;
                }
                Q2.c cVarU = AbstractC0420a.U(2, new k0(0, l0Var));
                ArrayList arrayList3 = new ArrayList(o.C0(listU0));
                int i5 = 0;
                for (Object obj2 : listU0) {
                    int i6 = i5 + 1;
                    if (i5 < 0) {
                        n.B0();
                        throw null;
                    }
                    N n = (N) obj2;
                    if (n.c()) {
                        c0497r = C0497r.f7153c;
                    } else {
                        AbstractC0468v abstractC0468vB = n.b();
                        d3.i.d("typeProjection.type", abstractC0468vB);
                        l0 l0Var2 = new l0(abstractC0468vB, ((InterfaceC0221a) this.f) != null ? new d4.n(l0Var, i5, cVarU) : null);
                        int iF = Q0.f(n.a());
                        if (iF == 0) {
                            c0497r = new C0497r(1, l0Var2);
                        } else if (iF == 1) {
                            c0497r = new C0497r(2, l0Var2);
                        } else {
                            if (iF != 2) {
                                throw new A0.c();
                            }
                            c0497r = new C0497r(3, l0Var2);
                        }
                    }
                    arrayList3.add(c0497r);
                    i5 = i6;
                }
                return arrayList3;
            case 11:
                StringBuilder sb2 = new StringBuilder();
                sb2.append('@');
                sb2.append(((Class) this.f225e).getCanonicalName());
                R2.m.R0(((Map) this.f).entrySet(), sb2, "(", ")", m3.c.f8286d, 48);
                String string = sb2.toString();
                d3.i.d("StringBuilder().apply(builderAction).toString()", string);
                return string;
            case 12:
                C0760g c0760g = (C0760g) this.f225e;
                InterfaceC0222b interfaceC0222b = c0760g.f8664b;
                InterfaceC0821x interfaceC0821x = c0760g.f8663a;
                C0881m c0881m = new C0881m((InterfaceC0807j) interfaceC0222b.e(interfaceC0821x), C0760g.f8661g, 4, 2, AbstractC0420a.V(interfaceC0821x.g().e()), (g4.o) this.f);
                g4.o oVar = (g4.o) this.f;
                d3.i.e("storageManager", oVar);
                c0881m.u0(new C0754a(oVar, c0881m), R2.w.f2327c, null);
                return c0881m;
            case 13:
                C0763j c0763j = (C0763j) this.f225e;
                C0867C c0867cK = c0763j.k();
                d3.i.d("builtInsModule", c0867cK);
                return new q3.n(c0867cK, (g4.o) this.f, new k(26, c0763j));
            case 14:
                q3.n nVar = (q3.n) this.f225e;
                InterfaceC0821x interfaceC0821x2 = nVar.g().f8666a;
                C0760g.f8659d.getClass();
                return o4.a.g(interfaceC0821x2, C0760g.f8662h, new p((g4.o) this.f, nVar.g().f8666a)).q();
            case 15:
                E3.j jVar = (E3.j) this.f225e;
                jVar.getClass();
                D3.e eVar3 = jVar.f597m;
                D3.a aVar = (D3.a) eVar3.f499d;
                aVar.getClass();
                D3.e eVar4 = new D3.e(new D3.a(aVar.f469a, aVar.f470b, aVar.f471c, aVar.f472d, aVar.f473e, aVar.f, aVar.f475h, aVar.f476i, aVar.f477j, aVar.f478k, aVar.f479l, aVar.f480m, aVar.n, aVar.f481o, aVar.f482p, aVar.f483q, aVar.f484r, aVar.f485s, aVar.f486t, aVar.f487u, aVar.f488v, aVar.f489w), (D3.g) eVar3.f500e, (Q2.c) eVar3.f);
                InterfaceC0807j interfaceC0807jL = jVar.l();
                d3.i.d("containingDeclaration", interfaceC0807jL);
                return new E3.j(eVar4, interfaceC0807jL, jVar.f595k, (InterfaceC0802e) this.f);
            default:
                S s5 = (S) this.f225e;
                g4.o oVar2 = s5.f9404G;
                C0879k c0879k = (C0879k) this.f;
                InterfaceC0845h interfaceC0845hT2 = c0879k.t();
                C0879k c0879k2 = (C0879k) this.f;
                int iK0 = c0879k2.k0();
                B.f.E(iK0, "underlyingConstructorDescriptor.kind");
                t tVar = s5.f9405H;
                InterfaceC0786N interfaceC0786NM = tVar.m();
                d3.i.d("typeAliasDescriptor.source", interfaceC0786NM);
                S s6 = new S(oVar2, s5.f9405H, c0879k, s5, interfaceC0845hT2, iK0, interfaceC0786NM);
                S.f9403J.getClass();
                V vD = tVar.Q0() == null ? null : V.d(tVar.R0());
                if (vD == null) {
                    return null;
                }
                C0890w c0890w = c0879k2.f9494l;
                C0890w c0890wB = c0890w != null ? c0890w.b(vD) : null;
                List listV0 = c0879k2.v0();
                d3.i.d("underlyingConstructorDes…contextReceiverParameters", listV0);
                ArrayList arrayList4 = new ArrayList(o.C0(listV0));
                Iterator it2 = listV0.iterator();
                while (it2.hasNext()) {
                    arrayList4.add(((C0890w) it2.next()).b(vD));
                }
                List listS = tVar.s();
                List listW0 = s5.w0();
                AbstractC0468v abstractC0468v = s5.f9491i;
                d3.i.b(abstractC0468v);
                s6.V0(null, c0890wB, arrayList4, listS, listW0, abstractC0468v, 1, tVar.f6900g);
                return s6;
        }
    }
}
