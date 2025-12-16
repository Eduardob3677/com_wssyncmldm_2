package androidx.activity;

import androidx.fragment.app.Q;
import c3.InterfaceC0221a;

/* loaded from: classes.dex */
public final class t implements c {

    /* renamed from: a, reason: collision with root package name */
    public final Q f3204a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v f3205b;

    public t(v vVar, Q q2) {
        this.f3205b = vVar;
        this.f3204a = q2;
    }

    @Override // androidx.activity.c
    public final void cancel() {
        v vVar = this.f3205b;
        R2.h hVar = vVar.f3208b;
        Q q2 = this.f3204a;
        hVar.remove(q2);
        if (d3.i.a(vVar.f3209c, q2)) {
            q2.getClass();
            vVar.f3209c = null;
        }
        q2.getClass();
        q2.f3761b.remove(this);
        InterfaceC0221a interfaceC0221a = q2.f3762c;
        if (interfaceC0221a != null) {
            interfaceC0221a.a();
        }
        q2.f3762c = null;
    }
}
