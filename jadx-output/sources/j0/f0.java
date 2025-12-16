package j0;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class f0 extends M {

    /* renamed from: a, reason: collision with root package name */
    public boolean f7441a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0551x f7442b;

    public f0(C0551x c0551x) {
        this.f7442b = c0551x;
    }

    @Override // j0.M
    public final void a(RecyclerView recyclerView, int i5) {
        if (i5 == 0 && this.f7441a) {
            this.f7441a = false;
            this.f7442b.h();
        }
    }

    @Override // j0.M
    public final void b(RecyclerView recyclerView, int i5, int i6) {
        if (i5 == 0 && i6 == 0) {
            return;
        }
        this.f7441a = true;
    }
}
