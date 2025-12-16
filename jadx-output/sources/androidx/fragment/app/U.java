package androidx.fragment.app;

/* loaded from: classes.dex */
public final class U implements d0 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Fragment f3767c;

    public U(Fragment fragment) {
        this.f3767c = fragment;
    }

    @Override // androidx.fragment.app.d0
    public final void a(Fragment fragment) {
        this.f3767c.onAttachFragment(fragment);
    }
}
