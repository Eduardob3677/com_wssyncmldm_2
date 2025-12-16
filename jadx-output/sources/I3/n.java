package I3;

import c3.InterfaceC0222b;
import h4.AbstractC0468v;
import h4.Z;
import q3.C0757d;
import r3.InterfaceC0800c;
import r3.InterfaceC0804g;
import u3.C0890w;

/* loaded from: classes.dex */
public final class n extends d3.k implements InterfaceC0222b {

    /* renamed from: e, reason: collision with root package name */
    public static final n f911e = new n(1, 0);
    public static final n f = new n(1, 1);

    /* renamed from: g, reason: collision with root package name */
    public static final n f912g = new n(1, 2);

    /* renamed from: h, reason: collision with root package name */
    public static final n f913h = new n(1, 3);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f914d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n(int i5, int i6) {
        super(i5);
        this.f914d = i6;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f914d) {
            case 0:
                InterfaceC0804g interfaceC0804gI = ((Z) obj).J0().i();
                if (interfaceC0804gI == null) {
                    return Boolean.FALSE;
                }
                Q3.f name = interfaceC0804gI.getName();
                Q3.c cVar = C0757d.f;
                return Boolean.valueOf(d3.i.a(name, cVar.f()) && d3.i.a(X3.f.c(interfaceC0804gI), cVar));
            case 1:
                InterfaceC0800c interfaceC0800c = (InterfaceC0800c) obj;
                d3.i.e("it", interfaceC0800c);
                C0890w c0890wD0 = interfaceC0800c.d0();
                d3.i.b(c0890wD0);
                AbstractC0468v abstractC0468vE = c0890wD0.e();
                d3.i.d("it.extensionReceiverParameter!!.type", abstractC0468vE);
                return abstractC0468vE;
            case 2:
                InterfaceC0800c interfaceC0800c2 = (InterfaceC0800c) obj;
                d3.i.e("it", interfaceC0800c2);
                AbstractC0468v abstractC0468vN = interfaceC0800c2.n();
                d3.i.b(abstractC0468vN);
                return abstractC0468vN;
            case 3:
                Z z4 = (Z) obj;
                d3.i.e("it", z4);
                return Boolean.valueOf(z4 instanceof F3.f);
            default:
                o oVar = (o) obj;
                d3.i.e("$this$function", oVar);
                String strConcat = "java/util/".concat("Spliterator");
                e eVar = l.f906b;
                oVar.c(strConcat, eVar, eVar);
                return Q2.k.f2225a;
        }
    }
}
