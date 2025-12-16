package r3;

import c3.InterfaceC0222b;
import java.util.List;

/* renamed from: r3.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0814q extends d3.k implements InterfaceC0222b {

    /* renamed from: e, reason: collision with root package name */
    public static final C0814q f8824e = new C0814q(1, 0);
    public static final C0814q f = new C0814q(1, 1);

    /* renamed from: g, reason: collision with root package name */
    public static final C0814q f8825g = new C0814q(1, 2);

    /* renamed from: h, reason: collision with root package name */
    public static final C0814q f8826h = new C0814q(1, 3);

    /* renamed from: i, reason: collision with root package name */
    public static final C0814q f8827i = new C0814q(1, 4);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8828d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0814q(int i5, int i6) {
        super(i5);
        this.f8828d = i6;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f8828d) {
            case 0:
                d3.i.e("it", (Q3.b) obj);
                return 0;
            case 1:
                InterfaceC0775C interfaceC0775C = (InterfaceC0775C) obj;
                d3.i.e("it", interfaceC0775C);
                return ((u3.E) interfaceC0775C).f9353g;
            case 2:
                InterfaceC0807j interfaceC0807j = (InterfaceC0807j) obj;
                d3.i.e("it", interfaceC0807j);
                return Boolean.valueOf(interfaceC0807j instanceof InterfaceC0799b);
            case 3:
                d3.i.e("it", (InterfaceC0807j) obj);
                return Boolean.valueOf(!(r1 instanceof InterfaceC0806i));
            default:
                InterfaceC0807j interfaceC0807j2 = (InterfaceC0807j) obj;
                d3.i.e("it", interfaceC0807j2);
                List listU = ((InterfaceC0799b) interfaceC0807j2).u();
                d3.i.d("it as CallableDescriptor).typeParameters", listU);
                return R2.m.G0(listU);
        }
    }
}
