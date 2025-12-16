package l3;

import c3.InterfaceC0222b;
import h4.AbstractC0468v;
import java.lang.reflect.Method;
import r3.InterfaceC0783K;
import r3.InterfaceC0816s;
import x3.AbstractC0917d;

/* renamed from: l3.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0672b extends d3.k implements InterfaceC0222b {

    /* renamed from: e, reason: collision with root package name */
    public static final C0672b f8148e = new C0672b(1, 0);
    public static final C0672b f = new C0672b(1, 1);

    /* renamed from: g, reason: collision with root package name */
    public static final C0672b f8149g = new C0672b(1, 2);

    /* renamed from: h, reason: collision with root package name */
    public static final C0672b f8150h = new C0672b(1, 3);

    /* renamed from: i, reason: collision with root package name */
    public static final C0672b f8151i = new C0672b(1, 4);

    /* renamed from: j, reason: collision with root package name */
    public static final C0672b f8152j = new C0672b(1, 5);

    /* renamed from: k, reason: collision with root package name */
    public static final C0672b f8153k = new C0672b(1, 6);

    /* renamed from: l, reason: collision with root package name */
    public static final C0672b f8154l = new C0672b(1, 7);

    /* renamed from: m, reason: collision with root package name */
    public static final C0672b f8155m = new C0672b(1, 8);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8156d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0672b(int i5, int i6) {
        super(i5);
        this.f8156d = i6;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f8156d) {
            case 0:
                Class cls = (Class) obj;
                d3.i.e("it", cls);
                return new C0701z(cls);
            case 1:
                Class cls2 = (Class) obj;
                d3.i.e("it", cls2);
                return new C0661Q(cls2);
            case 2:
                Class<?> returnType = ((Method) obj).getReturnType();
                d3.i.d("it.returnType", returnType);
                return AbstractC0917d.b(returnType);
            case 3:
                Class cls3 = (Class) obj;
                d3.i.d("it", cls3);
                return AbstractC0917d.b(cls3);
            case 4:
                InterfaceC0816s interfaceC0816s = (InterfaceC0816s) obj;
                d3.i.e("descriptor", interfaceC0816s);
                return S3.g.f2624e.w(interfaceC0816s) + " | " + u0.c(interfaceC0816s).e();
            case 5:
                InterfaceC0783K interfaceC0783K = (InterfaceC0783K) obj;
                d3.i.e("descriptor", interfaceC0783K);
                return S3.g.f2624e.w(interfaceC0783K) + " | " + u0.b(interfaceC0783K).e();
            case 6:
                S3.g gVar = t0.f8223a;
                AbstractC0468v abstractC0468vE = ((u3.V) obj).e();
                d3.i.d("it.type", abstractC0468vE);
                return t0.d(abstractC0468vE);
            case 7:
                S3.g gVar2 = t0.f8223a;
                AbstractC0468v abstractC0468vE2 = ((u3.V) obj).e();
                d3.i.d("it.type", abstractC0468vE2);
                return t0.d(abstractC0468vE2);
            default:
                Class cls4 = (Class) obj;
                d3.i.d("it", cls4);
                return AbstractC0917d.b(cls4);
        }
    }
}
