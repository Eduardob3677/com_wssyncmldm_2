package androidx.activity;

import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.EnumC0149p;
import androidx.lifecycle.InterfaceC0153u;
import androidx.lifecycle.InterfaceC0155w;

/* loaded from: classes.dex */
final class ImmLeaksCleaner implements InterfaceC0153u {

    /* renamed from: a, reason: collision with root package name */
    public static int f3144a;

    @Override // androidx.lifecycle.InterfaceC0153u
    public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) throws SecurityException {
        if (enumC0149p != EnumC0149p.ON_DESTROY) {
            return;
        }
        if (f3144a == 0) {
            try {
                f3144a = 2;
                InputMethodManager.class.getDeclaredField("mServedView").setAccessible(true);
                InputMethodManager.class.getDeclaredField("mNextServedView").setAccessible(true);
                InputMethodManager.class.getDeclaredField("mH").setAccessible(true);
                f3144a = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (f3144a == 1) {
            throw null;
        }
    }
}
