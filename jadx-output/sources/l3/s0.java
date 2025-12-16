package l3;

import L3.C0052a;
import L3.C0075y;
import R3.AbstractC0080b;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import c3.InterfaceC0222b;
import d3.AbstractC0390b;
import d3.AbstractC0395g;
import d3.InterfaceC0394f;
import h4.AbstractC0468v;
import i3.InterfaceC0482c;
import i3.InterfaceC0484e;
import i3.InterfaceC0485f;
import i3.InterfaceC0488i;
import i3.InterfaceC0493n;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import k3.C0639a;
import kotlin.Metadata;
import r3.InterfaceC0816s;
import s2.C0837c;

/* loaded from: classes.dex */
public class s0 extends d3.r {
    public static AbstractC0647C h(AbstractC0390b abstractC0390b) {
        InterfaceC0484e interfaceC0484eJ = abstractC0390b.j();
        return interfaceC0484eJ instanceof AbstractC0647C ? (AbstractC0647C) interfaceC0484eJ : C0676d.f8162d;
    }

    @Override // d3.r
    public final InterfaceC0485f a(AbstractC0395g abstractC0395g) {
        AbstractC0647C abstractC0647CH = h(abstractC0395g);
        String name = abstractC0395g.getName();
        String strL = abstractC0395g.l();
        d3.i.e("container", abstractC0647CH);
        d3.i.e("name", name);
        d3.i.e("signature", strL);
        return new C0649E(abstractC0647CH, name, strL, null, abstractC0395g.f6502d);
    }

    @Override // d3.r
    public final InterfaceC0482c b(Class cls) {
        return AbstractC0674c.a(cls);
    }

    @Override // d3.r
    public final InterfaceC0484e c(Class cls, String str) {
        e.v vVar = AbstractC0674c.f8159a;
        d3.i.e("jClass", cls);
        e.v vVar2 = AbstractC0674c.f8160b;
        vVar2.getClass();
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) vVar2.f6793d;
        Object obj = concurrentHashMap.get(cls);
        if (obj == null) {
            Object objE = ((InterfaceC0222b) vVar2.f6792c).e(cls);
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(cls, objE);
            obj = objPutIfAbsent == null ? objE : objPutIfAbsent;
        }
        return (InterfaceC0484e) obj;
    }

    @Override // d3.r
    public final InterfaceC0488i d(d3.l lVar) {
        return new C0653I(h(lVar), lVar.f, lVar.f6504g, lVar.f6502d);
    }

    @Override // d3.r
    public final InterfaceC0493n e(d3.n nVar) {
        return new C0669Z(h(nVar), nVar.f, nVar.f6504g, nVar.f6502d);
    }

    @Override // d3.r
    public final String f(InterfaceC0394f interfaceC0394f) throws IOException {
        C0649E c0649eB;
        d3.i.e("<this>", interfaceC0394f);
        Metadata metadata = (Metadata) interfaceC0394f.getClass().getAnnotation(Metadata.class);
        C0649E c0649e = null;
        if (metadata != null) {
            String[] strArrD1 = metadata.d1();
            if (strArrD1.length == 0) {
                strArrD1 = null;
            }
            if (strArrD1 != null) {
                String[] strArrD2 = metadata.d2();
                C0087i c0087i = P3.h.f2166a;
                d3.i.e("strings", strArrD2);
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(P3.a.b(strArrD1));
                C0087i c0087i2 = P3.h.f2166a;
                P3.g gVarG = P3.h.g(byteArrayInputStream, strArrD2);
                C0052a c0052a = C0075y.f1790x;
                C0087i c0087i3 = P3.h.f2166a;
                c0052a.getClass();
                C0084f c0084f = new C0084f(byteArrayInputStream);
                AbstractC0080b abstractC0080b = (AbstractC0080b) c0052a.a(c0084f, c0087i3);
                try {
                    c0084f.a(0);
                    if (!abstractC0080b.b()) {
                        C0098u c0098u = new C0098u(new A0.c().getMessage());
                        c0098u.f2416c = abstractC0080b;
                        throw c0098u;
                    }
                    C0075y c0075y = (C0075y) abstractC0080b;
                    P3.f fVar = new P3.f(metadata.mv(), (metadata.xi() & 8) != 0);
                    Class<?> cls = interfaceC0394f.getClass();
                    L3.X x4 = c0075y.f1803r;
                    d3.i.d("proto.typeTable", x4);
                    c0649e = new C0649E(C0676d.f8162d, (u3.N) w0.f(cls, c0075y, gVarG, new C0837c(x4), fVar, C0639a.f8067l));
                } catch (C0098u e5) {
                    e5.f2416c = abstractC0080b;
                    throw e5;
                }
            }
        }
        if (c0649e == null || (c0649eB = w0.b(c0649e)) == null) {
            return super.f(interfaceC0394f);
        }
        S3.g gVar = t0.f8223a;
        InterfaceC0816s interfaceC0816sP = c0649eB.k();
        StringBuilder sb = new StringBuilder();
        t0.a(sb, interfaceC0816sP);
        List listW0 = interfaceC0816sP.w0();
        d3.i.d("invoke.valueParameters", listW0);
        R2.m.R0(listW0, sb, "(", ")", C0672b.f8154l, 48);
        sb.append(" -> ");
        AbstractC0468v abstractC0468vN = interfaceC0816sP.n();
        d3.i.b(abstractC0468vN);
        sb.append(t0.d(abstractC0468vN));
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }

    @Override // d3.r
    public final String g(d3.k kVar) {
        return f(kVar);
    }
}
