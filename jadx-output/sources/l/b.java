package l;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class b implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8070a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f8071b;

    public b(int i5) {
        this.f8070a = i5;
        switch (i5) {
            case 1:
                this.f8071b = new AtomicInteger(1);
                break;
            default:
                this.f8071b = new AtomicInteger(0);
                break;
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f8070a) {
            case 0:
                Thread thread = new Thread(runnable);
                thread.setName("arch_disk_io_" + this.f8071b.getAndIncrement());
                return thread;
            default:
                return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f8071b.getAndIncrement())));
        }
    }
}
