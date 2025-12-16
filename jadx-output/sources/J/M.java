package J;

import android.view.View;
import com.wssyncmldm.R;
import java.util.Objects;
import o.C0722k;

/* loaded from: classes.dex */
public abstract class M {
    public static void a(View view, P p4) {
        C0722k c0722k = (C0722k) view.getTag(R.id.tag_unhandled_key_listeners);
        if (c0722k == null) {
            c0722k = new C0722k();
            view.setTag(R.id.tag_unhandled_key_listeners, c0722k);
        }
        Objects.requireNonNull(p4);
        View.OnUnhandledKeyEventListener l5 = new L();
        c0722k.put(p4, l5);
        view.addOnUnhandledKeyEventListener(l5);
    }

    public static CharSequence b(View view) {
        return view.getAccessibilityPaneTitle();
    }

    public static boolean c(View view) {
        return view.isAccessibilityHeading();
    }

    public static boolean d(View view) {
        return view.isScreenReaderFocusable();
    }

    public static void e(View view, P p4) {
        View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
        C0722k c0722k = (C0722k) view.getTag(R.id.tag_unhandled_key_listeners);
        if (c0722k == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) c0722k.getOrDefault(p4, null)) == null) {
            return;
        }
        view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
    }

    public static <T> T f(View view, int i5) {
        return (T) view.requireViewById(i5);
    }

    public static void g(View view, boolean z4) {
        view.setAccessibilityHeading(z4);
    }

    public static void h(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    public static void i(View view, M.a aVar) {
        view.setAutofillId(null);
    }

    public static void j(View view, boolean z4) {
        view.setScreenReaderFocusable(z4);
    }
}
