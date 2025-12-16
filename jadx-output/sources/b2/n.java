package b2;

import h2.InterfaceC0444a;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class n implements h2.b, InterfaceC0444a {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f5137a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public ArrayDeque f5138b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public final Executor f5139c;

    public n(Executor executor) {
        this.f5139c = executor;
    }

    public final void a(com.google.firebase.messaging.e eVar) {
        Executor executor = this.f5139c;
        synchronized (this) {
            try {
                executor.getClass();
                if (!this.f5137a.containsKey(W1.a.class)) {
                    this.f5137a.put(W1.a.class, new ConcurrentHashMap());
                }
                ((ConcurrentHashMap) this.f5137a.get(W1.a.class)).put(eVar, executor);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void b(com.google.firebase.messaging.e eVar) {
        if (this.f5137a.containsKey(W1.a.class)) {
            ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f5137a.get(W1.a.class);
            concurrentHashMap.remove(eVar);
            if (concurrentHashMap.isEmpty()) {
                this.f5137a.remove(W1.a.class);
            }
        }
    }
}
