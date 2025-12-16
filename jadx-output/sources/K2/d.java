package K2;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final class d implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setPriority(1);
        thread.setDaemon(true);
        return thread;
    }
}
