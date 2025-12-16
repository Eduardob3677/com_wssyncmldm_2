package androidx.fragment.app;

import java.util.ArrayList;

/* renamed from: androidx.fragment.app.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0127t implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3945c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3946d;

    public /* synthetic */ RunnableC0127t(int i5, Object obj) {
        this.f3945c = i5;
        this.f3946d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3945c) {
            case 0:
                Fragment fragment = (Fragment) this.f3946d;
                s0 s0Var = fragment.mViewLifecycleOwner;
                s0Var.f3944g.b(fragment.mSavedViewRegistryState);
                fragment.mSavedViewRegistryState = null;
                break;
            default:
                ArrayList arrayList = (ArrayList) this.f3946d;
                d3.i.e("$transitioningViews", arrayList);
                k0.a(arrayList, 4);
                break;
        }
    }
}
