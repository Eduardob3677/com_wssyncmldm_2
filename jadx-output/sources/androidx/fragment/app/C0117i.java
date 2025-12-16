package androidx.fragment.app;

import android.transition.Transition;

/* renamed from: androidx.fragment.app.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0117i extends AbstractC0116h {

    /* renamed from: c, reason: collision with root package name */
    public final Object f3876c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f3877d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f3878e;

    public C0117i(u0 u0Var, F.f fVar, boolean z4, boolean z5) {
        super(u0Var, fVar);
        int i5 = u0Var.f3952a;
        Fragment fragment = u0Var.f3954c;
        this.f3876c = i5 == 2 ? z4 ? fragment.getReenterTransition() : fragment.getEnterTransition() : z4 ? fragment.getReturnTransition() : fragment.getExitTransition();
        this.f3877d = u0Var.f3952a == 2 ? z4 ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() : true;
        this.f3878e = z5 ? z4 ? fragment.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition() : null;
    }

    public final r0 c() {
        Object obj = this.f3876c;
        r0 r0VarD = d(obj);
        Object obj2 = this.f3878e;
        r0 r0VarD2 = d(obj2);
        if (r0VarD == null || r0VarD2 == null || r0VarD == r0VarD2) {
            return r0VarD == null ? r0VarD2 : r0VarD;
        }
        throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + this.f3870a.f3954c + " returned Transition " + obj + " which uses a different Transition  type than its shared element transition " + obj2).toString());
    }

    public final r0 d(Object obj) {
        if (obj == null) {
            return null;
        }
        p0 p0Var = k0.f3910a;
        if (obj instanceof Transition) {
            return p0Var;
        }
        r0 r0Var = k0.f3911b;
        if (r0Var != null && r0Var.e(obj)) {
            return r0Var;
        }
        throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.f3870a.f3954c + " is not a valid framework Transition or AndroidX Transition");
    }
}
