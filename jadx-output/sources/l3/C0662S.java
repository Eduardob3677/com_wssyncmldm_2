package l3;

import c3.InterfaceC0221a;
import java.lang.reflect.Type;
import r3.InterfaceC0781I;
import r3.InterfaceC0802e;
import r3.InterfaceC0807j;
import u3.C0890w;

/* renamed from: l3.S, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0662S extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8131d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0663T f8132e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0662S(C0663T c0663t, int i5) {
        super(0);
        this.f8131d = i5;
        this.f8132e = c0663t;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f8131d) {
            case 0:
                return w0.d(this.f8132e.a());
            default:
                C0663T c0663t = this.f8132e;
                InterfaceC0781I interfaceC0781IA = c0663t.a();
                boolean z4 = interfaceC0781IA instanceof C0890w;
                AbstractC0693r abstractC0693r = c0663t.f8134a;
                if (!z4 || !d3.i.a(w0.g(abstractC0693r.k()), interfaceC0781IA) || abstractC0693r.k().k0() != 2) {
                    return (Type) abstractC0693r.g().o().get(c0663t.f8135b);
                }
                InterfaceC0807j interfaceC0807jL = abstractC0693r.k().l();
                d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807jL);
                Class clsJ = w0.j((InterfaceC0802e) interfaceC0807jL);
                if (clsJ != null) {
                    return clsJ;
                }
                throw new Q2.d("Cannot determine receiver Java type of inherited declaration: " + interfaceC0781IA, 2);
        }
    }
}
