package androidx.lifecycle;

/* loaded from: classes.dex */
class LiveData$LifecycleBoundObserver extends B implements InterfaceC0153u {

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC0155w f4017e;
    public final /* synthetic */ C f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveData$LifecycleBoundObserver(C c2, InterfaceC0155w interfaceC0155w, G g5) {
        super(c2, g5);
        this.f = c2;
        this.f4017e = interfaceC0155w;
    }

    @Override // androidx.lifecycle.InterfaceC0153u
    public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) {
        InterfaceC0155w interfaceC0155w2 = this.f4017e;
        EnumC0150q enumC0150q = ((C0157y) interfaceC0155w2.getLifecycle()).f4073c;
        if (enumC0150q == EnumC0150q.f4063c) {
            this.f.j(this.f3987a);
            return;
        }
        EnumC0150q enumC0150q2 = null;
        while (enumC0150q2 != enumC0150q) {
            b(e());
            enumC0150q2 = enumC0150q;
            enumC0150q = ((C0157y) interfaceC0155w2.getLifecycle()).f4073c;
        }
    }

    @Override // androidx.lifecycle.B
    public final void c() {
        this.f4017e.getLifecycle().b(this);
    }

    @Override // androidx.lifecycle.B
    public final boolean d(InterfaceC0155w interfaceC0155w) {
        return this.f4017e == interfaceC0155w;
    }

    @Override // androidx.lifecycle.B
    public final boolean e() {
        return ((C0157y) this.f4017e.getLifecycle()).f4073c.a(EnumC0150q.f);
    }
}
