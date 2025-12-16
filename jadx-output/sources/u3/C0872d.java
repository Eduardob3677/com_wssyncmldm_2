package u3;

import c3.InterfaceC0222b;
import h4.AbstractC0450c;
import h4.Z;
import r3.InterfaceC0789Q;
import r3.InterfaceC0804g;

/* renamed from: u3.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0872d extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f9420d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f4.t f9421e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0872d(f4.t tVar, int i5) {
        super(1);
        this.f9420d = i5;
        this.f9421e = tVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    @Override // c3.InterfaceC0222b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(Object obj) {
        boolean z4;
        switch (this.f9420d) {
            case 0:
                ((i4.f) obj).getClass();
                d3.i.e("descriptor", this.f9421e);
                return null;
            default:
                Z z5 = (Z) obj;
                d3.i.d("type", z5);
                if (!AbstractC0450c.i(z5)) {
                    InterfaceC0804g interfaceC0804gI = z5.J0().i();
                    z4 = (interfaceC0804gI instanceof InterfaceC0789Q) && !d3.i.a(((InterfaceC0789Q) interfaceC0804gI).l(), this.f9421e);
                }
                return Boolean.valueOf(z4);
        }
    }
}
