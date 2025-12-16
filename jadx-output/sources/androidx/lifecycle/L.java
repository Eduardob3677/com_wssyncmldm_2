package androidx.lifecycle;

import android.os.Handler;

/* loaded from: classes.dex */
public final class L implements InterfaceC0155w {

    /* renamed from: j, reason: collision with root package name */
    public static final L f4008j = new L();

    /* renamed from: c, reason: collision with root package name */
    public int f4009c;

    /* renamed from: d, reason: collision with root package name */
    public int f4010d;

    /* renamed from: g, reason: collision with root package name */
    public Handler f4012g;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4011e = true;
    public boolean f = true;

    /* renamed from: h, reason: collision with root package name */
    public final C0157y f4013h = new C0157y(this);

    /* renamed from: i, reason: collision with root package name */
    public final D1.b f4014i = new D1.b(11, this);

    public final void a() {
        int i5 = this.f4010d + 1;
        this.f4010d = i5;
        if (i5 == 1) {
            if (this.f4011e) {
                this.f4013h.e(EnumC0149p.ON_RESUME);
                this.f4011e = false;
            } else {
                Handler handler = this.f4012g;
                d3.i.b(handler);
                handler.removeCallbacks(this.f4014i);
            }
        }
    }

    @Override // androidx.lifecycle.InterfaceC0155w
    public final r getLifecycle() {
        return this.f4013h;
    }
}
