package x1;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.gms.internal.p000firebaseauthapi.b5;
import w.AbstractC0897a;

/* loaded from: classes.dex */
public abstract class c extends AbstractC0897a {

    /* renamed from: a, reason: collision with root package name */
    public b5 f9632a;

    /* renamed from: b, reason: collision with root package name */
    public int f9633b = 0;

    public c() {
    }

    @Override // w.AbstractC0897a
    public boolean h(CoordinatorLayout coordinatorLayout, View view, int i5) {
        s(coordinatorLayout, view, i5);
        if (this.f9632a == null) {
            b5 b5Var = new b5();
            b5Var.f5524d = view;
            this.f9632a = b5Var;
        }
        b5 b5Var2 = this.f9632a;
        View view2 = (View) b5Var2.f5524d;
        b5Var2.f5521a = view2.getTop();
        b5Var2.f5522b = view2.getLeft();
        this.f9632a.b();
        int i6 = this.f9633b;
        if (i6 == 0) {
            return true;
        }
        b5 b5Var3 = this.f9632a;
        if (b5Var3.f5523c != i6) {
            b5Var3.f5523c = i6;
            b5Var3.b();
        }
        this.f9633b = 0;
        return true;
    }

    public void s(CoordinatorLayout coordinatorLayout, View view, int i5) {
        coordinatorLayout.q(i5, view);
    }

    public c(int i5) {
    }
}
