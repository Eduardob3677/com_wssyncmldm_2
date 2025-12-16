package l3;

import d3.C0389a;
import f1.AbstractC0420a;
import i3.InterfaceC0494o;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import r3.InterfaceC0783K;

/* loaded from: classes.dex */
public abstract class j0 extends AbstractC0693r implements InterfaceC0494o {

    /* renamed from: j, reason: collision with root package name */
    public static final Object f8180j = new Object();

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0647C f8181d;

    /* renamed from: e, reason: collision with root package name */
    public final String f8182e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f8183g;

    /* renamed from: h, reason: collision with root package name */
    public final Q2.c f8184h;

    /* renamed from: i, reason: collision with root package name */
    public final p0 f8185i;

    public j0(AbstractC0647C abstractC0647C, String str, String str2, InterfaceC0783K interfaceC0783K, Object obj) {
        this.f8181d = abstractC0647C;
        this.f8182e = str;
        this.f = str2;
        this.f8183g = obj;
        this.f8184h = AbstractC0420a.U(2, new i0(this, 1));
        this.f8185i = new p0(interfaceC0783K, new i0(this, 0));
    }

    public final boolean equals(Object obj) {
        j0 j0VarC = w0.c(obj);
        return j0VarC != null && d3.i.a(this.f8181d, j0VarC.f8181d) && d3.i.a(this.f8182e, j0VarC.f8182e) && d3.i.a(this.f, j0VarC.f) && d3.i.a(this.f8183g, j0VarC.f8183g);
    }

    @Override // l3.AbstractC0693r
    public final m3.e g() {
        return q().g();
    }

    @Override // i3.InterfaceC0481b
    public final String getName() {
        return this.f8182e;
    }

    @Override // i3.InterfaceC0481b
    public final boolean h() {
        return false;
    }

    public final int hashCode() {
        return this.f.hashCode() + ((this.f8182e.hashCode() + (this.f8181d.hashCode() * 31)) * 31);
    }

    @Override // l3.AbstractC0693r
    public final AbstractC0647C j() {
        return this.f8181d;
    }

    @Override // l3.AbstractC0693r
    public final boolean n() {
        return !d3.i.a(this.f8183g, C0389a.f6499c);
    }

    public final Member o() {
        if (!k().G()) {
            return null;
        }
        Q3.b bVar = u0.f8226a;
        r0 r0VarB = u0.b(k());
        if (r0VarB instanceof C0688m) {
            C0688m c0688m = (C0688m) r0VarB;
            O3.e eVar = c0688m.f;
            if ((eVar.f1978d & 16) == 16) {
                O3.c cVar = eVar.f1982i;
                int i5 = cVar.f1966d;
                if ((i5 & 1) != 1 || (i5 & 2) != 2) {
                    return null;
                }
                int i6 = cVar.f1967e;
                N3.f fVar = c0688m.f8198g;
                return this.f8181d.c(fVar.r(i6), fVar.r(cVar.f));
            }
        }
        return (Field) this.f8184h.getValue();
    }

    @Override // l3.AbstractC0693r
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final InterfaceC0783K k() {
        Object objA = this.f8185i.a();
        d3.i.d("_descriptor()", objA);
        return (InterfaceC0783K) objA;
    }

    public abstract AbstractC0681f0 q();

    public final String toString() {
        S3.g gVar = t0.f8223a;
        return t0.c(k());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public j0(AbstractC0647C abstractC0647C, InterfaceC0783K interfaceC0783K) {
        d3.i.e("container", abstractC0647C);
        d3.i.e("descriptor", interfaceC0783K);
        String strB = interfaceC0783K.getName().b();
        d3.i.d("descriptor.name.asString()", strB);
        this(abstractC0647C, strB, u0.b(interfaceC0783K).e(), interfaceC0783K, C0389a.f6499c);
    }
}
