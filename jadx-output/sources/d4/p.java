package d4;

import L3.G;
import c3.InterfaceC0221a;
import com.google.android.gms.internal.p000firebaseauthapi.X;
import h4.AbstractC0468v;
import r3.InterfaceC0807j;

/* loaded from: classes.dex */
public final class p extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f6561d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ r f6562e;
    public final /* synthetic */ G f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ f4.r f6563g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p(r rVar, G g5, f4.r rVar2, int i5) {
        super(0);
        this.f6561d = i5;
        this.f6562e = rVar;
        this.f = g5;
        this.f6563g = rVar2;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f6561d) {
            case 0:
                r rVar = this.f6562e;
                X xA = rVar.a((InterfaceC0807j) rVar.f6569a.f5379e);
                d3.i.b(xA);
                InterfaceC0396a interfaceC0396a = ((i) rVar.f6569a.f5377c).f6533e;
                AbstractC0468v abstractC0468vN = this.f6563g.n();
                d3.i.d("property.returnType", abstractC0468vN);
                return (V3.g) interfaceC0396a.y0(xA, this.f, abstractC0468vN);
            case 1:
                r rVar2 = this.f6562e;
                return ((g4.l) ((i) rVar2.f6569a.f5377c).f6529a).d(new p(rVar2, this.f, this.f6563g, 0));
            case 2:
                r rVar3 = this.f6562e;
                X xA2 = rVar3.a((InterfaceC0807j) rVar3.f6569a.f5379e);
                d3.i.b(xA2);
                InterfaceC0396a interfaceC0396a2 = ((i) rVar3.f6569a.f5377c).f6533e;
                AbstractC0468v abstractC0468vN2 = this.f6563g.n();
                d3.i.d("property.returnType", abstractC0468vN2);
                return (V3.g) interfaceC0396a2.J(xA2, this.f, abstractC0468vN2);
            default:
                r rVar4 = this.f6562e;
                return ((g4.l) ((i) rVar4.f6569a.f5377c).f6529a).d(new p(rVar4, this.f, this.f6563g, 2));
        }
    }
}
