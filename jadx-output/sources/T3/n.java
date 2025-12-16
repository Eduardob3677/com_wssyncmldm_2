package T3;

import A3.D;
import A3.p;
import c3.InterfaceC0222b;
import f1.AbstractC0420a;
import h4.AbstractC0450c;
import h4.AbstractC0468v;
import h4.C0451d;
import h4.I;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.ServiceLoader;
import k.Q0;
import r3.AbstractC0811n;
import r3.InterfaceC0782J;
import r3.InterfaceC0783K;
import r3.InterfaceC0789Q;
import r3.InterfaceC0799b;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0807j;
import r3.InterfaceC0810m;
import r3.InterfaceC0816s;
import u3.AbstractC0889v;
import u3.C0890w;
import u3.K;
import u3.M;
import u3.V;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: c, reason: collision with root package name */
    public static final List f2734c = R2.m.g1(ServiceLoader.load(h.class, h.class.getClassLoader()));

    /* renamed from: d, reason: collision with root package name */
    public static final n f2735d;

    /* renamed from: e, reason: collision with root package name */
    public static final c f2736e;

    /* renamed from: a, reason: collision with root package name */
    public final i4.f f2737a;

    /* renamed from: b, reason: collision with root package name */
    public final i4.c f2738b;

    static {
        c cVar = new c();
        f2736e = cVar;
        f2735d = new n(cVar);
    }

    public n(i4.c cVar) {
        i4.f fVar = i4.f.f7172a;
        if (cVar == null) {
            a(5);
            throw null;
        }
        this.f2738b = cVar;
        this.f2737a = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0035 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0058 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void a(int i5) {
        String str;
        int i6;
        if (i5 != 11 && i5 != 12 && i5 != 16 && i5 != 21 && i5 != 95 && i5 != 98 && i5 != 103 && i5 != 44 && i5 != 45) {
            switch (i5) {
                default:
                    switch (i5) {
                        default:
                            switch (i5) {
                                default:
                                    switch (i5) {
                                        case 90:
                                        case 91:
                                        case 92:
                                            break;
                                        default:
                                            str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                                            break;
                                    }
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                    break;
                            }
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                            break;
                    }
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i5 != 11 && i5 != 12 && i5 != 16 && i5 != 21 && i5 != 95 && i5 != 98 && i5 != 103 && i5 != 44 && i5 != 45) {
            switch (i5) {
                default:
                    switch (i5) {
                        default:
                            switch (i5) {
                                default:
                                    switch (i5) {
                                        case 90:
                                        case 91:
                                        case 92:
                                            break;
                                        default:
                                            i6 = 3;
                                            break;
                                    }
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                    break;
                            }
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                            break;
                    }
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                    break;
            }
        } else {
            i6 = 2;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 1:
            case 7:
                objArr[0] = "kotlinTypePreparator";
                break;
            case 2:
                objArr[0] = "customSubtype";
                break;
            case 3:
            case 6:
            default:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 4:
                objArr[0] = "equalityAxioms";
                break;
            case 5:
                objArr[0] = "axioms";
                break;
            case 8:
            case 9:
                objArr[0] = "candidateSet";
                break;
            case 10:
                objArr[0] = "transformFirst";
                break;
            case 11:
            case 12:
            case 16:
            case 21:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 44:
            case 45:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 90:
            case 91:
            case 92:
            case 95:
            case 98:
            case 103:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil";
                break;
            case 13:
                objArr[0] = "f";
                break;
            case 14:
                objArr[0] = "g";
                break;
            case 15:
            case 17:
                objArr[0] = "descriptor";
                break;
            case 18:
                objArr[0] = "result";
                break;
            case 19:
            case 22:
            case 30:
            case 40:
                objArr[0] = "superDescriptor";
                break;
            case 20:
            case 23:
            case 31:
            case 41:
                objArr[0] = "subDescriptor";
                break;
            case 42:
                objArr[0] = "firstParameters";
                break;
            case 43:
                objArr[0] = "secondParameters";
                break;
            case 46:
                objArr[0] = "typeInSuper";
                break;
            case 47:
                objArr[0] = "typeInSub";
                break;
            case 48:
            case 51:
            case 77:
                objArr[0] = "typeCheckerState";
                break;
            case 49:
                objArr[0] = "superTypeParameter";
                break;
            case 50:
                objArr[0] = "subTypeParameter";
                break;
            case 52:
                objArr[0] = "name";
                break;
            case 53:
                objArr[0] = "membersFromSupertypes";
                break;
            case 54:
                objArr[0] = "membersFromCurrent";
                break;
            case 55:
            case 61:
            case 64:
            case 86:
            case 89:
            case 96:
                objArr[0] = "current";
                break;
            case 56:
            case 62:
            case 66:
            case 87:
            case 106:
                objArr[0] = "strategy";
                break;
            case 57:
                objArr[0] = "overriding";
                break;
            case 58:
                objArr[0] = "fromSuper";
                break;
            case 59:
                objArr[0] = "fromCurrent";
                break;
            case 60:
                objArr[0] = "descriptorsFromSuper";
                break;
            case 63:
            case 65:
                objArr[0] = "notOverridden";
                break;
            case 67:
            case 69:
            case 73:
                objArr[0] = "a";
                break;
            case 68:
            case 70:
            case 75:
                objArr[0] = "b";
                break;
            case 71:
                objArr[0] = "candidate";
                break;
            case 72:
            case 88:
            case 93:
            case 109:
                objArr[0] = "descriptors";
                break;
            case 74:
                objArr[0] = "aReturnType";
                break;
            case 76:
                objArr[0] = "bReturnType";
                break;
            case 78:
            case 85:
                objArr[0] = "overridables";
                break;
            case 79:
            case 101:
                objArr[0] = "descriptorByHandle";
                break;
            case 94:
                objArr[0] = "classModality";
                break;
            case 97:
                objArr[0] = "toFilter";
                break;
            case 99:
            case 104:
                objArr[0] = "overrider";
                break;
            case 100:
            case 105:
                objArr[0] = "extractFrom";
                break;
            case 102:
                objArr[0] = "onConflict";
                break;
            case 107:
            case 108:
                objArr[0] = "memberDescriptor";
                break;
        }
        if (i5 == 11 || i5 == 12) {
            objArr[1] = "filterOverrides";
        } else if (i5 == 16) {
            objArr[1] = "getOverriddenDeclarations";
        } else if (i5 == 21) {
            objArr[1] = "isOverridableBy";
        } else if (i5 == 95) {
            objArr[1] = "getMinimalModality";
        } else if (i5 == 98) {
            objArr[1] = "filterVisibleFakeOverrides";
        } else if (i5 == 103) {
            objArr[1] = "extractMembersOverridableInBothWays";
        } else if (i5 != 44 && i5 != 45) {
            switch (i5) {
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                    break;
                default:
                    switch (i5) {
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                            objArr[1] = "isOverridableByWithoutExternalConditions";
                            break;
                        default:
                            switch (i5) {
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                    objArr[1] = "selectMostSpecificMember";
                                    break;
                                default:
                                    switch (i5) {
                                        case 90:
                                        case 91:
                                        case 92:
                                            objArr[1] = "determineModalityForFakeOverride";
                                            break;
                                        default:
                                            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil";
                                            break;
                                    }
                            }
                    }
            }
        } else {
            objArr[1] = "createTypeCheckerState";
        }
        switch (i5) {
            case 1:
            case 2:
                objArr[2] = "createWithTypePreparatorAndCustomSubtype";
                break;
            case 3:
            case 4:
                objArr[2] = "create";
                break;
            case 5:
            case 6:
            case 7:
                objArr[2] = "<init>";
                break;
            case 8:
                objArr[2] = "filterOutOverridden";
                break;
            case 9:
            case 10:
                objArr[2] = "filterOverrides";
                break;
            case 11:
            case 12:
            case 16:
            case 21:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 44:
            case 45:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 90:
            case 91:
            case 92:
            case 95:
            case 98:
            case 103:
                break;
            case 13:
            case 14:
                objArr[2] = "overrides";
                break;
            case 15:
                objArr[2] = "getOverriddenDeclarations";
                break;
            case 17:
            case 18:
                objArr[2] = "collectOverriddenDeclarations";
                break;
            case 19:
            case 20:
            case 22:
            case 23:
                objArr[2] = "isOverridableBy";
                break;
            case 30:
            case 31:
                objArr[2] = "isOverridableByWithoutExternalConditions";
                break;
            case 40:
            case 41:
                objArr[2] = "getBasicOverridabilityProblem";
                break;
            case 42:
            case 43:
                objArr[2] = "createTypeCheckerState";
                break;
            case 46:
            case 47:
            case 48:
                objArr[2] = "areTypesEquivalent";
                break;
            case 49:
            case 50:
            case 51:
                objArr[2] = "areTypeParametersEquivalent";
                break;
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
                objArr[2] = "generateOverridesInFunctionGroup";
                break;
            case 57:
            case 58:
                objArr[2] = "isVisibleForOverride";
                break;
            case 59:
            case 60:
            case 61:
            case 62:
                objArr[2] = "extractAndBindOverridesForMember";
                break;
            case 63:
                objArr[2] = "allHasSameContainingDeclaration";
                break;
            case 64:
            case 65:
            case 66:
                objArr[2] = "createAndBindFakeOverrides";
                break;
            case 67:
            case 68:
                objArr[2] = "isMoreSpecific";
                break;
            case 69:
            case 70:
                objArr[2] = "isVisibilityMoreSpecific";
                break;
            case 71:
            case 72:
                objArr[2] = "isMoreSpecificThenAllOf";
                break;
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
                objArr[2] = "isReturnTypeMoreSpecific";
                break;
            case 78:
            case 79:
                objArr[2] = "selectMostSpecificMember";
                break;
            case 85:
            case 86:
            case 87:
                objArr[2] = "createAndBindFakeOverride";
                break;
            case 88:
            case 89:
                objArr[2] = "determineModalityForFakeOverride";
                break;
            case 93:
            case 94:
                objArr[2] = "getMinimalModality";
                break;
            case 96:
            case 97:
                objArr[2] = "filterVisibleFakeOverrides";
                break;
            case 99:
            case 100:
            case 101:
            case 102:
            case 104:
            case 105:
            case 106:
                objArr[2] = "extractMembersOverridableInBothWays";
                break;
            case 107:
                objArr[2] = "resolveUnknownVisibilityForMember";
                break;
            case 108:
                objArr[2] = "computeVisibilityToInherit";
                break;
            case 109:
                objArr[2] = "findMaxVisibility";
                break;
            default:
                objArr[2] = "createWithTypeRefiner";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 11 && i5 != 12 && i5 != 16 && i5 != 21 && i5 != 95 && i5 != 98 && i5 != 103 && i5 != 44 && i5 != 45) {
            switch (i5) {
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                    break;
                default:
                    switch (i5) {
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                            break;
                        default:
                            switch (i5) {
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                    break;
                                default:
                                    switch (i5) {
                                        case 90:
                                        case 91:
                                        case 92:
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

    public static boolean b(AbstractC0468v abstractC0468v, AbstractC0468v abstractC0468v2, I i5) {
        if (abstractC0468v == null) {
            a(46);
            throw null;
        }
        if (abstractC0468v2 == null) {
            a(47);
            throw null;
        }
        if (AbstractC0450c.i(abstractC0468v) && AbstractC0450c.i(abstractC0468v2)) {
            return true;
        }
        return C0451d.g(i5, abstractC0468v.M0(), abstractC0468v2.M0());
    }

    public static void c(InterfaceC0800c interfaceC0800c, LinkedHashSet linkedHashSet) {
        if (interfaceC0800c == null) {
            a(17);
            throw null;
        }
        if (interfaceC0800c.k0() != 2) {
            linkedHashSet.add(interfaceC0800c);
            return;
        }
        if (interfaceC0800c.p().isEmpty()) {
            throw new IllegalStateException("No overridden descriptors found for (fake override) " + interfaceC0800c);
        }
        Iterator it = interfaceC0800c.p().iterator();
        while (it.hasNext()) {
            c((InterfaceC0800c) it.next(), linkedHashSet);
        }
    }

    public static ArrayList d(InterfaceC0799b interfaceC0799b) {
        C0890w c0890wD0 = interfaceC0799b.d0();
        ArrayList arrayList = new ArrayList();
        if (c0890wD0 != null) {
            arrayList.add(c0890wD0.e());
        }
        Iterator it = interfaceC0799b.w0().iterator();
        while (it.hasNext()) {
            arrayList.add(((V) it.next()).e());
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x0142, code lost:
    
        if (r2 == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0144, code lost:
    
        r0 = r3.AbstractC0811n.f8815h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0147, code lost:
    
        r0 = r3.AbstractC0811n.f8814g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0149, code lost:
    
        r12 = ((r3.InterfaceC0800c) s(r11, new T3.k(0))).x0(r12, r7, r0);
        r13.l0(r12, r11);
        r13.a(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x015f, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void e(Collection collection, InterfaceC0802e interfaceC0802e, AbstractC0420a abstractC0420a) {
        if (collection == null) {
            a(85);
            throw null;
        }
        if (interfaceC0802e == null) {
            a(86);
            throw null;
        }
        ArrayList arrayListK0 = R2.m.K0(collection, new B3.a(1, interfaceC0802e));
        boolean zIsEmpty = arrayListK0.isEmpty();
        if (!zIsEmpty) {
            collection = arrayListK0;
        }
        Iterator it = collection.iterator();
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (true) {
            int i5 = 3;
            if (it.hasNext()) {
                InterfaceC0800c interfaceC0800c = (InterfaceC0800c) it.next();
                int iF = Q0.f(interfaceC0800c.i());
                if (iF == 0) {
                    i5 = 1;
                    break;
                }
                if (iF == 1) {
                    throw new IllegalStateException("Member cannot have SEALED modality: " + interfaceC0800c);
                }
                if (iF == 2) {
                    z5 = true;
                } else if (iF == 3) {
                    z6 = true;
                }
            } else {
                if (interfaceC0802e.y() && interfaceC0802e.i() != 4 && interfaceC0802e.i() != 2) {
                    z4 = true;
                }
                if (!z5 || z6) {
                    if (z5 || !z6) {
                        HashSet<InterfaceC0800c> hashSet = new HashSet();
                        for (InterfaceC0800c interfaceC0800c2 : collection) {
                            if (interfaceC0800c2 == null) {
                                a(15);
                                throw null;
                            }
                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                            c(interfaceC0800c2, linkedHashSet);
                            hashSet.addAll(linkedHashSet);
                        }
                        if (!hashSet.isEmpty()) {
                            B.f.F(X3.f.j((InterfaceC0807j) hashSet.iterator().next()).U(i4.g.f7173a));
                        }
                        if (hashSet.size() > 1) {
                            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                            Iterator it2 = hashSet.iterator();
                            while (it2.hasNext()) {
                                Object next = it2.next();
                                Iterator it3 = linkedHashSet2.iterator();
                                while (true) {
                                    if (!it3.hasNext()) {
                                        linkedHashSet2.add(next);
                                        break;
                                    }
                                    InterfaceC0799b interfaceC0799b = (InterfaceC0799b) next;
                                    InterfaceC0799b interfaceC0799b2 = (InterfaceC0799b) it3.next();
                                    if (!q(interfaceC0799b, interfaceC0799b2)) {
                                        if (q(interfaceC0799b2, interfaceC0799b)) {
                                            break;
                                        }
                                    } else {
                                        it3.remove();
                                    }
                                }
                            }
                            hashSet = linkedHashSet2;
                        }
                        int i6 = interfaceC0802e.i();
                        if (i6 == 0) {
                            a(94);
                            throw null;
                        }
                        i5 = 4;
                        for (InterfaceC0800c interfaceC0800c3 : hashSet) {
                            int i7 = (z4 && interfaceC0800c3.i() == 4) ? i6 : interfaceC0800c3.i();
                            if (Q0.a(i7, i5) < 0) {
                                i5 = i7;
                            }
                        }
                        if (i5 == 0) {
                            a(95);
                            throw null;
                        }
                    } else {
                        i5 = z4 ? interfaceC0802e.i() : 4;
                        if (i5 == 0) {
                            a(92);
                            throw null;
                        }
                    }
                }
            }
        }
    }

    public static ArrayList g(Object obj, LinkedList linkedList, InterfaceC0222b interfaceC0222b, InterfaceC0222b interfaceC0222b2) {
        if (obj == null) {
            a(99);
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(obj);
        InterfaceC0799b interfaceC0799b = (InterfaceC0799b) interfaceC0222b.e(obj);
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            InterfaceC0799b interfaceC0799b2 = (InterfaceC0799b) interfaceC0222b.e(next);
            if (obj == next) {
                it.remove();
            } else {
                int iJ = j(interfaceC0799b, interfaceC0799b2);
                if (iJ == 1) {
                    arrayList.add(next);
                    it.remove();
                } else if (iJ == 3) {
                    interfaceC0222b2.e(next);
                    it.remove();
                }
            }
        }
        return arrayList;
    }

    public static m i(InterfaceC0799b interfaceC0799b, InterfaceC0799b interfaceC0799b2) {
        boolean z4;
        if (interfaceC0799b == null) {
            a(40);
            throw null;
        }
        if (interfaceC0799b2 == null) {
            a(41);
            throw null;
        }
        boolean z5 = interfaceC0799b instanceof InterfaceC0816s;
        if ((z5 && !(interfaceC0799b2 instanceof InterfaceC0816s)) || (((z4 = interfaceC0799b instanceof InterfaceC0783K)) && !(interfaceC0799b2 instanceof InterfaceC0783K))) {
            return m.d("Member kind mismatch");
        }
        if (!z5 && !z4) {
            throw new IllegalArgumentException("This type of CallableDescriptor cannot be checked for overridability: " + interfaceC0799b);
        }
        if (!interfaceC0799b.getName().equals(interfaceC0799b2.getName())) {
            return m.d("Name mismatch");
        }
        m mVarD = (interfaceC0799b.d0() == null) != (interfaceC0799b2.d0() == null) ? m.d("Receiver presence mismatch") : interfaceC0799b.w0().size() != interfaceC0799b2.w0().size() ? m.d("Value parameter number mismatch") : null;
        if (mVarD != null) {
            return mVarD;
        }
        return null;
    }

    public static int j(InterfaceC0799b interfaceC0799b, InterfaceC0799b interfaceC0799b2) {
        n nVar = f2735d;
        int iC = nVar.l(interfaceC0799b2, interfaceC0799b, null).c();
        int iC2 = nVar.l(interfaceC0799b, interfaceC0799b2, null).c();
        if (iC == 1 && iC2 == 1) {
            return 1;
        }
        return (iC == 3 || iC2 == 3) ? 3 : 2;
    }

    public static boolean k(InterfaceC0799b interfaceC0799b, InterfaceC0799b interfaceC0799b2) {
        if (interfaceC0799b == null) {
            a(67);
            throw null;
        }
        if (interfaceC0799b2 == null) {
            a(68);
            throw null;
        }
        AbstractC0468v abstractC0468vN = interfaceC0799b.n();
        AbstractC0468v abstractC0468vN2 = interfaceC0799b2.n();
        if (!p(interfaceC0799b, interfaceC0799b2)) {
            return false;
        }
        I iF = f2735d.f(interfaceC0799b.u(), interfaceC0799b2.u());
        if (interfaceC0799b instanceof InterfaceC0816s) {
            return o(interfaceC0799b, abstractC0468vN, interfaceC0799b2, abstractC0468vN2, iF);
        }
        if (!(interfaceC0799b instanceof InterfaceC0783K)) {
            throw new IllegalArgumentException("Unexpected callable: " + interfaceC0799b.getClass());
        }
        InterfaceC0783K interfaceC0783K = (InterfaceC0783K) interfaceC0799b;
        InterfaceC0783K interfaceC0783K2 = (InterfaceC0783K) interfaceC0799b2;
        M mF = interfaceC0783K.f();
        M mF2 = interfaceC0783K2.f();
        if ((mF == null || mF2 == null) ? true : p(mF, mF2)) {
            return (interfaceC0783K.T() && interfaceC0783K2.T()) ? C0451d.g(iF, abstractC0468vN.M0(), abstractC0468vN2.M0()) : (interfaceC0783K.T() || !interfaceC0783K2.T()) && o(interfaceC0799b, abstractC0468vN, interfaceC0799b2, abstractC0468vN2, iF);
        }
        return false;
    }

    public static boolean o(InterfaceC0799b interfaceC0799b, AbstractC0468v abstractC0468v, InterfaceC0799b interfaceC0799b2, AbstractC0468v abstractC0468v2, I i5) {
        if (interfaceC0799b == null) {
            a(73);
            throw null;
        }
        if (abstractC0468v == null) {
            a(74);
            throw null;
        }
        if (interfaceC0799b2 == null) {
            a(75);
            throw null;
        }
        if (abstractC0468v2 != null) {
            return C0451d.n(C0451d.f7050a, i5, abstractC0468v.M0(), abstractC0468v2.M0());
        }
        a(76);
        throw null;
    }

    public static boolean p(InterfaceC0810m interfaceC0810m, InterfaceC0810m interfaceC0810m2) {
        if (interfaceC0810m == null) {
            a(69);
            throw null;
        }
        if (interfaceC0810m2 != null) {
            Integer numB = AbstractC0811n.b(interfaceC0810m.c(), interfaceC0810m2.c());
            return numB == null || numB.intValue() >= 0;
        }
        a(70);
        throw null;
    }

    public static boolean q(InterfaceC0799b interfaceC0799b, InterfaceC0799b interfaceC0799b2) {
        if (interfaceC0799b == null) {
            a(13);
            throw null;
        }
        if (interfaceC0799b2 == null) {
            a(14);
            throw null;
        }
        boolean zEquals = interfaceC0799b.equals(interfaceC0799b2);
        c cVar = c.f2719a;
        if (!zEquals && cVar.c(interfaceC0799b.a(), interfaceC0799b2.a(), false, true)) {
            return true;
        }
        InterfaceC0799b interfaceC0799bA = interfaceC0799b2.a();
        int i5 = e.f2720a;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        e.b(interfaceC0799b.a(), linkedHashSet);
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            if (cVar.c(interfaceC0799bA, (InterfaceC0799b) it.next(), false, true)) {
                return true;
            }
        }
        return false;
    }

    public static void r(InterfaceC0800c interfaceC0800c, InterfaceC0222b interfaceC0222b) {
        p pVar;
        p pVarF;
        p pVar2;
        if (interfaceC0800c == null) {
            a(107);
            throw null;
        }
        for (InterfaceC0800c interfaceC0800c2 : interfaceC0800c.p()) {
            if (interfaceC0800c2.c() == AbstractC0811n.f8814g) {
                r(interfaceC0800c2, interfaceC0222b);
            }
        }
        if (interfaceC0800c.c() != AbstractC0811n.f8814g) {
            return;
        }
        Collection<InterfaceC0800c> collectionP = interfaceC0800c.p();
        if (collectionP == null) {
            a(109);
            throw null;
        }
        if (collectionP.isEmpty()) {
            pVarF = AbstractC0811n.f8817j;
        } else {
            Iterator it = collectionP.iterator();
            loop3: while (true) {
                pVar = null;
                while (it.hasNext()) {
                    p pVarC = ((InterfaceC0800c) it.next()).c();
                    if (pVar != null) {
                        Integer numB = AbstractC0811n.b(pVarC, pVar);
                        if (numB == null) {
                            break;
                        } else if (numB.intValue() > 0) {
                        }
                    }
                    pVar = pVarC;
                }
            }
            if (pVar == null) {
                pVarF = null;
                break;
            }
            Iterator it2 = collectionP.iterator();
            while (it2.hasNext()) {
                Integer numB2 = AbstractC0811n.b(pVar, ((InterfaceC0800c) it2.next()).c());
                if (numB2 == null || numB2.intValue() < 0) {
                    pVarF = null;
                    break;
                }
            }
            pVarF = pVar;
        }
        if (pVarF == null) {
            pVarF = null;
            break;
        }
        if (interfaceC0800c.k0() == 2) {
            for (InterfaceC0800c interfaceC0800c3 : collectionP) {
                if (interfaceC0800c3.i() != 4 && !interfaceC0800c3.c().equals(pVarF)) {
                    pVarF = null;
                    break;
                }
            }
        } else {
            pVarF = AbstractC0811n.f(pVarF.f140a.c());
        }
        if (pVarF == null) {
            if (interfaceC0222b != null) {
                interfaceC0222b.e(interfaceC0800c);
            }
            pVar2 = AbstractC0811n.f8813e;
        } else {
            pVar2 = pVarF;
        }
        if (interfaceC0800c instanceof K) {
            K k5 = (K) interfaceC0800c;
            if (pVar2 == null) {
                K.I0(20);
                throw null;
            }
            k5.f9383l = pVar2;
            Iterator it3 = ((InterfaceC0783K) interfaceC0800c).w().iterator();
            while (it3.hasNext()) {
                r((InterfaceC0782J) it3.next(), pVarF == null ? null : interfaceC0222b);
            }
            return;
        }
        if (interfaceC0800c instanceof AbstractC0889v) {
            AbstractC0889v abstractC0889v = (AbstractC0889v) interfaceC0800c;
            if (pVar2 != null) {
                abstractC0889v.n = pVar2;
                return;
            } else {
                AbstractC0889v.I0(10);
                throw null;
            }
        }
        u3.I i5 = (u3.I) interfaceC0800c;
        i5.f9365m = pVar2;
        if (pVar2 != i5.Q0().c()) {
            i5.f9359g = false;
        }
    }

    public static Object s(Collection collection, InterfaceC0222b interfaceC0222b) {
        Object next;
        if (collection.size() == 1) {
            Object objL0 = R2.m.L0(collection);
            if (objL0 != null) {
                return objL0;
            }
            a(80);
            throw null;
        }
        ArrayList arrayList = new ArrayList(2);
        ArrayList arrayList2 = new ArrayList(R2.o.C0(collection));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList2.add(interfaceC0222b.e(it.next()));
        }
        Object objL02 = R2.m.L0(collection);
        InterfaceC0799b interfaceC0799b = (InterfaceC0799b) interfaceC0222b.e(objL02);
        for (Object obj : collection) {
            InterfaceC0799b interfaceC0799b2 = (InterfaceC0799b) interfaceC0222b.e(obj);
            if (interfaceC0799b2 == null) {
                a(71);
                throw null;
            }
            Iterator it2 = arrayList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    arrayList.add(obj);
                    break;
                }
                if (!k(interfaceC0799b2, (InterfaceC0799b) it2.next())) {
                    break;
                }
            }
            if (k(interfaceC0799b2, interfaceC0799b) && !k(interfaceC0799b, interfaceC0799b2)) {
                objL02 = obj;
            }
        }
        if (arrayList.isEmpty()) {
            if (objL02 != null) {
                return objL02;
            }
            a(81);
            throw null;
        }
        if (arrayList.size() == 1) {
            Object objL03 = R2.m.L0(arrayList);
            if (objL03 != null) {
                return objL03;
            }
            a(82);
            throw null;
        }
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                next = null;
                break;
            }
            next = it3.next();
            if (!AbstractC0450c.j(((InterfaceC0799b) interfaceC0222b.e(next)).n())) {
                break;
            }
        }
        if (next != null) {
            return next;
        }
        Object objL04 = R2.m.L0(arrayList);
        if (objL04 != null) {
            return objL04;
        }
        a(84);
        throw null;
    }

    public final I f(List list, List list2) {
        if (list == null) {
            a(42);
            throw null;
        }
        if (list2 == null) {
            a(43);
            throw null;
        }
        boolean zIsEmpty = list.isEmpty();
        i4.e eVar = i4.e.f7170c;
        i4.f fVar = this.f2737a;
        i4.c cVar = this.f2738b;
        if (zIsEmpty) {
            D d2 = new D((HashMap) null, cVar, fVar);
            d3.i.e("kotlinTypeRefiner", fVar);
            return new I(true, true, d2, eVar, fVar);
        }
        HashMap map = new HashMap();
        for (int i5 = 0; i5 < list.size(); i5++) {
            map.put(((InterfaceC0789Q) list.get(i5)).H(), ((InterfaceC0789Q) list2.get(i5)).H());
        }
        D d5 = new D(map, cVar, fVar);
        d3.i.e("kotlinTypeRefiner", fVar);
        return new I(true, true, d5, eVar, fVar);
    }

    public final void h(Q3.f fVar, Collection collection, Collection collection2, InterfaceC0802e interfaceC0802e, AbstractC0420a abstractC0420a) {
        Integer numB;
        if (fVar == null) {
            a(52);
            throw null;
        }
        if (collection == null) {
            a(53);
            throw null;
        }
        if (collection2 == null) {
            a(54);
            throw null;
        }
        if (interfaceC0802e == null) {
            a(55);
            throw null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            InterfaceC0800c interfaceC0800c = (InterfaceC0800c) it.next();
            if (interfaceC0800c == null) {
                a(59);
                throw null;
            }
            ArrayList arrayList = new ArrayList(collection.size());
            q4.h hVar = new q4.h();
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                InterfaceC0800c interfaceC0800c2 = (InterfaceC0800c) it2.next();
                int iC = l(interfaceC0800c2, interfaceC0800c, interfaceC0802e).c();
                boolean z4 = !AbstractC0811n.e(interfaceC0800c2.c()) && AbstractC0811n.c(AbstractC0811n.f8819l, interfaceC0800c2, interfaceC0800c) == null;
                int iF = Q0.f(iC);
                if (iF == 0) {
                    if (z4) {
                        hVar.add(interfaceC0800c2);
                    }
                    arrayList.add(interfaceC0800c2);
                } else if (iF == 2) {
                    if (z4) {
                        abstractC0420a.d(interfaceC0800c2, interfaceC0800c);
                    }
                    arrayList.add(interfaceC0800c2);
                }
            }
            abstractC0420a.l0(interfaceC0800c, hVar);
            linkedHashSet.removeAll(arrayList);
        }
        if (linkedHashSet.size() >= 2) {
            InterfaceC0807j interfaceC0807jL = ((InterfaceC0800c) linkedHashSet.iterator().next()).l();
            if (!linkedHashSet.isEmpty()) {
                Iterator it3 = linkedHashSet.iterator();
                while (it3.hasNext()) {
                    if (((InterfaceC0800c) it3.next()).l() != interfaceC0807jL) {
                        LinkedList<InterfaceC0800c> linkedList = new LinkedList(linkedHashSet);
                        while (!linkedList.isEmpty()) {
                            linkedList.isEmpty();
                            InterfaceC0800c interfaceC0800c3 = null;
                            for (InterfaceC0800c interfaceC0800c4 : linkedList) {
                                if (interfaceC0800c3 == null || ((numB = AbstractC0811n.b(interfaceC0800c3.c(), interfaceC0800c4.c())) != null && numB.intValue() < 0)) {
                                    interfaceC0800c3 = interfaceC0800c4;
                                }
                            }
                            d3.i.b(interfaceC0800c3);
                            e(g(interfaceC0800c3, linkedList, new k(1), new l(abstractC0420a, interfaceC0800c3)), interfaceC0802e, abstractC0420a);
                        }
                        return;
                    }
                }
            }
        }
        Iterator it4 = linkedHashSet.iterator();
        while (it4.hasNext()) {
            e(Collections.singleton((InterfaceC0800c) it4.next()), interfaceC0802e, abstractC0420a);
        }
    }

    public final m l(InterfaceC0799b interfaceC0799b, InterfaceC0799b interfaceC0799b2, InterfaceC0802e interfaceC0802e) {
        if (interfaceC0799b == null) {
            a(19);
            throw null;
        }
        if (interfaceC0799b2 == null) {
            a(20);
            throw null;
        }
        m mVarM = m(interfaceC0799b, interfaceC0799b2, interfaceC0802e, false);
        if (mVarM != null) {
            return mVarM;
        }
        a(21);
        throw null;
    }

    public final m m(InterfaceC0799b interfaceC0799b, InterfaceC0799b interfaceC0799b2, InterfaceC0802e interfaceC0802e, boolean z4) {
        if (interfaceC0799b == null) {
            a(22);
            throw null;
        }
        if (interfaceC0799b2 == null) {
            a(23);
            throw null;
        }
        m mVarN = n(interfaceC0799b, interfaceC0799b2, z4);
        boolean z5 = mVarN.c() == 1;
        List<h> list = f2734c;
        Iterator it = list.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            f fVar = f.f2721c;
            if (!zHasNext) {
                if (!z5) {
                    return mVarN;
                }
                for (h hVar : list) {
                    if (hVar.a() == fVar) {
                        int iOrdinal = hVar.b(interfaceC0799b, interfaceC0799b2, interfaceC0802e).ordinal();
                        if (iOrdinal == 0) {
                            throw new IllegalStateException("Contract violation in " + hVar.getClass().getName() + " condition. It's not supposed to end with success");
                        }
                        if (iOrdinal == 1) {
                            return m.b("External condition failed");
                        }
                        if (iOrdinal == 2) {
                            return m.d("External condition");
                        }
                    }
                }
                m mVar = m.f2732b;
                if (mVar != null) {
                    return mVar;
                }
                m.a(0);
                throw null;
            }
            h hVar2 = (h) it.next();
            if (hVar2.a() != fVar && (!z5 || hVar2.a() != f.f2722d)) {
                int iOrdinal2 = hVar2.b(interfaceC0799b, interfaceC0799b2, interfaceC0802e).ordinal();
                if (iOrdinal2 == 0) {
                    z5 = true;
                } else {
                    if (iOrdinal2 == 1) {
                        return m.b("External condition failed");
                    }
                    if (iOrdinal2 == 2) {
                        return m.d("External condition");
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a9, code lost:
    
        r10.remove();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final m n(InterfaceC0799b interfaceC0799b, InterfaceC0799b interfaceC0799b2, boolean z4) {
        if (interfaceC0799b == null) {
            a(30);
            throw null;
        }
        if (interfaceC0799b2 == null) {
            a(31);
            throw null;
        }
        m mVarI = i(interfaceC0799b, interfaceC0799b2);
        if (mVarI != null) {
            return mVarI;
        }
        ArrayList arrayListD = d(interfaceC0799b);
        ArrayList arrayListD2 = d(interfaceC0799b2);
        List listU = interfaceC0799b.u();
        List listU2 = interfaceC0799b2.u();
        if (listU.size() != listU2.size()) {
            for (int i5 = 0; i5 < arrayListD.size(); i5++) {
                if (!i4.d.f7169a.a((AbstractC0468v) arrayListD.get(i5), (AbstractC0468v) arrayListD2.get(i5))) {
                    return m.d("Type parameter number mismatch");
                }
            }
            return m.b("Type parameter number mismatch");
        }
        I iF = f(listU, listU2);
        for (int i6 = 0; i6 < listU.size(); i6++) {
            InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) listU.get(i6);
            InterfaceC0789Q interfaceC0789Q2 = (InterfaceC0789Q) listU2.get(i6);
            if (interfaceC0789Q == null) {
                a(49);
                throw null;
            }
            if (interfaceC0789Q2 == null) {
                a(50);
                throw null;
            }
            List<AbstractC0468v> upperBounds = interfaceC0789Q.getUpperBounds();
            ArrayList arrayList = new ArrayList(interfaceC0789Q2.getUpperBounds());
            if (upperBounds.size() == arrayList.size()) {
                for (AbstractC0468v abstractC0468v : upperBounds) {
                    ListIterator listIterator = arrayList.listIterator();
                    while (listIterator.hasNext()) {
                        if (b(abstractC0468v, (AbstractC0468v) listIterator.next(), iF)) {
                            break;
                        }
                    }
                }
            }
            return m.d("Type parameter bounds mismatch");
        }
        for (int i7 = 0; i7 < arrayListD.size(); i7++) {
            if (!b((AbstractC0468v) arrayListD.get(i7), (AbstractC0468v) arrayListD2.get(i7), iF)) {
                return m.d("Value parameter type mismatch");
            }
        }
        if ((interfaceC0799b instanceof InterfaceC0816s) && (interfaceC0799b2 instanceof InterfaceC0816s) && ((InterfaceC0816s) interfaceC0799b).h() != ((InterfaceC0816s) interfaceC0799b2).h()) {
            return m.b("Incompatible suspendability");
        }
        if (z4) {
            AbstractC0468v abstractC0468vN = interfaceC0799b.n();
            AbstractC0468v abstractC0468vN2 = interfaceC0799b2.n();
            if (abstractC0468vN != null && abstractC0468vN2 != null && ((!AbstractC0450c.i(abstractC0468vN2) || !AbstractC0450c.i(abstractC0468vN)) && !C0451d.n(C0451d.f7050a, iF, abstractC0468vN2.M0(), abstractC0468vN.M0()))) {
                return m.b("Return type mismatch");
            }
        }
        m mVar = m.f2732b;
        if (mVar != null) {
            return mVar;
        }
        m.a(0);
        throw null;
    }
}
