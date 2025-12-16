package n4;

import r3.InterfaceC0816s;

/* loaded from: classes.dex */
public final class y extends n {

    /* renamed from: d, reason: collision with root package name */
    public static final y f8400d = new y("must have no value parameters", 0);

    /* renamed from: e, reason: collision with root package name */
    public static final y f8401e = new y("must have a single value parameter", 1);

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8402c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ y(String str, int i5) {
        super(str, 1);
        this.f8402c = i5;
    }

    @Override // n4.e
    public final boolean c(InterfaceC0816s interfaceC0816s) {
        switch (this.f8402c) {
            case 0:
                d3.i.e("functionDescriptor", interfaceC0816s);
                return interfaceC0816s.w0().isEmpty();
            default:
                d3.i.e("functionDescriptor", interfaceC0816s);
                return interfaceC0816s.w0().size() == 1;
        }
    }
}
