package l3;

import A3.C0004c;
import A3.C0005d;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import f1.AbstractC0420a;
import h4.C0459l;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import o3.AbstractC0732i;
import p3.C0743a;
import q3.C0760g;
import q3.C0762i;
import q3.C0763j;
import r3.C0787O;
import s2.C0837c;
import t3.C0857a;
import t3.InterfaceC0858b;
import t3.InterfaceC0860d;
import u3.C0867C;
import u3.C0882n;
import x3.AbstractC0917d;

/* loaded from: classes.dex */
public abstract class o0 {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f8208a = new ConcurrentHashMap();

    public static final w3.e a(Class cls) {
        g4.l lVar;
        InterfaceC0858b interfaceC0858bI;
        InterfaceC0860d interfaceC0860dI;
        d3.i.e("<this>", cls);
        ClassLoader classLoaderD = AbstractC0917d.d(cls);
        x0 x0Var = new x0(classLoaderD);
        ConcurrentHashMap concurrentHashMap = f8208a;
        WeakReference weakReference = (WeakReference) concurrentHashMap.get(x0Var);
        if (weakReference != null) {
            w3.e eVar = (w3.e) weakReference.get();
            if (eVar != null) {
                return eVar;
            }
            concurrentHashMap.remove(x0Var, weakReference);
        }
        e.v vVar = new e.v(classLoaderD);
        ClassLoader classLoader = Q2.k.class.getClassLoader();
        d3.i.d("Unit::class.java.classLoader", classLoader);
        e.v vVar2 = new e.v(classLoader);
        c1.w wVar = new c1.w(classLoaderD);
        String str = "runtime module for " + classLoaderD;
        w3.d dVar = w3.d.f9611b;
        w3.d dVar2 = w3.d.f9612c;
        d3.i.e("moduleName", str);
        g4.l lVar2 = new g4.l("DeserializationComponentsForJava.ModuleData");
        C0763j c0763j = new C0763j(lVar2);
        C0867C c0867c = new C0867C(Q3.f.g("<" + str + IDMTndsXmlWbxmlDefine.XML_CLOSE_TAG), lVar2, c0763j, 56);
        g4.n nVar = lVar2.f6949a;
        nVar.G();
        try {
            if (c0763j.f8455a != null) {
                lVar = lVar2;
                try {
                    throw new AssertionError("Built-ins module is already set: " + c0763j.f8455a + " (attempting to reset to " + c0867c + ")");
                } catch (Throwable th) {
                    th = th;
                    try {
                        lVar.f6950b.getClass();
                        throw th;
                    } catch (Throwable th2) {
                        nVar.C();
                        throw th2;
                    }
                }
            }
            c0763j.f8455a = c0867c;
            nVar.C();
            c0763j.f = new C0762i(c0867c);
            J3.f fVar = new J3.f();
            C0837c c0837c = new C0837c();
            com.google.firebase.messaging.p pVar = new com.google.firebase.messaging.p(lVar2, c0867c);
            J3.g gVar = J3.g.f1156c;
            B3.j jVar = B3.j.f242c;
            B3.j jVar2 = B3.j.f240a;
            R2.u uVar = R2.u.f2325c;
            e4.d dVar3 = new e4.d(lVar2);
            C0787O c0787o = C0787O.f8792e;
            z3.a aVar = z3.a.f9728a;
            o3.l lVar3 = new o3.l(c0867c, pVar);
            A3.v vVar3 = A3.v.f155c;
            C0004c c0004c = new C0004c(vVar3);
            x0 x0Var2 = x0Var;
            D3.b bVar = D3.b.f491a;
            C0837c c0837c2 = new C0837c(new I3.d());
            A3.n nVar2 = A3.n.f136a;
            i4.k.f7186b.getClass();
            i4.l lVar4 = i4.j.f7185b;
            ConcurrentHashMap concurrentHashMap2 = concurrentHashMap;
            D3.d dVar4 = new D3.d(new D3.a(lVar2, wVar, vVar, fVar, jVar, dVar, jVar2, dVar3, dVar2, c0837c, gVar, c0787o, aVar, c0867c, lVar3, c0004c, c0837c2, nVar2, bVar, lVar4, vVar3, new J3.g()));
            P3.f fVar2 = P3.f.f2161g;
            d3.i.e("jvmMetadataVersion", fVar2);
            A3.D d2 = new A3.D(vVar, 7, fVar);
            J3.d dVar5 = new J3.d();
            dVar5.f1144c = vVar;
            dVar5.f1145d = lVar2.b(new C0005d(9, dVar5));
            dVar5.f1146e = c0867c;
            dVar5.f = pVar;
            dVar5.f1147g = new A3.D(c0867c, pVar);
            dVar5.f1148h = P3.f.f2161g;
            dVar5.f1148h = fVar2;
            List listV = AbstractC0420a.V(C0459l.f7063a);
            AbstractC0732i abstractC0732i = c0867c.f;
            C0763j c0763j2 = abstractC0732i instanceof C0763j ? (C0763j) abstractC0732i : null;
            J3.g gVar2 = J3.g.f1155b;
            if (c0763j2 == null || (interfaceC0858bI = c0763j2.I()) == null) {
                interfaceC0858bI = C0857a.f9137b;
            }
            InterfaceC0858b interfaceC0858b = interfaceC0858bI;
            if (c0763j2 == null || (interfaceC0860dI = c0763j2.I()) == null) {
                interfaceC0860dI = C0857a.f9139d;
            }
            d4.i iVar = new d4.i(lVar2, c0867c, d2, dVar5, dVar4, dVar, gVar2, uVar, pVar, interfaceC0858b, interfaceC0860dI, P3.h.f2166a, lVar4, new e4.d(lVar2), listV, NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH);
            fVar.f1154a = iVar;
            c0837c.f9022c = new C0837c(dVar4);
            q3.n nVarI = c0763j.I();
            q3.n nVarI2 = c0763j.I();
            e4.d dVar6 = new e4.d(lVar2);
            d3.i.e("additionalClassPartsProvider", nVarI);
            d3.i.e("platformDependentDeclarationFilter", nVarI2);
            q3.o oVar = new q3.o(lVar2, vVar2, c0867c);
            c1.w wVar2 = new c1.w(oVar);
            e4.a aVar2 = e4.a.f6808q;
            oVar.f8688d = new d4.i(lVar2, c0867c, wVar2, new A3.D(c0867c, pVar, aVar2), oVar, d4.k.f6550a, d4.j.f6548c, R2.n.y0(new C0743a(lVar2, c0867c), new C0760g(lVar2, c0867c)), pVar, nVarI, nVarI2, aVar2.f5277a, lVar4, dVar6, null, 786432);
            c0867c.f9341i = new e.v(R2.i.w0(new C0867C[]{c0867c}));
            c0867c.f9342j = new C0882n("CompositeProvider@RuntimeModuleData for " + c0867c, R2.n.y0(dVar4, oVar));
            J.r0 r0Var = new J.r0();
            r0Var.f1006c = fVar;
            r0Var.f1007d = vVar;
            r0Var.f1008e = new ConcurrentHashMap();
            w3.e eVar2 = new w3.e(iVar, r0Var);
            while (true) {
                x0 x0Var3 = x0Var2;
                ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                WeakReference weakReference2 = (WeakReference) concurrentHashMap3.putIfAbsent(x0Var3, new WeakReference(eVar2));
                if (weakReference2 == null) {
                    return eVar2;
                }
                w3.e eVar3 = (w3.e) weakReference2.get();
                if (eVar3 != null) {
                    return eVar3;
                }
                concurrentHashMap3.remove(x0Var3, weakReference2);
                x0Var2 = x0Var3;
                concurrentHashMap2 = concurrentHashMap3;
            }
        } catch (Throwable th3) {
            th = th3;
            lVar = lVar2;
        }
    }
}
