package J;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public abstract class k0 extends j0 {

    /* renamed from: e, reason: collision with root package name */
    public B.c f991e;

    public k0(q0 q0Var, WindowInsets windowInsets) {
        super(q0Var, windowInsets);
        this.f991e = null;
    }

    @Override // J.o0
    public q0 b() {
        return q0.f(this.f989c.consumeStableInsets(), null);
    }

    @Override // J.o0
    public q0 c() {
        return q0.f(this.f989c.consumeSystemWindowInsets(), null);
    }

    @Override // J.o0
    public final B.c g() {
        if (this.f991e == null) {
            WindowInsets windowInsets = this.f989c;
            this.f991e = B.c.b(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.f991e;
    }

    @Override // J.o0
    public boolean j() {
        return this.f989c.isConsumed();
    }
}
