package androidx.emoji2.text;

import J.r0;
import f1.AbstractC0420a;

/* loaded from: classes.dex */
public final class d extends AbstractC0420a {
    public final /* synthetic */ e f;

    public d(e eVar) {
        this.f = eVar;
    }

    @Override // f1.AbstractC0420a
    public final void Z(Throwable th) {
        this.f.f3688a.d(th);
    }

    @Override // f1.AbstractC0420a
    public final void a0(com.google.firebase.messaging.p pVar) {
        e eVar = this.f;
        eVar.f3690c = pVar;
        com.google.firebase.messaging.p pVar2 = eVar.f3690c;
        e4.d dVar = new e4.d(9);
        c cVar = eVar.f3688a.f3702h;
        r0 r0Var = new r0();
        r0Var.f1006c = dVar;
        r0Var.f1007d = pVar2;
        r0Var.f1008e = cVar;
        eVar.f3689b = r0Var;
        eVar.f3688a.e();
    }
}
