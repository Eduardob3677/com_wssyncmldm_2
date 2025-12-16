package J;

import android.view.View;
import android.view.WindowInsets;
import java.util.Objects;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class q0 {

    /* renamed from: b, reason: collision with root package name */
    public static final q0 f1001b = n0.f;

    /* renamed from: a, reason: collision with root package name */
    public final o0 f1002a;

    public q0(WindowInsets windowInsets) {
        this.f1002a = new n0(this, windowInsets);
    }

    public static q0 f(WindowInsets windowInsets, View view) {
        windowInsets.getClass();
        q0 q0Var = new q0(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            WeakHashMap weakHashMap = Q.f940a;
            q0 q0VarA = J.a(view);
            o0 o0Var = q0Var.f1002a;
            o0Var.m(q0VarA);
            o0Var.d(view.getRootView());
        }
        return q0Var;
    }

    public final int a() {
        return this.f1002a.h().f185d;
    }

    public final int b() {
        return this.f1002a.h().f182a;
    }

    public final int c() {
        return this.f1002a.h().f184c;
    }

    public final int d() {
        return this.f1002a.h().f183b;
    }

    public final WindowInsets e() {
        o0 o0Var = this.f1002a;
        if (o0Var instanceof j0) {
            return ((j0) o0Var).f989c;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q0)) {
            return false;
        }
        return Objects.equals(this.f1002a, ((q0) obj).f1002a);
    }

    public final int hashCode() {
        o0 o0Var = this.f1002a;
        if (o0Var == null) {
            return 0;
        }
        return o0Var.hashCode();
    }

    public q0() {
        this.f1002a = new o0(this);
    }
}
