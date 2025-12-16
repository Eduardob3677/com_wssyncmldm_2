package i2;

import k2.InterfaceC0638a;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadFactoryC0479a f7146b = new ThreadFactoryC0479a();

    /* renamed from: a, reason: collision with root package name */
    public InterfaceC0638a f7147a;

    public final int a(String str) {
        boolean zA;
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zA2 = ((d) this.f7147a.get()).a(str, jCurrentTimeMillis);
        d dVar = (d) this.f7147a.get();
        synchronized (dVar) {
            zA = dVar.a("fire-global", jCurrentTimeMillis);
        }
        if (zA2 && zA) {
            return 4;
        }
        if (zA) {
            return 3;
        }
        return zA2 ? 2 : 1;
    }
}
