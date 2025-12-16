package l4;

import c3.InterfaceC0222b;
import d3.i;
import d3.k;
import f4.t;
import h4.Z;
import r3.InterfaceC0789Q;
import r3.InterfaceC0804g;

/* loaded from: classes.dex */
public final class a extends k implements InterfaceC0222b {

    /* renamed from: e, reason: collision with root package name */
    public static final a f8245e = new a(1, 0);
    public static final a f = new a(1, 1);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8246d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(int i5, int i6) {
        super(i5);
        this.f8246d = i6;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f8246d) {
            case 0:
                Z z4 = (Z) obj;
                i.e("it", z4);
                InterfaceC0804g interfaceC0804gI = z4.J0().i();
                boolean z5 = false;
                if (interfaceC0804gI != null && (interfaceC0804gI instanceof InterfaceC0789Q) && (((InterfaceC0789Q) interfaceC0804gI).l() instanceof t)) {
                    z5 = true;
                }
                return Boolean.valueOf(z5);
            default:
                Z z6 = (Z) obj;
                i.e("it", z6);
                InterfaceC0804g interfaceC0804gI2 = z6.J0().i();
                boolean z7 = false;
                if (interfaceC0804gI2 != null && ((interfaceC0804gI2 instanceof t) || (interfaceC0804gI2 instanceof InterfaceC0789Q))) {
                    z7 = true;
                }
                return Boolean.valueOf(z7);
        }
    }
}
