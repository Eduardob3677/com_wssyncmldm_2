package x0;

import android.os.Bundle;
import androidx.lifecycle.C0157y;
import androidx.lifecycle.EnumC0149p;
import androidx.lifecycle.EnumC0150q;
import androidx.lifecycle.InterfaceC0153u;
import androidx.lifecycle.InterfaceC0155w;
import androidx.lifecycle.r;
import androidx.savedstate.Recreator;
import d3.i;
import java.util.Map;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final f f9627a;

    /* renamed from: b, reason: collision with root package name */
    public final d f9628b = new d();

    /* renamed from: c, reason: collision with root package name */
    public boolean f9629c;

    public e(f fVar) {
        this.f9627a = fVar;
    }

    public final void a() {
        f fVar = this.f9627a;
        r lifecycle = fVar.getLifecycle();
        if (((C0157y) lifecycle).f4073c != EnumC0150q.f4064d) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage".toString());
        }
        lifecycle.a(new Recreator(fVar));
        final d dVar = this.f9628b;
        dVar.getClass();
        if (!(!dVar.f9623b)) {
            throw new IllegalStateException("SavedStateRegistry was already attached.".toString());
        }
        lifecycle.a(new InterfaceC0153u() { // from class: x0.a
            @Override // androidx.lifecycle.InterfaceC0153u
            public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) {
                d dVar2 = dVar;
                i.e("this$0", dVar2);
                if (enumC0149p == EnumC0149p.ON_START) {
                    dVar2.f = true;
                } else if (enumC0149p == EnumC0149p.ON_STOP) {
                    dVar2.f = false;
                }
            }
        });
        dVar.f9623b = true;
        this.f9629c = true;
    }

    public final void b(Bundle bundle) {
        if (!this.f9629c) {
            a();
        }
        C0157y c0157y = (C0157y) this.f9627a.getLifecycle();
        if (!(!(c0157y.f4073c.compareTo(EnumC0150q.f) >= 0))) {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + c0157y.f4073c).toString());
        }
        d dVar = this.f9628b;
        if (!dVar.f9623b) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).".toString());
        }
        if (!(!dVar.f9625d)) {
            throw new IllegalStateException("SavedStateRegistry was already restored.".toString());
        }
        dVar.f9624c = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        dVar.f9625d = true;
    }

    public final void c(Bundle bundle) {
        i.e("outBundle", bundle);
        d dVar = this.f9628b;
        dVar.getClass();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = dVar.f9624c;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        m.f fVar = dVar.f9622a;
        fVar.getClass();
        m.d dVar2 = new m.d(fVar);
        fVar.f8259e.put(dVar2, Boolean.FALSE);
        while (dVar2.hasNext()) {
            Map.Entry entry = (Map.Entry) dVar2.next();
            bundle2.putBundle((String) entry.getKey(), ((c) entry.getValue()).a());
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
