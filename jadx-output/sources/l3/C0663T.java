package l3;

import c3.InterfaceC0221a;
import h4.AbstractC0468v;
import i3.InterfaceC0490k;
import i3.InterfaceC0494o;
import java.io.IOException;
import k.Q0;
import r3.InterfaceC0781I;
import r3.InterfaceC0783K;
import r3.InterfaceC0800c;
import r3.InterfaceC0816s;

/* renamed from: l3.T, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0663T implements InterfaceC0490k {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f8133e;

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0693r f8134a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8135b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8136c;

    /* renamed from: d, reason: collision with root package name */
    public final p0 f8137d;

    static {
        d3.r rVar = d3.q.f6516a;
        f8133e = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(C0663T.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;")), rVar.e(new d3.n(rVar.b(C0663T.class), "annotations", "getAnnotations()Ljava/util/List;"))};
    }

    public C0663T(AbstractC0693r abstractC0693r, int i5, int i6, InterfaceC0221a interfaceC0221a) {
        d3.i.e("callable", abstractC0693r);
        B.f.x(i6, "kind");
        this.f8134a = abstractC0693r;
        this.f8135b = i5;
        this.f8136c = i6;
        this.f8137d = r0.j(interfaceC0221a);
        r0.j(new C0662S(this, 0));
    }

    public final InterfaceC0781I a() {
        InterfaceC0494o interfaceC0494o = f8133e[0];
        Object objA = this.f8137d.a();
        d3.i.d("<get-descriptor>(...)", objA);
        return (InterfaceC0781I) objA;
    }

    public final String b() {
        InterfaceC0781I interfaceC0781IA = a();
        u3.V v4 = interfaceC0781IA instanceof u3.V ? (u3.V) interfaceC0781IA : null;
        if (v4 == null || v4.l().o0()) {
            return null;
        }
        Q3.f name = v4.getName();
        d3.i.d("valueParameter.name", name);
        if (name.f2243d) {
            return null;
        }
        return name.b();
    }

    public final l0 c() {
        AbstractC0468v abstractC0468vE = a().e();
        d3.i.d("descriptor.type", abstractC0468vE);
        return new l0(abstractC0468vE, new C0662S(this, 1));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0663T) {
            C0663T c0663t = (C0663T) obj;
            if (d3.i.a(this.f8134a, c0663t.f8134a)) {
                if (this.f8135b == c0663t.f8135b) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f8135b) + (this.f8134a.hashCode() * 31);
    }

    public final String toString() throws IOException {
        String strB;
        S3.g gVar = t0.f8223a;
        StringBuilder sb = new StringBuilder();
        int iF = Q0.f(this.f8136c);
        if (iF == 0) {
            sb.append("instance parameter");
        } else if (iF == 1) {
            sb.append("extension receiver parameter");
        } else if (iF == 2) {
            sb.append("parameter #" + this.f8135b + ' ' + b());
        }
        sb.append(" of ");
        InterfaceC0800c interfaceC0800cK = this.f8134a.k();
        if (interfaceC0800cK instanceof InterfaceC0783K) {
            strB = t0.c((InterfaceC0783K) interfaceC0800cK);
        } else {
            if (!(interfaceC0800cK instanceof InterfaceC0816s)) {
                throw new IllegalStateException(("Illegal callable: " + interfaceC0800cK).toString());
            }
            strB = t0.b((InterfaceC0816s) interfaceC0800cK);
        }
        sb.append(strB);
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }
}
