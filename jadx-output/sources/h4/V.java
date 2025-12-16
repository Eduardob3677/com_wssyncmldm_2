package h4;

import com.samsung.android.knox.ex.KnoxContract;
import f1.AbstractC0420a;
import h0.AbstractC0432c;
import java.util.ArrayList;
import java.util.List;
import k.Q0;
import o3.AbstractC0732i;
import r3.InterfaceC0789Q;
import s3.C0846i;
import s3.C0849l;
import s3.InterfaceC0838a;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class V {

    /* renamed from: b, reason: collision with root package name */
    public static final V f7041b = e(S.f7040a);

    /* renamed from: a, reason: collision with root package name */
    public final S f7042a;

    public V(S s5) {
        if (s5 != null) {
            this.f7042a = s5;
        } else {
            a(7);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003b A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void a(int i5) {
        String str;
        int i6;
        if (i5 != 1 && i5 != 2 && i5 != 8 && i5 != 34 && i5 != 37) {
            switch (i5) {
                default:
                    switch (i5) {
                        default:
                            switch (i5) {
                                default:
                                    switch (i5) {
                                        case 40:
                                        case 41:
                                        case 42:
                                            break;
                                        default:
                                            str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                                            break;
                                    }
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    break;
                            }
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            break;
                    }
                case 11:
                case 12:
                case 13:
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i5 != 1 && i5 != 2 && i5 != 8 && i5 != 34 && i5 != 37) {
            switch (i5) {
                default:
                    switch (i5) {
                        default:
                            switch (i5) {
                                default:
                                    switch (i5) {
                                        case 40:
                                        case 41:
                                        case 42:
                                            break;
                                        default:
                                            i6 = 3;
                                            break;
                                    }
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    break;
                            }
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            break;
                    }
                case 11:
                case 12:
                case 13:
                    break;
            }
        } else {
            i6 = 2;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 1:
            case 2:
            case 8:
            case 11:
            case 12:
            case 13:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 29:
            case 30:
            case 31:
            case 32:
            case 34:
            case 37:
            case 40:
            case 41:
            case 42:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor";
                break;
            case 3:
                objArr[0] = "first";
                break;
            case 4:
                objArr[0] = KnoxContract.Config.DateTime.PARAM_SECOND;
                break;
            case 5:
                objArr[0] = "substitutionContext";
                break;
            case 6:
                objArr[0] = "context";
                break;
            case 7:
            default:
                objArr[0] = "substitution";
                break;
            case 9:
            case 14:
                objArr[0] = "type";
                break;
            case 10:
            case 15:
                objArr[0] = "howThisTypeIsUsed";
                break;
            case 16:
            case 17:
            case 36:
                objArr[0] = "typeProjection";
                break;
            case 18:
            case 28:
                objArr[0] = "originalProjection";
                break;
            case 26:
                objArr[0] = "originalType";
                break;
            case 27:
                objArr[0] = "substituted";
                break;
            case 33:
                objArr[0] = "annotations";
                break;
            case 35:
            case 38:
                objArr[0] = "typeParameterVariance";
                break;
            case 39:
                objArr[0] = "projectionKind";
                break;
        }
        if (i5 == 1) {
            objArr[1] = "replaceWithNonApproximatingSubstitution";
        } else if (i5 == 2) {
            objArr[1] = "replaceWithContravariantApproximatingSubstitution";
        } else if (i5 == 8) {
            objArr[1] = "getSubstitution";
        } else if (i5 == 34) {
            objArr[1] = "filterOutUnsafeVariance";
        } else if (i5 != 37) {
            switch (i5) {
                case 11:
                case 12:
                case 13:
                    objArr[1] = "safeSubstitute";
                    break;
                default:
                    switch (i5) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            objArr[1] = "unsafeSubstitute";
                            break;
                        default:
                            switch (i5) {
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    objArr[1] = "projectedTypeForConflictedTypeWithUnsafeVariance";
                                    break;
                                default:
                                    switch (i5) {
                                        case 40:
                                        case 41:
                                        case 42:
                                            objArr[1] = "combine";
                                            break;
                                        default:
                                            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor";
                                            break;
                                    }
                            }
                    }
            }
        }
        switch (i5) {
            case 1:
            case 2:
            case 8:
            case 11:
            case 12:
            case 13:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 29:
            case 30:
            case 31:
            case 32:
            case 34:
            case 37:
            case 40:
            case 41:
            case 42:
                break;
            case 3:
            case 4:
                objArr[2] = "createChainedSubstitutor";
                break;
            case 5:
            case 6:
            default:
                objArr[2] = "create";
                break;
            case 7:
                objArr[2] = "<init>";
                break;
            case 9:
            case 10:
                objArr[2] = "safeSubstitute";
                break;
            case 14:
            case 15:
            case 16:
                objArr[2] = "substitute";
                break;
            case 17:
                objArr[2] = "substituteWithoutApproximation";
                break;
            case 18:
                objArr[2] = "unsafeSubstitute";
                break;
            case 26:
            case 27:
            case 28:
                objArr[2] = "projectedTypeForConflictedTypeWithUnsafeVariance";
                break;
            case 33:
                objArr[2] = "filterOutUnsafeVariance";
                break;
            case 35:
            case 36:
            case 38:
            case 39:
                objArr[2] = "combine";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 1 && i5 != 2 && i5 != 8 && i5 != 34 && i5 != 37) {
            switch (i5) {
                case 11:
                case 12:
                case 13:
                    break;
                default:
                    switch (i5) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            break;
                        default:
                            switch (i5) {
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    break;
                                default:
                                    switch (i5) {
                                        case 40:
                                        case 41:
                                        case 42:
                                            break;
                                        default:
                                            throw new IllegalArgumentException(str2);
                                    }
                            }
                    }
            }
        }
        throw new IllegalStateException(str2);
    }

    public static int b(int i5, int i6) {
        if (i5 == 0) {
            a(38);
            throw null;
        }
        if (i6 == 0) {
            a(39);
            throw null;
        }
        if (i5 == 1) {
            if (i6 != 0) {
                return i6;
            }
            a(40);
            throw null;
        }
        if (i6 == 1) {
            if (i5 != 0) {
                return i5;
            }
            a(41);
            throw null;
        }
        if (i5 == i6) {
            if (i6 != 0) {
                return i6;
            }
            a(42);
            throw null;
        }
        throw new AssertionError("Variance conflict: type parameter variance '" + AbstractC0432c.n(i5) + "' and projection kind '" + AbstractC0432c.n(i6) + "' cannot be combined");
    }

    public static int c(int i5, int i6) {
        if (i5 == 2 && i6 == 3) {
            return 3;
        }
        return (i5 == 3 && i6 == 2) ? 2 : 1;
    }

    public static V d(AbstractC0468v abstractC0468v) {
        if (abstractC0468v == null) {
            a(6);
            throw null;
        }
        return e(L.f7034b.f(abstractC0468v.J0(), abstractC0468v.u0()));
    }

    public static V e(S s5) {
        if (s5 != null) {
            return new V(s5);
        }
        a(0);
        throw null;
    }

    public static V f(S s5, S s6) {
        if (s5 == null) {
            a(3);
            throw null;
        }
        if (s6 == null) {
            a(4);
            throw null;
        }
        if (s5.e()) {
            s5 = s6;
        } else if (!s6.e()) {
            s5 = new C0463p(s5, s6);
        }
        return e(s5);
    }

    public static String i(Object obj) {
        try {
            return obj.toString();
        } catch (Throwable th) {
            if (q4.k.i(th)) {
                throw th;
            }
            return "[Exception while computing toString(): " + th + "]";
        }
    }

    public final S g() {
        S s5 = this.f7042a;
        if (s5 != null) {
            return s5;
        }
        a(8);
        throw null;
    }

    public final AbstractC0468v h(int i5, AbstractC0468v abstractC0468v) {
        if (abstractC0468v == null) {
            a(9);
            throw null;
        }
        if (i5 == 0) {
            a(10);
            throw null;
        }
        if (this.f7042a.e()) {
            return abstractC0468v;
        }
        try {
            AbstractC0468v abstractC0468vB = k(new O(i5, abstractC0468v), null, 0).b();
            if (abstractC0468vB != null) {
                return abstractC0468vB;
            }
            a(12);
            throw null;
        } catch (U e5) {
            return j4.i.c(j4.h.f7632m, e5.getMessage());
        }
    }

    public final AbstractC0468v j(int i5, AbstractC0468v abstractC0468v) {
        if (abstractC0468v == null) {
            a(14);
            throw null;
        }
        if (i5 == 0) {
            a(15);
            throw null;
        }
        N o2 = new O(i5, g().f(i5, abstractC0468v));
        S s5 = this.f7042a;
        if (!s5.e()) {
            try {
                o2 = k(o2, null, 0);
            } catch (U unused) {
                o2 = null;
            }
        }
        if (s5.a() || s5.b()) {
            boolean zB = s5.b();
            if (o2 == null) {
                o2 = null;
            } else if (!o2.c()) {
                AbstractC0468v abstractC0468vB = o2.b();
                d3.i.d("typeProjection.type", abstractC0468vB);
                if (X.d(abstractC0468vB, m4.b.f8311d, null)) {
                    int iA = o2.a();
                    B.f.E(iA, "typeProjection.projectionKind");
                    if (iA == 3) {
                        o2 = new O(iA, (AbstractC0468v) i3.x.d(abstractC0468vB).f8310b);
                    } else if (zB) {
                        o2 = new O(iA, (AbstractC0468v) i3.x.d(abstractC0468vB).f8309a);
                    } else {
                        V vE = e(new m4.c());
                        if (!vE.f7042a.e()) {
                            try {
                                o2 = vE.k(o2, null, 0);
                            } catch (U unused2) {
                            }
                        }
                    }
                }
            }
        }
        if (o2 == null) {
            return null;
        }
        return o2.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final N k(N n, InterfaceC0789Q interfaceC0789Q, int i5) throws U {
        char c2;
        int i6;
        V v4;
        int i7 = 0;
        AbstractC0468v abstractC0468vJ = null;
        if (n == null) {
            a(18);
            throw null;
        }
        S s5 = this.f7042a;
        if (i5 > 100) {
            throw new IllegalStateException("Recursion too deep. Most likely infinite loop while substituting " + i(n) + "; substitution: " + i(s5));
        }
        if (n.c()) {
            return n;
        }
        AbstractC0468v abstractC0468vB = n.b();
        if (abstractC0468vB instanceof Y) {
            Y y3 = (Y) abstractC0468vB;
            Z zC0 = y3.c0();
            AbstractC0468v abstractC0468vP0 = y3.p0();
            N nK = k(new O(n.a(), zC0), interfaceC0789Q, i5 + 1);
            return nK.c() ? nK : new O(nK.a(), AbstractC0450c.A(nK.b().M0(), j(n.a(), abstractC0468vP0)));
        }
        d3.i.e("<this>", abstractC0468vB);
        abstractC0468vB.M0();
        if (abstractC0468vB.M0() instanceof F3.f) {
            return n;
        }
        N nD = s5.d(abstractC0468vB);
        if (nD == null) {
            nD = null;
        } else if (abstractC0468vB.t().b(o3.m.f8528y)) {
            J jJ0 = nD.b().J0();
            if (jJ0 instanceof i4.i) {
                N n5 = ((i4.i) jJ0).f7179a;
                int iA = n5.a();
                if (c(n.a(), iA) == 3) {
                    nD = new O(n5.b());
                } else if (interfaceC0789Q != null && c(interfaceC0789Q.A(), iA) == 3) {
                    nD = new O(n5.b());
                }
            }
        }
        int iA2 = n.a();
        if (nD == null && AbstractC0450c.j(abstractC0468vB)) {
            InterfaceC0838a interfaceC0838aM0 = abstractC0468vB.M0();
            InterfaceC0458k interfaceC0458k = interfaceC0838aM0 instanceof InterfaceC0458k ? (InterfaceC0458k) interfaceC0838aM0 : null;
            if (!(interfaceC0458k != null ? interfaceC0458k.J() : false)) {
                AbstractC0464q abstractC0464q = (AbstractC0464q) abstractC0468vB.M0();
                AbstractC0472z abstractC0472z = abstractC0464q.f7069d;
                int i8 = i5 + 1;
                N nK2 = k(new O(iA2, abstractC0472z), interfaceC0789Q, i8);
                AbstractC0472z abstractC0472z2 = abstractC0464q.f7070e;
                N nK3 = k(new O(iA2, abstractC0472z2), interfaceC0789Q, i8);
                return (nK2.b() == abstractC0472z && nK3.b() == abstractC0472z2) ? n : new O(nK2.a(), C0451d.j(AbstractC0450c.b(nK2.b()), AbstractC0450c.b(nK3.b())));
            }
        }
        if (AbstractC0732i.E(abstractC0468vB) || AbstractC0450c.i(abstractC0468vB)) {
            return n;
        }
        if (nD != null) {
            int iC = c(iA2, nD.a());
            if (!(abstractC0468vB.J0() instanceof U3.b)) {
                int iF = Q0.f(iC);
                if (iF == 1) {
                    return new O(3, abstractC0468vB.J0().g().o());
                }
                if (iF == 2) {
                    throw new U("Out-projection in in-position");
                }
            }
            InterfaceC0838a interfaceC0838aM02 = abstractC0468vB.M0();
            InterfaceC0458k interfaceC0458k2 = interfaceC0838aM02 instanceof InterfaceC0458k ? (InterfaceC0458k) interfaceC0838aM02 : null;
            if (interfaceC0458k2 == null || !interfaceC0458k2.J()) {
                interfaceC0458k2 = null;
            }
            if (nD.c()) {
                return nD;
            }
            AbstractC0468v abstractC0468vD = interfaceC0458k2 != null ? interfaceC0458k2.d(nD.b()) : X.i(nD.b(), abstractC0468vB.K0());
            if (!abstractC0468vB.t().isEmpty()) {
                InterfaceC0845h interfaceC0845hC = s5.c(abstractC0468vB.t());
                if (interfaceC0845hC == null) {
                    a(33);
                    throw null;
                }
                if (interfaceC0845hC.b(o3.m.f8528y)) {
                    interfaceC0845hC = new C0849l(interfaceC0845hC, new T());
                }
                abstractC0468vD = AbstractC0420a.g0(abstractC0468vD, new C0846i(new InterfaceC0845h[]{abstractC0468vD.t(), interfaceC0845hC}));
            }
            if (iC == 1) {
                iA2 = b(iA2, nD.a());
            }
            return new O(iA2, abstractC0468vD);
        }
        AbstractC0468v abstractC0468vB2 = n.b();
        int iA3 = n.a();
        if (abstractC0468vB2.J0().i() instanceof InterfaceC0789Q) {
            return n;
        }
        Z zM0 = abstractC0468vB2.M0();
        C0448a c0448a = zM0 instanceof C0448a ? (C0448a) zM0 : null;
        AbstractC0472z abstractC0472z3 = c0448a != null ? c0448a.f7049e : null;
        if (abstractC0472z3 != null) {
            if ((s5 instanceof C0466t) && s5.b()) {
                C0466t c0466t = (C0466t) s5;
                v4 = new V(new C0466t(c0466t.f7072b, c0466t.f7073c, false));
            } else {
                v4 = this;
            }
            abstractC0468vJ = v4.j(1, abstractC0472z3);
        }
        List listK = abstractC0468vB2.J0().k();
        List listU0 = abstractC0468vB2.u0();
        ArrayList arrayList = new ArrayList(listK.size());
        int i9 = 0;
        while (i7 < listK.size()) {
            InterfaceC0789Q interfaceC0789Q2 = (InterfaceC0789Q) listK.get(i7);
            N n6 = (N) listU0.get(i7);
            N nK4 = k(n6, interfaceC0789Q2, i5 + 1);
            int iF2 = Q0.f(c(interfaceC0789Q2.A(), nK4.a()));
            if (iF2 != 0) {
                if (iF2 != 1) {
                    c2 = 2;
                    if (iF2 == 2) {
                    }
                    i6 = 1;
                } else {
                    c2 = 2;
                }
                nK4 = X.k(interfaceC0789Q2);
                i6 = 1;
            } else {
                c2 = 2;
                int iA4 = interfaceC0789Q2.A();
                i6 = 1;
                if (iA4 != 1 && !nK4.c()) {
                    nK4 = new O(1, nK4.b());
                }
            }
            if (nK4 != n6) {
                i9 = i6;
            }
            arrayList.add(nK4);
            i7 += i6;
        }
        if (i9 != 0) {
            listU0 = arrayList;
        }
        InterfaceC0845h interfaceC0845hC2 = s5.c(abstractC0468vB2.t());
        d3.i.e("newArguments", listU0);
        d3.i.e("newAnnotations", interfaceC0845hC2);
        AbstractC0468v abstractC0468vO = AbstractC0450c.o(abstractC0468vB2, listU0, interfaceC0845hC2, 4);
        if ((abstractC0468vO instanceof AbstractC0472z) && (abstractC0468vJ instanceof AbstractC0472z)) {
            abstractC0468vO = AbstractC0450c.z((AbstractC0472z) abstractC0468vO, (AbstractC0472z) abstractC0468vJ);
        }
        return new O(iA3, abstractC0468vO);
    }
}
