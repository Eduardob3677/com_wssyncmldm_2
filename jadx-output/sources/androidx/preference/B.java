package androidx.preference;

import android.os.Handler;

/* loaded from: classes.dex */
public final class B implements o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PreferenceGroup f4551a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ D f4552b;

    public B(D d2, PreferenceGroup preferenceGroup) {
        this.f4552b = d2;
        this.f4551a = preferenceGroup;
    }

    @Override // androidx.preference.o
    public final boolean a(Preference preference) {
        this.f4551a.H(Integer.MAX_VALUE);
        D d2 = this.f4552b;
        Handler handler = d2.f4562i;
        t tVar = d2.f4563j;
        handler.removeCallbacks(tVar);
        handler.post(tVar);
        return true;
    }
}
