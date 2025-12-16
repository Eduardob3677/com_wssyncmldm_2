package L0;

import android.content.Context;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: e, reason: collision with root package name */
    public static volatile d f1332e;

    /* renamed from: a, reason: collision with root package name */
    public final T0.b f1333a;

    /* renamed from: b, reason: collision with root package name */
    public final T0.b f1334b;

    /* renamed from: c, reason: collision with root package name */
    public final P0.d f1335c;

    /* renamed from: d, reason: collision with root package name */
    public final Q0.j f1336d;

    public k(T0.b bVar, T0.b bVar2, P0.d dVar, Q0.j jVar, Q0.k kVar) {
        this.f1333a = bVar;
        this.f1334b = bVar2;
        this.f1335c = dVar;
        this.f1336d = jVar;
        kVar.getClass();
        kVar.f2198a.execute(new D1.b(2, kVar));
    }

    public static k a() {
        d dVar = f1332e;
        if (dVar != null) {
            return (k) dVar.f1321g.get();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static void b(Context context) {
        if (f1332e == null) {
            synchronized (k.class) {
                try {
                    if (f1332e == null) {
                        c cVar = new c();
                        context.getClass();
                        cVar.f1317a = context;
                        f1332e = cVar.b();
                    }
                } finally {
                }
            }
        }
    }
}
