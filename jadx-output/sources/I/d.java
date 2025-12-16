package I;

import d3.i;

/* loaded from: classes.dex */
public final class d extends c {

    /* renamed from: c, reason: collision with root package name */
    public final Object f867c;

    public d(int i5) {
        super(i5);
        this.f867c = new Object();
    }

    @Override // I.c
    public final Object a() {
        Object objA;
        synchronized (this.f867c) {
            objA = super.a();
        }
        return objA;
    }

    @Override // I.c
    public final boolean c(Object obj) {
        boolean zC;
        i.e("instance", obj);
        synchronized (this.f867c) {
            zC = super.c(obj);
        }
        return zC;
    }
}
