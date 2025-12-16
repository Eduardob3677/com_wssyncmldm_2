package b2;

import k2.InterfaceC0638a;

/* loaded from: classes.dex */
public final class p implements InterfaceC0638a {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f5140c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f5141a = f5140c;

    /* renamed from: b, reason: collision with root package name */
    public volatile InterfaceC0638a f5142b;

    public p(InterfaceC0638a interfaceC0638a) {
        this.f5142b = interfaceC0638a;
    }

    @Override // k2.InterfaceC0638a
    public final Object get() {
        Object obj = this.f5141a;
        Object obj2 = f5140c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f5141a;
                    if (obj == obj2) {
                        obj = this.f5142b.get();
                        this.f5141a = obj;
                        this.f5142b = null;
                    }
                } finally {
                }
            }
        }
        return obj;
    }
}
