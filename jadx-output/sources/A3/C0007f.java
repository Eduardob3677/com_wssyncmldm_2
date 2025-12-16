package A3;

import c3.InterfaceC0222b;
import o3.AbstractC0732i;
import r3.InterfaceC0800c;
import r3.InterfaceC0816s;
import u3.N;
import u3.V;

/* renamed from: A3.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0007f extends d3.k implements InterfaceC0222b {

    /* renamed from: e, reason: collision with root package name */
    public static final C0007f f121e = new C0007f(1, 0);
    public static final C0007f f = new C0007f(1, 1);

    /* renamed from: g, reason: collision with root package name */
    public static final C0007f f122g = new C0007f(1, 2);

    /* renamed from: h, reason: collision with root package name */
    public static final C0007f f123h = new C0007f(1, 3);

    /* renamed from: i, reason: collision with root package name */
    public static final C0007f f124i = new C0007f(1, 4);

    /* renamed from: j, reason: collision with root package name */
    public static final C0007f f125j = new C0007f(1, 5);

    /* renamed from: k, reason: collision with root package name */
    public static final C0007f f126k = new C0007f(1, 6);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f127d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0007f(int i5, int i6) {
        super(i5);
        this.f127d = i6;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ac  */
    @Override // c3.InterfaceC0222b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(Object obj) {
        InterfaceC0800c interfaceC0800cB;
        String strO;
        int i5 = 0;
        switch (this.f127d) {
            case 0:
                InterfaceC0800c interfaceC0800c = (InterfaceC0800c) obj;
                d3.i.e("it", interfaceC0800c);
                int i6 = C0008g.f128m;
                return Boolean.valueOf(R2.m.H0(I.f97g, W1.a.o(interfaceC0800c)));
            case 1:
                InterfaceC0800c interfaceC0800c2 = (InterfaceC0800c) obj;
                d3.i.e("it", interfaceC0800c2);
                if (interfaceC0800c2 instanceof InterfaceC0816s) {
                    int i7 = C0008g.f128m;
                    z = R2.m.H0(I.f97g, W1.a.o(interfaceC0800c2));
                }
                return Boolean.valueOf(z);
            case 2:
                InterfaceC0800c interfaceC0800c3 = (InterfaceC0800c) obj;
                d3.i.e("it", interfaceC0800c3);
                return Boolean.valueOf(L2.b.y(interfaceC0800c3));
            case 3:
                return ((V) obj).e();
            case 4:
                InterfaceC0800c interfaceC0800c4 = (InterfaceC0800c) obj;
                d3.i.e("it", interfaceC0800c4);
                return Boolean.valueOf(L2.b.y(X3.f.k(interfaceC0800c4)));
            case 5:
                InterfaceC0800c interfaceC0800c5 = (InterfaceC0800c) obj;
                d3.i.e("it", interfaceC0800c5);
                int i8 = AbstractC0006e.f120m;
                N n = (N) interfaceC0800c5;
                return Boolean.valueOf(AbstractC0732i.z(n) && X3.f.b(n, new C0005d(i5, n)) != null);
            default:
                InterfaceC0800c interfaceC0800c6 = (InterfaceC0800c) obj;
                d3.i.e("it", interfaceC0800c6);
                if (AbstractC0732i.z(interfaceC0800c6)) {
                    int i9 = C0008g.f128m;
                    if (!I.f.contains(interfaceC0800c6.getName()) || (interfaceC0800cB = X3.f.b(interfaceC0800c6, f)) == null || (strO = W1.a.o(interfaceC0800cB)) == null) {
                        z = false;
                    } else if (!I.f94c.contains(strO)) {
                    }
                }
                return Boolean.valueOf(z);
        }
    }
}
