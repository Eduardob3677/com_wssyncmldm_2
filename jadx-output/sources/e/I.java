package e;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class I implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public final Object f6658c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayDeque f6659d = new ArrayDeque();

    /* renamed from: e, reason: collision with root package name */
    public final Executor f6660e;
    public Runnable f;

    public I(J j3) {
        this.f6660e = j3;
    }

    public final void b() {
        synchronized (this.f6658c) {
            try {
                Runnable runnable = (Runnable) this.f6659d.poll();
                this.f = runnable;
                if (runnable != null) {
                    this.f6660e.execute(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.f6658c) {
            try {
                this.f6659d.add(new A.o(this, 14, runnable));
                if (this.f == null) {
                    b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
