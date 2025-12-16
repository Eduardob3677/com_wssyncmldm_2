package Z0;

import A3.C0008g;
import A3.p;
import A3.z;
import J.b0;
import J3.t;
import L3.C0052a;
import P1.u;
import R3.AbstractC0080b;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import c3.InterfaceC0223c;
import c3.InterfaceC0224d;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import com.samsung.android.fotaagent.common.feature.CarrierFeature;
import d3.q;
import f1.AbstractC0420a;
import h4.AbstractC0450c;
import h4.AbstractC0464q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.C0467u;
import h4.G;
import h4.J;
import h4.O;
import h4.X;
import i3.InterfaceC0482c;
import i3.InterfaceC0483d;
import i3.InterfaceC0494o;
import i3.InterfaceC0495p;
import i3.x;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import k.Q0;
import k2.InterfaceC0638a;
import l3.l0;
import l3.m0;
import o3.AbstractC0729f;
import o3.AbstractC0732i;
import o3.EnumC0734k;
import o3.o;
import q3.C0756c;
import q3.C0757d;
import r3.AbstractC0811n;
import r3.InterfaceC0775C;
import r3.InterfaceC0783K;
import r3.InterfaceC0786N;
import r3.InterfaceC0789Q;
import r3.InterfaceC0799b;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import r3.InterfaceC0821x;
import s3.C0843f;
import s3.C0844g;
import s3.InterfaceC0845h;
import u3.AbstractC0883o;
import u3.C0868D;
import u3.C0890w;
import u3.E;
import u3.K;
import u3.L;
import u3.M;
import u3.N;
import u3.V;

/* loaded from: classes.dex */
public abstract class j implements b0, b2.d {

    /* renamed from: a, reason: collision with root package name */
    public static Context f3016a;

    public static M A(InterfaceC0783K interfaceC0783K, InterfaceC0845h interfaceC0845h) {
        C0843f c0843f = C0844g.f9041a;
        InterfaceC0786N interfaceC0786NM = interfaceC0783K.m();
        if (interfaceC0786NM != null) {
            return G(interfaceC0783K, interfaceC0845h, c0843f, true, interfaceC0783K.c(), interfaceC0786NM);
        }
        h(6);
        throw null;
    }

    public static K B(InterfaceC0802e interfaceC0802e) {
        if (interfaceC0802e == null) {
            h(26);
            throw null;
        }
        InterfaceC0802e interfaceC0802eE = o4.a.e(T3.e.d(interfaceC0802e), Q3.i.f2268t);
        if (interfaceC0802eE == null) {
            return null;
        }
        C0843f c0843f = C0844g.f9041a;
        p pVar = AbstractC0811n.f8813e;
        K kS0 = K.S0(interfaceC0802e, 1, pVar, false, o3.n.f8531b, 4, interfaceC0802e.m());
        L l5 = new L(kS0, c0843f, 1, pVar, false, false, false, 4, null, interfaceC0802e.m());
        kS0.V0(l5, null, null, null);
        G.f7019d.getClass();
        G g5 = G.f7020e;
        J jH = interfaceC0802eE.H();
        List listSingletonList = Collections.singletonList(new O(interfaceC0802e.q()));
        d3.i.e("attributes", g5);
        d3.i.e("constructor", jH);
        d3.i.e("arguments", listSingletonList);
        kS0.Y0(C0451d.r(g5, jH, listSingletonList, false), Collections.emptyList(), null, null, Collections.emptyList());
        l5.T0(kS0.n());
        return kS0;
    }

    public static N C(InterfaceC0802e interfaceC0802e) {
        if (interfaceC0802e == null) {
            h(24);
            throw null;
        }
        C0843f c0843f = C0844g.f9041a;
        N nB1 = N.b1(interfaceC0802e, o3.n.f8532c, 4, interfaceC0802e.m());
        return nB1.V0(null, null, Collections.emptyList(), Collections.emptyList(), Collections.singletonList(new V(nB1, null, 0, c0843f, Q3.f.e("value"), X3.f.e(interfaceC0802e).u(), false, false, false, null, interfaceC0802e.m())), interfaceC0802e.q(), 1, AbstractC0811n.f8813e);
    }

