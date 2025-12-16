package F3;

import c3.InterfaceC0221a;
import com.google.firebase.messaging.p;
import d3.k;
import h4.AbstractC0472z;
import h4.J;
import r3.InterfaceC0789Q;
import r3.InterfaceC0804g;
import x3.q;

/* loaded from: classes.dex */
public final class b extends k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ p f763d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0789Q f764e;
    public final /* synthetic */ a f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ J f765g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ q f766h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(p pVar, InterfaceC0789Q interfaceC0789Q, a aVar, J j3, q qVar) {
        super(0);
        this.f763d = pVar;
        this.f764e = interfaceC0789Q;
        this.f = aVar;
        this.f765g = j3;
        this.f766h = qVar;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        p pVar = (p) this.f763d.f6260g;
        InterfaceC0804g interfaceC0804gI = this.f765g.i();
        AbstractC0472z abstractC0472zQ = interfaceC0804gI != null ? interfaceC0804gI.q() : null;
        a aVar = this.f;
        aVar.getClass();
        return pVar.x(this.f764e, a.a(a.a(aVar, 0, false, null, abstractC0472zQ, 31), 0, this.f766h.c(), null, null, 59));
    }
}
