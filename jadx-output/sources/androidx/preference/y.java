package androidx.preference;

import androidx.recyclerview.widget.RecyclerView;
import j0.AbstractC0526A;
import j0.AbstractC0528C;

/* loaded from: classes.dex */
public final class y extends AbstractC0528C {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0526A f4743a;

    /* renamed from: b, reason: collision with root package name */
    public final RecyclerView f4744b;

    /* renamed from: c, reason: collision with root package name */
    public final Preference f4745c;

    /* renamed from: d, reason: collision with root package name */
    public final String f4746d;

    public y(D d2, RecyclerView recyclerView, Preference preference, String str) {
        this.f4743a = d2;
        this.f4744b = recyclerView;
        this.f4745c = preference;
        this.f4746d = str;
    }

    @Override // j0.AbstractC0528C
    public final void a() {
        c();
    }

    @Override // j0.AbstractC0528C
    public final void b(int i5, Object obj, int i6) {
        c();
    }

    public final void c() {
        AbstractC0526A abstractC0526A = this.f4743a;
        abstractC0526A.f7327a.unregisterObserver(this);
        Preference preference = this.f4745c;
        int iL = preference != null ? ((D) abstractC0526A).l(preference) : ((D) abstractC0526A).m(this.f4746d);
        if (iL != -1) {
            this.f4744b.v0(iL);
        }
    }
}
