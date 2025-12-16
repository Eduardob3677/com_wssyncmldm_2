package h4;

import c3.InterfaceC0222b;
import java.util.List;

/* loaded from: classes.dex */
public final class A extends AbstractC0472z {

    /* renamed from: d, reason: collision with root package name */
    public final J f7008d;

    /* renamed from: e, reason: collision with root package name */
    public final List f7009e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final a4.o f7010g;

    /* renamed from: h, reason: collision with root package name */
    public final InterfaceC0222b f7011h;

    public A(J j3, List list, boolean z4, a4.o oVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("constructor", j3);
        d3.i.e("arguments", list);
        d3.i.e("memberScope", oVar);
        this.f7008d = j3;
        this.f7009e = list;
        this.f = z4;
        this.f7010g = oVar;
        this.f7011h = interfaceC0222b;
        if (!(oVar instanceof j4.e) || (oVar instanceof j4.j)) {
            return;
        }
        throw new IllegalStateException("SimpleTypeImpl should not be created for error type: " + oVar + '\n' + j3);
    }

    @Override // h4.AbstractC0468v
    public final G I0() {
        G.f7019d.getClass();
        return G.f7020e;
    }

    @Override // h4.AbstractC0468v
    public final J J0() {
        return this.f7008d;
    }

    @Override // h4.AbstractC0468v
    public final boolean K0() {
        return this.f;
    }

    @Override // h4.AbstractC0468v
    public final AbstractC0468v L0(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        AbstractC0472z abstractC0472z = (AbstractC0472z) this.f7011h.e(fVar);
        return abstractC0472z == null ? this : abstractC0472z;
    }

    @Override // h4.Z
    /* renamed from: O0 */
    public final Z L0(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        AbstractC0472z abstractC0472z = (AbstractC0472z) this.f7011h.e(fVar);
        return abstractC0472z == null ? this : abstractC0472z;
    }

    @Override // h4.AbstractC0472z
    /* renamed from: Q0 */
    public final AbstractC0472z N0(boolean z4) {
        if (z4 == this.f) {
            return this;
        }
        return z4 ? new C0471y(this, 1) : new C0471y(this, 0);
    }

    @Override // h4.AbstractC0472z
    /* renamed from: R0 */
    public final AbstractC0472z P0(G g5) {
        d3.i.e("newAttributes", g5);
        return g5.isEmpty() ? this : new B(this, g5);
    }

    @Override // h4.AbstractC0468v
    public final a4.o q0() {
        return this.f7010g;
    }

    @Override // h4.AbstractC0468v
    public final List u0() {
        return this.f7009e;
    }
}
