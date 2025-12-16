package b1;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: b1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ComponentCallbacks2C0197c implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: g, reason: collision with root package name */
    public static final ComponentCallbacks2C0197c f5058g = new ComponentCallbacks2C0197c();

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f5059c = new AtomicBoolean();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f5060d = new AtomicBoolean();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f5061e = new ArrayList();
    public boolean f = false;

    public static void b(Application application) {
        ComponentCallbacks2C0197c componentCallbacks2C0197c = f5058g;
        synchronized (componentCallbacks2C0197c) {
            try {
                if (!componentCallbacks2C0197c.f) {
                    application.registerActivityLifecycleCallbacks(componentCallbacks2C0197c);
                    application.registerComponentCallbacks(componentCallbacks2C0197c);
                    componentCallbacks2C0197c.f = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(InterfaceC0196b interfaceC0196b) {
        synchronized (f5058g) {
            this.f5061e.add(interfaceC0196b);
        }
    }

    public final void c(boolean z4) {
        synchronized (f5058g) {
            try {
                ArrayList arrayList = this.f5061e;
                int size = arrayList.size();
                int i5 = 0;
                while (i5 < size) {
                    Object obj = arrayList.get(i5);
                    i5++;
                    ((InterfaceC0196b) obj).a(z4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean zCompareAndSet = this.f5059c.compareAndSet(true, false);
        this.f5060d.set(true);
        if (zCompareAndSet) {
            c(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        boolean zCompareAndSet = this.f5059c.compareAndSet(true, false);
        this.f5060d.set(true);
        if (zCompareAndSet) {
            c(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i5) {
        if (i5 == 20 && this.f5059c.compareAndSet(false, true)) {
            this.f5060d.set(true);
            c(true);
        }
    }
}
