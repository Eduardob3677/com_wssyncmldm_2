package h4;

import c3.InterfaceC0222b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;

/* loaded from: classes.dex */
public abstract class X {

    /* renamed from: a, reason: collision with root package name */
    public static final j4.f f7044a = j4.i.c(j4.h.n, new String[0]);

    /* renamed from: b, reason: collision with root package name */
    public static final j4.f f7045b = j4.i.c(j4.h.f7630k, new String[0]);

    /* renamed from: c, reason: collision with root package name */
    public static final W f7046c = new W("NO_EXPECTED_TYPE");

    /* renamed from: d, reason: collision with root package name */
    public static final W f7047d = new W("UNIT_EXPECTED_TYPE");

    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void a(int i5) {
        String str;
        int i6;
        if (i5 != 4 && i5 != 9 && i5 != 11 && i5 != 15 && i5 != 17 && i5 != 19 && i5 != 26 && i5 != 35 && i5 != 48 && i5 != 53 && i5 != 6 && i5 != 7) {
            switch (i5) {
                case 56:
                case 57:
                case 58:
                case 59:
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i5 != 4 && i5 != 9 && i5 != 11 && i5 != 15 && i5 != 17 && i5 != 19 && i5 != 26 && i5 != 35 && i5 != 48 && i5 != 53 && i5 != 6 && i5 != 7) {
            switch (i5) {
                case 56:
                case 57:
                case 58:
                case 59:
                    break;
                default:
                    i6 = 3;
                    break;
            }
        } else {
            i6 = 2;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 4:
            case 6:
            case 7:
            case 9:
            case 11:
            case 15:
            case 17:
            case 19:
            case 26:
            case 35:
            case 48:
            case 53:
            case 56:
            case 57:
            case 58:
            case 59:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils";
                break;
            case 5:
            case 8:
            case 10:
            case 18:
            case 23:
            case 25:
            case 27:
            case 28:
            case 29:
            case 30:
            case 38:
            case 40:
            default:
                objArr[0] = "type";
                break;
            case 12:
                objArr[0] = "typeConstructor";
                break;
            case 13:
                objArr[0] = "unsubstitutedMemberScope";
                break;
            case 14:
                objArr[0] = "refinedTypeFactory";
                break;
            case 16:
                objArr[0] = "parameters";
                break;
            case 20:
                objArr[0] = "subType";
                break;
            case 21:
                objArr[0] = "superType";
                break;
            case 22:
                objArr[0] = "substitutor";
                break;
            case 24:
                objArr[0] = "result";
                break;
            case 31:
            case 33:
                objArr[0] = "clazz";
                break;
            case 32:
                objArr[0] = "typeArguments";
                break;
            case 34:
                objArr[0] = "projections";
                break;
            case 36:
                objArr[0] = "a";
                break;
            case 37:
                objArr[0] = "b";
                break;
            case 39:
                objArr[0] = "typeParameters";
                break;
            case 41:
                objArr[0] = "typeParameterConstructors";
                break;
            case 42:
                objArr[0] = "specialType";
                break;
            case 43:
            case 44:
                objArr[0] = "isSpecialType";
                break;
            case 45:
            case 46:
                objArr[0] = "parameterDescriptor";
                break;
            case 47:
            case 51:
                objArr[0] = "numberValueTypeConstructor";
                break;
            case 49:
            case 50:
                objArr[0] = "supertypes";
                break;
            case 52:
            case 55:
                objArr[0] = "expectedType";
                break;
            case 54:
                objArr[0] = "literalTypeConstructor";
                break;
        }
        if (i5 == 4) {
            objArr[1] = "makeNullableAsSpecified";
        } else if (i5 == 9) {
            objArr[1] = "makeNullableIfNeeded";
        } else if (i5 == 11 || i5 == 15) {
            objArr[1] = "makeUnsubstitutedType";
        } else if (i5 == 17) {
            objArr[1] = "getDefaultTypeProjections";
        } else if (i5 == 19) {
            objArr[1] = "getImmediateSupertypes";
        } else if (i5 == 26) {
            objArr[1] = "getAllSupertypes";
        } else if (i5 == 35) {
            objArr[1] = "substituteProjectionsForParameters";
        } else if (i5 == 48) {
            objArr[1] = "getDefaultPrimitiveNumberType";
        } else if (i5 != 53) {
            if (i5 != 6 && i5 != 7) {
                switch (i5) {
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                        break;
                    default:
                        objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils";
                        break;
                }
            }
        } else {
            objArr[1] = "getPrimitiveNumberType";
        }
        switch (i5) {
            case 1:
                objArr[2] = "makeNullable";
                break;
            case 2:
                objArr[2] = "makeNotNullable";
                break;
            case 3:
                objArr[2] = "makeNullableAsSpecified";
                break;
            case 4:
            case 6:
            case 7:
            case 9:
            case 11:
            case 15:
            case 17:
            case 19:
            case 26:
            case 35:
            case 48:
            case 53:
            case 56:
            case 57:
            case 58:
            case 59:
                break;
            case 5:
            case 8:
                objArr[2] = "makeNullableIfNeeded";
                break;
            case 10:
                objArr[2] = "canHaveSubtypes";
                break;
            case 12:
            case 13:
            case 14:
                objArr[2] = "makeUnsubstitutedType";
                break;
            case 16:
                objArr[2] = "getDefaultTypeProjections";
                break;
            case 18:
                objArr[2] = "getImmediateSupertypes";
                break;
            case 20:
            case 21:
            case 22:
                objArr[2] = "createSubstitutedSupertype";
                break;
            case 23:
            case 24:
                objArr[2] = "collectAllSupertypes";
                break;
            case 25:
                objArr[2] = "getAllSupertypes";
                break;
            case 27:
                objArr[2] = "isNullableType";
                break;
            case 28:
                objArr[2] = "acceptsNullable";
                break;
            case 29:
                objArr[2] = "hasNullableSuperType";
                break;
            case 30:
                objArr[2] = "getClassDescriptor";
                break;
            case 31:
            case 32:
                objArr[2] = "substituteParameters";
                break;
            case 33:
            case 34:
                objArr[2] = "substituteProjectionsForParameters";
                break;
            case 36:
            case 37:
                objArr[2] = "equalTypes";
                break;
            case 38:
            case 39:
                objArr[2] = "dependsOnTypeParameters";
                break;
            case 40:
            case 41:
                objArr[2] = "dependsOnTypeConstructors";
                break;
            case 42:
            case 43:
            case 44:
                objArr[2] = "contains";
                break;
            case 45:
            case 46:
                objArr[2] = "makeStarProjection";
                break;
            case 47:
            case 49:
                objArr[2] = "getDefaultPrimitiveNumberType";
                break;
            case 50:
                objArr[2] = "findByFqName";
                break;
            case 51:
            case 52:
            case 54:
            case 55:
                objArr[2] = "getPrimitiveNumberType";
                break;
            case 60:
                objArr[2] = "isTypeParameter";
                break;
            case 61:
                objArr[2] = "isReifiedTypeParameter";
                break;
            case 62:
                objArr[2] = "isNonReifiedTypeParameter";
                break;
            case 63:
                objArr[2] = "getTypeParameterDescriptorOrNull";
                break;
            default:
                objArr[2] = "noExpectedType";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 4 && i5 != 9 && i5 != 11 && i5 != 15 && i5 != 17 && i5 != 19 && i5 != 26 && i5 != 35 && i5 != 48 && i5 != 53 && i5 != 6 && i5 != 7) {
            switch (i5) {
                case 56:
                case 57:
                case 58:
                case 59:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    public static boolean b(AbstractC0468v abstractC0468v) {
        if (abstractC0468v == null) {
            a(28);
            throw null;
        }
        if (abstractC0468v.K0()) {
            return true;
        }
        return AbstractC0450c.j(abstractC0468v) && b(((AbstractC0464q) abstractC0468v.M0()).f7070e);
    }

    public static boolean c(AbstractC0468v abstractC0468v, InterfaceC0222b interfaceC0222b) {
        return d(abstractC0468v, interfaceC0222b, null);
    }

    public static boolean d(AbstractC0468v abstractC0468v, InterfaceC0222b interfaceC0222b, q4.h hVar) {
        if (abstractC0468v == null) {
            return false;
        }
        Z zM0 = abstractC0468v.M0();
        if (m(abstractC0468v)) {
            return ((Boolean) interfaceC0222b.e(zM0)).booleanValue();
        }
        if (hVar != null && hVar.contains(abstractC0468v)) {
            return false;
        }
        if (((Boolean) interfaceC0222b.e(zM0)).booleanValue()) {
            return true;
        }
        if (hVar == null) {
            hVar = new q4.h();
        }
        hVar.add(abstractC0468v);
        AbstractC0464q abstractC0464q = zM0 instanceof AbstractC0464q ? (AbstractC0464q) zM0 : null;
        if (abstractC0464q != null && (d(abstractC0464q.f7069d, interfaceC0222b, hVar) || d(abstractC0464q.f7070e, interfaceC0222b, hVar))) {
            return true;
        }
        if ((zM0 instanceof C0460m) && d(((C0460m) zM0).f7064d, interfaceC0222b, hVar)) {
            return true;
        }
        J jJ0 = abstractC0468v.J0();
        if (jJ0 instanceof C0467u) {
            Iterator it = ((C0467u) jJ0).f7076b.iterator();
            while (it.hasNext()) {
                if (d((AbstractC0468v) it.next(), interfaceC0222b, hVar)) {
                    return true;
                }
            }
            return false;
        }
        for (N n : abstractC0468v.u0()) {
            if (!n.c() && d(n.b(), interfaceC0222b, hVar)) {
                return true;
            }
        }
        return false;
    }

    public static List e(List list) {
        if (list == null) {
            a(16);
            throw null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new O(((InterfaceC0789Q) it.next()).q()));
        }
        return R2.m.g1(arrayList);
    }

    public static boolean f(AbstractC0468v abstractC0468v) {
        if (abstractC0468v == null) {
            a(27);
            throw null;
        }
        if (abstractC0468v.K0()) {
            return true;
        }
        if (AbstractC0450c.j(abstractC0468v) && f(((AbstractC0464q) abstractC0468v.M0()).f7070e)) {
            return true;
        }
        if (abstractC0468v.M0() instanceof C0460m) {
            return false;
        }
        if (!g(abstractC0468v)) {
            J jJ0 = abstractC0468v.J0();
            if (jJ0 instanceof C0467u) {
                Iterator it = ((C0467u) jJ0).f7076b.iterator();
                while (it.hasNext()) {
                    if (f((AbstractC0468v) it.next())) {
                        return true;
                    }
                }
            }
            return false;
        }
        if (!(abstractC0468v.J0().i() instanceof InterfaceC0802e)) {
            V vD = V.d(abstractC0468v);
            Collection<AbstractC0468v> collectionJ = abstractC0468v.J0().j();
            ArrayList arrayList = new ArrayList(collectionJ.size());
            for (AbstractC0468v abstractC0468v2 : collectionJ) {
                if (abstractC0468v2 == null) {
                    a(21);
                    throw null;
                }
                AbstractC0468v abstractC0468vJ = vD.j(1, abstractC0468v2);
                AbstractC0468v abstractC0468vI = abstractC0468vJ != null ? i(abstractC0468vJ, abstractC0468v.K0()) : null;
                if (abstractC0468vI != null) {
                    arrayList.add(abstractC0468vI);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (f((AbstractC0468v) it2.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean g(AbstractC0468v abstractC0468v) {
        if (abstractC0468v == null) {
            a(60);
            throw null;
        }
        if (abstractC0468v == null) {
            a(63);
            throw null;
        }
        if ((abstractC0468v.J0().i() instanceof InterfaceC0789Q ? (InterfaceC0789Q) abstractC0468v.J0().i() : null) != null) {
            return true;
        }
        abstractC0468v.J0();
        return false;
    }

    public static Z h(AbstractC0468v abstractC0468v, boolean z4) {
        if (abstractC0468v == null) {
            a(3);
            throw null;
        }
        Z zN0 = abstractC0468v.M0().N0(z4);
        if (zN0 != null) {
            return zN0;
        }
        a(4);
        throw null;
    }

    public static AbstractC0468v i(AbstractC0468v abstractC0468v, boolean z4) {
        if (abstractC0468v != null) {
            return z4 ? h(abstractC0468v, true) : abstractC0468v;
        }
        a(8);
        throw null;
    }

    public static AbstractC0472z j(AbstractC0472z abstractC0472z, boolean z4) {
        if (abstractC0472z == null) {
            a(5);
            throw null;
        }
        if (!z4) {
            if (abstractC0472z != null) {
                return abstractC0472z;
            }
            a(7);
            throw null;
        }
        AbstractC0472z abstractC0472zQ0 = abstractC0472z.N0(true);
        if (abstractC0472zQ0 != null) {
            return abstractC0472zQ0;
        }
        a(6);
        throw null;
    }

    public static E k(InterfaceC0789Q interfaceC0789Q) {
        if (interfaceC0789Q != null) {
            return new E(interfaceC0789Q);
        }
        a(45);
        throw null;
    }

    public static N l(InterfaceC0789Q interfaceC0789Q, F3.a aVar) {
        if (interfaceC0789Q != null) {
            return aVar.f758a == 1 ? new O(AbstractC0450c.r(interfaceC0789Q)) : new E(interfaceC0789Q);
        }
        a(46);
        throw null;
    }

    public static boolean m(AbstractC0468v abstractC0468v) {
        if (abstractC0468v != null) {
            return abstractC0468v == f7046c || abstractC0468v == f7047d;
        }
        a(0);
        throw null;
    }
}
