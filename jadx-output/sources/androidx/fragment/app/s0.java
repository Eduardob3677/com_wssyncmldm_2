package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.lifecycle.C0157y;
import androidx.lifecycle.EnumC0149p;
import androidx.lifecycle.InterfaceC0145l;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class s0 implements InterfaceC0145l, x0.f, androidx.lifecycle.d0 {

    /* renamed from: c, reason: collision with root package name */
    public final Fragment f3941c;

    /* renamed from: d, reason: collision with root package name */
    public final androidx.lifecycle.c0 f3942d;

    /* renamed from: e, reason: collision with root package name */
    public final Runnable f3943e;
    public C0157y f = null;

    /* renamed from: g, reason: collision with root package name */
    public x0.e f3944g = null;

    public s0(Fragment fragment, androidx.lifecycle.c0 c0Var, RunnableC0127t runnableC0127t) {
        this.f3941c = fragment;
        this.f3942d = c0Var;
        this.f3943e = runnableC0127t;
    }

    public final void a(EnumC0149p enumC0149p) {
        this.f.e(enumC0149p);
    }

    public final void b() {
        if (this.f == null) {
            this.f = new C0157y(this);
            x0.e eVar = new x0.e(this);
            this.f3944g = eVar;
            eVar.a();
            this.f3943e.run();
        }
    }

    @Override // androidx.lifecycle.InterfaceC0145l
    public final b0.b getDefaultViewModelCreationExtras() {
        Application application;
        Fragment fragment = this.f3941c;
        Context applicationContext = fragment.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        b0.c cVar = new b0.c();
        LinkedHashMap linkedHashMap = cVar.f5052a;
        if (application != null) {
            linkedHashMap.put(androidx.lifecycle.Z.f4046c, application);
        }
        linkedHashMap.put(androidx.lifecycle.S.f4027a, fragment);
        linkedHashMap.put(androidx.lifecycle.S.f4028b, this);
        if (fragment.getArguments() != null) {
            linkedHashMap.put(androidx.lifecycle.S.f4029c, fragment.getArguments());
        }
        return cVar;
    }

    @Override // androidx.lifecycle.InterfaceC0155w
    public final androidx.lifecycle.r getLifecycle() {
        b();
        return this.f;
    }

    @Override // x0.f
    public final x0.d getSavedStateRegistry() {
        b();
        return this.f3944g.f9628b;
    }

    @Override // androidx.lifecycle.d0
    public final androidx.lifecycle.c0 getViewModelStore() {
        b();
        return this.f3942d;
    }
}
