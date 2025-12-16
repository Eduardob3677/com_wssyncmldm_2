package androidx.fragment.app;

import android.view.View;

/* renamed from: androidx.fragment.app.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0125q extends J {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ J f3933c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ r f3934d;

    public C0125q(r rVar, J j3) {
        this.f3934d = rVar;
        this.f3933c = j3;
    }

    @Override // androidx.fragment.app.J
    public final View b(int i5) {
        J j3 = this.f3933c;
        return j3.c() ? j3.b(i5) : this.f3934d.onFindViewById(i5);
    }

    @Override // androidx.fragment.app.J
    public final boolean c() {
        return this.f3933c.c() || this.f3934d.onHasView();
    }
}
