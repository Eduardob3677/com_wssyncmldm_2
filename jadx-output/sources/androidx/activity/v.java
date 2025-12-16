package androidx.activity;

import android.os.Build;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.fragment.app.Q;
import androidx.fragment.app.Z;
import androidx.lifecycle.C0157y;
import androidx.lifecycle.EnumC0150q;
import androidx.lifecycle.InterfaceC0155w;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f3207a;

    /* renamed from: b, reason: collision with root package name */
    public final R2.h f3208b;

    /* renamed from: c, reason: collision with root package name */
    public Q f3209c;

    /* renamed from: d, reason: collision with root package name */
    public final OnBackInvokedCallback f3210d;

    /* renamed from: e, reason: collision with root package name */
    public OnBackInvokedDispatcher f3211e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3212g;

    public v(Runnable runnable) {
        this.f3207a = runnable;
        R2.h hVar = new R2.h();
        hVar.f2317d = R2.h.f;
        this.f3208b = hVar;
        this.f3210d = Build.VERSION.SDK_INT >= 34 ? s.f3203a.a(new n(this, 0), new n(this, 1), new o(this, 0), new o(this, 1)) : q.f3176a.a(new o(this, 2));
    }

    public final void a(InterfaceC0155w interfaceC0155w, Q q2) {
        d3.i.e("onBackPressedCallback", q2);
        androidx.lifecycle.r lifecycle = interfaceC0155w.getLifecycle();
        if (((C0157y) lifecycle).f4073c == EnumC0150q.f4063c) {
            return;
        }
        q2.f3761b.add(new OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(this, lifecycle, q2));
        d();
        q2.f3762c = new u(0, this, v.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0, 0);
    }

    public final void b() {
        Object objPrevious;
        R2.h hVar = this.f3208b;
        ListIterator listIterator = hVar.listIterator(hVar.l());
        while (true) {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            } else {
                objPrevious = listIterator.previous();
                if (((Q) objPrevious).f3760a) {
                    break;
                }
            }
        }
        Q q2 = (Q) objPrevious;
        this.f3209c = null;
        if (q2 == null) {
            Runnable runnable = this.f3207a;
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        Z z4 = q2.f3763d;
        z4.x(true);
        if (z4.f3792h.f3760a) {
            z4.L();
        } else {
            z4.f3791g.b();
        }
    }

    public final void c(boolean z4) {
        OnBackInvokedCallback onBackInvokedCallback;
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f3211e;
        if (onBackInvokedDispatcher == null || (onBackInvokedCallback = this.f3210d) == null) {
            return;
        }
        q qVar = q.f3176a;
        if (z4 && !this.f) {
            qVar.b(onBackInvokedDispatcher, 0, onBackInvokedCallback);
            this.f = true;
        } else {
            if (z4 || !this.f) {
                return;
            }
            qVar.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f = false;
        }
    }

    public final void d() {
        boolean z4 = this.f3212g;
        R2.h hVar = this.f3208b;
        boolean z5 = false;
        if (!(hVar instanceof Collection) || !hVar.isEmpty()) {
            Iterator it = hVar.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((Q) it.next()).f3760a) {
                    z5 = true;
                    break;
                }
            }
        }
        this.f3212g = z5;
        if (z5 != z4) {
            c(z5);
        }
    }
}
