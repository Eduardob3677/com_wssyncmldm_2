package androidx.lifecycle;

import kotlin.Metadata;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1", "Landroidx/lifecycle/u;", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes.dex */
public final class LegacySavedStateHandleController$tryToAddRecreator$1 implements InterfaceC0153u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f4015a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x0.d f4016b;

    public LegacySavedStateHandleController$tryToAddRecreator$1(r rVar, x0.d dVar) {
        this.f4015a = rVar;
        this.f4016b = dVar;
    }

    @Override // androidx.lifecycle.InterfaceC0153u
    public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) throws NoSuchMethodException, SecurityException {
        if (enumC0149p == EnumC0149p.ON_START) {
            this.f4015a.b(this);
            this.f4016b.d();
        }
    }
}
