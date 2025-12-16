package androidx.lifecycle;

/* renamed from: androidx.lifecycle.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0139f extends C {

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ AbstractC0140g f4060l;

    public C0139f(AbstractC0140g abstractC0140g) {
        this.f4060l = abstractC0140g;
    }

    @Override // androidx.lifecycle.C
    public final void g() {
        AbstractC0140g abstractC0140g = this.f4060l;
        abstractC0140g.getExecutor$lifecycle_livedata_release().execute(abstractC0140g.refreshRunnable);
    }
}
