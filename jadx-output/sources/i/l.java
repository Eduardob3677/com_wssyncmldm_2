package i;

import J.a0;
import J.b0;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: c, reason: collision with root package name */
    public Interpolator f7140c;

    /* renamed from: d, reason: collision with root package name */
    public b0 f7141d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7142e;

    /* renamed from: b, reason: collision with root package name */
    public long f7139b = -1;
    public final k f = new k(this);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f7138a = new ArrayList();

    public final void a() {
        if (this.f7142e) {
            Iterator it = this.f7138a.iterator();
            while (it.hasNext()) {
                ((a0) it.next()).b();
            }
            this.f7142e = false;
        }
    }

    public final void b() {
        View view;
        if (this.f7142e) {
            return;
        }
        Iterator it = this.f7138a.iterator();
        while (it.hasNext()) {
            a0 a0Var = (a0) it.next();
            long j3 = this.f7139b;
            if (j3 >= 0) {
                a0Var.c(j3);
            }
            Interpolator interpolator = this.f7140c;
            if (interpolator != null && (view = (View) a0Var.f954a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f7141d != null) {
                a0Var.d(this.f);
            }
            View view2 = (View) a0Var.f954a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f7142e = true;
    }
}
