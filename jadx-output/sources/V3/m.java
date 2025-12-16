package V3;

import h4.AbstractC0472z;
import h4.C0451d;
import h4.G;
import h4.J;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import o3.AbstractC0732i;
import r3.InterfaceC0804g;
import r3.InterfaceC0821x;

/* loaded from: classes.dex */
public final class m implements J {

    /* renamed from: a, reason: collision with root package name */
    public final long f2803a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0821x f2804b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f2805c;

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0472z f2806d;

    /* renamed from: e, reason: collision with root package name */
    public final Q2.h f2807e;

    public m(long j3, InterfaceC0821x interfaceC0821x, Set set) {
        G.f7019d.getClass();
        G g5 = G.f7020e;
        d3.i.e("attributes", g5);
        this.f2806d = C0451d.s(j4.i.a(2, true, "unknown integer literal type"), g5, this, R2.u.f2325c, false);
        this.f2807e = new Q2.h(new B3.k(7, this));
        this.f2803a = j3;
        this.f2804b = interfaceC0821x;
        this.f2805c = set;
    }

    @Override // h4.J
    public final AbstractC0732i g() {
        return this.f2804b.g();
    }

    @Override // h4.J
    public final boolean h() {
        return false;
    }

    @Override // h4.J
    public final InterfaceC0804g i() {
        return null;
    }

    @Override // h4.J
    public final Collection j() {
        return (List) this.f2807e.getValue();
    }

    @Override // h4.J
    public final List k() {
        return R2.u.f2325c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("IntegerLiteralType");
        sb.append("[" + R2.m.S0(this.f2805c, ",", null, null, l.f2802d, 30) + ']');
        return sb.toString();
    }
}
