package B3;

import c3.InterfaceC0222b;
import h4.AbstractC0472z;
import o3.AbstractC0732i;
import o3.n;
import r3.AbstractC0811n;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import u3.AbstractC0870b;
import u3.C0867C;
import u3.C0869a;
import u3.y;

/* loaded from: classes.dex */
public final class a implements InterfaceC0222b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f220c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f221d;

    public /* synthetic */ a(int i5, Object obj) {
        this.f220c = i5;
        this.f221d = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
    @Override // c3.InterfaceC0222b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(Object obj) {
        boolean z4;
        switch (this.f220c) {
            case 0:
                InterfaceC0800c interfaceC0800c = (InterfaceC0800c) obj;
                if (interfaceC0800c == null) {
                    throw new IllegalArgumentException("Argument for @NotNull parameter 'descriptor' of kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1.invoke must not be null");
                }
                ((b) this.f221d).f.a(interfaceC0800c);
                return Q2.k.f2225a;
            case 1:
                InterfaceC0800c interfaceC0800c2 = (InterfaceC0800c) obj;
                if (AbstractC0811n.e(interfaceC0800c2.c())) {
                    z4 = false;
                } else {
                    InterfaceC0802e interfaceC0802e = (InterfaceC0802e) this.f221d;
                    if (interfaceC0802e == null) {
                        AbstractC0811n.a(3);
                        throw null;
                    }
                    if (AbstractC0811n.c(AbstractC0811n.f8819l, interfaceC0800c2, interfaceC0802e) == null) {
                        z4 = true;
                    }
                }
                return Boolean.valueOf(z4);
            case 2:
                Q3.f fVar = (Q3.f) obj;
                C0867C c0867cK = ((AbstractC0732i) this.f221d).k();
                Q3.c cVar = n.f8538j;
                a4.k kVar = ((y) c0867cK.a0(cVar)).f9516i;
                if (kVar == null) {
                    AbstractC0732i.a(11);
                    throw null;
                }
                InterfaceC0804g interfaceC0804gC = kVar.c(fVar, z3.b.f9729c);
                if (interfaceC0804gC == null) {
                    throw new AssertionError("Built-in class " + cVar.c(fVar) + " is not found");
                }
                if (interfaceC0804gC instanceof InterfaceC0802e) {
                    return (InterfaceC0802e) interfaceC0804gC;
                }
                throw new AssertionError("Must be a class descriptor " + fVar + ", but was " + interfaceC0804gC);
            default:
                C0869a c0869a = (C0869a) this.f221d;
                AbstractC0870b abstractC0870b = c0869a.f9416d;
                ((i4.f) obj).getClass();
                d3.i.e("descriptor", abstractC0870b);
                return (AbstractC0472z) c0869a.f9416d.f9418d.a();
        }
    }
}
