package u3;

import c3.InterfaceC0221a;
import h4.AbstractC0450c;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p.AbstractC0735a;
import r3.AbstractC0811n;
import r3.InterfaceC0786N;
import r3.InterfaceC0789Q;
import r3.InterfaceC0798a;
import r3.InterfaceC0807j;
import r3.InterfaceC0809l;
import r3.InterfaceC0815r;
import r3.InterfaceC0816s;
import s3.InterfaceC0845h;

/* renamed from: u3.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0889v extends AbstractC0884p implements InterfaceC0816s {

    /* renamed from: A, reason: collision with root package name */
    public Collection f9484A;

    /* renamed from: B, reason: collision with root package name */
    public volatile InterfaceC0221a f9485B;

    /* renamed from: C, reason: collision with root package name */
    public final InterfaceC0816s f9486C;

    /* renamed from: D, reason: collision with root package name */
    public final int f9487D;
    public InterfaceC0816s E;

    /* renamed from: F, reason: collision with root package name */
    public Map f9488F;

    /* renamed from: g, reason: collision with root package name */
    public List f9489g;

    /* renamed from: h, reason: collision with root package name */
    public List f9490h;

    /* renamed from: i, reason: collision with root package name */
    public AbstractC0468v f9491i;

    /* renamed from: j, reason: collision with root package name */
    public List f9492j;

    /* renamed from: k, reason: collision with root package name */
    public C0890w f9493k;

    /* renamed from: l, reason: collision with root package name */
    public C0890w f9494l;

    /* renamed from: m, reason: collision with root package name */
    public int f9495m;
    public A3.p n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f9496o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f9497p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f9498q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f9499r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f9500s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f9501t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f9502u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f9503v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f9504w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f9505x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f9506y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f9507z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC0889v(int i5, Q3.f fVar, InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, InterfaceC0786N interfaceC0786N, InterfaceC0845h interfaceC0845h) {
        super(interfaceC0807j, interfaceC0845h, fVar, interfaceC0786N);
        if (interfaceC0807j == null) {
            I0(0);
            throw null;
        }
        if (interfaceC0845h == null) {
            I0(1);
            throw null;
        }
        if (fVar == null) {
            I0(2);
            throw null;
        }
        if (i5 == 0) {
            I0(3);
            throw null;
        }
        if (interfaceC0786N == null) {
            I0(4);
            throw null;
        }
        this.n = AbstractC0811n.f8816i;
        this.f9496o = false;
        this.f9497p = false;
        this.f9498q = false;
        this.f9499r = false;
        this.f9500s = false;
        this.f9501t = false;
        this.f9502u = false;
        this.f9503v = false;
        this.f9504w = false;
        this.f9505x = false;
        this.f9506y = true;
        this.f9507z = false;
        this.f9484A = null;
        this.f9485B = null;
        this.E = null;
        this.f9488F = null;
        this.f9486C = interfaceC0816s == null ? this : interfaceC0816s;
        this.f9487D = i5;
    }

    public static /* synthetic */ void I0(int i5) {
        String str;
        int i6;
        switch (i5) {
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i5) {
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                i6 = 2;
                break;
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                i6 = 3;
                break;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = "source";
                break;
            case 5:
                objArr[0] = "contextReceiverParameters";
                break;
            case 6:
                objArr[0] = "typeParameters";
                break;
            case 7:
            case 28:
            case 30:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 8:
            case 10:
                objArr[0] = "visibility";
                break;
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 11:
                objArr[0] = "unsubstitutedReturnType";
                break;
            case 12:
                objArr[0] = "extensionReceiverParameter";
                break;
            case 17:
                objArr[0] = "overriddenDescriptors";
                break;
            case 22:
                objArr[0] = "originalSubstitutor";
                break;
            case 24:
            case 29:
            case 31:
                objArr[0] = "substitutor";
                break;
            case 25:
                objArr[0] = "configuration";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i5) {
            case 9:
                objArr[1] = "initialize";
                break;
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 13:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 14:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 15:
                objArr[1] = "getModality";
                break;
            case 16:
                objArr[1] = "getVisibility";
                break;
            case 18:
                objArr[1] = "getTypeParameters";
                break;
            case 19:
                objArr[1] = "getValueParameters";
                break;
            case 20:
                objArr[1] = "getOriginal";
                break;
            case 21:
                objArr[1] = "getKind";
                break;
            case 23:
                objArr[1] = "newCopyBuilder";
                break;
            case 26:
                objArr[1] = "copy";
                break;
            case 27:
                objArr[1] = "getSourceToUseForCopy";
                break;
        }
        switch (i5) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "initialize";
                break;
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                break;
            case 10:
                objArr[2] = "setVisibility";
                break;
            case 11:
                objArr[2] = "setReturnType";
                break;
            case 12:
                objArr[2] = "setExtensionReceiverParameter";
                break;
            case 17:
                objArr[2] = "setOverriddenDescriptors";
                break;
            case 22:
                objArr[2] = "substitute";
                break;
            case 24:
                objArr[2] = "newCopyBuilder";
                break;
            case 25:
                objArr[2] = "doSubstitute";
                break;
            case 28:
            case 29:
            case 30:
            case 31:
                objArr[2] = "getSubstitutedValueParameters";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i5) {
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                throw new IllegalStateException(str2);
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v2, types: [u3.V] */
    public static ArrayList U0(InterfaceC0816s interfaceC0816s, List list, h4.V v4, boolean z4, boolean z5, boolean[] zArr) {
        if (list == null) {
            I0(30);
            throw null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            V v5 = (V) it.next();
            V v6 = v5;
            AbstractC0468v abstractC0468vJ = v4.j(2, v6.e());
            AbstractC0468v abstractC0468v = v5.f9412l;
            AbstractC0468v abstractC0468vJ2 = abstractC0468v == null ? null : v4.j(2, abstractC0468v);
            if (abstractC0468vJ == null) {
                return null;
            }
            if ((abstractC0468vJ != v6.e() || abstractC0468v != abstractC0468vJ2) && zArr != null) {
                zArr[0] = true;
            }
            C0875g c0875g = v5 instanceof U ? new C0875g(2, (List) ((U) v5).n.getValue()) : null;
            V v7 = z4 ? null : v5;
            InterfaceC0845h interfaceC0845hT = v5.t();
            Q3.f name = v5.getName();
            boolean zR0 = v5.R0();
            InterfaceC0786N interfaceC0786NM = z5 ? v5.m() : InterfaceC0786N.f8790a;
            d3.i.e("annotations", interfaceC0845hT);
            d3.i.e("name", name);
            d3.i.e("source", interfaceC0786NM);
            int i5 = v5.f9408h;
            boolean z6 = v5.f9410j;
            boolean z7 = v5.f9411k;
            arrayList.add(c0875g == null ? new V(interfaceC0816s, v7, i5, interfaceC0845hT, name, abstractC0468vJ, zR0, z6, z7, abstractC0468vJ2, interfaceC0786NM) : new U(interfaceC0816s, v7, i5, interfaceC0845hT, name, abstractC0468vJ, zR0, z6, z7, abstractC0468vJ2, interfaceC0786NM, c0875g));
        }
        return arrayList;
    }

    @Override // r3.InterfaceC0816s
    public final InterfaceC0816s B() {
        return this.E;
    }

    public boolean D() {
        return this.f9498q;
    }

    public Object E(InterfaceC0798a interfaceC0798a) {
        Map map = this.f9488F;
        if (map == null) {
            return null;
        }
        return map.get(interfaceC0798a);
    }

    @Override // r3.InterfaceC0799b
    public final C0890w F() {
        return this.f9494l;
    }

    public Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.v(this, obj);
    }

    @Override // r3.InterfaceC0816s
    public final boolean I() {
        return this.f9503v;
    }

    public void M(Collection collection) {
        if (collection == null) {
            I0(17);
            throw null;
        }
        this.f9484A = collection;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (((InterfaceC0816s) it.next()).b0()) {
                this.f9504w = true;
                return;
            }
        }
    }

    public boolean O() {
        return this.f9500s;
    }

    @Override // r3.InterfaceC0816s
    public final boolean Q() {
        if (this.f9496o) {
            return true;
        }
        Iterator it = a().p().iterator();
        while (it.hasNext()) {
            if (((InterfaceC0816s) it.next()).Q()) {
                return true;
            }
        }
        return false;
    }

    public final InterfaceC0816s Q0(InterfaceC0807j interfaceC0807j, int i5, A3.p pVar) {
        InterfaceC0816s interfaceC0816sJ = e0().u(interfaceC0807j).z(i5).B(pVar).a(2).g().j();
        if (interfaceC0816sJ != null) {
            return interfaceC0816sJ;
        }
        I0(26);
        throw null;
    }

    @Override // r3.InterfaceC0800c
    /* renamed from: R0, reason: merged with bridge method [inline-methods] */
    public N x0(InterfaceC0807j interfaceC0807j, int i5, A3.p pVar) {
        return (N) Q0(interfaceC0807j, i5, pVar);
    }

    public abstract AbstractC0889v S0(int i5, Q3.f fVar, InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, InterfaceC0786N interfaceC0786N, InterfaceC0845h interfaceC0845h);

    public AbstractC0889v T0(C0888u c0888u) {
        C0890w c0890w;
        C0890w c0890w2;
        AbstractC0468v abstractC0468vJ;
        if (c0888u == null) {
            I0(25);
            throw null;
        }
        boolean[] zArr = new boolean[1];
        InterfaceC0845h interfaceC0845hE = c0888u.f9478u != null ? AbstractC0735a.e(t(), c0888u.f9478u) : t();
        InterfaceC0807j interfaceC0807j = c0888u.f9463d;
        InterfaceC0816s interfaceC0816s = c0888u.f9465g;
        int i5 = c0888u.f9466h;
        Q3.f fVar = c0888u.n;
        InterfaceC0786N interfaceC0786NM = c0888u.f9474q ? ((AbstractC0884p) (interfaceC0816s != null ? interfaceC0816s : a())).m() : InterfaceC0786N.f8790a;
        if (interfaceC0786NM == null) {
            I0(27);
            throw null;
        }
        AbstractC0889v abstractC0889vS0 = S0(i5, fVar, interfaceC0807j, interfaceC0816s, interfaceC0786NM, interfaceC0845hE);
        List listU = c0888u.f9477t;
        if (listU == null) {
            listU = u();
        }
        zArr[0] = zArr[0] | (!listU.isEmpty());
        ArrayList arrayList = new ArrayList(listU.size());
        h4.V v4 = AbstractC0450c.v(listU, c0888u.f9462c, abstractC0889vS0, arrayList, zArr);
        if (v4 == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        if (!c0888u.f9468j.isEmpty()) {
            int i6 = 0;
            for (C0890w c0890w3 : c0888u.f9468j) {
                AbstractC0468v abstractC0468vJ2 = v4.j(2, c0890w3.e());
                if (abstractC0468vJ2 == null) {
                    return null;
                }
                int i7 = i6 + 1;
                arrayList2.add(Z0.j.x(abstractC0889vS0, abstractC0468vJ2, ((b4.a) c0890w3.Q0()).O0(), c0890w3.t(), i6));
                zArr[0] = zArr[0] | (abstractC0468vJ2 != c0890w3.e());
                i6 = i7;
            }
        }
        C0890w c0890w4 = c0888u.f9469k;
        if (c0890w4 != null) {
            AbstractC0468v abstractC0468vJ3 = v4.j(2, c0890w4.e());
            if (abstractC0468vJ3 == null) {
                return null;
            }
            c0888u.f9469k.Q0();
            C0890w c0890w5 = new C0890w(abstractC0889vS0, new b4.b(abstractC0889vS0, abstractC0468vJ3), c0888u.f9469k.t());
            zArr[0] = (abstractC0468vJ3 != c0888u.f9469k.e()) | zArr[0];
            c0890w = c0890w5;
        } else {
            c0890w = null;
        }
        C0890w c0890w6 = c0888u.f9470l;
        if (c0890w6 != null) {
            C0890w c0890wB = c0890w6.b(v4);
            if (c0890wB == null) {
                return null;
            }
            zArr[0] = zArr[0] | (c0890wB != c0888u.f9470l);
            c0890w2 = c0890wB;
        } else {
            c0890w2 = null;
        }
        ArrayList arrayListU0 = U0(abstractC0889vS0, c0888u.f9467i, v4, c0888u.f9475r, c0888u.f9474q, zArr);
        if (arrayListU0 == null || (abstractC0468vJ = v4.j(3, c0888u.f9471m)) == null) {
            return null;
        }
        boolean z4 = zArr[0] | (abstractC0468vJ != c0888u.f9471m);
        zArr[0] = z4;
        if (!z4 && c0888u.f9482y) {
            return this;
        }
        abstractC0889vS0.V0(c0890w, c0890w2, arrayList2, arrayList, arrayListU0, abstractC0468vJ, c0888u.f9464e, c0888u.f);
        abstractC0889vS0.f9496o = this.f9496o;
        abstractC0889vS0.f9497p = this.f9497p;
        abstractC0889vS0.f9498q = this.f9498q;
        abstractC0889vS0.f9499r = this.f9499r;
        abstractC0889vS0.f9500s = this.f9500s;
        abstractC0889vS0.f9505x = this.f9505x;
        abstractC0889vS0.f9501t = this.f9501t;
        abstractC0889vS0.f9502u = this.f9502u;
        abstractC0889vS0.Y0(this.f9506y);
        abstractC0889vS0.f9503v = c0888u.f9476s;
        abstractC0889vS0.f9504w = c0888u.f9479v;
        Boolean bool = c0888u.f9481x;
        abstractC0889vS0.Z0(bool != null ? bool.booleanValue() : this.f9507z);
        if (!c0888u.f9480w.isEmpty() || this.f9488F != null) {
            LinkedHashMap linkedHashMap = c0888u.f9480w;
            Map map = this.f9488F;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    if (!linkedHashMap.containsKey(entry.getKey())) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            if (linkedHashMap.size() == 1) {
                abstractC0889vS0.f9488F = Collections.singletonMap(linkedHashMap.keySet().iterator().next(), linkedHashMap.values().iterator().next());
            } else {
                abstractC0889vS0.f9488F = linkedHashMap;
            }
        }
        if (c0888u.f9473p || this.E != null) {
            InterfaceC0816s interfaceC0816s2 = this.E;
            if (interfaceC0816s2 == null) {
                interfaceC0816s2 = this;
            }
            abstractC0889vS0.E = interfaceC0816s2.b(v4);
        }
        if (c0888u.f9472o && !a().p().isEmpty()) {
            if (c0888u.f9462c.e()) {
                InterfaceC0221a interfaceC0221a = this.f9485B;
                if (interfaceC0221a != null) {
                    abstractC0889vS0.f9485B = interfaceC0221a;
                } else {
                    abstractC0889vS0.M(p());
                }
            } else {
                abstractC0889vS0.f9485B = new C0876h(this, v4, 1);
            }
        }
        return abstractC0889vS0;
    }

    public void V0(C0890w c0890w, C0890w c0890w2, List list, List list2, List list3, AbstractC0468v abstractC0468v, int i5, A3.p pVar) {
        if (list == null) {
            I0(5);
            throw null;
        }
        if (list2 == null) {
            I0(6);
            throw null;
        }
        if (list3 == null) {
            I0(7);
            throw null;
        }
        if (pVar == null) {
            I0(8);
            throw null;
        }
        this.f9489g = R2.m.g1(list2);
        this.f9490h = R2.m.g1(list3);
        this.f9491i = abstractC0468v;
        this.f9495m = i5;
        this.n = pVar;
        this.f9493k = c0890w;
        this.f9494l = c0890w2;
        this.f9492j = list;
        for (int i6 = 0; i6 < list2.size(); i6++) {
            InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) list2.get(i6);
            if (interfaceC0789Q.z0() != i6) {
                throw new IllegalStateException(interfaceC0789Q + " index is " + interfaceC0789Q.z0() + " but position is " + i6);
            }
        }
        for (int i7 = 0; i7 < list3.size(); i7++) {
            V v4 = (V) list3.get(i7);
            if (v4.f9408h != i7) {
                throw new IllegalStateException(v4 + "index is " + v4.f9408h + " but position is " + i7);
            }
        }
    }

    public final C0888u W0(h4.V v4) {
        if (v4 != null) {
            return new C0888u(this, v4.g(), l(), i(), c(), k0(), w0(), v0(), this.f9493k, n());
        }
        I0(24);
        throw null;
    }

    public final void X0(InterfaceC0798a interfaceC0798a, Object obj) {
        if (this.f9488F == null) {
            this.f9488F = new LinkedHashMap();
        }
        this.f9488F.put(interfaceC0798a, obj);
    }

    public void Y0(boolean z4) {
        this.f9506y = z4;
    }

    public void Z0(boolean z4) {
        this.f9507z = z4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [r3.s] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    @Override // u3.AbstractC0884p, u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    public InterfaceC0816s a() {
        InterfaceC0816s interfaceC0816s = this.f9486C;
        ?? A4 = this;
        if (interfaceC0816s != this) {
            A4 = interfaceC0816s.a();
        }
        if (A4 != 0) {
            return A4;
        }
        I0(20);
        throw null;
    }

    public final void a1(AbstractC0472z abstractC0472z) {
        if (abstractC0472z != null) {
            this.f9491i = abstractC0472z;
        } else {
            I0(11);
            throw null;
        }
    }

    @Override // r3.InterfaceC0816s
    public final boolean b0() {
        return this.f9504w;
    }

    @Override // r3.InterfaceC0810m, r3.InterfaceC0820w
    public final A3.p c() {
        A3.p pVar = this.n;
        if (pVar != null) {
            return pVar;
        }
        I0(16);
        throw null;
    }

    @Override // r3.InterfaceC0799b
    public final C0890w d0() {
        return this.f9493k;
    }

    public InterfaceC0815r e0() {
        return W0(h4.V.f7041b);
    }

    public boolean h() {
        return this.f9505x;
    }

    @Override // r3.InterfaceC0820w
    public final int i() {
        int i5 = this.f9495m;
        if (i5 != 0) {
            return i5;
        }
        I0(15);
        throw null;
    }

    public boolean j() {
        return this.f9499r;
    }

    @Override // r3.InterfaceC0820w
    public final boolean j0() {
        return this.f9502u;
    }

    @Override // r3.InterfaceC0800c
    public final int k0() {
        int i5 = this.f9487D;
        if (i5 != 0) {
            return i5;
        }
        I0(21);
        throw null;
    }

    public AbstractC0468v n() {
        return this.f9491i;
    }

    public boolean o0() {
        return this.f9507z;
    }

    public Collection p() {
        InterfaceC0221a interfaceC0221a = this.f9485B;
        if (interfaceC0221a != null) {
            this.f9484A = (Collection) interfaceC0221a.a();
            this.f9485B = null;
        }
        Collection collectionEmptyList = this.f9484A;
        if (collectionEmptyList == null) {
            collectionEmptyList = Collections.emptyList();
        }
        if (collectionEmptyList != null) {
            return collectionEmptyList;
        }
        I0(14);
        throw null;
    }

    @Override // r3.InterfaceC0799b
    public final List u() {
        List list = this.f9489g;
        if (list != null) {
            return list;
        }
        throw new IllegalStateException("typeParameters == null for " + this);
    }

    @Override // r3.InterfaceC0799b
    public final List v0() {
        List list = this.f9492j;
        if (list != null) {
            return list;
        }
        I0(13);
        throw null;
    }

    @Override // r3.InterfaceC0799b
    public final List w0() {
        List list = this.f9490h;
        if (list != null) {
            return list;
        }
        I0(19);
        throw null;
    }

    @Override // r3.InterfaceC0820w
    public final boolean y() {
        return this.f9501t;
    }

    @Override // r3.InterfaceC0816s
    public final boolean y0() {
        if (this.f9497p) {
            return true;
        }
        Iterator it = a().p().iterator();
        while (it.hasNext()) {
            if (((InterfaceC0816s) it.next()).y0()) {
                return true;
            }
        }
        return false;
    }

    @Override // r3.InterfaceC0788P
    public InterfaceC0816s b(h4.V v4) {
        if (v4 == null) {
            I0(22);
            throw null;
        }
        if (v4.f7042a.e()) {
            return this;
        }
        C0888u c0888uW0 = W0(v4);
        c0888uW0.f9465g = a();
        c0888uW0.f9474q = true;
        c0888uW0.f9482y = true;
        return c0888uW0.f9483z.T0(c0888uW0);
    }
}
