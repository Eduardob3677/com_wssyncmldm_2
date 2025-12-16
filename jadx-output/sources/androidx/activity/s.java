package androidx.activity;

import android.window.OnBackInvokedCallback;
import c3.InterfaceC0221a;
import c3.InterfaceC0222b;

/* loaded from: classes.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public static final s f3203a = new s();

    public final OnBackInvokedCallback a(InterfaceC0222b interfaceC0222b, InterfaceC0222b interfaceC0222b2, InterfaceC0221a interfaceC0221a, InterfaceC0221a interfaceC0221a2) {
        d3.i.e("onBackStarted", interfaceC0222b);
        d3.i.e("onBackProgressed", interfaceC0222b2);
        d3.i.e("onBackInvoked", interfaceC0221a);
        d3.i.e("onBackCancelled", interfaceC0221a2);
        return new r(interfaceC0222b, interfaceC0222b2, interfaceC0221a, interfaceC0221a2);
    }
}