    public static N D(InterfaceC0802e interfaceC0802e) {
        if (interfaceC0802e != null) {
            return N.b1(interfaceC0802e, o3.n.f8530a, 4, interfaceC0802e.m()).V0(null, null, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), X3.f.e(interfaceC0802e).h(interfaceC0802e.q()), 1, AbstractC0811n.f8813e);
        }
        h(22);
        throw null;
    }

    public static C0890w E(InterfaceC0799b interfaceC0799b, AbstractC0468v abstractC0468v, InterfaceC0845h interfaceC0845h) {
        if (interfaceC0799b == null) {
            h(30);
            throw null;
        }
        if (abstractC0468v == null) {
            return null;
        }
        return new C0890w(interfaceC0799b, new b4.b(interfaceC0799b, abstractC0468v), interfaceC0845h);
    }

    public static L F(InterfaceC0783K interfaceC0783K, InterfaceC0845h interfaceC0845h, boolean z4, InterfaceC0786N interfaceC0786N) {
        if (interfaceC0845h == null) {
            h(18);
            throw null;
        }
        if (interfaceC0786N != null) {
            return new L(interfaceC0783K, interfaceC0845h, interfaceC0783K.i(), interfaceC0783K.c(), z4, false, false, 1, null, interfaceC0786N);
        }
        h(19);
        throw null;
    }

    public static M G(InterfaceC0783K interfaceC0783K, InterfaceC0845h interfaceC0845h, InterfaceC0845h interfaceC0845h2, boolean z4, p pVar, InterfaceC0786N interfaceC0786N) {
        if (interfaceC0845h == null) {
            h(8);
            throw null;
        }
        if (interfaceC0845h2 == null) {
            h(9);
            throw null;
        }
        if (pVar == null) {
            h(10);
            throw null;
        }
        if (interfaceC0786N == null) {
            h(11);
            throw null;
        }
        M m5 = new M(interfaceC0783K, interfaceC0845h, interfaceC0783K.i(), pVar, z4, false, false, 1, null, interfaceC0786N);
        m5.f9399o = M.S0(m5, interfaceC0783K.e(), interfaceC0845h2);
        return m5;
    }

    public static boolean H(InterfaceC0799b interfaceC0799b, InterfaceC0799b interfaceC0799b2) {
        d3.i.e("superDescriptor", interfaceC0799b);
        d3.i.e("subDescriptor", interfaceC0799b2);
        if ((interfaceC0799b2 instanceof C3.f) && (interfaceC0799b instanceof InterfaceC0816s)) {
            C3.f fVar = (C3.f) interfaceC0799b2;
            fVar.w0().size();
            InterfaceC0816s interfaceC0816s = (InterfaceC0816s) interfaceC0799b;
            interfaceC0816s.w0().size();
            List listW0 = fVar.a().w0();
            d3.i.d("subDescriptor.original.valueParameters", listW0);
            List listW02 = interfaceC0816s.a().w0();
            d3.i.d("superDescriptor.original.valueParameters", listW02);
            Iterator it = R2.m.l1(listW0, listW02).iterator();
            while (it.hasNext()) {
                Q2.e eVar = (Q2.e) it.next();
                V v4 = (V) eVar.f2212c;
                V v5 = (V) eVar.f2213d;
                d3.i.d("subParameter", v4);
                boolean z4 = U((InterfaceC0816s) interfaceC0799b2, v4) instanceof J3.k;
                d3.i.d("superParameter", v5);
                if (z4 != (U(interfaceC0816s, v5) instanceof J3.k)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final int I(m3.e eVar) {
        d3.i.e("<this>", eVar);
        return eVar.o().size();
    }

    public static final InterfaceC0482c K(d3.j jVar) {
        InterfaceC0483d interfaceC0483dC = ((l0) jVar).c();
        if (interfaceC0483dC != null) {
            return L(interfaceC0483dC);
        }
        throw new Q2.d("Cannot calculate JVM erasure for type: " + jVar, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final InterfaceC0482c L(InterfaceC0483d interfaceC0483d) {
        InterfaceC0802e interfaceC0802e;
        if (interfaceC0483d instanceof InterfaceC0482c) {
            return (InterfaceC0482c) interfaceC0483d;
        }
        if (!(interfaceC0483d instanceof InterfaceC0495p)) {
            throw new Q2.d("Cannot calculate JVM erasure for type: " + interfaceC0483d, 2);
        }
        InterfaceC0494o interfaceC0494o = m0.f[0];
        Object objA = ((m0) ((InterfaceC0495p) interfaceC0483d)).f8202d.a();
        d3.i.d("<get-upperBounds>(...)", objA);
        List list = (List) objA;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            d3.j jVar = (d3.j) next;
            d3.i.c("null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl", jVar);
            InterfaceC0804g interfaceC0804gI = ((l0) jVar).f8192a.J0().i();
            interfaceC0802e = interfaceC0804gI instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gI : null;
            if (interfaceC0802e != null && interfaceC0802e.L() != 2 && interfaceC0802e.L() != 5) {
                interfaceC0802e = next;
                break;
            }
        }
        d3.j jVar2 = (d3.j) interfaceC0802e;
        if (jVar2 == null) {
            jVar2 = (d3.j) R2.m.O0(list);
        }
        return jVar2 != null ? K(jVar2) : q.f6516a.b(Object.class);
    }

    public static String M(int i5) {
        switch (i5) {
            case -1:
                return "SUCCESS_CACHE";
            case 0:
                return "SUCCESS";
            case 1:
            case 9:
            case 11:
            case 12:
            default:
                StringBuilder sb = new StringBuilder(32);
                sb.append("unknown status code: ");
                sb.append(i5);
                return sb.toString();
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 10:
                return "DEVELOPER_ERROR";
            case 13:
                return "ERROR";
            case 14:
                return "INTERRUPTED";
            case 15:
                return "TIMEOUT";
            case 16:
                return "CANCELED";
            case 17:
                return "API_NOT_CONNECTED";
            case 18:
                return "DEAD_CLIENT";
        }
    }

    public static final Object N(g4.m mVar, InterfaceC0494o interfaceC0494o) {
        d3.i.e("<this>", mVar);
        d3.i.e("p", interfaceC0494o);
        return mVar.a();
    }

    public static String Q(n4.e eVar, InterfaceC0816s interfaceC0816s) {
        d3.i.e("functionDescriptor", interfaceC0816s);
        if (eVar.c(interfaceC0816s)) {
            return null;
        }
        return eVar.b();
    }

    public static boolean R(Configuration configuration) {
        Method methodJ = x.J(Configuration.class, "hidden_semDesktopModeEnabled", new Class[0]);
        Object objJ0 = methodJ != null ? x.j0(configuration, methodJ, new Object[0]) : null;
        int iIntValue = objJ0 instanceof Integer ? ((Integer) objJ0).intValue() : -1;
        Method methodJ2 = x.J(Configuration.class, "hidden_SEM_DESKTOP_MODE_ENABLED", new Class[0]);
        Object objJ02 = methodJ2 != null ? x.j0(null, methodJ2, new Object[0]) : null;
        return iIntValue == (objJ02 instanceof Integer ? ((Integer) objJ02).intValue() : 0);
    }

    public static boolean S(InterfaceC0816s interfaceC0816s) {
        return interfaceC0816s.k0() == 4 && T3.e.o(interfaceC0816s.l(), 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x017b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object T(AbstractC0468v abstractC0468v, t tVar, InterfaceC0224d interfaceC0224d) {
        J3.j jVarD;
        AbstractC0468v abstractC0468v2;
        t tVar2;
        Object objT;
        int iF;
        J3.k kVar;
        AbstractC0464q abstractC0464qJ;
        J3.g gVar = J3.g.f1157d;
        d3.i.e("kotlinType", abstractC0468v);
        d3.i.e("writeGenericType", interfaceC0224d);
        if (AbstractC0729f.o(abstractC0468v)) {
            C0868D c0868d = o.f8543a;
            AbstractC0729f.o(abstractC0468v);
            AbstractC0732i abstractC0732iY = AbstractC0420a.y(abstractC0468v);
            InterfaceC0845h interfaceC0845hT = abstractC0468v.t();
            AbstractC0468v abstractC0468vJ = AbstractC0729f.j(abstractC0468v);
            List listH = AbstractC0729f.h(abstractC0468v);
            List listL = AbstractC0729f.l(abstractC0468v);
            ArrayList arrayList = new ArrayList(R2.o.C0(listL));
            Iterator it = listL.iterator();
            while (it.hasNext()) {
                arrayList.add(((h4.N) it.next()).b());
            }
            G.f7019d.getClass();
            G g5 = G.f7020e;
            J jH = o.f8543a.H();
            AbstractC0729f.n(abstractC0468v);
            AbstractC0468v abstractC0468vB = ((h4.N) R2.m.U0(abstractC0468v.u0())).b();
            d3.i.d("arguments.last().type", abstractC0468vB);
            ArrayList arrayListZ0 = R2.m.Z0(arrayList, C0451d.r(g5, jH, AbstractC0420a.V(AbstractC0420a.b(abstractC0468vB)), false));
            AbstractC0472z abstractC0472zO = AbstractC0420a.y(abstractC0468v).o();
            d3.i.d("suspendFunType.builtIns.nullableAnyType", abstractC0472zO);
            return T(AbstractC0729f.e(abstractC0732iY, interfaceC0845hT, abstractC0468vJ, listH, arrayListZ0, abstractC0472zO, false).N0(abstractC0468v.K0()), tVar, interfaceC0224d);
        }
        AbstractC0472z abstractC0472zL = x.l(abstractC0468v);
        if (abstractC0472zL == null && ((abstractC0464qJ = x.j(abstractC0468v)) == null || (abstractC0472zL = x.D0(abstractC0464qJ)) == null)) {
            abstractC0472zL = x.l(abstractC0468v);
            d3.i.b(abstractC0472zL);
        }
        J jI1 = x.i1(abstractC0472zL);
        Object objD = null;
        if (x.l0(jI1)) {
            EnumC0734k enumC0734kX = x.X(jI1);
            if (enumC0734kX != null) {
                switch (enumC0734kX.ordinal()) {
                    case 0:
                        kVar = J3.l.f1164a;
                        break;
                    case 1:
                        kVar = J3.l.f1165b;
                        break;
                    case 2:
                        kVar = J3.l.f1166c;
                        break;
                    case 3:
                        kVar = J3.l.f1167d;
                        break;
                    case 4:
                        kVar = J3.l.f1168e;
                        break;
                    case 5:
                        kVar = J3.l.f;
                        break;
                    case 6:
                        kVar = J3.l.f1169g;
                        break;
                    case 7:
                        kVar = J3.l.f1170h;
                        break;
                    default:
                        throw new A0.c();
                }
                if (!x.w0(abstractC0468v)) {
                    Q3.c cVar = z.f178p;
                    d3.i.d("ENHANCED_NULLABILITY_ANNOTATION", cVar);
                    boolean z4 = x.f0(abstractC0468v, cVar);
                    objD = j(kVar, z4);
                }
            } else {
                EnumC0734k enumC0734kW = x.W(jI1);
                if (enumC0734kW != null) {
                    StringBuilder sb = new StringBuilder("[");
                    Y3.c cVar2 = (Y3.c) Y3.c.f2974q.get(enumC0734kW);
                    if (cVar2 == null) {
                        Y3.c.a(4);
                        throw null;
                    }
                    sb.append(cVar2.c());
                    objD = J3.g.b(sb.toString());
                } else if (x.C0(jI1)) {
                    Q3.e eVarF = x.F(jI1);
                    String str = C0757d.f8645a;
                    Q3.b bVarF = C0757d.f(eVarF);
                    if (bVarF != null) {
                        if (!tVar.f1181g) {
                            List list = C0757d.n;
                            if ((list instanceof Collection) && list.isEmpty()) {
                                String strE = Y3.b.b(bVarF).e();
                                d3.i.d("byClassId(classId).internalName", strE);
                                objD = J3.g.d(strE);
                            } else {
                                Iterator it2 = list.iterator();
                                while (it2.hasNext()) {
                                    if (d3.i.a(((C0756c) it2.next()).f8642a, bVarF)) {
                                        break;
                                    }
                                }
                                String strE2 = Y3.b.b(bVarF).e();
                                d3.i.d("byClassId(classId).internalName", strE2);
                                objD = J3.g.d(strE2);
                            }
                        }
                    }
                }
            }
        }
        if (objD != null) {
            Object objJ = j(objD, tVar.f1176a);
            interfaceC0224d.c(abstractC0468v, objJ, tVar);
            return objJ;
        }
        J jJ0 = abstractC0468v.J0();
        if (jJ0 instanceof C0467u) {
            C0467u c0467u = (C0467u) jJ0;
            AbstractC0468v abstractC0468v3 = c0467u.f7075a;
            if (abstractC0468v3 != null) {
                return T(AbstractC0420a.h0(abstractC0468v3), tVar, interfaceC0224d);
            }
            LinkedHashSet linkedHashSet = c0467u.f7076b;
            d3.i.e("types", linkedHashSet);
            throw new AssertionError("There should be no intersection type in existing descriptors, but found: ".concat(R2.m.S0(linkedHashSet, null, null, null, null, 63)));
        }
        InterfaceC0804g interfaceC0804gI = jJ0.i();
        if (interfaceC0804gI == null) {
            throw new UnsupportedOperationException("no descriptor for type constructor of " + abstractC0468v);
        }
        if (j4.i.f(interfaceC0804gI)) {
            return J3.g.d("error/NonExistentClass");
        }
        boolean z5 = interfaceC0804gI instanceof InterfaceC0802e;
        boolean z6 = tVar.f1178c;
        if (z5 && AbstractC0732i.y(abstractC0468v)) {
            if (abstractC0468v.u0().size() != 1) {
                throw new UnsupportedOperationException("arrays must have one type argument");
            }
            h4.N n = (h4.N) abstractC0468v.u0().get(0);
            AbstractC0468v abstractC0468vB2 = n.b();
            d3.i.d("memberProjection.type", abstractC0468vB2);
            if (n.a() == 2) {
                objT = J3.g.d("java/lang/Object");
            } else {
                int iA = n.a();
                B.f.E(iA, "memberProjection.projectionKind");
                if (z6 || ((iF = Q0.f(iA)) == 0 ? (tVar2 = tVar.f1183i) == null : !(iF == 1 ? (tVar2 = tVar.f1182h) != null : (tVar2 = tVar.f) != null))) {
                    tVar2 = tVar;
                }
                objT = T(abstractC0468vB2, tVar2, interfaceC0224d);
            }
            return J3.g.b("[" + J3.g.h((J3.l) objT));
        }
        if (!z5) {
            if (interfaceC0804gI instanceof InterfaceC0789Q) {
                AbstractC0468v abstractC0468vI = AbstractC0420a.I((InterfaceC0789Q) interfaceC0804gI);
                if (abstractC0468v.K0()) {
                    abstractC0468vI = X.h(abstractC0468vI, true);
                }
                return T(abstractC0468vI, tVar, q4.c.f8696d);
            }
            if ((interfaceC0804gI instanceof f4.t) && tVar.f1184j) {
                return T(((f4.t) interfaceC0804gI).R0(), tVar, interfaceC0224d);
            }
            throw new UnsupportedOperationException("Unknown type " + abstractC0468v);
        }
        if (T3.i.b(interfaceC0804gI) && !tVar.f1177b && (abstractC0468v2 = (AbstractC0468v) AbstractC0450c.d(abstractC0468v, new HashSet())) != null) {
            return T(abstractC0468v2, new t(tVar.f1176a, true, tVar.f1178c, tVar.f1179d, tVar.f1180e, tVar.f, tVar.f1181g, tVar.f1182h, tVar.f1183i, false, 512), interfaceC0224d);
        }
        if (z6 && AbstractC0732i.b((InterfaceC0802e) interfaceC0804gI, o3.m.f8492P)) {
            jVarD = J3.g.d("java/lang/Class");
        } else {
            InterfaceC0802e interfaceC0802e = (InterfaceC0802e) interfaceC0804gI;
            d3.i.d("descriptor.original", interfaceC0802e.a());
            if (interfaceC0802e.L() == 4) {
                InterfaceC0807j interfaceC0807jL = interfaceC0802e.l();
                d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807jL);
                interfaceC0802e = (InterfaceC0802e) interfaceC0807jL;
            }
            InterfaceC0802e interfaceC0802eA = interfaceC0802e.a();
            d3.i.d("enumClassIfEnumEntry.original", interfaceC0802eA);
            jVarD = J3.g.d(q(interfaceC0802eA, gVar));
        }
        interfaceC0224d.c(abstractC0468v, jVarD, tVar);
        return jVarD;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x011d, code lost:
    
        if (d3.i.a(X3.f.g(r0), X3.f.g(r4)) == false) goto L50;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static J3.l U(InterfaceC0816s interfaceC0816s, V v4) {
        InterfaceC0816s interfaceC0816sA;
        d3.i.e("f", interfaceC0816s);
        boolean zA = d3.i.a(((AbstractC0883o) interfaceC0816s).getName().b(), CarrierFeature.VALUE_AUTO_DOWNLOAD_REMOVE);
        q4.c cVar = q4.c.f8696d;
        if (!zA || interfaceC0816s.w0().size() != 1 || (X3.f.k(interfaceC0816s).l() instanceof C3.c) || AbstractC0732i.z(interfaceC0816s)) {
            if (interfaceC0816s.w0().size() == 1) {
                InterfaceC0807j interfaceC0807jL = interfaceC0816s.l();
                InterfaceC0802e interfaceC0802e = interfaceC0807jL instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0807jL : null;
                if (interfaceC0802e != null) {
                    List listW0 = interfaceC0816s.w0();
                    d3.i.d("f.valueParameters", listW0);
                    InterfaceC0804g interfaceC0804gI = ((V) R2.m.b1(listW0)).e().J0().i();
                    InterfaceC0802e interfaceC0802e2 = interfaceC0804gI instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gI : null;
                    if (interfaceC0802e2 != null) {
                        if (AbstractC0732i.t(interfaceC0802e) != null) {
                        }
                    }
                }
            }
            AbstractC0468v abstractC0468vE = v4.e();
            d3.i.d("valueParameterDescriptor.type", abstractC0468vE);
            return (J3.l) T(abstractC0468vE, t.f1175k, cVar);
        }
        List listW02 = interfaceC0816s.a().w0();
        d3.i.d("f.original.valueParameters", listW02);
        AbstractC0468v abstractC0468vE2 = ((V) R2.m.b1(listW02)).e();
        d3.i.d("f.original.valueParameters.single().type", abstractC0468vE2);
        t tVar = t.f1175k;
        J3.l lVar = (J3.l) T(abstractC0468vE2, tVar, cVar);
        J3.k kVar = lVar instanceof J3.k ? (J3.k) lVar : null;
        if ((kVar != null ? kVar.f1163i : null) == Y3.c.INT && (interfaceC0816sA = C0008g.a(interfaceC0816s)) != null) {
            List listW03 = interfaceC0816sA.a().w0();
            d3.i.d("overridden.original.valueParameters", listW03);
            AbstractC0468v abstractC0468vE3 = ((V) R2.m.b1(listW03)).e();
            d3.i.d("overridden.original.valueParameters.single().type", abstractC0468vE3);
            J3.l lVar2 = (J3.l) T(abstractC0468vE3, tVar, cVar);
            InterfaceC0807j interfaceC0807jL2 = interfaceC0816sA.l();
            d3.i.d("overridden.containingDeclaration", interfaceC0807jL2);
            if (!d3.i.a(X3.f.h(interfaceC0807jL2), o3.m.f8486J.i()) || !(lVar2 instanceof J3.j) || !d3.i.a(((J3.j) lVar2).f1162i, "java/lang/Object")) {
            }
        }
        AbstractC0468v abstractC0468vE4 = v4.e();
        d3.i.d("valueParameterDescriptor.type", abstractC0468vE4);
        return (J3.l) T(X.h(abstractC0468vE4, true), t.f1175k, cVar);
    }

    public static MappedByteBuffer V(Context context, Uri uri) throws IOException {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", null);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    FileChannel channel = fileInputStream.getChannel();
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return map;
                } finally {
                }
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public static void c0(Spinner spinner, List list) {
        if (list == null) {
            spinner.setAdapter((SpinnerAdapter) null);
            return;
        }
        SpinnerAdapter adapter = spinner.getAdapter();
        if (!(adapter instanceof T.d)) {
            spinner.setAdapter((SpinnerAdapter) new T.d(spinner.getContext(), list));
            return;
        }
        T.d dVar = (T.d) adapter;
        if (dVar.f2708c == list) {
            return;
        }
        dVar.f2708c = list;
        dVar.notifyDataSetChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void e0(String str, String str2) throws Exception {
        FileOutputStream fileOutputStream;
        ZipOutputStream zipOutputStream;
        Throwable th;
        OutputStream bufferedOutputStream;
        File file = new File(str);
        if (!file.isFile() && !file.isDirectory()) {
            throw new Exception("not found");
        }
        try {
            fileOutputStream = new FileOutputStream(str2);
            try {
                bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                try {
                    zipOutputStream = new ZipOutputStream(bufferedOutputStream);
                } catch (Throwable th2) {
                    zipOutputStream = null;
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                zipOutputStream = null;
                th = th;
                bufferedOutputStream = zipOutputStream;
                if (zipOutputStream != null) {
                    zipOutputStream.close();
                }
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
            zipOutputStream = null;
        }
        try {
            zipOutputStream.setLevel(8);
            f0(file, zipOutputStream);
            zipOutputStream.finish();
            zipOutputStream.close();
            bufferedOutputStream.close();
            fileOutputStream.close();
        } catch (Throwable th5) {
            th = th5;
            if (zipOutputStream != null) {
            }
            if (bufferedOutputStream != null) {
            }
            if (fileOutputStream != null) {
            }
            throw th;
        }
    }

    public static void f0(File file, ZipOutputStream zipOutputStream) throws Throwable {
        String string;
        BufferedInputStream bufferedInputStream;
        if (file.isDirectory()) {
            if (file.getName().equalsIgnoreCase(".metadata")) {
                return;
            }
            for (File file2 : file.listFiles()) {
                f0(file2, zipOutputStream);
            }
            return;
        }
        BufferedInputStream bufferedInputStream2 = null;
        try {
            String path = file.getPath();
            Log.d(N2.a.f1862a, path);
            StringTokenizer stringTokenizer = new StringTokenizer(path, "/");
            int iCountTokens = stringTokenizer.countTokens();
            string = stringTokenizer.toString();
            while (iCountTokens != 0) {
                iCountTokens--;
                string = stringTokenizer.nextToken();
            }
            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        } catch (Throwable th) {
            th = th;
        }
        try {
            ZipEntry zipEntry = new ZipEntry(string);
            zipEntry.setTime(file.lastModified());
            zipOutputStream.putNextEntry(zipEntry);
            byte[] bArr = new byte[2048];
            while (true) {
                int i5 = bufferedInputStream.read(bArr, 0, 2048);
                if (i5 == -1) {
                    zipOutputStream.closeEntry();
                    bufferedInputStream.close();
                    return;
                }
                zipOutputStream.write(bArr, 0, i5);
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream2 = bufferedInputStream;
            if (bufferedInputStream2 != null) {
                bufferedInputStream2.close();
            }
            throw th;
        }
    }

    public static /* synthetic */ void h(int i5) {
        String str = (i5 == 12 || i5 == 23 || i5 == 25) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 12 || i5 == 23 || i5 == 25) ? 2 : 3];
        switch (i5) {
            case 1:
            case 4:
            case 8:
            case 14:
            case 16:
            case 18:
            case 31:
            case 33:
            case 35:
                objArr[0] = "annotations";
                break;
            case 2:
            case 5:
            case 9:
                objArr[0] = "parameterAnnotations";
                break;
            case 3:
            case 7:
            case 13:
            case 15:
            case 17:
            default:
                objArr[0] = "propertyDescriptor";
                break;
            case 6:
            case 11:
            case 19:
                objArr[0] = "sourceElement";
                break;
            case 10:
                objArr[0] = "visibility";
                break;
            case 12:
            case 23:
            case 25:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
                break;
            case 20:
                objArr[0] = "containingClass";
                break;
            case 21:
                objArr[0] = "source";
                break;
            case 22:
            case 24:
            case 26:
                objArr[0] = "enumClass";
                break;
            case 27:
            case 28:
            case 29:
                objArr[0] = "descriptor";
                break;
            case 30:
            case 32:
            case 34:
                objArr[0] = "owner";
                break;
        }
        if (i5 == 12) {
            objArr[1] = "createSetter";
        } else if (i5 == 23) {
            objArr[1] = "createEnumValuesMethod";
        } else if (i5 != 25) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
        } else {
            objArr[1] = "createEnumValueOfMethod";
        }
        switch (i5) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "createSetter";
                break;
            case 12:
            case 23:
            case 25:
                break;
            case 13:
            case 14:
                objArr[2] = "createDefaultGetter";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[2] = "createGetter";
                break;
            case 20:
            case 21:
                objArr[2] = "createPrimaryConstructorForObject";
                break;
            case 22:
                objArr[2] = "createEnumValuesMethod";
                break;
            case 24:
                objArr[2] = "createEnumValueOfMethod";
                break;
            case 26:
                objArr[2] = "createEnumEntriesProperty";
                break;
            case 27:
                objArr[2] = "isEnumValuesMethod";
                break;
            case 28:
                objArr[2] = "isEnumValueOfMethod";
                break;
            case 29:
                objArr[2] = "isEnumSpecialMethod";
                break;
            case 30:
            case 31:
                objArr[2] = "createExtensionReceiverParameterForCallable";
                break;
            case 32:
            case 33:
                objArr[2] = "createContextReceiverParameterForCallable";
                break;
            case 34:
            case 35:
                objArr[2] = "createContextReceiverParameterForClass";
                break;
            default:
                objArr[2] = "createDefaultSetter";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 12 && i5 != 23 && i5 != 25) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static void i(Throwable th, Throwable th2) {
        d3.i.e("<this>", th);
        d3.i.e("exception", th2);
        if (th != th2) {
            X2.c.f2866a.a(th, th2);
        }
    }

    public static final Object j(Object obj, boolean z4) {
        Y3.c cVar;
        d3.i.e("possiblyPrimitiveType", obj);
        if (!z4) {
            return obj;
        }
        J3.l lVar = (J3.l) obj;
        if (!(lVar instanceof J3.k) || (cVar = ((J3.k) lVar).f1163i) == null) {
            return lVar;
        }
        String strE = Y3.b.c(cVar.e()).e();
        d3.i.d("byFqNameWithoutInnerClas…apperFqName).internalName", strE);
        return J3.g.d(strE);
    }

    public static void k(String str, boolean z4) {
        if (!z4) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void l(int i5) {
        if (i5 < 0) {
            throw new IllegalArgumentException();
        }
    }

    public static void m(String str, Object obj) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static int n(int i5, int i6, int i7) {
        return i5 < i6 ? i6 : i5 > i7 ? i7 : i5;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final String q(InterfaceC0802e interfaceC0802e, J3.g gVar) {
        d3.i.e("klass", interfaceC0802e);
        d3.i.e("typeMappingConfiguration", gVar);
        InterfaceC0807j interfaceC0807jL = interfaceC0802e.l();
        d3.i.d("klass.containingDeclaration", interfaceC0807jL);
        Q3.f name = interfaceC0802e.getName();
        if (name != null) {
            Q3.f fVar = Q3.h.f2245a;
            if (name.f2243d) {
                name = Q3.h.f2247c;
            }
        }
        String strC = name.c();
        if (interfaceC0807jL instanceof InterfaceC0775C) {
            Q3.c cVar = ((E) ((InterfaceC0775C) interfaceC0807jL)).f9353g;
            if (cVar.d()) {
                return strC;
            }
            return s4.h.q(cVar.b(), '.', IDMTndsXmlWbxmlDefine.XML_SLASH) + IDMTndsXmlWbxmlDefine.XML_SLASH + strC;
        }
        InterfaceC0802e interfaceC0802e2 = interfaceC0807jL instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0807jL : null;
        if (interfaceC0802e2 == null) {
            throw new IllegalArgumentException("Unexpected container: " + interfaceC0807jL + " for " + interfaceC0802e);
        }
        return q(interfaceC0802e2, gVar) + '$' + strC;
    }

    public static int r(j0.X x4, androidx.emoji2.text.f fVar, View view, View view2, j0.J j3, boolean z4) {
        if (j3.v() == 0 || x4.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z4) {
            return Math.abs(j0.J.F(view) - j0.J.F(view2)) + 1;
        }
        return Math.min(fVar.l(), fVar.b(view2) - fVar.e(view));
    }

    public static int s(j0.X x4, androidx.emoji2.text.f fVar, View view, View view2, j0.J j3, boolean z4, boolean z5) {
        if (j3.v() == 0 || x4.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z5 ? Math.max(0, (x4.b() - Math.max(j0.J.F(view), j0.J.F(view2))) - 1) : Math.max(0, Math.min(j0.J.F(view), j0.J.F(view2)));
        if (z4) {
            return Math.round((iMax * (Math.abs(fVar.b(view2) - fVar.e(view)) / (Math.abs(j0.J.F(view) - j0.J.F(view2)) + 1))) + (fVar.k() - fVar.e(view)));
        }
        return iMax;
    }

    public static int t(j0.X x4, androidx.emoji2.text.f fVar, View view, View view2, j0.J j3, boolean z4) {
        if (j3.v() == 0 || x4.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z4) {
            return x4.b();
        }
        return (int) (((fVar.b(view2) - fVar.e(view)) / (Math.abs(j0.J.F(view) - j0.J.F(view2)) + 1)) * x4.b());
    }

    public static a4.o u(String str, List list) {
        a4.n nVar;
        d3.i.e("debugName", str);
        q4.f fVar = new q4.f();
        Iterator it = list.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            nVar = a4.n.f3128b;
            if (!zHasNext) {
                break;
            }
            a4.o oVar = (a4.o) it.next();
            if (oVar != nVar) {
                if (oVar instanceof a4.a) {
                    a4.o[] oVarArr = ((a4.a) oVar).f3091c;
                    d3.i.e("elements", oVarArr);
                    fVar.addAll(R2.i.g0(oVarArr));
                } else {
                    fVar.add(oVar);
                }
            }
        }
        int i5 = fVar.f8701c;
        return i5 != 0 ? i5 != 1 ? new a4.a(str, (a4.o[]) fVar.toArray(new a4.o[0])) : (a4.o) fVar.get(0) : nVar;
    }

    public static androidx.emoji2.text.p v(Context context) {
        ProviderInfo providerInfo;
        D3.e eVar;
        ApplicationInfo applicationInfo;
        PackageManager packageManager = context.getPackageManager();
        m("Package manager required to locate emoji font provider", packageManager);
        Iterator<ResolveInfo> it = packageManager.queryIntentContentProviders(new Intent("androidx.content.action.LOAD_EMOJI_FONT"), 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                providerInfo = null;
                break;
            }
            providerInfo = it.next().providerInfo;
            if (providerInfo != null && (applicationInfo = providerInfo.applicationInfo) != null && (applicationInfo.flags & 1) == 1) {
                break;
            }
        }
        if (providerInfo == null) {
            eVar = null;
        } else {
            try {
                String str = providerInfo.authority;
                String str2 = providerInfo.packageName;
                Signature[] signatureArr = packageManager.getPackageInfo(str2, 64).signatures;
                ArrayList arrayList = new ArrayList();
                for (Signature signature : signatureArr) {
                    arrayList.add(signature.toByteArray());
                }
                eVar = new D3.e(str, str2, "emojicompat-emoji-font", Collections.singletonList(arrayList));
            } catch (PackageManager.NameNotFoundException e5) {
                Log.wtf("emoji2.text.DefaultEmojiConfig", e5);
            }
        }
        if (eVar == null) {
            return null;
        }
        return new androidx.emoji2.text.p(new androidx.emoji2.text.o(context, eVar));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0052 A[Catch: all -> 0x006a, TryCatch #0 {all -> 0x006a, blocks: (B:3:0x000f, B:10:0x0030, B:12:0x0049, B:13:0x004c, B:15:0x0052, B:16:0x0055, B:17:0x0065, B:19:0x0067, B:20:0x0069), top: B:34:0x000f, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0055 A[Catch: all -> 0x006a, TryCatch #0 {all -> 0x006a, blocks: (B:3:0x000f, B:10:0x0030, B:12:0x0049, B:13:0x004c, B:15:0x0052, B:16:0x0055, B:17:0x0065, B:19:0x0067, B:20:0x0069), top: B:34:0x000f, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static e4.c w(Q3.c cVar, g4.o oVar, InterfaceC0821x interfaceC0821x, InputStream inputStream) {
        L3.E e5;
        AbstractC0080b abstractC0080b;
        d3.i.e("fqName", cVar);
        d3.i.e("storageManager", oVar);
        d3.i.e("module", interfaceC0821x);
        try {
            M3.a aVar = M3.a.f;
            M3.a aVarN0 = x.N0(inputStream);
            M3.a aVar2 = M3.a.f;
            d3.i.e("ourVersion", aVar2);
            int i5 = aVarN0.f1867c;
            int i6 = aVar2.f1867c;
            int i7 = aVar2.f1866b;
            int i8 = aVarN0.f1866b;
            if (i8 == 0) {
                if (i7 == 0 && i5 == i6) {
                    C0087i c0087i = new C0087i();
                    M3.b.a(c0087i);
                    C0052a c0052a = L3.E.f1382m;
                    c0052a.getClass();
                    C0084f c0084f = new C0084f(inputStream);
                    abstractC0080b = (AbstractC0080b) c0052a.a(c0084f, c0087i);
                    try {
                        c0084f.a(0);
                        if (abstractC0080b.b()) {
                            C0098u c0098u = new C0098u(new A0.c().getMessage());
                            c0098u.f2416c = abstractC0080b;
                            throw c0098u;
                        }
                        e5 = (L3.E) abstractC0080b;
                    } catch (C0098u e6) {
                        e6.f2416c = abstractC0080b;
                        throw e6;
                    }
                }
                e5 = null;
            } else if (i8 != i7 || i5 > i6) {
                e5 = null;
            } else {
                C0087i c0087i2 = new C0087i();
                M3.b.a(c0087i2);
                C0052a c0052a2 = L3.E.f1382m;
                c0052a2.getClass();
                C0084f c0084f2 = new C0084f(inputStream);
                abstractC0080b = (AbstractC0080b) c0052a2.a(c0084f2, c0087i2);
                c0084f2.a(0);
                if (abstractC0080b.b()) {
                }
            }
            W1.a.m(inputStream, null);
            if (e5 != null) {
                return new e4.c(cVar, oVar, interfaceC0821x, e5, aVarN0);
            }
            throw new UnsupportedOperationException("Kotlin built-in definition format version is not supported: expected " + aVar2 + ", actual " + aVarN0 + ". Please update Kotlin");
        } finally {
        }
    }

    public static C0890w x(InterfaceC0799b interfaceC0799b, AbstractC0468v abstractC0468v, Q3.f fVar, InterfaceC0845h interfaceC0845h, int i5) {
        if (interfaceC0845h == null) {
            h(33);
            throw null;
        }
        if (abstractC0468v == null) {
            return null;
        }
        b4.a aVar = new b4.a(interfaceC0799b, abstractC0468v, fVar);
        Q2.a aVar2 = Q3.g.f2244a;
        return new C0890w(interfaceC0799b, aVar, interfaceC0845h, Q3.f.e("_context_receiver_" + i5));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static U2.a y(U2.a aVar, InterfaceC0223c interfaceC0223c, Object obj) {
        d3.i.e("<this>", interfaceC0223c);
        d3.i.e("completion", aVar);
        if (interfaceC0223c instanceof W2.a) {
            return ((W2.a) interfaceC0223c).e(obj, aVar);
        }
        U2.d dVarA = aVar.a();
        return dVarA == U2.e.f2746c ? new V2.b(aVar, interfaceC0223c, obj) : new V2.c(aVar, dVarA, interfaceC0223c, obj);
    }

    public static L z(InterfaceC0783K interfaceC0783K, InterfaceC0845h interfaceC0845h) {
        return F(interfaceC0783K, interfaceC0845h, true, interfaceC0783K.m());
    }

    public abstract void J(u uVar, float f, float f5);

    public int O(View view) {
        return 0;
    }

    public int P() {
        return 0;
    }

    public abstract void W(int i5);

    public abstract void X(Typeface typeface, boolean z4);

    public void Y(int i5, View view) {
    }

    public abstract void Z(int i5);

    @Override // b2.d
    public Object a(Class cls) {
        InterfaceC0638a interfaceC0638aB = b(cls);
        if (interfaceC0638aB == null) {
            return null;
        }
        return interfaceC0638aB.get();
    }

    public abstract void a0(View view, int i5, int i6);

    public abstract void b0(View view, float f, float f5);

    @Override // J.b0
    public void d() {
    }

    public abstract boolean d0(int i5, View view);

    @Override // b2.d
    public Set e(Class cls) {
        return (Set) f(cls).get();
    }

    @Override // J.b0
    public void g() {
    }

    public abstract int o(int i5, View view);

    public abstract int p(int i5, View view);
}
