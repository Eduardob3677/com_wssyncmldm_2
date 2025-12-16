package J;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public abstract class j0 extends o0 {

    /* renamed from: c, reason: collision with root package name */
    public final WindowInsets f989c;

    /* renamed from: d, reason: collision with root package name */
    public B.c f990d;

    public j0(q0 q0Var, WindowInsets windowInsets) {
        super(q0Var);
        this.f990d = null;
        this.f989c = windowInsets;
    }

    @Override // J.o0
    public final B.c h() {
        if (this.f990d == null) {
            WindowInsets windowInsets = this.f989c;
            this.f990d = B.c.b(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.f990d;
    }

    @Override // J.o0
    public boolean k() {
        return this.f989c.isRound();
    }

    @Override // J.o0
    public void l(B.c[] cVarArr) {
    }

    @Override // J.o0
    public void m(q0 q0Var) {
    }
}
