package S3;

import J.r0;
import R2.u;
import R2.w;
import c3.InterfaceC0222b;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import com.idm.providers.mo.IDMMoInterface;
import f1.AbstractC0420a;
import f4.t;
import h0.AbstractC0432c;
import h4.AbstractC0450c;
import h4.AbstractC0464q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0448a;
import h4.C0460m;
import h4.C0467u;
import h4.C0470x;
import h4.J;
import h4.N;
import h4.X;
import h4.Z;
import i3.InterfaceC0494o;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import o3.AbstractC0729f;
import o3.AbstractC0732i;
import p0.AbstractC0739a;
import r3.AbstractC0811n;
import r3.C0773A;
import r3.InterfaceC0775C;
import r3.InterfaceC0780H;
import r3.InterfaceC0783K;
import r3.InterfaceC0789Q;
import r3.InterfaceC0792U;
import r3.InterfaceC0799b;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0805h;
import r3.InterfaceC0807j;
import r3.InterfaceC0808k;
import r3.InterfaceC0820w;
import r3.InterfaceC0821x;
import s2.C0837c;
import s3.EnumC0841d;
import s3.InterfaceC0838a;
import s3.InterfaceC0839b;
import u3.C0879k;
import u3.C0887t;
import u3.C0890w;
import u3.L;
import u3.M;
import u3.V;

/* loaded from: classes.dex */
public final class g implements i {

    /* renamed from: c, reason: collision with root package name */
    public static final g f2622c;

    /* renamed from: d, reason: collision with root package name */
    public static final g f2623d;

    /* renamed from: e, reason: collision with root package name */
    public static final g f2624e;

    /* renamed from: a, reason: collision with root package name */
    public final k f2625a;

    /* renamed from: b, reason: collision with root package name */
    public final Q2.h f2626b = new Q2.h(new B3.k(5, this));

    static {
        k kVar = new k();
        kVar.e();
        kVar.f2667a = true;
        new g(kVar);
        k kVar2 = new k();
        kVar2.e();
        w wVar = w.f2327c;
        kVar2.m(wVar);
        kVar2.f2667a = true;
        new g(kVar2);
        k kVar3 = new k();
        kVar3.e();
        kVar3.m(wVar);
        kVar3.k();
        kVar3.f2667a = true;
        new g(kVar3);
        k kVar4 = new k();
        kVar4.m(wVar);
        b bVar = b.f2612c;
        kVar4.h(bVar);
        o oVar = o.f2697d;
        kVar4.l(oVar);
        kVar4.f2667a = true;
        new g(kVar4);
        k kVar5 = new k();
        kVar5.e();
        kVar5.m(wVar);
        kVar5.h(bVar);
        kVar5.i();
        kVar5.l(o.f2698e);
        kVar5.a();
        kVar5.c();
        kVar5.k();
        kVar5.d();
        kVar5.f2667a = true;
        new g(kVar5);
        k kVar6 = new k();
        kVar6.m(h.f2627d);
        kVar6.f2667a = true;
        f2622c = new g(kVar6);
        k kVar7 = new k();
        kVar7.m(h.f2628e);
        kVar7.f2667a = true;
        new g(kVar7);
        k kVar8 = new k();
        kVar8.h(bVar);
        kVar8.l(oVar);
        kVar8.f2667a = true;
        f2623d = new g(kVar8);
        k kVar9 = new k();
        kVar9.b();
        kVar9.h(b.f2611b);
        kVar9.m(h.f2628e);
        kVar9.f2667a = true;
        f2624e = new g(kVar9);
        k kVar10 = new k();
        kVar10.j();
        kVar10.m(h.f2628e);
        kVar10.f2667a = true;
        new g(kVar10);
    }

    public g(k kVar) {
        this.f2625a = kVar;
    }

    public static void X(StringBuilder sb) {
        int length = sb.length();
        if (length == 0 || sb.charAt(length - 1) != ' ') {
            sb.append(' ');
        }
    }

