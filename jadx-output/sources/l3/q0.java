package l3;

import c3.InterfaceC0221a;

/* loaded from: classes.dex */
public final class q0 extends r0 {

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC0221a f8215d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f8216e = null;

    public q0(InterfaceC0221a interfaceC0221a) {
        this.f8215d = interfaceC0221a;
    }

    public final Object a() {
        Object obj = this.f8216e;
        Object obj2 = r0.f8218c;
        if (obj != null) {
            if (obj == obj2) {
                return null;
            }
            return obj;
        }
        Object objA = this.f8215d.a();
        if (objA != null) {
            obj2 = objA;
        }
        this.f8216e = obj2;
        return objA;
    }
}
