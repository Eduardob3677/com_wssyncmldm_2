package C0;

import android.view.ViewGroup;

/* renamed from: C0.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0015e extends u {

    /* renamed from: a, reason: collision with root package name */
    public boolean f265a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f266b;

    public C0015e(ViewGroup viewGroup) {
        this.f266b = viewGroup;
    }

    @Override // C0.u, C0.s
    public final void a() {
        this.f266b.suppressLayout(false);
        this.f265a = true;
    }

    @Override // C0.u, C0.s
    public final void b() {
        this.f266b.suppressLayout(false);
    }

    @Override // C0.s
    public final void c(t tVar) {
        if (!this.f265a) {
            this.f266b.suppressLayout(false);
        }
        tVar.w(this);
    }

    @Override // C0.u, C0.s
    public final void e() {
        this.f266b.suppressLayout(true);
    }
}
