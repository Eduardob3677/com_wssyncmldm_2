package J;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public abstract class g0 extends i0 {

    /* renamed from: b, reason: collision with root package name */
    public final WindowInsets.Builder f980b;

    public g0() {
        this.f980b = new WindowInsets.Builder();
    }

    @Override // J.i0
    public q0 b() {
        a();
        q0 q0VarF = q0.f(this.f980b.build(), null);
        q0VarF.f1002a.l(null);
        return q0VarF;
    }

    @Override // J.i0
    public void c(B.c cVar) {
        this.f980b.setMandatorySystemGestureInsets(cVar.d());
    }

    @Override // J.i0
    public void d(B.c cVar) {
        this.f980b.setSystemGestureInsets(cVar.d());
    }

    @Override // J.i0
    public void e(B.c cVar) {
        this.f980b.setSystemWindowInsets(cVar.d());
    }

    @Override // J.i0
    public void f(B.c cVar) {
        this.f980b.setTappableElementInsets(cVar.d());
    }

    public void g(B.c cVar) {
        this.f980b.setStableInsets(cVar.d());
    }

    public g0(q0 q0Var) {
        WindowInsets.Builder builder;
        super(q0Var);
        WindowInsets windowInsetsE = q0Var.e();
        if (windowInsetsE != null) {
            builder = new WindowInsets.Builder(windowInsetsE);
        } else {
            builder = new WindowInsets.Builder();
        }
        this.f980b = builder;
    }
}