    public static boolean j0(AbstractC0468v abstractC0468v) {
        if (AbstractC0729f.n(abstractC0468v)) {
            List listU0 = abstractC0468v.u0();
            if (!(listU0 instanceof Collection) || !listU0.isEmpty()) {
                Iterator it = listU0.iterator();
                while (it.hasNext()) {
                    if (((N) it.next()).c()) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static final void n(g gVar, InterfaceC0783K interfaceC0783K, StringBuilder sb) throws IOException {
        if (!gVar.r()) {
            k kVar = gVar.f2625a;
            j jVar = kVar.f2672g;
            InterfaceC0494o[] interfaceC0494oArr = k.f2645W;
            if (!((Boolean) jVar.a(interfaceC0494oArr[5], kVar)).booleanValue()) {
                if (gVar.q().contains(h.ANNOTATIONS)) {
                    gVar.z(sb, interfaceC0783K, null);
                    C0887t c0887tR0 = interfaceC0783K.r0();
                    if (c0887tR0 != null) {
                        gVar.z(sb, c0887tR0, EnumC0841d.FIELD);
                    }
                    C0887t c0887tI0 = interfaceC0783K.i0();
                    if (c0887tI0 != null) {
                        gVar.z(sb, c0887tI0, EnumC0841d.PROPERTY_DELEGATE_FIELD);
                    }
                    if (((p) kVar.f2651G.a(interfaceC0494oArr[31], kVar)) == p.f2700d) {
                        L lR = interfaceC0783K.r();
                        if (lR != null) {
                            gVar.z(sb, lR, EnumC0841d.PROPERTY_GETTER);
                        }
                        M mF = interfaceC0783K.f();
                        if (mF != null) {
                            gVar.z(sb, mF, EnumC0841d.PROPERTY_SETTER);
                            List listW0 = mF.w0();
                            d3.i.d("setter.valueParameters", listW0);
                            V v4 = (V) R2.m.b1(listW0);
                            d3.i.d("it", v4);
                            gVar.z(sb, v4, EnumC0841d.SETTER_PARAMETER);
                        }
                    }
                }
                List listV0 = interfaceC0783K.v0();
                d3.i.d("property.contextReceiverParameters", listV0);
                gVar.C(sb, listV0);
                A3.p pVarC = interfaceC0783K.c();
                d3.i.d("property.visibility", pVarC);
                gVar.h0(pVarC, sb);
                gVar.N(sb, gVar.q().contains(h.CONST) && interfaceC0783K.P(), "const");
                gVar.K(interfaceC0783K, sb);
                gVar.M(interfaceC0783K, sb);
                gVar.S(interfaceC0783K, sb);
                gVar.N(sb, gVar.q().contains(h.LATEINIT) && interfaceC0783K.C0(), "lateinit");
                gVar.J(interfaceC0783K, sb);
            }
            gVar.e0(interfaceC0783K, sb, false);
            List listU = interfaceC0783K.u();
            d3.i.d("property.typeParameters", listU);
            gVar.d0(sb, listU, true);
            gVar.V(sb, interfaceC0783K);
        }
        gVar.P(interfaceC0783K, sb, true);
        sb.append(": ");
        AbstractC0468v abstractC0468vE = interfaceC0783K.e();
        d3.i.d("property.type", abstractC0468vE);
        sb.append(gVar.Y(abstractC0468vE));
        gVar.W(sb, interfaceC0783K);
        gVar.H(interfaceC0783K, sb);
        List listU2 = interfaceC0783K.u();
        d3.i.d("property.typeParameters", listU2);
        gVar.i0(sb, listU2);
    }

    public static int v(InterfaceC0820w interfaceC0820w) {
        if (interfaceC0820w instanceof InterfaceC0802e) {
            return ((InterfaceC0802e) interfaceC0820w).L() == 2 ? 4 : 1;
        }
        InterfaceC0807j interfaceC0807jL = interfaceC0820w.l();
        InterfaceC0802e interfaceC0802e = interfaceC0807jL instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0807jL : null;
        if (interfaceC0802e == null || !(interfaceC0820w instanceof InterfaceC0800c)) {
            return 1;
        }
        InterfaceC0800c interfaceC0800c = (InterfaceC0800c) interfaceC0820w;
        d3.i.d("this.overriddenDescriptors", interfaceC0800c.p());
        if ((!r4.isEmpty()) && interfaceC0802e.i() != 1) {
            return 3;
        }
        if (interfaceC0802e.L() != 2 || d3.i.a(interfaceC0800c.c(), AbstractC0811n.f8809a)) {
            return 1;
        }
        return interfaceC0800c.i() == 4 ? 4 : 3;
    }

    public static /* synthetic */ String y(g gVar, InterfaceC0839b interfaceC0839b) {
        return gVar.x(interfaceC0839b, null);
    }

    public final void A(InterfaceC0805h interfaceC0805h, StringBuilder sb) {
        List listS = interfaceC0805h.s();
        d3.i.d("classifier.declaredTypeParameters", listS);
        List listK = interfaceC0805h.H().k();
        d3.i.d("classifier.typeConstructor.parameters", listK);
        if (u() && interfaceC0805h.z() && listK.size() > listS.size()) {
            sb.append(" /*captured type parameters: ");
            c0(sb, listK.subList(listS.size(), listK.size()));
            sb.append("*/");
        }
    }

    public final String B(V3.g gVar) {
        if (gVar instanceof V3.b) {
            return R2.m.S0((Iterable) ((V3.b) gVar).f2797a, ", ", "{", "}", new e(this, 1), 24);
        }
        if (gVar instanceof V3.a) {
            return s4.h.p(y(this, (InterfaceC0839b) ((V3.a) gVar).f2797a), "@");
        }
        if (!(gVar instanceof V3.r)) {
            return gVar.toString();
        }
        V3.q qVar = (V3.q) ((V3.r) gVar).f2797a;
        if (qVar instanceof V3.o) {
            return ((V3.o) qVar).f2808a + "::class";
        }
        if (!(qVar instanceof V3.p)) {
            throw new A0.c();
        }
        V3.p pVar = (V3.p) qVar;
        String strB = pVar.f2809a.f2795a.b().b();
        int i5 = pVar.f2809a.f2796b;
        for (int i6 = 0; i6 < i5; i6++) {
            strB = "kotlin.Array<" + strB + IDMTndsXmlWbxmlDefine.XML_CLOSE_TAG;
        }
        return AbstractC0432c.h(strB, "::class");
    }

    public final void C(StringBuilder sb, List list) {
        if (!list.isEmpty()) {
            sb.append("context(");
            Iterator it = list.iterator();
            int i5 = 0;
            while (it.hasNext()) {
                int i6 = i5 + 1;
                C0890w c0890w = (C0890w) it.next();
                z(sb, c0890w, EnumC0841d.RECEIVER);
                AbstractC0468v abstractC0468vE = c0890w.e();
                d3.i.d("contextReceiver.type", abstractC0468vE);
                sb.append(G(abstractC0468vE));
                if (i5 == R2.n.x0(list)) {
                    sb.append(") ");
                } else {
                    sb.append(", ");
                }
                i5 = i6;
            }
        }
    }

    public final void D(StringBuilder sb, AbstractC0472z abstractC0472z) {
        z(sb, abstractC0472z, null);
        boolean z4 = abstractC0472z instanceof C0460m;
        if (AbstractC0450c.i(abstractC0472z)) {
            boolean z5 = abstractC0472z instanceof j4.f;
            boolean z6 = z5 && ((j4.f) abstractC0472z).f.f7646d;
            k kVar = this.f2625a;
            if (z6 && ((Boolean) kVar.f2664T.a(k.f2645W[45], kVar)).booleanValue()) {
                j4.i iVar = j4.i.f7647a;
                if (z5) {
                    boolean z7 = ((j4.f) abstractC0472z).f.f7646d;
                }
                J jJ0 = abstractC0472z.J0();
                d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor", jJ0);
                sb.append(E(((j4.g) jJ0).f7616b[0]));
            } else {
                if (!z5 || ((Boolean) kVar.f2666V.a(k.f2645W[47], kVar)).booleanValue()) {
                    sb.append(abstractC0472z.J0().toString());
                } else {
                    sb.append(((j4.f) abstractC0472z).f7614j);
                }
                sb.append(Z(abstractC0472z.u0()));
            }
        } else {
            J jJ02 = abstractC0472z.J0();
            InterfaceC0804g interfaceC0804gI = abstractC0472z.J0().i();
            r0 r0VarC = AbstractC0739a.c(abstractC0472z, interfaceC0804gI instanceof InterfaceC0805h ? (InterfaceC0805h) interfaceC0804gI : null, 0);
            if (r0VarC == null) {
                sb.append(a0(jJ02));
                sb.append(Z(abstractC0472z.u0()));
            } else {
                U(sb, r0VarC);
            }
        }
        if (abstractC0472z.K0()) {
            sb.append("?");
        }
        if (abstractC0472z instanceof C0460m) {
            sb.append(" & Any");
        }
    }

    public final String E(String str) {
        int iOrdinal = s().ordinal();
        if (iOrdinal == 0) {
            return str;
        }
        if (iOrdinal == 1) {
            return B.f.v("<font color=red><b>", str, "</b></font>");
        }
        throw new A0.c();
    }

    public final String F(String str, String str2, AbstractC0732i abstractC0732i) {
        d3.i.e("lowerRendered", str);
        d3.i.e("upperRendered", str2);
        if (W1.a.m0(str, str2)) {
            return s4.h.s(str2, "(") ? B.f.v("(", str, ")!") : str.concat("!");
        }
        String strW = s4.h.w(p().a(abstractC0732i.i(o3.m.f8479B), this), "Collection");
        String strF0 = W1.a.f0(str, strW.concat("Mutable"), str2, strW, strW.concat("(Mutable)"));
        if (strF0 != null) {
            return strF0;
        }
        String strF02 = W1.a.f0(str, strW.concat("MutableMap.MutableEntry"), str2, strW.concat("Map.Entry"), strW.concat("(Mutable)Map.(Mutable)Entry"));
        if (strF02 != null) {
            return strF02;
        }
        String strW2 = s4.h.w(p().a(abstractC0732i.j("Array"), this), "Array");
        String strF03 = W1.a.f0(str, strW2.concat(o("Array<")), str2, strW2.concat(o("Array<out ")), strW2.concat(o("Array<(out) ")));
        if (strF03 != null) {
            return strF03;
        }
        return "(" + str + ".." + str2 + ')';
    }

    public final String G(AbstractC0468v abstractC0468v) throws IOException {
        String strY = Y(abstractC0468v);
        if ((!j0(abstractC0468v) || X.f(abstractC0468v)) && !(abstractC0468v instanceof C0460m)) {
            return strY;
        }
        return "(" + strY + ')';
    }

    public final void H(InterfaceC0792U interfaceC0792U, StringBuilder sb) {
        V3.g gVarG0;
        k kVar = this.f2625a;
        if (!((Boolean) kVar.f2685u.a(k.f2645W[19], kVar)).booleanValue() || (gVarG0 = interfaceC0792U.g0()) == null) {
            return;
        }
        sb.append(" = ");
        sb.append(o(B(gVarG0)));
    }

    public final String I(String str) {
        int iOrdinal = s().ordinal();
        if (iOrdinal == 0) {
            return str;
        }
        if (iOrdinal != 1) {
            throw new A0.c();
        }
        k kVar = this.f2625a;
        return ((Boolean) kVar.f2665U.a(k.f2645W[46], kVar)).booleanValue() ? str : B.f.v("<b>", str, "</b>");
    }

    public final void J(InterfaceC0800c interfaceC0800c, StringBuilder sb) {
        if (q().contains(h.MEMBER_KIND) && u() && interfaceC0800c.k0() != 1) {
            sb.append("/*");
            sb.append(o4.a.q(AbstractC0432c.j(interfaceC0800c.k0())));
            sb.append("*/ ");
        }
    }

    public final void K(InterfaceC0820w interfaceC0820w, StringBuilder sb) {
        N(sb, interfaceC0820w.D(), "external");
        boolean z4 = false;
        N(sb, q().contains(h.EXPECT) && interfaceC0820w.y(), "expect");
        if (q().contains(h.ACTUAL) && interfaceC0820w.j0()) {
            z4 = true;
        }
        N(sb, z4, "actual");
    }

    public final void L(int i5, StringBuilder sb, int i6) {
        k kVar = this.f2625a;
        if (((Boolean) kVar.f2680p.a(k.f2645W[14], kVar)).booleanValue() || i5 != i6) {
            N(sb, q().contains(h.MODALITY), o4.a.q(AbstractC0432c.k(i5)));
        }
    }

    public final void M(InterfaceC0800c interfaceC0800c, StringBuilder sb) {
        if (T3.e.t(interfaceC0800c) && interfaceC0800c.i() == 1) {
            return;
        }
        k kVar = this.f2625a;
        if (((n) kVar.f2646A.a(k.f2645W[25], kVar)) == n.f2693c && interfaceC0800c.i() == 3 && (!interfaceC0800c.p().isEmpty())) {
            return;
        }
        int i5 = interfaceC0800c.i();
        B.f.E(i5, "callable.modality");
        L(i5, sb, v(interfaceC0800c));
    }

    public final void N(StringBuilder sb, boolean z4, String str) {
        if (z4) {
            sb.append(I(str));
            sb.append(" ");
        }
    }

    public final String O(Q3.f fVar, boolean z4) {
        String strO = o(W1.a.d0(fVar));
        k kVar = this.f2625a;
        return (((Boolean) kVar.f2665U.a(k.f2645W[46], kVar)).booleanValue() && s() == s.f2703d && z4) ? B.f.v("<b>", strO, "</b>") : strO;
    }

    public final void P(InterfaceC0807j interfaceC0807j, StringBuilder sb, boolean z4) {
        Q3.f name = interfaceC0807j.getName();
        d3.i.d("descriptor.name", name);
        sb.append(O(name, z4));
    }

    public final void Q(StringBuilder sb, AbstractC0468v abstractC0468v) throws IOException {
        Z zM0 = abstractC0468v.M0();
        C0448a c0448a = zM0 instanceof C0448a ? (C0448a) zM0 : null;
        if (c0448a == null) {
            R(sb, abstractC0468v);
            return;
        }
        k kVar = this.f2625a;
        j jVar = kVar.f2661Q;
        InterfaceC0494o[] interfaceC0494oArr = k.f2645W;
        boolean zBooleanValue = ((Boolean) jVar.a(interfaceC0494oArr[41], kVar)).booleanValue();
        AbstractC0472z abstractC0472z = c0448a.f7048d;
        if (zBooleanValue) {
            R(sb, abstractC0472z);
            return;
        }
        R(sb, c0448a.f7049e);
        if (((Boolean) kVar.f2660P.a(interfaceC0494oArr[40], kVar)).booleanValue()) {
            s sVarS = s();
            q qVar = s.f2703d;
            if (sVarS == qVar) {
                sb.append("<font color=\"808080\"><i>");
            }
            sb.append(" /* = ");
            R(sb, abstractC0472z);
            sb.append(" */");
            if (s() == qVar) {
                sb.append("</i></font>");
            }
        }
    }

    public final void R(StringBuilder sb, AbstractC0468v abstractC0468v) throws IOException {
        Q3.f fVarF;
        String strO;
        boolean z4 = abstractC0468v instanceof C0470x;
        k kVar = this.f2625a;
        if (z4 && kVar.g()) {
            g4.i iVar = ((C0470x) abstractC0468v).f;
            if (iVar.f6940e == g4.k.f6944c || iVar.f6940e == g4.k.f6945d) {
                sb.append("<Not computed yet>");
                return;
            }
        }
        Z zM0 = abstractC0468v.M0();
        if (zM0 instanceof AbstractC0464q) {
            sb.append(((AbstractC0464q) zM0).R0(this, this));
            return;
        }
        if (zM0 instanceof AbstractC0472z) {
            AbstractC0472z abstractC0472z = (AbstractC0472z) zM0;
            if (d3.i.a(abstractC0472z, X.f7045b) || abstractC0472z.J0() == X.f7044a.f7609d) {
                sb.append("???");
                return;
            }
            J jJ0 = abstractC0472z.J0();
            if ((jJ0 instanceof j4.g) && ((j4.g) jJ0).f7615a == j4.h.f7631l) {
                if (!((Boolean) kVar.f2684t.a(k.f2645W[18], kVar)).booleanValue()) {
                    sb.append("???");
                    return;
                }
                J jJ02 = abstractC0472z.J0();
                d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.types.error.ErrorTypeConstructor", jJ02);
                sb.append(E(((j4.g) jJ02).f7616b[0]));
                return;
            }
            if (AbstractC0450c.i(abstractC0472z)) {
                D(sb, abstractC0472z);
                return;
            }
            if (!j0(abstractC0472z)) {
                D(sb, abstractC0472z);
                return;
            }
            int length = sb.length();
            ((g) this.f2626b.getValue()).z(sb, abstractC0472z, null);
            boolean z5 = sb.length() != length;
            AbstractC0468v abstractC0468vJ = AbstractC0729f.j(abstractC0472z);
            List listH = AbstractC0729f.h(abstractC0472z);
            if (!listH.isEmpty()) {
                sb.append("context(");
                Iterator it = listH.subList(0, R2.n.x0(listH)).iterator();
                while (it.hasNext()) {
                    Q(sb, (AbstractC0468v) it.next());
                    sb.append(", ");
                }
                Q(sb, (AbstractC0468v) R2.m.U0(listH));
                sb.append(") ");
            }
            boolean zO = AbstractC0729f.o(abstractC0472z);
            boolean zK0 = abstractC0472z.K0();
            boolean z6 = zK0 || (z5 && abstractC0468vJ != null);
            if (z6) {
                if (zO) {
                    sb.insert(length, '(');
                } else {
                    if (z5) {
                        if (sb.length() == 0) {
                            throw new NoSuchElementException("Char sequence is empty.");
                        }
                        char cCharAt = sb.charAt(s4.h.i(sb));
                        if (!Character.isWhitespace(cCharAt)) {
                            Character.isSpaceChar(cCharAt);
                        }
                        if (sb.charAt(s4.h.i(sb) - 1) != ')') {
                            sb.insert(s4.h.i(sb), "()");
                        }
                    }
                    sb.append("(");
                }
            }
            N(sb, zO, "suspend");
            if (abstractC0468vJ != null) {
                boolean z7 = (j0(abstractC0468vJ) && !abstractC0468vJ.K0()) || AbstractC0729f.o(abstractC0468vJ) || !abstractC0468vJ.t().isEmpty() || (abstractC0468vJ instanceof C0460m);
                if (z7) {
                    sb.append("(");
                }
                Q(sb, abstractC0468vJ);
                if (z7) {
                    sb.append(")");
                }
                sb.append(IDMMoInterface.IDM_MO_ROOT_PATH);
            }
            sb.append("(");
            if (!AbstractC0729f.n(abstractC0472z) || abstractC0472z.t().f(o3.m.f8519p) == null || abstractC0472z.u0().size() > 1) {
                int i5 = 0;
                for (N n : AbstractC0729f.l(abstractC0472z)) {
                    int i6 = i5 + 1;
                    if (i5 > 0) {
                        sb.append(", ");
                    }
                    if (((Boolean) kVar.f2663S.a(k.f2645W[43], kVar)).booleanValue()) {
                        AbstractC0468v abstractC0468vB = n.b();
                        d3.i.d("typeProjection.type", abstractC0468vB);
                        fVarF = AbstractC0729f.f(abstractC0468vB);
                    } else {
                        fVarF = null;
                    }
                    if (fVarF != null) {
                        sb.append(O(fVarF, false));
                        sb.append(": ");
                    }
                    d3.i.e("typeProjection", n);
                    StringBuilder sb2 = new StringBuilder();
                    R2.m.R0(AbstractC0420a.V(n), sb2, null, null, new e(this, 0), 60);
                    String string = sb2.toString();
                    d3.i.d("StringBuilder().apply(builderAction).toString()", string);
                    sb.append(string);
                    i5 = i6;
                }
            } else {
                sb.append("???");
            }
            sb.append(") ");
            int iOrdinal = s().ordinal();
            if (iOrdinal == 0) {
                strO = o("->");
            } else {
                if (iOrdinal != 1) {
                    throw new A0.c();
                }
                strO = "&rarr;";
            }
            sb.append(strO);
            sb.append(" ");
            AbstractC0729f.n(abstractC0472z);
            AbstractC0468v abstractC0468vB2 = ((N) R2.m.U0(abstractC0472z.u0())).b();
            d3.i.d("arguments.last().type", abstractC0468vB2);
            Q(sb, abstractC0468vB2);
            if (z6) {
                sb.append(")");
            }
            if (zK0) {
                sb.append("?");
            }
        }
    }

    public final void S(InterfaceC0800c interfaceC0800c, StringBuilder sb) {
        if (q().contains(h.OVERRIDE) && (!interfaceC0800c.p().isEmpty())) {
            k kVar = this.f2625a;
            if (((n) kVar.f2646A.a(k.f2645W[25], kVar)) != n.f2694d) {
                N(sb, true, "override");
                if (u()) {
                    sb.append("/*");
                    sb.append(interfaceC0800c.p().size());
                    sb.append("*/ ");
                }
            }
        }
    }

    public final void T(Q3.c cVar, String str, StringBuilder sb) {
        sb.append(I(str));
        Q3.e eVarI = cVar.i();
        d3.i.d("fqName.toUnsafe()", eVarI);
        String strO = o(W1.a.e0(eVarI.e()));
        if (strO.length() > 0) {
            sb.append(" ");
            sb.append(strO);
        }
    }

    public final void U(StringBuilder sb, r0 r0Var) {
        r0 r0Var2 = (r0) r0Var.f1008e;
        InterfaceC0805h interfaceC0805h = (InterfaceC0805h) r0Var.f1006c;
        if (r0Var2 != null) {
            U(sb, r0Var2);
            sb.append('.');
            Q3.f name = interfaceC0805h.getName();
            d3.i.d("possiblyInnerType.classifierDescriptor.name", name);
            sb.append(O(name, false));
        } else {
            J jH = interfaceC0805h.H();
            d3.i.d("possiblyInnerType.classi…escriptor.typeConstructor", jH);
            sb.append(a0(jH));
        }
        sb.append(Z((List) r0Var.f1007d));
    }

    public final void V(StringBuilder sb, InterfaceC0799b interfaceC0799b) {
        C0890w c0890wD0 = interfaceC0799b.d0();
        if (c0890wD0 != null) {
            z(sb, c0890wD0, EnumC0841d.RECEIVER);
            AbstractC0468v abstractC0468vE = c0890wD0.e();
            d3.i.d("receiver.type", abstractC0468vE);
            sb.append(G(abstractC0468vE));
            sb.append(IDMMoInterface.IDM_MO_ROOT_PATH);
        }
    }

    public final void W(StringBuilder sb, InterfaceC0799b interfaceC0799b) {
        C0890w c0890wD0;
        k kVar = this.f2625a;
        if (((Boolean) kVar.E.a(k.f2645W[29], kVar)).booleanValue() && (c0890wD0 = interfaceC0799b.d0()) != null) {
            sb.append(" on ");
            AbstractC0468v abstractC0468vE = c0890wD0.e();
            d3.i.d("receiver.type", abstractC0468vE);
            sb.append(Y(abstractC0468vE));
        }
    }

    public final String Y(AbstractC0468v abstractC0468v) throws IOException {
        d3.i.e("type", abstractC0468v);
        StringBuilder sb = new StringBuilder();
        k kVar = this.f2625a;
        Q(sb, (AbstractC0468v) ((InterfaceC0222b) kVar.f2688x.a(k.f2645W[22], kVar)).e(abstractC0468v));
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }

    public final String Z(List list) throws IOException {
        d3.i.e("typeArguments", list);
        if (list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(o("<"));
        R2.m.R0(list, sb, null, null, new e(this, 0), 60);
        sb.append(o(">"));
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }

    @Override // S3.i
    public final void a() {
        this.f2625a.a();
    }

    public final String a0(J j3) {
        d3.i.e("typeConstructor", j3);
        InterfaceC0804g interfaceC0804gI = j3.i();
        if (interfaceC0804gI instanceof InterfaceC0789Q ? true : interfaceC0804gI instanceof InterfaceC0802e ? true : interfaceC0804gI instanceof t) {
            d3.i.e("klass", interfaceC0804gI);
            return j4.i.f(interfaceC0804gI) ? interfaceC0804gI.H().toString() : p().a(interfaceC0804gI, this);
        }
        if (interfaceC0804gI == null) {
            return j3 instanceof C0467u ? ((C0467u) j3).c(f.f) : j3.toString();
        }
        throw new IllegalStateException(("Unexpected classifier: " + interfaceC0804gI.getClass()).toString());
    }

    @Override // S3.i
    public final void b() {
        this.f2625a.b();
    }

    public final void b0(InterfaceC0789Q interfaceC0789Q, StringBuilder sb, boolean z4) {
        if (z4) {
            sb.append(o("<"));
        }
        if (u()) {
            sb.append("/*");
            sb.append(interfaceC0789Q.z0());
            sb.append("*/ ");
        }
        N(sb, interfaceC0789Q.n0(), "reified");
        String strD = AbstractC0432c.d(interfaceC0789Q.A());
        boolean z5 = true;
        N(sb, strD.length() > 0, strD);
        z(sb, interfaceC0789Q, null);
        P(interfaceC0789Q, sb, z4);
        int size = interfaceC0789Q.getUpperBounds().size();
        if ((size > 1 && !z4) || size == 1) {
            AbstractC0468v abstractC0468v = (AbstractC0468v) interfaceC0789Q.getUpperBounds().iterator().next();
            if (abstractC0468v == null) {
                AbstractC0732i.a(141);
                throw null;
            }
            if (!AbstractC0732i.x(abstractC0468v) || !abstractC0468v.K0()) {
                sb.append(" : ");
                sb.append(Y(abstractC0468v));
            }
        } else if (z4) {
            for (AbstractC0468v abstractC0468v2 : interfaceC0789Q.getUpperBounds()) {
                if (abstractC0468v2 == null) {
                    AbstractC0732i.a(141);
                    throw null;
                }
                if (!AbstractC0732i.x(abstractC0468v2) || !abstractC0468v2.K0()) {
                    if (z5) {
                        sb.append(" : ");
                    } else {
                        sb.append(" & ");
                    }
                    sb.append(Y(abstractC0468v2));
                    z5 = false;
                }
            }
        }
        if (z4) {
            sb.append(o(">"));
        }
    }

    @Override // S3.i
    public final void c() {
        this.f2625a.c();
    }

    public final void c0(StringBuilder sb, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b0((InterfaceC0789Q) it.next(), sb, false);
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
    }

    @Override // S3.i
    public final void d() {
        this.f2625a.d();
    }

    public final void d0(StringBuilder sb, List list, boolean z4) {
        k kVar = this.f2625a;
        if (!((Boolean) kVar.f2686v.a(k.f2645W[20], kVar)).booleanValue() && (!list.isEmpty())) {
            sb.append(o("<"));
            c0(sb, list);
            sb.append(o(">"));
            if (z4) {
                sb.append(" ");
            }
        }
    }

    @Override // S3.i
    public final void e() {
        this.f2625a.e();
    }

    public final void e0(InterfaceC0792U interfaceC0792U, StringBuilder sb, boolean z4) {
        if (z4 || !(interfaceC0792U instanceof V)) {
            sb.append(I(interfaceC0792U.T() ? "var" : "val"));
            sb.append(" ");
        }
    }

    @Override // S3.i
    public final boolean f() {
        return this.f2625a.f();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f0(V v4, boolean z4, StringBuilder sb, boolean z5) {
        boolean z6;
        if (z5) {
            sb.append(I("value-parameter"));
            sb.append(" ");
        }
        if (u()) {
            sb.append("/*");
            sb.append(v4.f9408h);
            sb.append("*/ ");
        }
        z(sb, v4, null);
        N(sb, v4.f9410j, "crossinline");
        N(sb, v4.f9411k, "noinline");
        k kVar = this.f2625a;
        j jVar = kVar.f2682r;
        InterfaceC0494o[] interfaceC0494oArr = k.f2645W;
        boolean z7 = false;
        if (((Boolean) jVar.a(interfaceC0494oArr[16], kVar)).booleanValue()) {
            InterfaceC0799b interfaceC0799bS0 = v4.l();
            C0879k c0879k = interfaceC0799bS0 instanceof C0879k ? (C0879k) interfaceC0799bS0 : null;
            z6 = c0879k != null && c0879k.f9439G;
        }
        if (z6) {
            N(sb, ((Boolean) kVar.f2683s.a(interfaceC0494oArr[17], kVar)).booleanValue(), "actual");
        }
        AbstractC0468v abstractC0468vE = v4.e();
        d3.i.d("variable.type", abstractC0468vE);
        AbstractC0468v abstractC0468v = v4.f9412l;
        AbstractC0468v abstractC0468v2 = abstractC0468v == null ? abstractC0468vE : abstractC0468v;
        N(sb, abstractC0468v != null, "vararg");
        if (z6 || (z5 && !r())) {
            e0(v4, sb, z6);
        }
        if (z4) {
            P(v4, sb, z5);
            sb.append(": ");
        }
        sb.append(Y(abstractC0468v2));
        H(v4, sb);
        if (u() && abstractC0468v != null) {
            sb.append(" /*");
            sb.append(Y(abstractC0468vE));
            sb.append("*/");
        }
        if (((InterfaceC0222b) kVar.f2689y.a(interfaceC0494oArr[23], kVar)) != null) {
            if (kVar.g() ? v4.R0() : X3.f.a(v4)) {
                z7 = true;
            }
        }
        if (z7) {
            StringBuilder sb2 = new StringBuilder(" = ");
            InterfaceC0222b interfaceC0222b = (InterfaceC0222b) kVar.f2689y.a(interfaceC0494oArr[23], kVar);
            d3.i.b(interfaceC0222b);
            sb2.append((String) interfaceC0222b.e(v4));
            sb.append(sb2.toString());
        }
    }

    @Override // S3.i
    public final boolean g() {
        return this.f2625a.g();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g0(StringBuilder sb, List list, boolean z4) {
        boolean z5;
        k kVar = this.f2625a;
        int iOrdinal = ((o) kVar.f2649D.a(k.f2645W[28], kVar)).ordinal();
        if (iOrdinal == 0) {
            z5 = true;
        } else {
            if (iOrdinal != 1) {
                if (iOrdinal != 2) {
                    throw new A0.c();
                }
            } else if (!z4) {
            }
            z5 = false;
        }
        int size = list.size();
        t().getClass();
        d3.i.e("builder", sb);
        sb.append("(");
        Iterator it = list.iterator();
        int i5 = 0;
        while (it.hasNext()) {
            int i6 = i5 + 1;
            V v4 = (V) it.next();
            t().getClass();
            d3.i.e("parameter", v4);
            f0(v4, z5, sb, false);
            t().getClass();
            if (i5 != size - 1) {
                sb.append(", ");
            }
            i5 = i6;
        }
        t().getClass();
        sb.append(")");
    }

    @Override // S3.i
    public final void h(c cVar) {
        this.f2625a.h(cVar);
    }

    public final boolean h0(A3.p pVar, StringBuilder sb) {
        if (!q().contains(h.VISIBILITY)) {
            return false;
        }
        k kVar = this.f2625a;
        j jVar = kVar.n;
        InterfaceC0494o[] interfaceC0494oArr = k.f2645W;
        if (((Boolean) jVar.a(interfaceC0494oArr[12], kVar)).booleanValue()) {
            pVar = AbstractC0811n.f(pVar.f140a.c());
        }
        if (!((Boolean) kVar.f2679o.a(interfaceC0494oArr[13], kVar)).booleanValue() && d3.i.a(pVar, AbstractC0811n.f8817j)) {
            return false;
        }
        sb.append(I(pVar.f140a.b()));
        sb.append(" ");
        return true;
    }

    @Override // S3.i
    public final void i() {
        this.f2625a.i();
    }

    public final void i0(StringBuilder sb, List list) throws IOException {
        k kVar = this.f2625a;
        if (((Boolean) kVar.f2686v.a(k.f2645W[20], kVar)).booleanValue()) {
            return;
        }
        ArrayList arrayList = new ArrayList(0);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) it.next();
            List upperBounds = interfaceC0789Q.getUpperBounds();
            d3.i.d("typeParameter.upperBounds", upperBounds);
            for (AbstractC0468v abstractC0468v : R2.m.I0(upperBounds)) {
                StringBuilder sb2 = new StringBuilder();
                Q3.f name = interfaceC0789Q.getName();
                d3.i.d("typeParameter.name", name);
                sb2.append(O(name, false));
                sb2.append(" : ");
                d3.i.d("it", abstractC0468v);
                sb2.append(Y(abstractC0468v));
                arrayList.add(sb2.toString());
            }
        }
        if (!arrayList.isEmpty()) {
            sb.append(" ");
            sb.append(I("where"));
            sb.append(" ");
            R2.m.R0(arrayList, sb, null, null, null, 124);
        }
    }

    @Override // S3.i
    public final void j() {
        this.f2625a.j();
    }

    @Override // S3.i
    public final void k() {
        this.f2625a.k();
    }

    @Override // S3.i
    public final void l(o oVar) {
        this.f2625a.l(oVar);
    }

    @Override // S3.i
    public final void m(Set set) {
        d3.i.e("<set-?>", set);
        this.f2625a.m(set);
    }

    public final String o(String str) {
        return s().a(str);
    }

    public final c p() {
        k kVar = this.f2625a;
        return (c) kVar.f2668b.a(k.f2645W[0], kVar);
    }

    public final Set q() {
        k kVar = this.f2625a;
        return (Set) kVar.f2671e.a(k.f2645W[3], kVar);
    }

    public final boolean r() {
        k kVar = this.f2625a;
        return ((Boolean) kVar.f.a(k.f2645W[4], kVar)).booleanValue();
    }

    public final s s() {
        k kVar = this.f2625a;
        return (s) kVar.f2648C.a(k.f2645W[27], kVar);
    }

    public final d t() {
        k kVar = this.f2625a;
        return (d) kVar.f2647B.a(k.f2645W[26], kVar);
    }

    public final boolean u() {
        k kVar = this.f2625a;
        return ((Boolean) kVar.f2675j.a(k.f2645W[8], kVar)).booleanValue();
    }

    public final String w(InterfaceC0807j interfaceC0807j) {
        InterfaceC0807j interfaceC0807jL;
        String str;
        d3.i.e("declarationDescriptor", interfaceC0807j);
        StringBuilder sb = new StringBuilder();
        interfaceC0807j.F0(new C0837c(this), sb);
        k kVar = this.f2625a;
        j jVar = kVar.f2669c;
        InterfaceC0494o[] interfaceC0494oArr = k.f2645W;
        if (((Boolean) jVar.a(interfaceC0494oArr[1], kVar)).booleanValue() && !(interfaceC0807j instanceof InterfaceC0775C) && !(interfaceC0807j instanceof InterfaceC0780H) && (interfaceC0807jL = interfaceC0807j.l()) != null && !(interfaceC0807jL instanceof InterfaceC0821x)) {
            sb.append(" ");
            int iOrdinal = s().ordinal();
            if (iOrdinal == 0) {
                str = "defined in";
            } else {
                if (iOrdinal != 1) {
                    throw new A0.c();
                }
                str = "<i>defined in</i>";
            }
            sb.append(str);
            sb.append(" ");
            Q3.e eVarG = T3.e.g(interfaceC0807jL);
            d3.i.d("getFqName(containingDeclaration)", eVarG);
            sb.append(eVarG.f2238a.isEmpty() ? "root package" : o(W1.a.e0(eVarG.e())));
            if (((Boolean) kVar.f2670d.a(interfaceC0494oArr[2], kVar)).booleanValue() && (interfaceC0807jL instanceof InterfaceC0775C) && (interfaceC0807j instanceof InterfaceC0808k)) {
                ((InterfaceC0808k) interfaceC0807j).m().getClass();
            }
        }
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.Iterable, java.util.List] */
    /* JADX WARN: Type inference failed for: r6v6, types: [R2.u] */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.util.ArrayList] */
    public final String x(InterfaceC0839b interfaceC0839b, EnumC0841d enumC0841d) throws IOException {
        List listG0;
        C0879k c0879kW;
        List listW0;
        d3.i.e("annotation", interfaceC0839b);
        StringBuilder sb = new StringBuilder();
        sb.append('@');
        if (enumC0841d != null) {
            sb.append(enumC0841d.f9035c + ':');
        }
        AbstractC0468v abstractC0468vE = interfaceC0839b.e();
        sb.append(Y(abstractC0468vE));
        k kVar = this.f2625a;
        kVar.getClass();
        InterfaceC0494o[] interfaceC0494oArr = k.f2645W;
        InterfaceC0494o interfaceC0494o = interfaceC0494oArr[37];
        j jVar = kVar.f2657M;
        if (((a) jVar.a(interfaceC0494o, kVar)).f2609c) {
            Map mapB = interfaceC0839b.b();
            ?? arrayList = 0;
            arrayList = 0;
            arrayList = 0;
            InterfaceC0802e interfaceC0802eD = ((Boolean) kVar.f2652H.a(interfaceC0494oArr[32], kVar)).booleanValue() ? X3.f.d(interfaceC0839b) : null;
            if (interfaceC0802eD != null && (c0879kW = interfaceC0802eD.W()) != null && (listW0 = c0879kW.w0()) != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : listW0) {
                    if (((V) obj).R0()) {
                        arrayList2.add(obj);
                    }
                }
                arrayList = new ArrayList(R2.o.C0(arrayList2));
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((V) it.next()).getName());
                }
            }
            if (arrayList == 0) {
                arrayList = u.f2325c;
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : arrayList) {
                Q3.f fVar = (Q3.f) obj2;
                d3.i.d("it", fVar);
                if (true ^ mapB.containsKey(fVar)) {
                    arrayList3.add(obj2);
                }
            }
            ArrayList arrayList4 = new ArrayList(R2.o.C0(arrayList3));
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                arrayList4.add(((Q3.f) it2.next()).b() + " = ...");
            }
            Set<Map.Entry> setEntrySet = mapB.entrySet();
            ArrayList arrayList5 = new ArrayList(R2.o.C0(setEntrySet));
            for (Map.Entry entry : setEntrySet) {
                Q3.f fVar2 = (Q3.f) entry.getKey();
                V3.g gVar = (V3.g) entry.getValue();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(fVar2.b());
                sb2.append(" = ");
                sb2.append(!arrayList.contains(fVar2) ? B(gVar) : "...");
                arrayList5.add(sb2.toString());
            }
            ArrayList arrayListY0 = R2.m.Y0(arrayList4, arrayList5);
            if (arrayListY0.size() <= 1) {
                listG0 = R2.m.g1(arrayListY0);
            } else {
                Object[] array = arrayListY0.toArray(new Comparable[0]);
                Comparable[] comparableArr = (Comparable[]) array;
                d3.i.e("<this>", comparableArr);
                if (comparableArr.length > 1) {
                    Arrays.sort(comparableArr);
                }
                listG0 = R2.i.g0(array);
            }
            if (((a) jVar.a(k.f2645W[37], kVar)).f2610d || (!listG0.isEmpty())) {
                R2.m.R0(listG0, sb, "(", ")", null, 112);
            }
        }
        if (u() && (AbstractC0450c.i(abstractC0468vE) || (abstractC0468vE.J0().i() instanceof C0773A))) {
            sb.append(" /* annotation class not found */");
        }
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }

    public final void z(StringBuilder sb, InterfaceC0838a interfaceC0838a, EnumC0841d enumC0841d) {
        if (q().contains(h.ANNOTATIONS)) {
            boolean z4 = interfaceC0838a instanceof AbstractC0468v;
            k kVar = this.f2625a;
            Set setN = z4 ? kVar.n() : (Set) kVar.f2654J.a(k.f2645W[34], kVar);
            InterfaceC0222b interfaceC0222b = (InterfaceC0222b) kVar.f2656L.a(k.f2645W[36], kVar);
            for (InterfaceC0839b interfaceC0839b : interfaceC0838a.t()) {
                if (!R2.m.H0(setN, interfaceC0839b.a()) && !d3.i.a(interfaceC0839b.a(), o3.m.f8521r) && (interfaceC0222b == null || ((Boolean) interfaceC0222b.e(interfaceC0839b)).booleanValue())) {
                    sb.append(x(interfaceC0839b, enumC0841d));
                    if (((Boolean) kVar.f2653I.a(k.f2645W[33], kVar)).booleanValue()) {
                        sb.append('\n');
                    } else {
                        sb.append(" ");
                    }
                }
            }
        }
    }
}
