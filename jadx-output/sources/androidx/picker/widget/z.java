package androidx.picker.widget;

/* loaded from: classes.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4548a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4549b;

    public /* synthetic */ z(int i5, Object obj) {
        this.f4548a = i5;
        this.f4549b = obj;
    }

    public final void a() {
        switch (this.f4548a) {
            case 0:
                D d2 = (D) this.f4549b;
                d2.f4125T0 = false;
                d2.E.forceFinished(true);
                d2.z(true);
                break;
            default:
                P p4 = (P) this.f4549b;
                p4.f4260G0 = false;
                p4.f4317x.forceFinished(true);
                p4.r(true);
                break;
        }
    }
}
