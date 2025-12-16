package androidx.fragment.app;

import android.os.Bundle;

/* renamed from: androidx.fragment.app.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0129v extends A {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f3959a;

    public C0129v(Fragment fragment) {
        this.f3959a = fragment;
    }

    @Override // androidx.fragment.app.A
    public final void a() {
        Fragment fragment = this.f3959a;
        fragment.mSavedStateRegistryController.a();
        androidx.lifecycle.S.e(fragment);
        Bundle bundle = fragment.mSavedFragmentState;
        fragment.mSavedStateRegistryController.b(bundle != null ? bundle.getBundle("registryState") : null);
    }
}
