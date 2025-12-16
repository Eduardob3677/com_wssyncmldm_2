package l;

import android.os.Handler;
import android.os.Looper;
import h0.ExecutorC0433d;

/* renamed from: l.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0640a extends L2.b {

    /* renamed from: g, reason: collision with root package name */
    public static volatile C0640a f8068g;

    /* renamed from: h, reason: collision with root package name */
    public static final ExecutorC0433d f8069h = new ExecutorC0433d(1);
    public final c f = new c();

    public static C0640a R() {
        if (f8068g != null) {
            return f8068g;
        }
        synchronized (C0640a.class) {
            try {
                if (f8068g == null) {
                    f8068g = new C0640a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f8068g;
    }

    public final boolean S() {
        this.f.getClass();
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public final void T(Runnable runnable) {
        c cVar = this.f;
        if (cVar.f8073h == null) {
            synchronized (cVar.f) {
                try {
                    if (cVar.f8073h == null) {
                        cVar.f8073h = Handler.createAsync(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        cVar.f8073h.post(runnable);
    }
}
