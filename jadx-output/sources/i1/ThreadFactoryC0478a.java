package i1;

import L0.h;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* renamed from: i1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ThreadFactoryC0478a implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final String f7144a;

    /* renamed from: b, reason: collision with root package name */
    public final ThreadFactory f7145b = Executors.defaultThreadFactory();

    public ThreadFactoryC0478a(String str) {
        this.f7144a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f7145b.newThread(new h(runnable, 1));
        threadNewThread.setName(this.f7144a);
        return threadNewThread;
    }
}
