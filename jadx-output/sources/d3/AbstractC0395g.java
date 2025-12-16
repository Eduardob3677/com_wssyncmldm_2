package d3;

import i3.InterfaceC0481b;
import i3.InterfaceC0485f;

/* renamed from: d3.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0395g extends AbstractC0390b implements InterfaceC0394f, InterfaceC0485f {

    /* renamed from: j, reason: collision with root package name */
    public final int f6509j;

    /* renamed from: k, reason: collision with root package name */
    public final int f6510k;

    public AbstractC0395g(int i5) {
        this(i5, C0389a.f6499c, null, null, null, 0);
    }

    @Override // d3.InterfaceC0394f
    public final int b() {
        return this.f6509j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0395g) {
            AbstractC0395g abstractC0395g = (AbstractC0395g) obj;
            return getName().equals(abstractC0395g.getName()) && l().equals(abstractC0395g.l()) && this.f6510k == abstractC0395g.f6510k && this.f6509j == abstractC0395g.f6509j && i.a(this.f6502d, abstractC0395g.f6502d) && i.a(j(), abstractC0395g.j());
        }
        if (obj instanceof InterfaceC0485f) {
            return obj.equals(c());
        }
        return false;
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0481b g() {
        return q.f6516a.a(this);
    }

    public final int hashCode() {
        return l().hashCode() + ((getName().hashCode() + (j() == null ? 0 : j().hashCode() * 31)) * 31);
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0481b k() {
        InterfaceC0481b interfaceC0481bC = c();
        if (interfaceC0481bC != this) {
            return (InterfaceC0485f) interfaceC0481bC;
        }
        throw new Q2.d();
    }

    public final String toString() {
        InterfaceC0481b interfaceC0481bC = c();
        if (interfaceC0481bC != this) {
            return interfaceC0481bC.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }

    public AbstractC0395g(int i5, Object obj) {
        this(i5, obj, null, null, null, 0);
    }

    public AbstractC0395g(int i5, Object obj, Class cls, String str, String str2, int i6) {
        super(obj, cls, str, str2, (i6 & 1) == 1);
        this.f6509j = i5;
        this.f6510k = 0;
    }
}
