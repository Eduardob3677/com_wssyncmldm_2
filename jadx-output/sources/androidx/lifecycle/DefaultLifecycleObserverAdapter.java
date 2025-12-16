package androidx.lifecycle;

import kotlin.Metadata;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/DefaultLifecycleObserverAdapter;", "Landroidx/lifecycle/u;", "lifecycle-common"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes.dex */
public final class DefaultLifecycleObserverAdapter implements InterfaceC0153u {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0141h f4005a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0153u f4006b;

    public DefaultLifecycleObserverAdapter(InterfaceC0141h interfaceC0141h, InterfaceC0153u interfaceC0153u) {
        d3.i.e("defaultLifecycleObserver", interfaceC0141h);
        this.f4005a = interfaceC0141h;
        this.f4006b = interfaceC0153u;
    }

    @Override // androidx.lifecycle.InterfaceC0153u
    public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) {
        int i5 = AbstractC0142i.f4061a[enumC0149p.ordinal()];
        InterfaceC0141h interfaceC0141h = this.f4005a;
        switch (i5) {
            case 1:
                interfaceC0141h.getClass();
                break;
            case 2:
                interfaceC0141h.getClass();
                break;
            case 3:
                interfaceC0141h.onResume();
                break;
            case 4:
                interfaceC0141h.getClass();
                break;
            case 5:
                interfaceC0141h.getClass();
                break;
            case 6:
                interfaceC0141h.getClass();
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        InterfaceC0153u interfaceC0153u = this.f4006b;
        if (interfaceC0153u != null) {
            interfaceC0153u.a(interfaceC0155w, enumC0149p);
        }
    }
}
