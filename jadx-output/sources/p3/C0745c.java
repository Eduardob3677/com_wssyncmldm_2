package p3;

import A3.p;
import Q2.k;
import R2.m;
import R2.u;
import d3.i;
import g4.o;
import h3.C0446b;
import h3.C0447c;
import h4.J;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import o3.n;
import r3.AbstractC0790S;
import r3.AbstractC0811n;
import r3.InterfaceC0775C;
import r3.InterfaceC0786N;
import r3.InterfaceC0807j;
import s3.C0844g;
import s3.InterfaceC0845h;
import u3.AbstractC0870b;
import u3.C0879k;
import u3.T;

/* renamed from: p3.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0745c extends AbstractC0870b {
    public static final Q3.b n = new Q3.b(n.f8538j, Q3.f.e("Function"));

    /* renamed from: o, reason: collision with root package name */
    public static final Q3.b f8582o = new Q3.b(n.f8536h, Q3.f.e("KFunction"));

    /* renamed from: g, reason: collision with root package name */
    public final o f8583g;

    /* renamed from: h, reason: collision with root package name */
    public final InterfaceC0775C f8584h;

    /* renamed from: i, reason: collision with root package name */
    public final EnumC0747e f8585i;

    /* renamed from: j, reason: collision with root package name */
    public final int f8586j;

    /* renamed from: k, reason: collision with root package name */
    public final C0744b f8587k;

    /* renamed from: l, reason: collision with root package name */
    public final C0748f f8588l;

    /* renamed from: m, reason: collision with root package name */
    public final List f8589m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0745c(o oVar, e4.c cVar, EnumC0747e enumC0747e, int i5) {
        super(oVar, enumC0747e.a(i5));
        i.e("storageManager", oVar);
        i.e("containingDeclaration", cVar);
        i.e("functionKind", enumC0747e);
        this.f8583g = oVar;
        this.f8584h = cVar;
        this.f8585i = enumC0747e;
        this.f8586j = i5;
        this.f8587k = new C0744b(this);
        this.f8588l = new C0748f(oVar, this);
        ArrayList arrayList = new ArrayList();
        C0447c c0447c = new C0447c(1, i5, 1);
        ArrayList arrayList2 = new ArrayList(R2.o.C0(c0447c));
        Iterator it = c0447c.iterator();
        while (((C0446b) it).f7007e) {
            arrayList.add(T.T0(this, 2, Q3.f.e("P" + ((C0446b) it).a()), arrayList.size(), this.f8583g));
            arrayList2.add(k.f2225a);
        }
        arrayList.add(T.T0(this, 3, Q3.f.e("R"), arrayList.size(), this.f8583g));
        this.f8589m = m.g1(arrayList);
    }

    @Override // r3.InterfaceC0802e
    public final /* bridge */ /* synthetic */ Collection A0() {
        return u.f2325c;
    }

    @Override // r3.InterfaceC0820w
    public final boolean D() {
        return false;
    }

    @Override // r3.InterfaceC0802e
    public final boolean D0() {
        return false;
    }

    @Override // r3.InterfaceC0804g
    public final J H() {
        return this.f8587k;
    }

    @Override // u3.AbstractC0865A
    public final a4.o J(i4.f fVar) {
        return this.f8588l;
    }

    @Override // r3.InterfaceC0802e
    public final int L() {
        return 2;
    }

    @Override // r3.InterfaceC0802e
    public final boolean N() {
        return false;
    }

    @Override // r3.InterfaceC0802e
    public final AbstractC0790S S() {
        return null;
    }

    @Override // r3.InterfaceC0802e
    public final /* bridge */ /* synthetic */ C0879k W() {
        return null;
    }

    @Override // r3.InterfaceC0802e
    public final /* bridge */ /* synthetic */ a4.o X() {
        return a4.n.f3128b;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0810m, r3.InterfaceC0820w
    public final p c() {
        p pVar = AbstractC0811n.f8813e;
        i.d("PUBLIC", pVar);
        return pVar;
    }

    @Override // r3.InterfaceC0802e
    public final boolean h0() {
        return false;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0820w
    public final int i() {
        return 4;
    }

    @Override // r3.InterfaceC0802e
    public final boolean j() {
        return false;
    }

    @Override // r3.InterfaceC0820w
    public final boolean j0() {
        return false;
    }

    @Override // r3.InterfaceC0802e
    public final /* bridge */ /* synthetic */ Collection k() {
        return u.f2325c;
    }

    @Override // r3.InterfaceC0807j
    public final InterfaceC0807j l() {
        return this.f8584h;
    }

    @Override // r3.InterfaceC0808k
    public final InterfaceC0786N m() {
        return InterfaceC0786N.f8790a;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0805h
    public final List s() {
        return this.f8589m;
    }

    @Override // s3.InterfaceC0838a
    public final InterfaceC0845h t() {
        return C0844g.f9041a;
    }

    public final String toString() {
        String strB = getName().b();
        i.d("name.asString()", strB);
        return strB;
    }

    @Override // r3.InterfaceC0802e
    public final boolean v() {
        return false;
    }

    @Override // r3.InterfaceC0820w
    public final boolean y() {
        return false;
    }

    @Override // r3.InterfaceC0805h
    public final boolean z() {
        return false;
    }
}
