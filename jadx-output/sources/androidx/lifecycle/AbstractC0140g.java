package androidx.lifecycle;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import l.C0640a;

/* renamed from: androidx.lifecycle.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0140g {
    private final C _liveData;
    private final AtomicBoolean computing;
    private final Executor executor;
    private final AtomicBoolean invalid;
    public final Runnable invalidationRunnable;
    private final C liveData;
    public final Runnable refreshRunnable;

    public AbstractC0140g(Executor executor) {
        d3.i.e("executor", executor);
        this.executor = executor;
        C0139f c0139f = new C0139f(this);
        this._liveData = c0139f;
        this.liveData = c0139f;
        this.invalid = new AtomicBoolean(true);
        final int i5 = 0;
        this.computing = new AtomicBoolean(false);
        this.refreshRunnable = new Runnable(this) { // from class: androidx.lifecycle.e

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ AbstractC0140g f4059d;

            {
                this.f4059d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i6 = i5;
                AbstractC0140g abstractC0140g = this.f4059d;
                switch (i6) {
                    case 0:
                        AbstractC0140g.a(abstractC0140g);
                        break;
                    default:
                        AbstractC0140g.b(abstractC0140g);
                        break;
                }
            }
        };
        final int i6 = 1;
        this.invalidationRunnable = new Runnable(this) { // from class: androidx.lifecycle.e

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ AbstractC0140g f4059d;

            {
                this.f4059d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i62 = i6;
                AbstractC0140g abstractC0140g = this.f4059d;
                switch (i62) {
                    case 0:
                        AbstractC0140g.a(abstractC0140g);
                        break;
                    default:
                        AbstractC0140g.b(abstractC0140g);
                        break;
                }
            }
        };
    }

    public static void a(AbstractC0140g abstractC0140g) {
        d3.i.e("this$0", abstractC0140g);
        do {
            boolean z4 = false;
            if (abstractC0140g.computing.compareAndSet(false, true)) {
                Object objCompute = null;
                boolean z5 = false;
                while (abstractC0140g.invalid.compareAndSet(true, false)) {
                    try {
                        objCompute = abstractC0140g.compute();
                        z5 = true;
                    } catch (Throwable th) {
                        abstractC0140g.computing.set(false);
                        throw th;
                    }
                }
                if (z5) {
                    abstractC0140g.getLiveData().i(objCompute);
                }
                abstractC0140g.computing.set(false);
                z4 = z5;
            }
            if (!z4) {
                return;
            }
        } while (abstractC0140g.invalid.get());
    }

    public static void b(AbstractC0140g abstractC0140g) {
        d3.i.e("this$0", abstractC0140g);
        boolean z4 = abstractC0140g.getLiveData().f3994c > 0;
        if (abstractC0140g.invalid.compareAndSet(false, true) && z4) {
            abstractC0140g.executor.execute(abstractC0140g.refreshRunnable);
        }
    }

    public static /* synthetic */ void getInvalidationRunnable$lifecycle_livedata_release$annotations() {
    }

    public static /* synthetic */ void getRefreshRunnable$lifecycle_livedata_release$annotations() {
    }

    public abstract Object compute();

    public final AtomicBoolean getComputing$lifecycle_livedata_release() {
        return this.computing;
    }

    public final Executor getExecutor$lifecycle_livedata_release() {
        return this.executor;
    }

    public final AtomicBoolean getInvalid$lifecycle_livedata_release() {
        return this.invalid;
    }

    public C getLiveData() {
        return this.liveData;
    }

    public void invalidate() {
        C0640a c0640aR = C0640a.R();
        Runnable runnable = this.invalidationRunnable;
        if (c0640aR.S()) {
            runnable.run();
        } else {
            c0640aR.T(runnable);
        }
    }
}
