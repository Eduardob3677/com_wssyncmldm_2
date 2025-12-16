package r3;

import h3.C0446b;
import h3.C0447c;
import h4.C0457j;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import p0.AbstractC0739a;
import s3.C0844g;
import s3.InterfaceC0845h;
import u3.AbstractC0880l;
import u3.C0879k;

/* renamed from: r3.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0773A extends AbstractC0880l {

    /* renamed from: j, reason: collision with root package name */
    public final boolean f8777j;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f8778k;

    /* renamed from: l, reason: collision with root package name */
    public final C0457j f8779l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0773A(g4.o oVar, InterfaceC0803f interfaceC0803f, Q3.f fVar, boolean z4, int i5) {
        super(oVar, interfaceC0803f, fVar, InterfaceC0786N.f8790a);
        d3.i.e("storageManager", oVar);
        d3.i.e("container", interfaceC0803f);
        this.f8777j = z4;
        C0447c c0447c = i5 <= Integer.MIN_VALUE ? C0447c.f : new C0447c(0, i5 - 1, 1);
        ArrayList arrayList = new ArrayList(R2.o.C0(c0447c));
        Iterator it = c0447c.iterator();
        while (((C0446b) it).f7007e) {
            int iA = ((C0446b) it).a();
            arrayList.add(u3.T.T0(this, 1, Q3.f.e("T" + iA), iA, oVar));
        }
        this.f8778k = arrayList;
        this.f8779l = new C0457j(this, AbstractC0739a.f(this), L2.b.I(X3.f.j(this).g().e()), oVar);
    }

    @Override // r3.InterfaceC0802e
    public final Collection A0() {
        return R2.u.f2325c;
    }

    @Override // u3.AbstractC0880l, r3.InterfaceC0820w
    public final boolean D() {
        return false;
    }

    @Override // r3.InterfaceC0802e
    public final boolean D0() {
        return false;
    }

    @Override // r3.InterfaceC0804g
    public final h4.J H() {
        return this.f8779l;
    }

    @Override // u3.AbstractC0865A
    public final a4.o J(i4.f fVar) {
        return a4.n.f3128b;
    }

    @Override // r3.InterfaceC0802e
    public final int L() {
        return 1;
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
    public final C0879k W() {
        return null;
    }

    @Override // r3.InterfaceC0802e
    public final /* bridge */ /* synthetic */ a4.o X() {
        return a4.n.f3128b;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0810m, r3.InterfaceC0820w
    public final A3.p c() {
        A3.p pVar = AbstractC0811n.f8813e;
        d3.i.d("PUBLIC", pVar);
        return pVar;
    }

    @Override // r3.InterfaceC0802e
    public final boolean h0() {
        return false;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0820w
    public final int i() {
        return 1;
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
    public final Collection k() {
        return R2.w.f2327c;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0805h
    public final List s() {
        return this.f8778k;
    }

    @Override // s3.InterfaceC0838a
    public final InterfaceC0845h t() {
        return C0844g.f9041a;
    }

    public final String toString() {
        return "class " + getName() + " (not found)";
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
        return this.f8777j;
    }
}
