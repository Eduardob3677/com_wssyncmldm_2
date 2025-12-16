package r4;

import c3.InterfaceC0222b;

/* loaded from: classes.dex */
public final class o extends d3.k implements InterfaceC0222b {

    /* renamed from: e, reason: collision with root package name */
    public static final o f8861e = new o(1, 0);
    public static final o f = new o(1, 1);

    /* renamed from: g, reason: collision with root package name */
    public static final o f8862g = new o(1, 2);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8863d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o(int i5, int i6) {
        super(i5);
        this.f8863d = i6;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f8863d) {
            case 0:
                k kVar = (k) obj;
                d3.i.e("it", kVar);
                return kVar.iterator();
            case 1:
                return obj;
            default:
                return Boolean.valueOf(obj == null);
        }
    }
}
