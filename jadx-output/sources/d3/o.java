package d3;

import i3.InterfaceC0481b;
import i3.InterfaceC0494o;

/* loaded from: classes.dex */
public abstract class o extends AbstractC0390b implements InterfaceC0494o {

    /* renamed from: j, reason: collision with root package name */
    public final boolean f6514j;

    public o(Object obj, Class cls, String str, String str2, int i5) {
        super(obj, cls, str, str2, (i5 & 1) == 1);
        this.f6514j = (i5 & 2) == 2;
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0481b c() {
        return this.f6514j ? this : super.c();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            return j().equals(oVar.j()) && this.f.equals(oVar.f) && this.f6504g.equals(oVar.f6504g) && i.a(this.f6502d, oVar.f6502d);
        }
        if (obj instanceof InterfaceC0494o) {
            return obj.equals(c());
        }
        return false;
    }

    public final int hashCode() {
        return this.f6504g.hashCode() + ((this.f.hashCode() + (j().hashCode() * 31)) * 31);
    }

    @Override // d3.AbstractC0390b
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final InterfaceC0494o k() {
        if (this.f6514j) {
            throw new UnsupportedOperationException("Kotlin reflection is not yet supported for synthetic Java properties");
        }
        InterfaceC0481b interfaceC0481bC = c();
        if (interfaceC0481bC != this) {
            return (InterfaceC0494o) interfaceC0481bC;
        }
        throw new Q2.d();
    }

    public final String toString() {
        InterfaceC0481b interfaceC0481bC = c();
        return interfaceC0481bC != this ? interfaceC0481bC.toString() : B.f.w(new StringBuilder("property "), this.f, " (Kotlin reflection is not available)");
    }
}
