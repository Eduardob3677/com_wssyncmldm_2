package n4;

import c3.InterfaceC0222b;
import f1.AbstractC0420a;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.Z;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import o3.AbstractC0732i;
import o3.EnumC0734k;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import u3.AbstractC0883o;
import u3.C0890w;
import u3.V;

/* loaded from: classes.dex */
public final class h extends d3.k implements InterfaceC0222b {

    /* renamed from: e, reason: collision with root package name */
    public static final h f8345e = new h(1, 0);
    public static final h f = new h(1, 1);

    /* renamed from: g, reason: collision with root package name */
    public static final h f8346g = new h(1, 2);

    /* renamed from: h, reason: collision with root package name */
    public static final h f8347h = new h(1, 3);

    /* renamed from: i, reason: collision with root package name */
    public static final h f8348i = new h(1, 4);

    /* renamed from: j, reason: collision with root package name */
    public static final h f8349j = new h(1, 5);

    /* renamed from: k, reason: collision with root package name */
    public static final h f8350k = new h(1, 6);

    /* renamed from: l, reason: collision with root package name */
    public static final h f8351l = new h(1, 7);

    /* renamed from: m, reason: collision with root package name */
    public static final h f8352m = new h(1, 8);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8353d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h(int i5, int i6) {
        super(i5);
        this.f8353d = i6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00da  */
    @Override // c3.InterfaceC0222b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(Object obj) throws IOException {
        boolean z4;
        AbstractC0472z abstractC0472zQ;
        Z zH0;
        AbstractC0468v abstractC0468vN;
        boolean zT;
        Q3.b bVarF;
        AbstractC0468v abstractC0468vN2;
        boolean zT2;
        switch (this.f8353d) {
            case 0:
                d3.i.e("$this$null", (InterfaceC0816s) obj);
                return null;
            case 1:
                d3.i.e("$this$null", (InterfaceC0816s) obj);
                return null;
            case 2:
                d3.i.e("$this$null", (InterfaceC0816s) obj);
                return null;
            case 3:
                InterfaceC0816s interfaceC0816s = (InterfaceC0816s) obj;
                d3.i.e("$this$$receiver", interfaceC0816s);
                List listW0 = interfaceC0816s.w0();
                d3.i.d("valueParameters", listW0);
                V v4 = (V) R2.m.V0(listW0);
                z = (v4 == null || X3.f.a(v4) || v4.f9412l != null) ? false : true;
                List list = r.f8374b;
                if (z) {
                    return null;
                }
                return "last parameter should not have a default value or be a vararg";
            case 4:
                InterfaceC0816s interfaceC0816s2 = (InterfaceC0816s) obj;
                d3.i.e("$this$$receiver", interfaceC0816s2);
                List list2 = r.f8374b;
                InterfaceC0807j interfaceC0807jL = interfaceC0816s2.l();
                d3.i.d("containingDeclaration", interfaceC0807jL);
                if (interfaceC0807jL instanceof InterfaceC0802e) {
                    Q3.f fVar = AbstractC0732i.f8454e;
                    z4 = AbstractC0732i.b((InterfaceC0802e) interfaceC0807jL, o3.m.f8503a);
                }
                if (z4) {
                    return null;
                }
                Collection collectionP = interfaceC0816s2.p();
                d3.i.d("overriddenDescriptors", collectionP);
                if (!collectionP.isEmpty()) {
                    Iterator it = collectionP.iterator();
                    while (it.hasNext()) {
                        InterfaceC0807j interfaceC0807jL2 = ((InterfaceC0816s) it.next()).l();
                        d3.i.d("it.containingDeclaration", interfaceC0807jL2);
                        if (interfaceC0807jL2 instanceof InterfaceC0802e) {
                            Q3.f fVar2 = AbstractC0732i.f8454e;
                            if (AbstractC0732i.b((InterfaceC0802e) interfaceC0807jL2, o3.m.f8503a)) {
                                return null;
                            }
                        }
                    }
                }
                InterfaceC0807j interfaceC0807jL3 = interfaceC0816s2.l();
                InterfaceC0802e interfaceC0802e = interfaceC0807jL3 instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0807jL3 : null;
                if (interfaceC0802e != null) {
                    if (!T3.i.e(interfaceC0802e)) {
                        interfaceC0802e = null;
                    }
                    if (interfaceC0802e != null && (abstractC0472zQ = interfaceC0802e.q()) != null && (zH0 = AbstractC0420a.h0(abstractC0472zQ)) != null && (abstractC0468vN = interfaceC0816s2.n()) != null && d3.i.a(((AbstractC0883o) interfaceC0816s2).getName(), s.f8378d)) {
                        Q3.f fVar3 = AbstractC0732i.f8454e;
                        if ((AbstractC0732i.B(abstractC0468vN, o3.m.f8512h) || AbstractC0732i.E(abstractC0468vN)) && interfaceC0816s2.w0().size() == 1) {
                            AbstractC0468v abstractC0468vE = ((V) interfaceC0816s2.w0().get(0)).e();
                            d3.i.d("valueParameters[0].type", abstractC0468vE);
                            if (d3.i.a(AbstractC0420a.h0(abstractC0468vE), zH0) && interfaceC0816s2.v0().isEmpty() && interfaceC0816s2.d0() == null) {
                                return null;
                            }
                        }
                    }
                }
                StringBuilder sb = new StringBuilder("must override ''equals()'' in Any");
                InterfaceC0807j interfaceC0807jL4 = interfaceC0816s2.l();
                d3.i.d("containingDeclaration", interfaceC0807jL4);
                if (T3.i.e(interfaceC0807jL4)) {
                    S3.g gVar = S3.g.f2623d;
                    InterfaceC0807j interfaceC0807jL5 = interfaceC0816s2.l();
                    d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807jL5);
                    AbstractC0472z abstractC0472zQ2 = ((InterfaceC0802e) interfaceC0807jL5).q();
                    d3.i.d("containingDeclaration as…ssDescriptor).defaultType", abstractC0472zQ2);
                    sb.append(" or define ''equals(other: " + gVar.Y(AbstractC0420a.h0(abstractC0472zQ2)) + "): Boolean''");
                }
                String string = sb.toString();
                d3.i.d("StringBuilder().apply(builderAction).toString()", string);
                return string;
            case 5:
                InterfaceC0816s interfaceC0816s3 = (InterfaceC0816s) obj;
                d3.i.e("$this$$receiver", interfaceC0816s3);
                C0890w c0890wF = interfaceC0816s3.F();
                if (c0890wF == null) {
                    c0890wF = interfaceC0816s3.d0();
                }
                List list3 = r.f8374b;
                if (c0890wF == null) {
                    z = false;
                } else {
                    AbstractC0468v abstractC0468vN3 = interfaceC0816s3.n();
                    if (abstractC0468vN3 != null) {
                        AbstractC0468v abstractC0468vE2 = c0890wF.e();
                        d3.i.d("receiver.type", abstractC0468vE2);
                        zT = AbstractC0420a.T(abstractC0468vN3, abstractC0468vE2);
                    } else {
                        zT = false;
                    }
                    if (!zT) {
                        b4.d dVarQ0 = c0890wF.Q0();
                        d3.i.d("receiver.value", dVarQ0);
                        if (dVarQ0 instanceof b4.c) {
                            InterfaceC0802e interfaceC0802e2 = ((b4.c) dVarQ0).f5156c;
                            if (interfaceC0802e2.y() && (bVarF = X3.f.f(interfaceC0802e2)) != null) {
                                InterfaceC0804g interfaceC0804gF = o4.a.f(X3.f.j(interfaceC0802e2), bVarF);
                                f4.t tVar = interfaceC0804gF instanceof f4.t ? (f4.t) interfaceC0804gF : null;
                                if (tVar != null && (abstractC0468vN2 = interfaceC0816s3.n()) != null) {
                                    zT2 = AbstractC0420a.T(abstractC0468vN2, tVar.R0());
                                }
                                if (!zT2) {
                                }
                            }
                        } else {
                            zT2 = false;
                            if (!zT2) {
                            }
                        }
                    }
                }
                if (z) {
                    return null;
                }
                return "receiver must be a supertype of the return type";
            case 6:
                AbstractC0732i abstractC0732i = (AbstractC0732i) obj;
                d3.i.e("$this$null", abstractC0732i);
                AbstractC0472z abstractC0472zS = abstractC0732i.s(EnumC0734k.BOOLEAN);
                if (abstractC0472zS != null) {
                    return abstractC0472zS;
                }
                AbstractC0732i.a(63);
                throw null;
            case 7:
                AbstractC0732i abstractC0732i2 = (AbstractC0732i) obj;
                d3.i.e("$this$null", abstractC0732i2);
                AbstractC0472z abstractC0472zS2 = abstractC0732i2.s(EnumC0734k.INT);
                if (abstractC0472zS2 != null) {
                    return abstractC0472zS2;
                }
                AbstractC0732i.a(58);
                throw null;
            default:
                AbstractC0732i abstractC0732i3 = (AbstractC0732i) obj;
                d3.i.e("$this$null", abstractC0732i3);
                AbstractC0472z abstractC0472zW = abstractC0732i3.w();
                d3.i.d("unitType", abstractC0472zW);
                return abstractC0472zW;
        }
    }
}
