package androidx.lifecycle;

/* loaded from: classes.dex */
public final class D implements G {

    /* renamed from: a, reason: collision with root package name */
    public final C f4002a;

    /* renamed from: b, reason: collision with root package name */
    public final G f4003b;

    /* renamed from: c, reason: collision with root package name */
    public int f4004c = -1;

    public D(C c2, X x4) {
        this.f4002a = c2;
        this.f4003b = x4;
    }

    @Override // androidx.lifecycle.G
    public final void c(Object obj) {
        int i5 = this.f4004c;
        int i6 = this.f4002a.f3997g;
        if (i5 != i6) {
            this.f4004c = i6;
            this.f4003b.c(obj);
        }
    }
}
