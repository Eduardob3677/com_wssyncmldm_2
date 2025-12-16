package n4;

import r3.InterfaceC0816s;

/* loaded from: classes.dex */
public final class m extends n {

    /* renamed from: d, reason: collision with root package name */
    public static final m f8363d = new m("must be a member function", 0);

    /* renamed from: e, reason: collision with root package name */
    public static final m f8364e = new m("must be a member or an extension function", 1);

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8365c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m(String str, int i5) {
        super(str, 0);
        this.f8365c = i5;
    }

    @Override // n4.e
    public final boolean c(InterfaceC0816s interfaceC0816s) {
        switch (this.f8365c) {
            case 0:
                d3.i.e("functionDescriptor", interfaceC0816s);
                return interfaceC0816s.F() != null;
            default:
                d3.i.e("functionDescriptor", interfaceC0816s);
                return (interfaceC0816s.F() == null && interfaceC0816s.d0() == null) ? false : true;
        }
    }
}
