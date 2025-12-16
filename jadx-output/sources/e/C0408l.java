package e;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* renamed from: e.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0408l implements x0.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6777a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6778b;

    public C0408l(x0.d dVar) {
        d3.i.e("registry", dVar);
        this.f6778b = new LinkedHashSet();
        dVar.c("androidx.savedstate.Restarter", this);
    }

    @Override // x0.c
    public final Bundle a() {
        switch (this.f6777a) {
            case 0:
                Bundle bundle = new Bundle();
                ((AbstractActivityC0410n) this.f6778b).getDelegate().getClass();
                return bundle;
            default:
                Bundle bundle2 = new Bundle();
                bundle2.putStringArrayList("classes_to_restore", new ArrayList<>((LinkedHashSet) this.f6778b));
                return bundle2;
        }
    }

    public C0408l(AbstractActivityC0410n abstractActivityC0410n) {
        this.f6778b = abstractActivityC0410n;
    }
}
