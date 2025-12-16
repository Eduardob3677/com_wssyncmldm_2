package androidx.fragment.app;

import android.view.View;
import java.util.LinkedHashSet;

/* renamed from: androidx.fragment.app.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0116h {

    /* renamed from: a, reason: collision with root package name */
    public final u0 f3870a;

    /* renamed from: b, reason: collision with root package name */
    public final F.f f3871b;

    public AbstractC0116h(u0 u0Var, F.f fVar) {
        this.f3870a = u0Var;
        this.f3871b = fVar;
    }

    public final void a() {
        u0 u0Var = this.f3870a;
        u0Var.getClass();
        F.f fVar = this.f3871b;
        d3.i.e("signal", fVar);
        LinkedHashSet linkedHashSet = u0Var.f3956e;
        if (linkedHashSet.remove(fVar) && linkedHashSet.isEmpty()) {
            u0Var.b();
        }
    }

    public final boolean b() {
        u0 u0Var = this.f3870a;
        View view = u0Var.f3954c.mView;
        d3.i.d("operation.fragment.mView", view);
        int iB = W1.a.b(view);
        int i5 = u0Var.f3952a;
        return iB == i5 || !(iB == 2 || i5 == 2);
    }
}
