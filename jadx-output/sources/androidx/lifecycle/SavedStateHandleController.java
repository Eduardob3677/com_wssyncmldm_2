package androidx.lifecycle;

import kotlin.Metadata;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/SavedStateHandleController;", "Landroidx/lifecycle/u;", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes.dex */
public final class SavedStateHandleController implements InterfaceC0153u {

    /* renamed from: a, reason: collision with root package name */
    public final String f4031a;

    /* renamed from: b, reason: collision with root package name */
    public final P f4032b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4033c;

    public SavedStateHandleController(String str, P p4) {
        this.f4031a = str;
        this.f4032b = p4;
    }

    @Override // androidx.lifecycle.InterfaceC0153u
    public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) {
        if (enumC0149p == EnumC0149p.ON_DESTROY) {
            this.f4033c = false;
            interfaceC0155w.getLifecycle().b(this);
        }
    }

    public final void b(r rVar, x0.d dVar) {
        d3.i.e("registry", dVar);
        d3.i.e("lifecycle", rVar);
        if (!(!this.f4033c)) {
            throw new IllegalStateException("Already attached to lifecycleOwner".toString());
        }
        this.f4033c = true;
        rVar.a(this);
        dVar.c(this.f4031a, this.f4032b.f4023e);
    }
}
