package n4;

import r3.InterfaceC0816s;

/* loaded from: classes.dex */
public final class x extends n {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8398c = 1;

    /* renamed from: d, reason: collision with root package name */
    public final int f8399d;

    public x(int i5) {
        StringBuilder sb = new StringBuilder("must have at least ");
        sb.append(i5);
        sb.append(" value parameter");
        sb.append(i5 > 1 ? "s" : "");
        super(sb.toString(), 1);
        this.f8399d = i5;
    }

    @Override // n4.e
    public final boolean c(InterfaceC0816s interfaceC0816s) {
        switch (this.f8398c) {
            case 0:
                d3.i.e("functionDescriptor", interfaceC0816s);
                if (interfaceC0816s.w0().size() >= this.f8399d) {
                }
                break;
            default:
                d3.i.e("functionDescriptor", interfaceC0816s);
                if (interfaceC0816s.w0().size() == this.f8399d) {
                }
                break;
        }
        return false;
    }

    public x() {
        super("must have exactly 2 value parameters", 1);
        this.f8399d = 2;
    }
}
