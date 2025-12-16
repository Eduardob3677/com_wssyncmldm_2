package androidx.activity;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import c3.InterfaceC0221a;
import c3.InterfaceC0222b;

/* loaded from: classes.dex */
public final class r implements OnBackAnimationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0222b f3177a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0222b f3178b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0221a f3179c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0221a f3180d;

    public r(InterfaceC0222b interfaceC0222b, InterfaceC0222b interfaceC0222b2, InterfaceC0221a interfaceC0221a, InterfaceC0221a interfaceC0221a2) {
        this.f3177a = interfaceC0222b;
        this.f3178b = interfaceC0222b2;
        this.f3179c = interfaceC0221a;
        this.f3180d = interfaceC0221a2;
    }

    public final void onBackCancelled() {
        this.f3180d.a();
    }

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() {
        this.f3179c.a();
    }

    public final void onBackProgressed(BackEvent backEvent) {
        d3.i.e("backEvent", backEvent);
        this.f3178b.e(new b(backEvent));
    }

    public final void onBackStarted(BackEvent backEvent) {
        d3.i.e("backEvent", backEvent);
        this.f3177a.e(new b(backEvent));
    }
}
