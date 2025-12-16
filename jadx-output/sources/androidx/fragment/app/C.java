package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.EnumC0149p;

/* loaded from: classes.dex */
public final /* synthetic */ class C implements x0.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3733a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3734b;

    public /* synthetic */ C(int i5, Object obj) {
        this.f3733a = i5;
        this.f3734b = obj;
    }

    @Override // x0.c
    public final Bundle a() {
        switch (this.f3733a) {
            case 0:
                G g5 = (G) this.f3734b;
                g5.markFragmentsCreated();
                g5.mFragmentLifecycleRegistry.e(EnumC0149p.ON_STOP);
                return new Bundle();
            default:
                return ((Z) this.f3734b).R();
        }
    }
}
