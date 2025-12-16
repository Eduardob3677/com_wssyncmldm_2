package e;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class x {
    public static OnBackInvokedDispatcher a(Activity activity) {
        return activity.getOnBackInvokedDispatcher();
    }

    public static OnBackInvokedCallback b(Object obj, C c2) {
        Objects.requireNonNull(c2);
        androidx.activity.p pVar = new androidx.activity.p(1, c2);
        ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(1000000, pVar);
        return pVar;
    }

    public static void c(Object obj, Object obj2) {
        ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
    }
}
