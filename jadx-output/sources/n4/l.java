package n4;

import f1.AbstractC0420a;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.E;
import h4.G;
import h4.X;
import java.util.List;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0816s;
import r3.InterfaceC0821x;
import u3.V;

/* loaded from: classes.dex */
public final class l implements e {

    /* renamed from: b, reason: collision with root package name */
    public static final l f8360b = new l(0);

    /* renamed from: c, reason: collision with root package name */
    public static final l f8361c = new l(1);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8362a;

    public /* synthetic */ l(int i5) {
        this.f8362a = i5;
    }

    @Override // n4.e
    public final String a(InterfaceC0816s interfaceC0816s) {
        switch (this.f8362a) {
        }
        return Z0.j.Q(this, interfaceC0816s);
    }

    @Override // n4.e
    public final String b() {
        switch (this.f8362a) {
            case 0:
                return "second parameter must be of type KProperty<*> or its supertype";
            default:
                return "should not have varargs or parameters with default values";
        }
    }

    @Override // n4.e
    public final boolean c(InterfaceC0816s interfaceC0816s) {
        AbstractC0472z abstractC0472zQ;
        switch (this.f8362a) {
            case 0:
                d3.i.e("functionDescriptor", interfaceC0816s);
                V v4 = (V) interfaceC0816s.w0().get(1);
                P1.e eVar = o3.l.f8473d;
                d3.i.d("secondParameter", v4);
                InterfaceC0821x interfaceC0821xJ = X3.f.j(v4);
                eVar.getClass();
                InterfaceC0802e interfaceC0802eE = o4.a.e(interfaceC0821xJ, o3.m.f8493Q);
                if (interfaceC0802eE == null) {
                    abstractC0472zQ = null;
                } else {
                    G.f7019d.getClass();
                    G g5 = G.f7020e;
                    List listK = interfaceC0802eE.H().k();
                    d3.i.d("kPropertyClass.typeConstructor.parameters", listK);
                    Object objB1 = R2.m.b1(listK);
                    d3.i.d("kPropertyClass.typeConstructor.parameters.single()", objB1);
                    abstractC0472zQ = C0451d.q(g5, interfaceC0802eE, AbstractC0420a.V(new E((InterfaceC0789Q) objB1)));
                }
                if (abstractC0472zQ == null) {
                    return false;
                }
                AbstractC0468v abstractC0468vE = v4.e();
                d3.i.d("secondParameter.type", abstractC0468vE);
                return i4.d.f7169a.b(abstractC0472zQ, X.h(abstractC0468vE, false));
            default:
                d3.i.e("functionDescriptor", interfaceC0816s);
                List<V> listW0 = interfaceC0816s.w0();
                d3.i.d("functionDescriptor.valueParameters", listW0);
                if (listW0.isEmpty()) {
                    return true;
                }
                for (V v5 : listW0) {
                    d3.i.d("it", v5);
                    if (X3.f.a(v5) || v5.f9412l != null) {
                        return false;
                    }
                }
                return true;
        }
    }
}
