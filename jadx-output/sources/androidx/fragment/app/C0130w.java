package androidx.fragment.app;

import android.view.View;

/* renamed from: androidx.fragment.app.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0130w extends J {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Fragment f3961c;

    public C0130w(Fragment fragment) {
        this.f3961c = fragment;
    }

    @Override // androidx.fragment.app.J
    public final View b(int i5) {
        Fragment fragment = this.f3961c;
        View view = fragment.mView;
        if (view != null) {
            return view.findViewById(i5);
        }
        throw new IllegalStateException(B.f.u("Fragment ", fragment, " does not have a view"));
    }

    @Override // androidx.fragment.app.J
    public final boolean c() {
        return this.f3961c.mView != null;
    }
}
