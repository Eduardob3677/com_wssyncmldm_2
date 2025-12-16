package T3;

import com.idm.providers.mo.IDMMoDatabaseConstants;
import com.samsung.android.knox.ex.KnoxContract;
import h4.AbstractC0468v;
import h4.J;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import r3.AbstractC0811n;
import r3.C0787O;
import r3.InterfaceC0775C;
import r3.InterfaceC0780H;
import r3.InterfaceC0799b;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0805h;
import r3.InterfaceC0807j;
import r3.InterfaceC0808k;
import r3.InterfaceC0810m;
import r3.InterfaceC0821x;
import u3.E;
import u3.M;
import u3.y;

/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f2720a = 0;

    static {
        new Q3.c("kotlin.jvm.JvmName");
    }

    public static /* synthetic */ void a(int i5) {
        String str;
        int i6;
        switch (i5) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 63:
            case 65:
            case 72:
            case 76:
            case 83:
            case 84:
            case 86:
            case 89:
            case 94:
            case 96:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i5) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 63:
            case 65:
            case 72:
            case 76:
            case 83:
            case 84:
            case 86:
            case 89:
            case 94:
            case 96:
                i6 = 2;
                break;
            default:
                i6 = 3;
                break;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
            case 13:
            case 14:
            case 15:
            case 21:
            case 23:
            case 24:
            case 34:
            case 35:
            case 36:
            case 57:
            case 58:
            case 59:
            case 61:
            case 64:
            case 82:
            case 95:
            case 97:
                objArr[0] = "descriptor";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 63:
            case 65:
            case 72:
            case 76:
            case 83:
            case 84:
            case 86:
            case 89:
            case 94:
            case 96:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
            case 16:
                objArr[0] = "first";
                break;
            case 17:
                objArr[0] = KnoxContract.Config.DateTime.PARAM_SECOND;
                break;
            case 18:
            case 19:
                objArr[0] = "aClass";
                break;
            case 20:
                objArr[0] = "kotlinType";
                break;
            case 25:
                objArr[0] = "declarationDescriptor";
                break;
            case 26:
            case 28:
                objArr[0] = "subClass";
                break;
            case 27:
            case 29:
            case 33:
                objArr[0] = "superClass";
                break;
            case 30:
            case 32:
            case 45:
            case 67:
                objArr[0] = "type";
                break;
            case 31:
                objArr[0] = "other";
                break;
            case 37:
                objArr[0] = "classKind";
                break;
            case 38:
            case 39:
            case 41:
            case 44:
            case 48:
            case 54:
            case 68:
            case 69:
            case 70:
            case 77:
            case 78:
                objArr[0] = "classDescriptor";
                break;
            case 46:
                objArr[0] = "typeConstructor";
                break;
            case 55:
                objArr[0] = "innerClassName";
                break;
            case 56:
                objArr[0] = "location";
                break;
            case 66:
                objArr[0] = "variable";
                break;
            case 71:
                objArr[0] = "f";
                break;
            case 73:
                objArr[0] = "current";
                break;
            case 74:
                objArr[0] = "result";
                break;
            case 75:
                objArr[0] = "memberDescriptor";
                break;
            case 79:
            case 80:
            case 81:
                objArr[0] = "annotated";
                break;
            case 85:
            case 87:
            case 90:
            case 92:
                objArr[0] = IDMMoDatabaseConstants.IDM_SCOPE;
                break;
            case 88:
            case 91:
            case 93:
                objArr[0] = "name";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i5) {
            case 4:
                objArr[1] = "getFqNameSafe";
                break;
            case 7:
                objArr[1] = "getFqNameUnsafe";
                break;
            case 9:
            case 10:
                objArr[1] = "getFqNameFromTopLevelClass";
                break;
            case 12:
                objArr[1] = "getClassIdForNonLocalClass";
                break;
            case 22:
                objArr[1] = "getContainingModule";
                break;
            case 40:
                objArr[1] = "getSuperclassDescriptors";
                break;
            case 42:
            case 43:
                objArr[1] = "getSuperClassType";
                break;
            case 47:
                objArr[1] = "getClassDescriptorForTypeConstructor";
                break;
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
                objArr[1] = "getDefaultConstructorVisibility";
                break;
            case 60:
                objArr[1] = "unwrapFakeOverride";
                break;
            case 62:
            case 63:
                objArr[1] = "unwrapSubstitutionOverride";
                break;
            case 65:
                objArr[1] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case 72:
                objArr[1] = "getAllOverriddenDescriptors";
                break;
            case 76:
                objArr[1] = "getAllOverriddenDeclarations";
                break;
            case 83:
            case 84:
                objArr[1] = "getContainingSourceFile";
                break;
            case 86:
                objArr[1] = "getAllDescriptors";
                break;
            case 89:
                objArr[1] = "getFunctionByName";
                break;
            case 94:
                objArr[1] = "getPropertyByName";
                break;
            case 96:
                objArr[1] = "getDirectMember";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
        }
        switch (i5) {
            case 1:
                objArr[2] = "isLocal";
                break;
            case 2:
                objArr[2] = "getFqName";
                break;
            case 3:
                objArr[2] = "getFqNameSafe";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 63:
            case 65:
            case 72:
            case 76:
            case 83:
            case 84:
            case 86:
            case 89:
            case 94:
            case 96:
                break;
            case 5:
                objArr[2] = "getFqNameSafeIfPossible";
                break;
            case 6:
                objArr[2] = "getFqNameUnsafe";
                break;
            case 8:
                objArr[2] = "getFqNameFromTopLevelClass";
                break;
            case 11:
                objArr[2] = "getClassIdForNonLocalClass";
                break;
            case 13:
                objArr[2] = "isExtension";
                break;
            case 14:
                objArr[2] = "isOverride";
                break;
            case 15:
                objArr[2] = "isStaticDeclaration";
                break;
            case 16:
            case 17:
                objArr[2] = "areInSameModule";
                break;
            case 18:
            case 19:
                objArr[2] = "getParentOfType";
                break;
            case 20:
            case 23:
                objArr[2] = "getContainingModuleOrNull";
                break;
            case 21:
                objArr[2] = "getContainingModule";
                break;
            case 24:
                objArr[2] = "getContainingClass";
                break;
            case 25:
                objArr[2] = "isAncestor";
                break;
            case 26:
            case 27:
                objArr[2] = "isDirectSubclass";
                break;
            case 28:
            case 29:
                objArr[2] = "isSubclass";
                break;
            case 30:
            case 31:
                objArr[2] = "isSameClass";
                break;
            case 32:
            case 33:
                objArr[2] = "isSubtypeOfClass";
                break;
            case 34:
                objArr[2] = "isAnonymousObject";
                break;
            case 35:
                objArr[2] = "isAnonymousFunction";
                break;
            case 36:
                objArr[2] = "isEnumEntry";
                break;
            case 37:
                objArr[2] = "isKindOf";
                break;
            case 38:
                objArr[2] = "hasAbstractMembers";
                break;
            case 39:
                objArr[2] = "getSuperclassDescriptors";
                break;
            case 41:
                objArr[2] = "getSuperClassType";
                break;
            case 44:
                objArr[2] = "getSuperClassDescriptor";
                break;
            case 45:
                objArr[2] = "getClassDescriptorForType";
                break;
            case 46:
                objArr[2] = "getClassDescriptorForTypeConstructor";
                break;
            case 48:
                objArr[2] = "getDefaultConstructorVisibility";
                break;
            case 54:
            case 55:
            case 56:
                objArr[2] = "getInnerClassByName";
                break;
            case 57:
                objArr[2] = "isStaticNestedClass";
                break;
            case 58:
                objArr[2] = "isTopLevelOrInnerClass";
                break;
            case 59:
                objArr[2] = "unwrapFakeOverride";
                break;
            case 61:
                objArr[2] = "unwrapSubstitutionOverride";
                break;
            case 64:
                objArr[2] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case 66:
            case 67:
                objArr[2] = "shouldRecordInitializerForProperty";
                break;
            case 68:
                objArr[2] = "classCanHaveAbstractFakeOverride";
                break;
            case 69:
                objArr[2] = "classCanHaveAbstractDeclaration";
                break;
            case 70:
                objArr[2] = "classCanHaveOpenMembers";
                break;
            case 71:
                objArr[2] = "getAllOverriddenDescriptors";
                break;
            case 73:
            case 74:
                objArr[2] = "collectAllOverriddenDescriptors";
                break;
            case 75:
                objArr[2] = "getAllOverriddenDeclarations";
                break;
            case 77:
                objArr[2] = "isSingletonOrAnonymousObject";
                break;
            case 78:
                objArr[2] = "canHaveDeclaredConstructors";
                break;
            case 79:
                objArr[2] = "getJvmName";
                break;
            case 80:
                objArr[2] = "findJvmNameAnnotation";
                break;
            case 81:
                objArr[2] = "hasJvmNameAnnotation";
                break;
            case 82:
                objArr[2] = "getContainingSourceFile";
                break;
            case 85:
                objArr[2] = "getAllDescriptors";
                break;
            case 87:
            case 88:
                objArr[2] = "getFunctionByName";
                break;
            case 90:
            case 91:
                objArr[2] = "getFunctionByNameOrNull";
                break;
            case 92:
            case 93:
                objArr[2] = "getPropertyByName";
                break;
            case 95:
                objArr[2] = "getDirectMember";
                break;
            case 97:
                objArr[2] = "isMethodOfAny";
                break;
            default:
                objArr[2] = "getDispatchReceiverParameterIfNeeded";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i5) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 63:
            case 65:
            case 72:
            case 76:
            case 83:
            case 84:
            case 86:
            case 89:
            case 94:
            case 96:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static void b(InterfaceC0799b interfaceC0799b, LinkedHashSet linkedHashSet) {
        if (interfaceC0799b == null) {
            a(73);
            throw null;
        }
        if (linkedHashSet.contains(interfaceC0799b)) {
            return;
        }
        Iterator it = interfaceC0799b.a().p().iterator();
        while (it.hasNext()) {
            InterfaceC0799b interfaceC0799bA = ((InterfaceC0799b) it.next()).a();
            b(interfaceC0799bA, linkedHashSet);
            linkedHashSet.add(interfaceC0799bA);
        }
    }

    public static InterfaceC0802e c(AbstractC0468v abstractC0468v) {
        if (abstractC0468v == null) {
            a(45);
            throw null;
        }
        J jJ0 = abstractC0468v.J0();
        if (jJ0 == null) {
            a(46);
            throw null;
        }
        InterfaceC0802e interfaceC0802e = (InterfaceC0802e) jJ0.i();
        if (interfaceC0802e != null) {
            return interfaceC0802e;
        }
        a(47);
        throw null;
    }

    public static InterfaceC0821x d(InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j == null) {
            a(21);
            throw null;
        }
        InterfaceC0821x interfaceC0821xE = e(interfaceC0807j);
        if (interfaceC0821xE != null) {
            return interfaceC0821xE;
        }
        a(22);
        throw null;
    }

    public static InterfaceC0821x e(InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j == null) {
            a(23);
            throw null;
        }
        while (interfaceC0807j != null) {
            if (interfaceC0807j instanceof InterfaceC0821x) {
                return (InterfaceC0821x) interfaceC0807j;
            }
            if (interfaceC0807j instanceof InterfaceC0780H) {
                return ((y) ((InterfaceC0780H) interfaceC0807j)).f9513e;
            }
            interfaceC0807j = interfaceC0807j.l();
        }
        return null;
    }

    public static C0787O f(InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j == null) {
            a(82);
            throw null;
        }
        if (interfaceC0807j instanceof M) {
            interfaceC0807j = ((M) interfaceC0807j).Q0();
        }
        boolean z4 = interfaceC0807j instanceof InterfaceC0808k;
        C0787O c0787o = C0787O.f8791d;
        if (z4) {
            ((InterfaceC0808k) interfaceC0807j).m().getClass();
        }
        return c0787o;
    }

    public static Q3.e g(InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j != null) {
            Q3.c cVarH = h(interfaceC0807j);
            return cVarH != null ? cVarH.i() : i(interfaceC0807j);
        }
        a(2);
        throw null;
    }

    public static Q3.c h(InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j == null) {
            a(5);
            throw null;
        }
        if ((interfaceC0807j instanceof InterfaceC0821x) || j4.i.f(interfaceC0807j)) {
            return Q3.c.f2233c;
        }
        if (interfaceC0807j instanceof InterfaceC0780H) {
            return ((y) ((InterfaceC0780H) interfaceC0807j)).f;
        }
        if (interfaceC0807j instanceof InterfaceC0775C) {
            return ((E) ((InterfaceC0775C) interfaceC0807j)).f9353g;
        }
        return null;
    }

    public static Q3.e i(InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j != null) {
            return g(interfaceC0807j.l()).b(interfaceC0807j.getName());
        }
        a(6);
        throw null;
    }

    public static InterfaceC0807j j(InterfaceC0807j interfaceC0807j, Class cls, boolean z4) {
        if (interfaceC0807j == null) {
            return null;
        }
        if (z4) {
            interfaceC0807j = interfaceC0807j.l();
        }
        while (interfaceC0807j != null) {
            if (cls.isInstance(interfaceC0807j)) {
                return interfaceC0807j;
            }
            interfaceC0807j = interfaceC0807j.l();
        }
        return null;
    }

    public static InterfaceC0802e k(InterfaceC0802e interfaceC0802e) {
        if (interfaceC0802e == null) {
            a(44);
            throw null;
        }
        Iterator it = interfaceC0802e.H().j().iterator();
        while (it.hasNext()) {
            InterfaceC0802e interfaceC0802eC = c((AbstractC0468v) it.next());
            if (interfaceC0802eC.L() != 2) {
                return interfaceC0802eC;
            }
        }
        return null;
    }

    public static boolean l(InterfaceC0807j interfaceC0807j) {
        return o(interfaceC0807j, 1) && interfaceC0807j.getName().equals(Q3.h.f2245a);
    }

    public static boolean m(InterfaceC0807j interfaceC0807j) {
        return o(interfaceC0807j, 6) && ((InterfaceC0802e) interfaceC0807j).N();
    }

    public static boolean n(InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j != null) {
            return o(interfaceC0807j, 4);
        }
        a(36);
        throw null;
    }

    public static boolean o(InterfaceC0807j interfaceC0807j, int i5) {
        if (i5 != 0) {
            return (interfaceC0807j instanceof InterfaceC0802e) && ((InterfaceC0802e) interfaceC0807j).L() == i5;
        }
        a(37);
        throw null;
    }

    public static boolean p(InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j == null) {
            a(1);
            throw null;
        }
        while (interfaceC0807j != null) {
            if (l(interfaceC0807j) || ((interfaceC0807j instanceof InterfaceC0810m) && ((InterfaceC0810m) interfaceC0807j).c() == AbstractC0811n.f)) {
                return true;
            }
            interfaceC0807j = interfaceC0807j.l();
        }
        return false;
    }

    public static boolean q(AbstractC0468v abstractC0468v, InterfaceC0802e interfaceC0802e) {
        if (abstractC0468v == null) {
            a(30);
            throw null;
        }
        if (interfaceC0802e == null) {
            a(31);
            throw null;
        }
        InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
        if (interfaceC0804gI == null) {
            return false;
        }
        InterfaceC0807j interfaceC0807jA = interfaceC0804gI.a();
        return (interfaceC0807jA instanceof InterfaceC0804g) && interfaceC0802e.H().equals(((InterfaceC0804g) interfaceC0807jA).H());
    }

    public static boolean r(InterfaceC0805h interfaceC0805h) {
        return (o(interfaceC0805h, 1) || o(interfaceC0805h, 2)) && ((InterfaceC0802e) interfaceC0805h).i() == 2;
    }

    public static boolean s(AbstractC0468v abstractC0468v, InterfaceC0802e interfaceC0802e) {
        if (abstractC0468v == null) {
            a(32);
            throw null;
        }
        if (interfaceC0802e == null) {
            a(33);
            throw null;
        }
        if (q(abstractC0468v, interfaceC0802e)) {
            return true;
        }
        Iterator it = abstractC0468v.J0().j().iterator();
        while (it.hasNext()) {
            if (s((AbstractC0468v) it.next(), interfaceC0802e)) {
                return true;
            }
        }
        return false;
    }

    public static boolean t(InterfaceC0807j interfaceC0807j) {
        return interfaceC0807j != null && (interfaceC0807j.l() instanceof InterfaceC0775C);
    }

    public static InterfaceC0800c u(InterfaceC0800c interfaceC0800c) {
        if (interfaceC0800c == null) {
            a(59);
            throw null;
        }
        while (interfaceC0800c.k0() == 2) {
            Collection collectionP = interfaceC0800c.p();
            if (collectionP.isEmpty()) {
                throw new IllegalStateException("Fake override should have at least one overridden descriptor: " + interfaceC0800c);
            }
            interfaceC0800c = (InterfaceC0800c) collectionP.iterator().next();
        }
        return interfaceC0800c;
    }
}
