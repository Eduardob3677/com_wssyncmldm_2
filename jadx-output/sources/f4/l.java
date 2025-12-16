package f4;

import R3.AbstractC0081c;
import R3.B;
import c3.InterfaceC0221a;
import h4.AbstractC0468v;
import java.io.ByteArrayInputStream;
import java.lang.reflect.Type;
import l3.C0698w;
import l3.C0701z;
import l3.w0;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;

/* loaded from: classes.dex */
public final class l extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f6868d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f6869e;
    public final /* synthetic */ Object f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f6870g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l(Object obj, Object obj2, Object obj3, int i5) {
        super(0);
        this.f6868d = i5;
        this.f6869e = obj;
        this.f = obj2;
        this.f6870g = obj3;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f6868d) {
            case 0:
                return ((AbstractC0081c) ((B) this.f6869e)).b((ByteArrayInputStream) this.f, ((d4.i) ((p) this.f6870g).f6884b.f5377c).f6542p);
            default:
                InterfaceC0804g interfaceC0804gI = ((AbstractC0468v) this.f6869e).J0().i();
                if (!(interfaceC0804gI instanceof InterfaceC0802e)) {
                    throw new Q2.d("Supertype not a class: " + interfaceC0804gI, 2);
                }
                Class clsJ = w0.j((InterfaceC0802e) interfaceC0804gI);
                C0698w c0698w = (C0698w) this.f;
                if (clsJ == null) {
                    throw new Q2.d("Unsupported superclass of " + c0698w + ": " + interfaceC0804gI, 2);
                }
                C0701z c0701z = (C0701z) this.f6870g;
                boolean zA = d3.i.a(c0701z.f8243d.getSuperclass(), clsJ);
                Class cls = c0701z.f8243d;
                if (zA) {
                    Type genericSuperclass = cls.getGenericSuperclass();
                    d3.i.d("{\n                      …ass\n                    }", genericSuperclass);
                    return genericSuperclass;
                }
                Class<?>[] interfaces = cls.getInterfaces();
                d3.i.d("jClass.interfaces", interfaces);
                int iQ0 = R2.i.q0(clsJ, interfaces);
                if (iQ0 >= 0) {
                    Type type = cls.getGenericInterfaces()[iQ0];
                    d3.i.d("{\n                      …ex]\n                    }", type);
                    return type;
                }
                throw new Q2.d("No superclass of " + c0698w + " in Java reflection for " + interfaceC0804gI, 2);
        }
    }
}
