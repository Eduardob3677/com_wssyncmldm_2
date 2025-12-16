package u3;

import h4.AbstractC0468v;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import p3.C0749g;
import r3.AbstractC0811n;
import r3.C0785M;
import r3.InterfaceC0781I;
import r3.InterfaceC0786N;
import r3.InterfaceC0792U;
import r3.InterfaceC0799b;
import r3.InterfaceC0800c;
import r3.InterfaceC0807j;
import r3.InterfaceC0808k;
import r3.InterfaceC0809l;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public class V extends W implements InterfaceC0781I, InterfaceC0792U {

    /* renamed from: h, reason: collision with root package name */
    public final int f9408h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f9409i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f9410j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f9411k;

    /* renamed from: l, reason: collision with root package name */
    public final AbstractC0468v f9412l;

    /* renamed from: m, reason: collision with root package name */
    public final V f9413m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V(InterfaceC0799b interfaceC0799b, V v4, int i5, InterfaceC0845h interfaceC0845h, Q3.f fVar, AbstractC0468v abstractC0468v, boolean z4, boolean z5, boolean z6, AbstractC0468v abstractC0468v2, InterfaceC0786N interfaceC0786N) {
        super(interfaceC0799b, interfaceC0845h, fVar, abstractC0468v, interfaceC0786N);
        d3.i.e("containingDeclaration", interfaceC0799b);
        d3.i.e("annotations", interfaceC0845h);
        d3.i.e("name", fVar);
        d3.i.e("outType", abstractC0468v);
        d3.i.e("source", interfaceC0786N);
        this.f9408h = i5;
        this.f9409i = z4;
        this.f9410j = z5;
        this.f9411k = z6;
        this.f9412l = abstractC0468v2;
        this.f9413m = v4 == null ? this : v4;
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.P(this, obj);
    }

    public V Q0(C0749g c0749g, Q3.f fVar, int i5) {
        InterfaceC0845h interfaceC0845hT = t();
        d3.i.d("annotations", interfaceC0845hT);
        AbstractC0468v abstractC0468vE = e();
        d3.i.d("type", abstractC0468vE);
        boolean zR0 = R0();
        C0785M c0785m = InterfaceC0786N.f8790a;
        return new V(c0749g, null, i5, interfaceC0845hT, fVar, abstractC0468vE, zR0, this.f9410j, this.f9411k, this.f9412l, c0785m);
    }

    public final boolean R0() {
        return this.f9409i && ((InterfaceC0800c) l()).k0() != 2;
    }

    @Override // u3.AbstractC0884p, r3.InterfaceC0807j
    /* renamed from: S0, reason: merged with bridge method [inline-methods] */
    public final InterfaceC0799b l() {
        InterfaceC0807j interfaceC0807jL = super.l();
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor", interfaceC0807jL);
        return (InterfaceC0799b) interfaceC0807jL;
    }

    @Override // r3.InterfaceC0792U
    public final boolean T() {
        return false;
    }

    @Override // u3.AbstractC0884p, u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    /* renamed from: T0, reason: merged with bridge method [inline-methods] */
    public final V a() {
        V v4 = this.f9413m;
        return v4 == this ? this : v4.a();
    }

    @Override // r3.InterfaceC0788P
    public final InterfaceC0808k b(h4.V v4) {
        d3.i.e("substitutor", v4);
        if (v4.f7042a.e()) {
            return this;
        }
        throw new UnsupportedOperationException();
    }

    @Override // r3.InterfaceC0810m, r3.InterfaceC0820w
    public final A3.p c() {
        A3.p pVar = AbstractC0811n.f;
        d3.i.d("LOCAL", pVar);
        return pVar;
    }

    @Override // r3.InterfaceC0792U
    public final /* bridge */ /* synthetic */ V3.g g0() {
        return null;
    }

    @Override // r3.InterfaceC0799b
    public final Collection p() {
        Collection collectionP = l().p();
        d3.i.d("containingDeclaration.overriddenDescriptors", collectionP);
        ArrayList arrayList = new ArrayList(R2.o.C0(collectionP));
        Iterator it = collectionP.iterator();
        while (it.hasNext()) {
            arrayList.add((V) ((InterfaceC0799b) it.next()).w0().get(this.f9408h));
        }
        return arrayList;
    }
}
