package androidx.fragment.app;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Y implements X {

    /* renamed from: a, reason: collision with root package name */
    public final int f3771a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3772b = 1;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Z f3773c;

    public Y(Z z4, int i5) {
        this.f3773c = z4;
        this.f3771a = i5;
    }

    @Override // androidx.fragment.app.X
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        Z z4 = this.f3773c;
        Fragment fragment = z4.f3806w;
        int i5 = this.f3771a;
        if (fragment == null || i5 >= 0 || !fragment.getChildFragmentManager().M(-1, 0)) {
            return z4.N(arrayList, arrayList2, i5, this.f3772b);
        }
        return false;
    }
}
