package l3;

import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import f1.AbstractC0420a;
import i3.InterfaceC0491l;
import i3.InterfaceC0494o;
import r3.InterfaceC0782J;
import r3.InterfaceC0800c;

/* renamed from: l3.f0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0681f0 extends AbstractC0677d0 implements InterfaceC0491l {
    public static final /* synthetic */ InterfaceC0494o[] f;

    /* renamed from: d, reason: collision with root package name */
    public final p0 f8166d = r0.j(new C0679e0(this, 1));

    /* renamed from: e, reason: collision with root package name */
    public final Q2.c f8167e = AbstractC0420a.U(2, new C0679e0(this, 0));

    static {
        d3.r rVar = d3.q.f6516a;
        f = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(AbstractC0681f0.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;"))};
    }

    public final boolean equals(Object obj) {
        return (obj instanceof AbstractC0681f0) && d3.i.a(p(), ((AbstractC0681f0) obj).p());
    }

    @Override // l3.AbstractC0693r
    public final m3.e g() {
        return (m3.e) this.f8167e.getValue();
    }

    @Override // i3.InterfaceC0481b
    public final String getName() {
        return "<get-" + p().f8182e + IDMTndsXmlWbxmlDefine.XML_CLOSE_TAG;
    }

    public final int hashCode() {
        return p().hashCode();
    }

    @Override // l3.AbstractC0693r
    public final InterfaceC0800c k() {
        InterfaceC0494o interfaceC0494o = f[0];
        Object objA = this.f8166d.a();
        d3.i.d("<get-descriptor>(...)", objA);
        return (u3.L) objA;
    }

    @Override // l3.AbstractC0677d0
    public final InterfaceC0782J o() {
        InterfaceC0494o interfaceC0494o = f[0];
        Object objA = this.f8166d.a();
        d3.i.d("<get-descriptor>(...)", objA);
        return (u3.L) objA;
    }

    public final String toString() {
        return "getter of " + p();
    }
}
