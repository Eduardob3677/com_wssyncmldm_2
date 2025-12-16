package J;

import android.view.View;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public abstract class J {
    public static q0 a(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        q0 q0VarF = q0.f(rootWindowInsets, null);
        o0 o0Var = q0VarF.f1002a;
        o0Var.m(q0VarF);
        o0Var.d(view.getRootView());
        return q0VarF;
    }

    public static int b(View view) {
        return view.getScrollIndicators();
    }

    public static void c(View view, int i5) {
        view.setScrollIndicators(i5);
    }

    public static void d(View view, int i5, int i6) {
        view.setScrollIndicators(i5, i6);
    }
}
