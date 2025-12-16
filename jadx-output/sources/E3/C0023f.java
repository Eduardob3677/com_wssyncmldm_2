package E3;

import h4.AbstractC0450c;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.N;
import i3.InterfaceC0494o;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import o3.AbstractC0732i;
import r3.InterfaceC0786N;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import s3.InterfaceC0839b;
import u3.V;
import x3.AbstractC0917d;
import x3.C0913E;
import x3.C0918e;

/* renamed from: E3.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0023f implements InterfaceC0839b, C3.h {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f582h;

    /* renamed from: a, reason: collision with root package name */
    public final D3.e f583a;

    /* renamed from: b, reason: collision with root package name */
    public final C0918e f584b;

    /* renamed from: c, reason: collision with root package name */
    public final g4.h f585c;

    /* renamed from: d, reason: collision with root package name */
    public final g4.i f586d;

    /* renamed from: e, reason: collision with root package name */
    public final w3.f f587e;
    public final g4.i f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f588g;

    static {
        d3.r rVar = d3.q.f6516a;
        f582h = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(C0023f.class), "fqName", "getFqName()Lorg/jetbrains/kotlin/name/FqName;")), rVar.e(new d3.n(rVar.b(C0023f.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;")), rVar.e(new d3.n(rVar.b(C0023f.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};
    }

    public C0023f(D3.e eVar, C0918e c0918e, boolean z4) {
        d3.i.e("c", eVar);
        d3.i.e("javaAnnotation", c0918e);
        this.f583a = eVar;
        this.f584b = c0918e;
        D3.a aVar = (D3.a) eVar.f499d;
        g4.o oVar = aVar.f469a;
        C0022e c0022e = new C0022e(this, 1);
        g4.l lVar = (g4.l) oVar;
        lVar.getClass();
        this.f585c = new g4.h(lVar, c0022e);
        C0022e c0022e2 = new C0022e(this, 2);
        g4.o oVar2 = aVar.f469a;
        g4.l lVar2 = (g4.l) oVar2;
        lVar2.getClass();
        this.f586d = new g4.i(lVar2, c0022e2);
        this.f587e = aVar.f477j.c(c0918e);
        C0022e c0022e3 = new C0022e(this, 0);
        g4.l lVar3 = (g4.l) oVar2;
        lVar3.getClass();
        this.f = new g4.i(lVar3, c0022e3);
        this.f588g = z4;
    }

    @Override // s3.InterfaceC0839b
    public final Q3.c a() {
        g4.h hVar = this.f585c;
        InterfaceC0494o interfaceC0494o = f582h[0];
        d3.i.e("<this>", hVar);
        d3.i.e("p", interfaceC0494o);
        return (Q3.c) hVar.a();
    }

    @Override // s3.InterfaceC0839b
    public final Map b() {
        return (Map) Z0.j.N(this.f, f582h[2]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V3.g c(H3.a aVar) {
        AbstractC0468v abstractC0468vH;
        if (aVar instanceof x3.v) {
            return V3.h.f2798a.b(((x3.v) aVar).f9673b, null);
        }
        if (aVar instanceof x3.t) {
            x3.t tVar = (x3.t) aVar;
            Class<?> enclosingClass = tVar.f9671b.getClass();
            if (!enclosingClass.isEnum()) {
                enclosingClass = enclosingClass.getEnclosingClass();
            }
            d3.i.d("enumClass", enclosingClass);
            return new V3.i(AbstractC0917d.a(enclosingClass), Q3.f.e(tVar.f9671b.name()));
        }
        boolean z4 = aVar instanceof x3.h;
        D3.e eVar = this.f583a;
        if (!z4) {
            if (aVar instanceof x3.g) {
                return new V3.a((Object) new C0023f(eVar, new C0918e(((x3.g) aVar).f9656b), false));
            }
            if (!(aVar instanceof x3.p)) {
                return null;
            }
            Class cls = ((x3.p) aVar).f9667b;
            d3.i.e("type", cls);
            AbstractC0468v abstractC0468vK = ((com.google.firebase.messaging.p) eVar.f502h).K(cls.isPrimitive() ? new x3.z(cls) : ((cls instanceof GenericArrayType) || cls.isArray()) ? new x3.i(cls) : cls instanceof WildcardType ? new C0913E((WildcardType) cls) : new x3.q(cls), L2.b.N(2, false, false, null, 7));
            if (AbstractC0450c.i(abstractC0468vK)) {
                return null;
            }
            AbstractC0468v abstractC0468vB = abstractC0468vK;
            int i5 = 0;
            while (AbstractC0732i.y(abstractC0468vB)) {
                abstractC0468vB = ((N) R2.m.b1(abstractC0468vB.u0())).b();
                d3.i.d("type.arguments.single().type", abstractC0468vB);
                i5++;
            }
            InterfaceC0804g interfaceC0804gI = abstractC0468vB.J0().i();
            if (interfaceC0804gI instanceof InterfaceC0802e) {
                Q3.b bVarF = X3.f.f(interfaceC0804gI);
                return bVarF == null ? new V3.r(new V3.o(abstractC0468vK)) : new V3.r(bVarF, i5);
            }
            if (interfaceC0804gI instanceof InterfaceC0789Q) {
                return new V3.r(Q3.b.k(o3.m.f8503a.g()), 0);
            }
            return null;
        }
        x3.h hVar = (x3.h) aVar;
        Q3.f fVar = hVar.f9655a;
        if (fVar == null) {
            fVar = A3.z.f166b;
        }
        d3.i.d("argument.name ?: DEFAULT_ANNOTATION_MEMBER_NAME", fVar);
        ArrayList arrayListA = hVar.a();
        AbstractC0472z abstractC0472z = (AbstractC0472z) Z0.j.N(this.f586d, f582h[1]);
        d3.i.d("type", abstractC0472z);
        if (AbstractC0450c.i(abstractC0472z)) {
            return null;
        }
        InterfaceC0802e interfaceC0802eD = X3.f.d(this);
        d3.i.b(interfaceC0802eD);
        V vB = i3.x.B(fVar, interfaceC0802eD);
        if (vB == null || (abstractC0468vH = vB.e()) == null) {
            abstractC0468vH = ((D3.a) eVar.f499d).f481o.g().h(j4.i.c(j4.h.f7622F, new String[0]));
        }
        ArrayList arrayList = new ArrayList(R2.o.C0(arrayListA));
        Iterator it = arrayListA.iterator();
        while (it.hasNext()) {
            V3.g gVarC = c((H3.a) it.next());
            if (gVarC == null) {
                gVarC = new V3.t(null);
            }
            arrayList.add(gVarC);
        }
        return new V3.w(arrayList, abstractC0468vH);
    }

    @Override // s3.InterfaceC0839b
    public final AbstractC0468v e() {
        return (AbstractC0472z) Z0.j.N(this.f586d, f582h[1]);
    }

    @Override // s3.InterfaceC0839b
    public final InterfaceC0786N m() {
        return this.f587e;
    }

    public final String toString() {
        return S3.g.f2622c.x(this, null);
    }
}
