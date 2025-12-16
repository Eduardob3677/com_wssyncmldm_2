package o3;

import e.v;
import h4.AbstractC0450c;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.J;
import h4.N;
import h4.O;
import h4.X;
import h4.Z;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import p3.C0743a;
import p3.EnumC0747e;
import r3.InterfaceC0775C;
import r3.InterfaceC0776D;
import r3.InterfaceC0783K;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import r3.InterfaceC0821x;
import s3.C0844g;
import s3.InterfaceC0845h;
import t3.C0857a;
import t3.InterfaceC0858b;
import t3.InterfaceC0860d;
import u3.C0867C;
import u3.E;
import u3.L;
import u3.M;

/* renamed from: o3.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0732i {

    /* renamed from: e, reason: collision with root package name */
    public static final Q3.f f8454e = Q3.f.g("<built-ins module>");

    /* renamed from: a, reason: collision with root package name */
    public C0867C f8455a;

    /* renamed from: b, reason: collision with root package name */
    public final g4.i f8456b;

    /* renamed from: c, reason: collision with root package name */
    public final g4.e f8457c;

    /* renamed from: d, reason: collision with root package name */
    public final g4.o f8458d;

    public AbstractC0732i(g4.l lVar) {
        this.f8458d = lVar;
        lVar.a(new C0730g(this, 0));
        this.f8456b = new g4.i(lVar, new C0730g(this, 1));
        this.f8457c = lVar.b(new B3.a(2, this));
    }

    public static boolean A(AbstractC0468v abstractC0468v, Q3.e eVar) {
        if (abstractC0468v == null) {
            a(97);
            throw null;
        }
        if (eVar != null) {
            return G(abstractC0468v.J0(), eVar);
        }
        a(98);
        throw null;
    }

    public static boolean B(AbstractC0468v abstractC0468v, Q3.e eVar) {
        if (eVar != null) {
            return A(abstractC0468v, eVar) && !abstractC0468v.K0();
        }
        a(135);
        throw null;
    }

    public static boolean C(InterfaceC0816s interfaceC0816s) {
        if (interfaceC0816s.a().t().b(m.f8517m)) {
            return true;
        }
        if (!(interfaceC0816s instanceof InterfaceC0783K)) {
            return false;
        }
        InterfaceC0783K interfaceC0783K = (InterfaceC0783K) interfaceC0816s;
        boolean zT = interfaceC0783K.T();
        L lR = interfaceC0783K.r();
        M mF = interfaceC0783K.f();
        if (lR != null && C(lR)) {
            if (!zT) {
                return true;
            }
            if (mF != null && C(mF)) {
                return true;
            }
        }
        return false;
    }

    public static boolean D(AbstractC0468v abstractC0468v, Q3.e eVar) {
        if (eVar != null) {
            return !abstractC0468v.K0() && A(abstractC0468v, eVar);
        }
        a(106);
        throw null;
    }

    public static boolean E(AbstractC0468v abstractC0468v) {
        if (abstractC0468v == null) {
            a(136);
            throw null;
        }
        if (abstractC0468v != null) {
            return A(abstractC0468v, m.f8505b) && !X.f(abstractC0468v);
        }
        a(138);
        throw null;
    }

    public static boolean F(AbstractC0468v abstractC0468v) {
        if (abstractC0468v == null) {
            a(94);
            throw null;
        }
        if (!abstractC0468v.K0()) {
            InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
            if (interfaceC0804gI instanceof InterfaceC0802e) {
                InterfaceC0802e interfaceC0802e = (InterfaceC0802e) interfaceC0804gI;
                if (interfaceC0802e == null) {
                    a(96);
                    throw null;
                }
                if (t(interfaceC0802e) != null) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean G(J j3, Q3.e eVar) {
        if (j3 == null) {
            a(101);
            throw null;
        }
        if (eVar != null) {
            InterfaceC0804g interfaceC0804gI = j3.i();
            return (interfaceC0804gI instanceof InterfaceC0802e) && b(interfaceC0804gI, eVar);
        }
        a(102);
        throw null;
    }

    public static boolean H(InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j == null) {
            a(10);
            throw null;
        }
        while (interfaceC0807j != null) {
            if (interfaceC0807j instanceof InterfaceC0775C) {
                return ((E) ((InterfaceC0775C) interfaceC0807j)).f9353g.h(n.f8537i);
            }
            interfaceC0807j = interfaceC0807j.l();
        }
        return false;
    }

    public static /* synthetic */ void a(int i5) {
        String str;
        int i6;
        switch (i5) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i5) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                i6 = 2;
                break;
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                i6 = 3;
                break;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 1:
            case 72:
                objArr[0] = "module";
                break;
            case 2:
                objArr[0] = "computation";
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 9:
            case 10:
            case 76:
            case 77:
            case 89:
            case 96:
            case 103:
            case 107:
            case 108:
            case 143:
            case 146:
            case 147:
            case 149:
            case 157:
            case 158:
            case 159:
            case 160:
                objArr[0] = "descriptor";
                break;
            case 12:
            case 98:
            case 100:
            case 102:
            case 104:
            case 106:
            case 135:
                objArr[0] = "fqName";
                break;
            case 14:
                objArr[0] = "simpleName";
                break;
            case 16:
            case 17:
            case 53:
            case 88:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 97:
            case 99:
            case 105:
            case 109:
            case 110:
            case 111:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 144:
            case 145:
            case 148:
            case 150:
            case 151:
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 162:
                objArr[0] = "type";
                break;
            case 46:
                objArr[0] = "classSimpleName";
                break;
            case 67:
                objArr[0] = "arrayType";
                break;
            case 71:
                objArr[0] = "notNullArrayType";
                break;
            case 73:
                objArr[0] = "primitiveType";
                break;
            case 75:
                objArr[0] = "kotlinType";
                break;
            case 78:
            case 82:
                objArr[0] = "projectionType";
                break;
            case 79:
            case 83:
            case 85:
                objArr[0] = "argument";
                break;
            case 80:
                objArr[0] = "annotations";
                break;
            case 101:
                objArr[0] = "typeConstructor";
                break;
            case 112:
                objArr[0] = "classDescriptor";
                break;
            case 161:
                objArr[0] = "declarationDescriptor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (i5) {
            case 3:
                objArr[1] = "getAdditionalClassPartsProvider";
                break;
            case 4:
                objArr[1] = "getPlatformDependentDeclarationFilter";
                break;
            case 5:
                objArr[1] = "getClassDescriptorFactories";
                break;
            case 6:
                objArr[1] = "getStorageManager";
                break;
            case 7:
                objArr[1] = "getBuiltInsModule";
                break;
            case 8:
                objArr[1] = "getBuiltInPackagesImportedByDefault";
                break;
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 11:
                objArr[1] = "getBuiltInsPackageScope";
                break;
            case 13:
                objArr[1] = "getBuiltInClassByFqName";
                break;
            case 15:
                objArr[1] = "getBuiltInClassByName";
                break;
            case 18:
                objArr[1] = "getSuspendFunction";
                break;
            case 19:
                objArr[1] = "getKFunction";
                break;
            case 20:
                objArr[1] = "getKSuspendFunction";
                break;
            case 21:
                objArr[1] = "getKClass";
                break;
            case 22:
                objArr[1] = "getKCallable";
                break;
            case 23:
                objArr[1] = "getKProperty";
                break;
            case 24:
                objArr[1] = "getKProperty0";
                break;
            case 25:
                objArr[1] = "getKProperty1";
                break;
            case 26:
                objArr[1] = "getKProperty2";
                break;
            case 27:
                objArr[1] = "getKMutableProperty0";
                break;
            case 28:
                objArr[1] = "getKMutableProperty1";
                break;
            case 29:
                objArr[1] = "getKMutableProperty2";
                break;
            case 30:
                objArr[1] = "getIterator";
                break;
            case 31:
                objArr[1] = "getIterable";
                break;
            case 32:
                objArr[1] = "getMutableIterable";
                break;
            case 33:
                objArr[1] = "getMutableIterator";
                break;
            case 34:
                objArr[1] = "getCollection";
                break;
            case 35:
                objArr[1] = "getMutableCollection";
                break;
            case 36:
                objArr[1] = "getList";
                break;
            case 37:
                objArr[1] = "getMutableList";
                break;
            case 38:
                objArr[1] = "getSet";
                break;
            case 39:
                objArr[1] = "getMutableSet";
                break;
            case 40:
                objArr[1] = "getMap";
                break;
            case 41:
                objArr[1] = "getMutableMap";
                break;
            case 42:
                objArr[1] = "getMapEntry";
                break;
            case 43:
                objArr[1] = "getMutableMapEntry";
                break;
            case 44:
                objArr[1] = "getListIterator";
                break;
            case 45:
                objArr[1] = "getMutableListIterator";
                break;
            case 47:
                objArr[1] = "getBuiltInTypeByClassName";
                break;
            case 48:
                objArr[1] = "getNothingType";
                break;
            case 49:
                objArr[1] = "getNullableNothingType";
                break;
            case 50:
                objArr[1] = "getAnyType";
                break;
            case 51:
                objArr[1] = "getNullableAnyType";
                break;
            case 52:
                objArr[1] = "getDefaultBound";
                break;
            case 54:
                objArr[1] = "getPrimitiveKotlinType";
                break;
            case 55:
                objArr[1] = "getNumberType";
                break;
            case 56:
                objArr[1] = "getByteType";
                break;
            case 57:
                objArr[1] = "getShortType";
                break;
            case 58:
                objArr[1] = "getIntType";
                break;
            case 59:
                objArr[1] = "getLongType";
                break;
            case 60:
                objArr[1] = "getFloatType";
                break;
            case 61:
                objArr[1] = "getDoubleType";
                break;
            case 62:
                objArr[1] = "getCharType";
                break;
            case 63:
                objArr[1] = "getBooleanType";
                break;
            case 64:
                objArr[1] = "getUnitType";
                break;
            case 65:
                objArr[1] = "getStringType";
                break;
            case 66:
                objArr[1] = "getIterableType";
                break;
            case 68:
            case 69:
            case 70:
                objArr[1] = "getArrayElementType";
                break;
            case 74:
                objArr[1] = "getPrimitiveArrayKotlinType";
                break;
            case 81:
            case 84:
                objArr[1] = "getArrayType";
                break;
            case 86:
                objArr[1] = "getEnumType";
                break;
            case 87:
                objArr[1] = "getAnnotationType";
                break;
        }
        switch (i5) {
            case 1:
                objArr[2] = "setBuiltInsModule";
                break;
            case 2:
                objArr[2] = "setPostponedBuiltinsModuleComputation";
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                break;
            case 9:
                objArr[2] = "isBuiltIn";
                break;
            case 10:
                objArr[2] = "isUnderKotlinPackage";
                break;
            case 12:
                objArr[2] = "getBuiltInClassByFqName";
                break;
            case 14:
                objArr[2] = "getBuiltInClassByName";
                break;
            case 16:
                objArr[2] = "getPrimitiveClassDescriptor";
                break;
            case 17:
                objArr[2] = "getPrimitiveArrayClassDescriptor";
                break;
            case 46:
                objArr[2] = "getBuiltInTypeByClassName";
                break;
            case 53:
                objArr[2] = "getPrimitiveKotlinType";
                break;
            case 67:
                objArr[2] = "getArrayElementType";
                break;
            case 71:
            case 72:
                objArr[2] = "getElementTypeForUnsignedArray";
                break;
            case 73:
                objArr[2] = "getPrimitiveArrayKotlinType";
                break;
            case 75:
                objArr[2] = "getPrimitiveArrayKotlinTypeByPrimitiveKotlinType";
                break;
            case 76:
            case 93:
                objArr[2] = "getPrimitiveType";
                break;
            case 77:
                objArr[2] = "getPrimitiveArrayType";
                break;
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
                objArr[2] = "getArrayType";
                break;
            case 85:
                objArr[2] = "getEnumType";
                break;
            case 88:
                objArr[2] = "isArray";
                break;
            case 89:
            case 90:
                objArr[2] = "isArrayOrPrimitiveArray";
                break;
            case 91:
                objArr[2] = "isPrimitiveArray";
                break;
            case 92:
                objArr[2] = "getPrimitiveArrayElementType";
                break;
            case 94:
                objArr[2] = "isPrimitiveType";
                break;
            case 95:
                objArr[2] = "isPrimitiveTypeOrNullablePrimitiveType";
                break;
            case 96:
                objArr[2] = "isPrimitiveClass";
                break;
            case 97:
            case 98:
            case 99:
            case 100:
                objArr[2] = "isConstructedFromGivenClass";
                break;
            case 101:
            case 102:
                objArr[2] = "isTypeConstructorForGivenClass";
                break;
            case 103:
            case 104:
                objArr[2] = "classFqNameEquals";
                break;
            case 105:
            case 106:
                objArr[2] = "isNotNullConstructedFromGivenClass";
                break;
            case 107:
                objArr[2] = "isSpecialClassWithNoSupertypes";
                break;
            case 108:
            case 109:
                objArr[2] = "isAny";
                break;
            case 110:
            case 112:
                objArr[2] = "isBoolean";
                break;
            case 111:
                objArr[2] = "isBooleanOrNullableBoolean";
                break;
            case 113:
                objArr[2] = "isNumber";
                break;
            case 114:
                objArr[2] = "isChar";
                break;
            case 115:
                objArr[2] = "isCharOrNullableChar";
                break;
            case 116:
                objArr[2] = "isInt";
                break;
            case 117:
                objArr[2] = "isByte";
                break;
            case 118:
                objArr[2] = "isLong";
                break;
            case 119:
                objArr[2] = "isLongOrNullableLong";
                break;
            case 120:
                objArr[2] = "isShort";
                break;
            case 121:
                objArr[2] = "isFloat";
                break;
            case 122:
                objArr[2] = "isFloatOrNullableFloat";
                break;
            case 123:
                objArr[2] = "isDouble";
                break;
            case 124:
                objArr[2] = "isUByte";
                break;
            case 125:
                objArr[2] = "isUShort";
                break;
            case 126:
                objArr[2] = "isUInt";
                break;
            case 127:
                objArr[2] = "isULong";
                break;
            case 128:
                objArr[2] = "isUByteArray";
                break;
            case 129:
                objArr[2] = "isUShortArray";
                break;
            case 130:
                objArr[2] = "isUIntArray";
                break;
            case 131:
                objArr[2] = "isULongArray";
                break;
            case 132:
                objArr[2] = "isUnsignedArrayType";
                break;
            case 133:
                objArr[2] = "isDoubleOrNullableDouble";
                break;
            case 134:
            case 135:
                objArr[2] = "isConstructedFromGivenClassAndNotNullable";
                break;
            case 136:
                objArr[2] = "isNothing";
                break;
            case 137:
                objArr[2] = "isNullableNothing";
                break;
            case 138:
                objArr[2] = "isNothingOrNullableNothing";
                break;
            case 139:
                objArr[2] = "isAnyOrNullableAny";
                break;
            case 140:
                objArr[2] = "isNullableAny";
                break;
            case 141:
                objArr[2] = "isDefaultBound";
                break;
            case 142:
                objArr[2] = "isUnit";
                break;
            case 143:
                objArr[2] = "mayReturnNonUnitValue";
                break;
            case 144:
                objArr[2] = "isUnitOrNullableUnit";
                break;
            case 145:
                objArr[2] = "isBooleanOrSubtype";
                break;
            case 146:
                objArr[2] = "isMemberOfAny";
                break;
            case 147:
            case 148:
                objArr[2] = "isEnum";
                break;
            case 149:
            case 150:
                objArr[2] = "isComparable";
                break;
            case 151:
                objArr[2] = "isCollectionOrNullableCollection";
                break;
            case 152:
                objArr[2] = "isListOrNullableList";
                break;
            case 153:
                objArr[2] = "isSetOrNullableSet";
                break;
            case 154:
                objArr[2] = "isMapOrNullableMap";
                break;
            case 155:
                objArr[2] = "isIterableOrNullableIterable";
                break;
            case 156:
                objArr[2] = "isThrowableOrNullableThrowable";
                break;
            case 157:
                objArr[2] = "isThrowable";
                break;
            case 158:
                objArr[2] = "isKClass";
                break;
            case 159:
                objArr[2] = "isNonPrimitiveArray";
                break;
            case 160:
                objArr[2] = "isCloneable";
                break;
            case 161:
                objArr[2] = "isDeprecated";
                break;
            case 162:
                objArr[2] = "isNotNullOrNullableFunctionSupertype";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i5) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                throw new IllegalStateException(str2);
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static boolean b(InterfaceC0804g interfaceC0804g, Q3.e eVar) {
        if (interfaceC0804g == null) {
            a(103);
            throw null;
        }
        if (eVar != null) {
            return interfaceC0804g.getName().equals(eVar.f()) && eVar.equals(T3.e.g(interfaceC0804g));
        }
        a(104);
        throw null;
    }

    public static EnumC0734k r(InterfaceC0804g interfaceC0804g) {
        if (interfaceC0804g == null) {
            a(77);
            throw null;
        }
        if (m.f8504a0.contains(interfaceC0804g.getName())) {
            return (EnumC0734k) m.f8508c0.get(T3.e.g(interfaceC0804g));
        }
        return null;
    }

    public static EnumC0734k t(InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j == null) {
            a(76);
            throw null;
        }
        if (m.f8502Z.contains(interfaceC0807j.getName())) {
            return (EnumC0734k) m.f8506b0.get(T3.e.g(interfaceC0807j));
        }
        return null;
    }

    public static boolean x(AbstractC0468v abstractC0468v) {
        if (abstractC0468v != null) {
            return A(abstractC0468v, m.f8503a);
        }
        a(139);
        throw null;
    }

    public static boolean y(AbstractC0468v abstractC0468v) {
        if (abstractC0468v != null) {
            return A(abstractC0468v, m.f8511g);
        }
        a(88);
        throw null;
    }

    public static boolean z(InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j != null) {
            return T3.e.j(interfaceC0807j, e4.c.class, false) != null;
        }
        a(9);
        throw null;
    }

    public final void c(boolean z4) {
        Q3.f fVar = f8454e;
        d3.i.e("moduleName", fVar);
        g4.o oVar = this.f8458d;
        d3.i.e("storageManager", oVar);
        C0867C c0867c = new C0867C(fVar, oVar, this, 48);
        this.f8455a = c0867c;
        InterfaceC0726c.f8447a.getClass();
        InterfaceC0726c interfaceC0726c = (InterfaceC0726c) C0725b.f8446b.getValue();
        InterfaceC0776D interfaceC0776DA = ((e4.b) interfaceC0726c).a(this.f8458d, this.f8455a, l(), p(), d(), z4);
        d3.i.e("providerForModuleContent", interfaceC0776DA);
        c0867c.f9342j = interfaceC0776DA;
        C0867C c0867c2 = this.f8455a;
        c0867c2.getClass();
        c0867c2.f9341i = new v(R2.i.w0(new C0867C[]{c0867c2}));
    }

    public InterfaceC0858b d() {
        return C0857a.f9137b;
    }

    public final AbstractC0472z e() {
        AbstractC0472z abstractC0472zQ = j("Any").q();
        if (abstractC0472zQ != null) {
            return abstractC0472zQ;
        }
        a(50);
        throw null;
    }

    public final AbstractC0468v f(AbstractC0468v abstractC0468v) {
        Q3.b bVarF;
        Q3.b bVar;
        InterfaceC0802e interfaceC0802eE;
        AbstractC0472z abstractC0472zQ = null;
        if (abstractC0468v == null) {
            a(67);
            throw null;
        }
        if (y(abstractC0468v)) {
            if (abstractC0468v.u0().size() != 1) {
                throw new IllegalStateException();
            }
            AbstractC0468v abstractC0468vB = ((N) abstractC0468v.u0().get(0)).b();
            if (abstractC0468vB != null) {
                return abstractC0468vB;
            }
            a(68);
            throw null;
        }
        Z zH = X.h(abstractC0468v, false);
        AbstractC0468v abstractC0468v2 = (AbstractC0468v) ((C0731h) this.f8456b.a()).f8453b.get(zH);
        if (abstractC0468v2 != null) {
            return abstractC0468v2;
        }
        int i5 = T3.e.f2720a;
        InterfaceC0804g interfaceC0804gI = zH.J0().i();
        InterfaceC0821x interfaceC0821xE = interfaceC0804gI == null ? null : T3.e.e(interfaceC0804gI);
        if (interfaceC0821xE != null) {
            InterfaceC0804g interfaceC0804gI2 = zH.J0().i();
            if (interfaceC0804gI2 != null) {
                Set set = r.f8552a;
                Q3.f name = interfaceC0804gI2.getName();
                d3.i.e("name", name);
                if (r.f8555d.contains(name) && (bVarF = X3.f.f(interfaceC0804gI2)) != null && (bVar = (Q3.b) r.f8553b.get(bVarF)) != null && (interfaceC0802eE = o4.a.e(interfaceC0821xE, bVar)) != null) {
                    abstractC0472zQ = interfaceC0802eE.q();
                }
            }
            if (abstractC0472zQ != null) {
                return abstractC0472zQ;
            }
        }
        throw new IllegalStateException("not array: " + abstractC0468v);
    }

    public final AbstractC0472z g(int i5, AbstractC0468v abstractC0468v, InterfaceC0845h interfaceC0845h) {
        if (i5 == 0) {
            a(78);
            throw null;
        }
        if (abstractC0468v != null) {
            return C0451d.q(AbstractC0450c.w(interfaceC0845h), j("Array"), Collections.singletonList(new O(i5, abstractC0468v)));
        }
        a(79);
        throw null;
    }

    public final AbstractC0472z h(Z z4) {
        if (z4 != null) {
            return g(1, z4, C0844g.f9041a);
        }
        a(83);
        throw null;
    }

    public final InterfaceC0802e i(Q3.c cVar) {
        if (cVar == null) {
            a(12);
            throw null;
        }
        InterfaceC0802e interfaceC0802eR = AbstractC0729f.r(k(), cVar);
        if (interfaceC0802eR != null) {
            return interfaceC0802eR;
        }
        a(13);
        throw null;
    }

    public final InterfaceC0802e j(String str) {
        if (str != null) {
            return (InterfaceC0802e) this.f8457c.e(Q3.f.e(str));
        }
        a(14);
        throw null;
    }

    public final C0867C k() {
        this.f8455a.getClass();
        C0867C c0867c = this.f8455a;
        if (c0867c != null) {
            return c0867c;
        }
        a(7);
        throw null;
    }

    public Iterable l() {
        List listSingletonList = Collections.singletonList(new C0743a(this.f8458d, k()));
        if (listSingletonList != null) {
            return listSingletonList;
        }
        a(5);
        throw null;
    }

    public final AbstractC0472z m() {
        AbstractC0472z abstractC0472zO = o();
        if (abstractC0472zO != null) {
            return abstractC0472zO;
        }
        a(52);
        throw null;
    }

    public final AbstractC0472z n() {
        AbstractC0472z abstractC0472zQ = j("Nothing").q();
        if (abstractC0472zQ != null) {
            return abstractC0472zQ;
        }
        a(48);
        throw null;
    }

    public final AbstractC0472z o() {
        AbstractC0472z abstractC0472zQ0 = e().N0(true);
        if (abstractC0472zQ0 != null) {
            return abstractC0472zQ0;
        }
        a(51);
        throw null;
    }

    public InterfaceC0860d p() {
        return C0857a.f9139d;
    }

    public final AbstractC0472z q(EnumC0734k enumC0734k) {
        if (enumC0734k == null) {
            a(73);
            throw null;
        }
        AbstractC0472z abstractC0472z = (AbstractC0472z) ((C0731h) this.f8456b.a()).f8452a.get(enumC0734k);
        if (abstractC0472z != null) {
            return abstractC0472z;
        }
        a(74);
        throw null;
    }

    public final AbstractC0472z s(EnumC0734k enumC0734k) {
        if (enumC0734k == null) {
            a(53);
            throw null;
        }
        if (enumC0734k == null) {
            a(16);
            throw null;
        }
        AbstractC0472z abstractC0472zQ = j(enumC0734k.f8470c.b()).q();
        if (abstractC0472zQ != null) {
            return abstractC0472zQ;
        }
        a(54);
        throw null;
    }

    public final AbstractC0472z u() {
        AbstractC0472z abstractC0472zQ = j("String").q();
        if (abstractC0472zQ != null) {
            return abstractC0472zQ;
        }
        a(65);
        throw null;
    }

    public final InterfaceC0802e v(int i5) {
        InterfaceC0802e interfaceC0802eI = i(n.f8534e.c(Q3.f.e(EnumC0747e.f8593g.f8598d + i5)));
        if (interfaceC0802eI != null) {
            return interfaceC0802eI;
        }
        a(18);
        throw null;
    }

    public final AbstractC0472z w() {
        AbstractC0472z abstractC0472zQ = j("Unit").q();
        if (abstractC0472zQ != null) {
            return abstractC0472zQ;
        }
        a(64);
        throw null;
    }
}
