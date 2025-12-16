package J;

import android.view.View;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f954a;

    public a0(View view) {
        this.f954a = new WeakReference(view);
    }

    public final void a(float f) {
        View view = (View) this.f954a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
    }

    public final void b() {
        View view = (View) this.f954a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void c(long j3) {
        View view = (View) this.f954a.get();
        if (view != null) {
            view.animate().setDuration(j3);
        }
    }

    public final void d(b0 b0Var) {
        View view = (View) this.f954a.get();
        if (view != null) {
            if (b0Var != null) {
                view.animate().setListener(new C0.q(b0Var, view));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(float f) {
        View view = (View) this.f954a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
    }
}
