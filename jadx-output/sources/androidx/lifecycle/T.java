package androidx.lifecycle;

import android.os.Bundle;
import java.util.Map;

/* loaded from: classes.dex */
public final class T implements x0.c {

    /* renamed from: a, reason: collision with root package name */
    public final x0.d f4034a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4035b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f4036c;

    /* renamed from: d, reason: collision with root package name */
    public final Q2.h f4037d;

    public T(x0.d dVar, d0 d0Var) {
        d3.i.e("savedStateRegistry", dVar);
        d3.i.e("viewModelStoreOwner", d0Var);
        this.f4034a = dVar;
        this.f4037d = new Q2.h(new B3.k(10, d0Var));
    }

    @Override // x0.c
    public final Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f4036c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry entry : ((U) this.f4037d.getValue()).f4038a.entrySet()) {
            String str = (String) entry.getKey();
            Bundle bundleA = ((P) entry.getValue()).f4023e.a();
            if (!d3.i.a(bundleA, Bundle.EMPTY)) {
                bundle.putBundle(str, bundleA);
            }
        }
        this.f4035b = false;
        return bundle;
    }

    public final void b() {
        if (this.f4035b) {
            return;
        }
        Bundle bundleA = this.f4034a.a("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f4036c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (bundleA != null) {
            bundle.putAll(bundleA);
        }
        this.f4036c = bundle;
        this.f4035b = true;
    }
}
