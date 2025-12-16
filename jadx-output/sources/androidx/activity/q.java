package androidx.activity;

import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import c3.InterfaceC0221a;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public static final q f3176a = new q();

    public final OnBackInvokedCallback a(InterfaceC0221a interfaceC0221a) {
        d3.i.e("onBackInvoked", interfaceC0221a);
        return new p(0, interfaceC0221a);
    }

    public final void b(Object obj, int i5, Object obj2) {
        d3.i.e("dispatcher", obj);
        d3.i.e("callback", obj2);
        ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(i5, (OnBackInvokedCallback) obj2);
    }

    public final void c(Object obj, Object obj2) {
        d3.i.e("dispatcher", obj);
        d3.i.e("callback", obj2);
        ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
    }
}
