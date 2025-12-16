package u1;

import e.J;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class l implements m, b, d, e {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f9326c;

    /* renamed from: d, reason: collision with root package name */
    public final Executor f9327d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f9328e;
    public final Object f;

    public l(J j3, b bVar) {
        this.f9326c = 0;
        this.f9328e = new Object();
        this.f9327d = j3;
        this.f = bVar;
    }

    @Override // u1.b
    public void H() {
        ((n) this.f).l();
    }

    @Override // u1.d
    public void J(Exception exc) {
        ((n) this.f).j(exc);
    }

    @Override // u1.e
    public void L(Object obj) {
        ((n) this.f).k(obj);
    }

    @Override // u1.m
    public final void onComplete(h hVar) {
        switch (this.f9326c) {
            case 0:
                if (((n) hVar).f9332d) {
                    synchronized (this.f9328e) {
                        try {
                            if (((b) this.f) != null) {
                                this.f9327d.execute(new B1.h(18, this));
                            }
                        } finally {
                        }
                    }
                    return;
                }
                return;
            case 1:
                synchronized (this.f9328e) {
                    try {
                        if (((c) this.f) == null) {
                            return;
                        }
                        this.f9327d.execute(new G.a(this, hVar, 11, false));
                        return;
                    } finally {
                    }
                }
            case 2:
                if (hVar.f() || ((n) hVar).f9332d) {
                    return;
                }
                synchronized (this.f9328e) {
                    try {
                        if (((d) this.f) != null) {
                            this.f9327d.execute(new G.a(this, hVar, 12, false));
                        }
                    } finally {
                    }
                }
                return;
            case 3:
                if (hVar.f()) {
                    synchronized (this.f9328e) {
                        try {
                            if (((e) this.f) != null) {
                                this.f9327d.execute(new G.a(this, hVar, 13, false));
                            }
                        } finally {
                        }
                    }
                    return;
                }
                return;
            default:
                this.f9327d.execute(new G.a(this, hVar, 14, false));
                return;
        }
    }

    public l(Executor executor, c cVar) {
        this.f9326c = 1;
        this.f9328e = new Object();
        this.f9327d = executor;
        this.f = cVar;
    }

    public l(Executor executor, d dVar) {
        this.f9326c = 2;
        this.f9328e = new Object();
        this.f9327d = executor;
        this.f = dVar;
    }

    public l(Executor executor, e eVar) {
        this.f9326c = 3;
        this.f9328e = new Object();
        this.f9327d = executor;
        this.f = eVar;
    }

    public l(Executor executor, g gVar, n nVar) {
        this.f9326c = 4;
        this.f9327d = executor;
        this.f9328e = gVar;
        this.f = nVar;
    }
}
