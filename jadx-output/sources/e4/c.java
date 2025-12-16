package e4;

import A3.C0005d;
import A3.D;
import B3.k;
import L3.C;
import L3.K;
import L3.L;
import X3.f;
import com.google.firebase.messaging.p;
import com.idm.fotaagent.database.sqlite.database.IDMDatabaseInterface;
import d3.i;
import f4.j;
import f4.q;
import g4.o;
import r3.InterfaceC0775C;
import r3.InterfaceC0821x;
import u3.E;

/* loaded from: classes.dex */
public final class c extends E implements InterfaceC0775C {

    /* renamed from: i, reason: collision with root package name */
    public final N3.a f6810i;

    /* renamed from: j, reason: collision with root package name */
    public final j f6811j;

    /* renamed from: k, reason: collision with root package name */
    public final D f6812k;

    /* renamed from: l, reason: collision with root package name */
    public final p f6813l;

    /* renamed from: m, reason: collision with root package name */
    public L3.E f6814m;
    public q n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Q3.c cVar, o oVar, InterfaceC0821x interfaceC0821x, L3.E e5, M3.a aVar) {
        super(interfaceC0821x, cVar);
        i.e("fqName", cVar);
        i.e("storageManager", oVar);
        i.e("module", interfaceC0821x);
        this.f6810i = aVar;
        this.f6811j = null;
        L l5 = e5.f;
        i.d("proto.strings", l5);
        K k5 = e5.f1385g;
        i.d("proto.qualifiedNames", k5);
        D d2 = new D(l5, 10, k5);
        this.f6812k = d2;
        this.f6813l = new p(e5, d2, aVar, new C0005d(16, this));
        this.f6814m = e5;
    }

    public final void R0(d4.i iVar) {
        L3.E e5 = this.f6814m;
        if (e5 == null) {
            throw new IllegalStateException("Repeated call to DeserializedPackageFragmentImpl::initialize".toString());
        }
        this.f6814m = null;
        C c2 = e5.f1386h;
        i.d("proto.`package`", c2);
        this.n = new q(this, c2, this.f6812k, this.f6810i, this.f6811j, iVar, "scope of " + this, new k(11, this));
    }

    @Override // r3.InterfaceC0775C
    public final a4.o q0() {
        q qVar = this.n;
        if (qVar != null) {
            return qVar;
        }
        i.g("_memberScope");
        throw null;
    }

    @Override // u3.E, u3.AbstractC0883o
    public final String toString() {
        return "builtins package fragment for " + this.f9353g + IDMDatabaseInterface.IDM_SQL_FROM + f.j(this);
    }
}
