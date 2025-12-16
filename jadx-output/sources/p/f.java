package p;

/* loaded from: classes.dex */
public final class f extends AbstractC0735a {
    @Override // p.AbstractC0735a
    public final boolean a(h hVar, C0738d c0738d) {
        C0738d c0738d2 = C0738d.f8559b;
        synchronized (hVar) {
            try {
                if (hVar.f8573b != c0738d) {
                    return false;
                }
                hVar.f8573b = c0738d2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p.AbstractC0735a
    public final boolean b(h hVar, Object obj, Object obj2) {
        synchronized (hVar) {
            try {
                if (hVar.f8572a != obj) {
                    return false;
                }
                hVar.f8572a = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p.AbstractC0735a
    public final boolean c(h hVar, g gVar, g gVar2) {
        synchronized (hVar) {
            try {
                if (hVar.f8574c != gVar) {
                    return false;
                }
                hVar.f8574c = gVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p.AbstractC0735a
    public final void n(g gVar, g gVar2) {
        gVar.f8568b = gVar2;
    }

    @Override // p.AbstractC0735a
    public final void o(g gVar, Thread thread) {
        gVar.f8567a = thread;
    }
}
