package androidx.lifecycle;

import kotlin.Metadata;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/SavedStateHandleAttacher;", "Landroidx/lifecycle/u;", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes.dex */
public final class SavedStateHandleAttacher implements InterfaceC0153u {

    /* renamed from: a, reason: collision with root package name */
    public final T f4030a;

    public SavedStateHandleAttacher(T t2) {
        this.f4030a = t2;
    }

    @Override // androidx.lifecycle.InterfaceC0153u
    public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) {
        if (enumC0149p == EnumC0149p.ON_CREATE) {
            interfaceC0155w.getLifecycle().b(this);
            this.f4030a.b();
        } else {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + enumC0149p).toString());
        }
    }
}
