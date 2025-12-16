package j0;

import J.C0042p;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class F {

    /* renamed from: a, reason: collision with root package name */
    public C0552y f7330a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f7331b;

    /* renamed from: c, reason: collision with root package name */
    public View f7332c;

    public static void b(b0 b0Var) {
        RecyclerView recyclerView;
        int i5 = b0Var.f7414j;
        if (b0Var.h() || (i5 & 4) != 0 || (recyclerView = b0Var.f7421r) == null) {
            return;
        }
        recyclerView.R(b0Var);
    }

    public abstract boolean a(b0 b0Var, b0 b0Var2, C0042p c0042p, C0042p c0042p2);

    /* JADX WARN: Removed duplicated region for block: B:37:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(b0 b0Var) {
        C0552y c0552y = this.f7330a;
        if (c0552y != null) {
            boolean z4 = true;
            b0Var.p(true);
            if (b0Var.f7412h != null && b0Var.f7413i == null) {
                b0Var.f7412h = null;
            }
            b0Var.f7413i = null;
            RecyclerView recyclerView = c0552y.f7599a;
            Iterator it = recyclerView.f4889r.iterator();
            while (it.hasNext()) {
            }
            if ((b0Var.f7414j & 16) != 0) {
                return;
            }
            recyclerView.C0();
            D3.f fVar = recyclerView.f4863h;
            C0531c c0531c = (C0531c) fVar.f506d;
            C0552y c0552y2 = (C0552y) fVar.f505c;
            int i5 = fVar.f504b;
            View view = b0Var.f7406a;
            if (i5 != 1) {
                if (i5 == 2) {
                    throw new IllegalStateException("Cannot call removeViewIfHidden within removeViewIfHidden");
                }
                try {
                    fVar.f504b = 2;
                    int iIndexOfChild = c0552y2.f7599a.indexOfChild(view);
                    if (iIndexOfChild == -1) {
                        fVar.n(view);
                    } else if (c0531c.d(iIndexOfChild)) {
                        c0531c.f(iIndexOfChild);
                        fVar.n(view);
                        c0552y2.h(iIndexOfChild);
                    }
                    if (z4) {
                        b0 b0VarV = RecyclerView.V(view);
                        P p4 = recyclerView.f4855e;
                        p4.l(b0VarV);
                        p4.i(b0VarV);
                        if (RecyclerView.f4771m2) {
                            Log.d("SeslRecyclerView", "after removing animated view: " + view + ", " + recyclerView);
                        }
                    }
                    recyclerView.E0(!z4);
                    if (z4 && b0Var.l()) {
                        recyclerView.removeDetachedView(view, false);
                        return;
                    }
                } finally {
                    fVar.f504b = 0;
                }
            }
            if (((View) fVar.f) != view) {
                throw new IllegalStateException("Cannot call removeViewIfHidden within removeView(At) for a different view");
            }
            z4 = false;
            if (z4) {
            }
            recyclerView.E0(!z4);
            if (z4) {
            }
        }
    }

    public abstract void d(b0 b0Var);

    public abstract void e();

    public abstract boolean f();
}
