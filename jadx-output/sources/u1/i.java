package u1;

import c1.AbstractC0213D;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final n f9320a = new n();

    public final void a(Exception exc) {
        this.f9320a.j(exc);
    }

    public final void b(Object obj) {
        this.f9320a.k(obj);
    }

    public final boolean c(Exception exc) {
        n nVar = this.f9320a;
        nVar.getClass();
        AbstractC0213D.f("Exception must not be null", exc);
        synchronized (nVar.f9329a) {
            try {
                if (nVar.f9331c) {
                    return false;
                }
                nVar.f9331c = true;
                nVar.f = exc;
                nVar.f9330b.e(nVar);
                return true;
            } finally {
            }
        }
    }

    public final void d(Object obj) {
        n nVar = this.f9320a;
        synchronized (nVar.f9329a) {
            try {
                if (nVar.f9331c) {
                    return;
                }
                nVar.f9331c = true;
                nVar.f9333e = obj;
                nVar.f9330b.e(nVar);
            } finally {
            }
        }
    }
}
