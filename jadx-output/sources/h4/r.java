package h4;

import f1.AbstractC0420a;
import r3.InterfaceC0789Q;

/* loaded from: classes.dex */
public final class r extends AbstractC0464q implements InterfaceC0458k {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(AbstractC0472z abstractC0472z, AbstractC0472z abstractC0472z2) {
        super(abstractC0472z, abstractC0472z2);
        d3.i.e("lowerBound", abstractC0472z);
        d3.i.e("upperBound", abstractC0472z2);
    }

    @Override // h4.InterfaceC0458k
    public final boolean J() {
        AbstractC0472z abstractC0472z = this.f7069d;
        return (abstractC0472z.J0().i() instanceof InterfaceC0789Q) && d3.i.a(abstractC0472z.J0(), this.f7070e.J0());
    }

    @Override // h4.AbstractC0468v
    public final AbstractC0468v L0(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        AbstractC0472z abstractC0472z = this.f7069d;
        d3.i.e("type", abstractC0472z);
        AbstractC0472z abstractC0472z2 = this.f7070e;
        d3.i.e("type", abstractC0472z2);
        return new r(abstractC0472z, abstractC0472z2);
    }

    @Override // h4.Z
    public final Z N0(boolean z4) {
        return C0451d.j(this.f7069d.N0(z4), this.f7070e.N0(z4));
    }

    @Override // h4.Z
    /* renamed from: O0 */
    public final Z L0(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        AbstractC0472z abstractC0472z = this.f7069d;
        d3.i.e("type", abstractC0472z);
        AbstractC0472z abstractC0472z2 = this.f7070e;
        d3.i.e("type", abstractC0472z2);
        return new r(abstractC0472z, abstractC0472z2);
    }

    @Override // h4.Z
    public final Z P0(G g5) {
        d3.i.e("newAttributes", g5);
        return C0451d.j(this.f7069d.P0(g5), this.f7070e.P0(g5));
    }

    @Override // h4.AbstractC0464q
    public final AbstractC0472z Q0() {
        return this.f7069d;
    }

    @Override // h4.AbstractC0464q
    public final String R0(S3.g gVar, S3.i iVar) {
        d3.i.e("renderer", gVar);
        d3.i.e("options", iVar);
        boolean zG = iVar.g();
        AbstractC0472z abstractC0472z = this.f7070e;
        AbstractC0472z abstractC0472z2 = this.f7069d;
        if (!zG) {
            return gVar.F(gVar.Y(abstractC0472z2), gVar.Y(abstractC0472z), AbstractC0420a.y(this));
        }
        return "(" + gVar.Y(abstractC0472z2) + ".." + gVar.Y(abstractC0472z) + ')';
    }

    @Override // h4.InterfaceC0458k
    public final Z d(AbstractC0468v abstractC0468v) {
        Z zJ;
        d3.i.e("replacement", abstractC0468v);
        Z zM0 = abstractC0468v.M0();
        if (zM0 instanceof AbstractC0464q) {
            zJ = zM0;
        } else {
            if (!(zM0 instanceof AbstractC0472z)) {
                throw new A0.c();
            }
            AbstractC0472z abstractC0472z = (AbstractC0472z) zM0;
            zJ = C0451d.j(abstractC0472z, abstractC0472z.N0(true));
        }
        return AbstractC0450c.g(zJ, zM0);
    }

    @Override // h4.AbstractC0464q
    public final String toString() {
        return "(" + this.f7069d + ".." + this.f7070e + ')';
    }
}
