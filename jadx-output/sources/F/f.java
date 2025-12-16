package F;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public boolean f654a;

    /* renamed from: b, reason: collision with root package name */
    public e f655b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f656c;

    public final void a() {
        synchronized (this) {
            try {
                if (this.f654a) {
                    return;
                }
                this.f654a = true;
                this.f656c = true;
                e eVar = this.f655b;
                if (eVar != null) {
                    try {
                        eVar.onCancel();
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.f656c = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                synchronized (this) {
                    this.f656c = false;
                    notifyAll();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void b(e eVar) {
        synchronized (this) {
            while (this.f656c) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.f655b == eVar) {
                return;
            }
            this.f655b = eVar;
            if (this.f654a) {
                eVar.onCancel();
            }
        }
    }
}
