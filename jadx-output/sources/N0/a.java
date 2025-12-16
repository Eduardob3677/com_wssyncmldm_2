package N0;

/* loaded from: classes.dex */
public final class a implements P2.a {

    /* renamed from: e, reason: collision with root package name */
    public static final Object f1859e = new Object();

    /* renamed from: c, reason: collision with root package name */
    public volatile P2.a f1860c;

    /* renamed from: d, reason: collision with root package name */
    public volatile Object f1861d;

    public static P2.a a(b bVar) {
        if (bVar instanceof a) {
            return bVar;
        }
        a aVar = new a();
        aVar.f1861d = f1859e;
        aVar.f1860c = bVar;
        return aVar;
    }

    @Override // P2.a
    public final Object get() {
        Object obj = this.f1861d;
        Object obj2 = f1859e;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f1861d;
                    if (obj == obj2) {
                        obj = this.f1860c.get();
                        Object obj3 = this.f1861d;
                        if (obj3 != obj2 && obj3 != obj) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + obj + ". This is likely due to a circular dependency.");
                        }
                        this.f1861d = obj;
                        this.f1860c = null;
                    }
                } finally {
                }
            }
        }
        return obj;
    }
}
