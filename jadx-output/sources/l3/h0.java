package l3;

import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import f1.AbstractC0420a;
import i3.InterfaceC0486g;
import i3.InterfaceC0494o;
import r3.InterfaceC0782J;
import r3.InterfaceC0800c;

/* loaded from: classes.dex */
public abstract class h0 extends AbstractC0677d0 implements InterfaceC0486g {
    public static final /* synthetic */ InterfaceC0494o[] f;

    /* renamed from: d, reason: collision with root package name */
    public final p0 f8172d = r0.j(new g0(this, 1));

    /* renamed from: e, reason: collision with root package name */
    public final Q2.c f8173e = AbstractC0420a.U(2, new g0(this, 0));

    static {
        d3.r rVar = d3.q.f6516a;
        f = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(h0.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;"))};
    }

    public final boolean equals(Object obj) {
        return (obj instanceof h0) && d3.i.a(p(), ((h0) obj).p());
    }

    @Override // l3.AbstractC0693r
    public final m3.e g() {
        return (m3.e) this.f8173e.getValue();
    }

    @Override // i3.InterfaceC0481b
    public final String getName() {
        return "<set-" + p().f8182e + IDMTndsXmlWbxmlDefine.XML_CLOSE_TAG;
    }

    public final int hashCode() {
        return p().hashCode();
    }

    @Override // l3.AbstractC0693r
    public final InterfaceC0800c k() {
        InterfaceC0494o interfaceC0494o = f[0];
        Object objA = this.f8172d.a();
        d3.i.d("<get-descriptor>(...)", objA);
        return (u3.M) objA;
    }

    @Override // l3.AbstractC0677d0
    public final InterfaceC0782J o() {
        InterfaceC0494o interfaceC0494o = f[0];
        Object objA = this.f8172d.a();
        d3.i.d("<get-descriptor>(...)", objA);
        return (u3.M) objA;
    }

    public final String toString() {
        return "setter of " + p();
    }
}
