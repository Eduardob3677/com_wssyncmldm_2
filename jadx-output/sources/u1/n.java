package u1;

import R3.C0091m;
import c1.AbstractC0213D;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class n extends h {

    /* renamed from: a, reason: collision with root package name */
    public final Object f9329a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final C0091m f9330b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f9331c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f9332d;

    /* renamed from: e, reason: collision with root package name */
    public Object f9333e;
    public Exception f;

    public n() {
        C0091m c0091m = new C0091m();
        c0091m.f2404b = new Object();
        this.f9330b = c0091m;
    }

    @Override // u1.h
    public final n a(Executor executor, c cVar) {
        this.f9330b.f(new l(executor, cVar));
        m();
        return this;
    }

    @Override // u1.h
    public final n b(Executor executor, d dVar) {
        this.f9330b.f(new l(executor, dVar));
        m();
        return this;
    }

    @Override // u1.h
    public final n c(Executor executor, e eVar) {
        this.f9330b.f(new l(executor, eVar));
        m();
        return this;
    }

    @Override // u1.h
    public final Exception d() {
        Exception exc;
        synchronized (this.f9329a) {
            exc = this.f;
        }
        return exc;
    }

    @Override // u1.h
    public final Object e() {
        Object obj;
        synchronized (this.f9329a) {
            try {
                AbstractC0213D.g("Task is not yet complete", this.f9331c);
                if (this.f9332d) {
                    throw new CancellationException("Task is already canceled.");
                }
                if (this.f != null) {
                    throw new f(this.f);
                }
                obj = this.f9333e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // u1.h
    public final boolean f() {
        boolean z4;
        synchronized (this.f9329a) {
            try {
                z4 = this.f9331c && !this.f9332d && this.f == null;
            } finally {
            }
        }
        return z4;
    }

    public final n g(Executor executor, InterfaceC0863a interfaceC0863a) {
        n nVar = new n();
        this.f9330b.f(new k(executor, interfaceC0863a, nVar, 0));
        m();
        return nVar;
    }

    public final n h(Executor executor, InterfaceC0863a interfaceC0863a) {
        n nVar = new n();
        this.f9330b.f(new k(executor, interfaceC0863a, nVar, 1));
        m();
        return nVar;
    }

    public final n i(Executor executor, g gVar) {
        n nVar = new n();
        this.f9330b.f(new l(executor, gVar, nVar));
        m();
        return nVar;
    }

    public final void j(Exception exc) {
        AbstractC0213D.f("Exception must not be null", exc);
        synchronized (this.f9329a) {
            AbstractC0213D.g("Task is already complete", !this.f9331c);
            this.f9331c = true;
            this.f = exc;
        }
        this.f9330b.e(this);
    }

    public final void k(Object obj) {
        synchronized (this.f9329a) {
            AbstractC0213D.g("Task is already complete", !this.f9331c);
            this.f9331c = true;
            this.f9333e = obj;
        }
        this.f9330b.e(this);
    }

    public final void l() {
        synchronized (this.f9329a) {
            try {
                if (this.f9331c) {
                    return;
                }
                this.f9331c = true;
                this.f9332d = true;
                this.f9330b.e(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void m() {
        synchronized (this.f9329a) {
            try {
                if (this.f9331c) {
                    this.f9330b.e(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
