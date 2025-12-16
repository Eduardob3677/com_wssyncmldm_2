package l3;

import d3.C0389a;
import d3.InterfaceC0394f;
import f1.AbstractC0420a;
import h4.AbstractC0468v;
import i3.InterfaceC0485f;
import i3.InterfaceC0494o;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;
import r3.AbstractC0811n;
import r3.InterfaceC0802e;
import r3.InterfaceC0816s;
import u3.AbstractC0883o;
import u3.C0879k;

/* renamed from: l3.E, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0649E extends AbstractC0693r implements InterfaceC0394f, InterfaceC0485f, InterfaceC0678e {

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f8107i;

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0647C f8108d;

    /* renamed from: e, reason: collision with root package name */
    public final String f8109e;
    public final Object f;

    /* renamed from: g, reason: collision with root package name */
    public final p0 f8110g;

    /* renamed from: h, reason: collision with root package name */
    public final Q2.c f8111h;

    static {
        d3.r rVar = d3.q.f6516a;
        f8107i = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(C0649E.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;"))};
    }

    public C0649E(AbstractC0647C abstractC0647C, String str, String str2, InterfaceC0816s interfaceC0816s, Object obj) {
        this.f8108d = abstractC0647C;
        this.f8109e = str2;
        this.f = obj;
        this.f8110g = new p0(interfaceC0816s, new B3.c(this, 9, str));
        this.f8111h = AbstractC0420a.U(2, new C0648D(this, 0));
        AbstractC0420a.U(2, new C0648D(this, 1));
    }

    public static final m3.t o(C0649E c0649e, Constructor constructor, InterfaceC0816s interfaceC0816s, boolean z4) {
        Class<?> cls = null;
        if (!z4) {
            c0649e.getClass();
            C0879k c0879k = interfaceC0816s instanceof C0879k ? (C0879k) interfaceC0816s : null;
            if (c0879k != null) {
                C0879k c0879k2 = c0879k;
                if (!AbstractC0811n.e(c0879k2.c())) {
                    InterfaceC0802e interfaceC0802eY = c0879k.Y();
                    d3.i.d("constructorDescriptor.constructedClass", interfaceC0802eY);
                    if (!T3.i.b(interfaceC0802eY) && !T3.e.r(c0879k.Y())) {
                        List listW0 = c0879k2.w0();
                        d3.i.d("constructorDescriptor.valueParameters", listW0);
                        if (!listW0.isEmpty()) {
                            Iterator it = listW0.iterator();
                            while (it.hasNext()) {
                                AbstractC0468v abstractC0468vE = ((u3.V) it.next()).e();
                                d3.i.d("it.type", abstractC0468vE);
                                if (L2.b.C(abstractC0468vE)) {
                                    if (c0649e.n()) {
                                        return new m3.f(constructor, AbstractC0420a.c(c0649e.f, c0649e.k()), 0);
                                    }
                                    d3.i.e("constructor", constructor);
                                    Class declaringClass = constructor.getDeclaringClass();
                                    d3.i.d("constructor.declaringClass", declaringClass);
                                    Type[] genericParameterTypes = constructor.getGenericParameterTypes();
                                    d3.i.d("constructor.genericParameterTypes", genericParameterTypes);
                                    return new m3.g(constructor, declaringClass, cls, (Type[]) (genericParameterTypes.length <= 1 ? new Type[0] : R2.i.l0(genericParameterTypes, 0, genericParameterTypes.length - 1)), 0);
                                }
                            }
                        }
                    }
                }
            }
        }
        if (c0649e.n()) {
            return new m3.f(constructor, AbstractC0420a.c(c0649e.f, c0649e.k()), 1);
        }
        d3.i.e("constructor", constructor);
        Class declaringClass2 = constructor.getDeclaringClass();
        d3.i.d("constructor.declaringClass", declaringClass2);
        Class declaringClass3 = constructor.getDeclaringClass();
        Class<?> declaringClass4 = declaringClass3.getDeclaringClass();
        if (declaringClass4 != null && !Modifier.isStatic(declaringClass3.getModifiers())) {
            cls = declaringClass4;
        }
        Type[] genericParameterTypes2 = constructor.getGenericParameterTypes();
        d3.i.d("constructor.genericParameterTypes", genericParameterTypes2);
        return new m3.g(constructor, declaringClass2, cls, genericParameterTypes2, 1);
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        return i(new Object[0]);
    }

    @Override // d3.InterfaceC0394f
    public final int b() {
        return Z0.j.I(g());
    }

    @Override // c3.InterfaceC0224d
    public final Object c(Object obj, Object obj2, Object obj3) {
        return i(obj, obj2, obj3);
    }

    @Override // c3.InterfaceC0223c
    public final Object d(Object obj, Object obj2) {
        return i(obj, obj2);
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        return i(obj);
    }

    public final boolean equals(Object obj) {
        C0649E c0649eB = w0.b(obj);
        return c0649eB != null && d3.i.a(this.f8108d, c0649eB.f8108d) && d3.i.a(getName(), c0649eB.getName()) && d3.i.a(this.f8109e, c0649eB.f8109e) && d3.i.a(this.f, c0649eB.f);
    }

    @Override // l3.AbstractC0693r
    public final m3.e g() {
        return (m3.e) this.f8111h.getValue();
    }

    @Override // i3.InterfaceC0481b
    public final String getName() {
        String strB = ((AbstractC0883o) k()).getName().b();
        d3.i.d("descriptor.name.asString()", strB);
        return strB;
    }

    @Override // i3.InterfaceC0481b
    public final boolean h() {
        return k().h();
    }

    public final int hashCode() {
        return this.f8109e.hashCode() + ((getName().hashCode() + (this.f8108d.hashCode() * 31)) * 31);
    }

    @Override // l3.AbstractC0693r
    public final AbstractC0647C j() {
        return this.f8108d;
    }

    @Override // l3.AbstractC0693r
    public final boolean n() {
        return !d3.i.a(this.f, C0389a.f6499c);
    }

    @Override // l3.AbstractC0693r
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final InterfaceC0816s k() {
        InterfaceC0494o interfaceC0494o = f8107i[0];
        Object objA = this.f8110g.a();
        d3.i.d("<get-descriptor>(...)", objA);
        return (InterfaceC0816s) objA;
    }

    public final String toString() {
        S3.g gVar = t0.f8223a;
        return t0.b(k());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    public C0649E(AbstractC0647C abstractC0647C, InterfaceC0816s interfaceC0816s) {
        d3.i.e("container", abstractC0647C);
        d3.i.e("descriptor", interfaceC0816s);
        String strB = ((AbstractC0883o) interfaceC0816s).getName().b();
        d3.i.d("descriptor.name.asString()", strB);
        this(abstractC0647C, strB, u0.c(interfaceC0816s).e(), interfaceC0816s, C0389a.f6499c);
    }
}
