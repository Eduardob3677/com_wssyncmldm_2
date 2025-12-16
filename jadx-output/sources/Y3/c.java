package Y3;

import com.idm.agent.dm.uic.IDMDmUICInterface;
import com.idm.fotaagent.enabler.fumo.IDMFumoExtInterface;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import o3.EnumC0734k;

/* loaded from: classes.dex */
public enum c {
    BOOLEAN(EnumC0734k.BOOLEAN, "boolean", "Z", "java.lang.Boolean"),
    CHAR(EnumC0734k.CHAR, "char", "C", "java.lang.Character"),
    BYTE(EnumC0734k.BYTE, "byte", "B", "java.lang.Byte"),
    SHORT(EnumC0734k.SHORT, "short", "S", "java.lang.Short"),
    INT(EnumC0734k.INT, "int", IDMDmUICInterface.IDM_UIC_OPTION_IT_I, "java.lang.Integer"),
    FLOAT(EnumC0734k.FLOAT, "float", IDMFumoExtInterface.IDM_FUMO_BINARY_CHECK_DISABLED, "java.lang.Float"),
    LONG(EnumC0734k.LONG, "long", "J", "java.lang.Long"),
    DOUBLE(EnumC0734k.DOUBLE, "double", IDMDmUICInterface.IDM_UIC_OPTION_IT_D, "java.lang.Double");


    /* renamed from: o, reason: collision with root package name */
    public static final HashSet f2972o = new HashSet();

    /* renamed from: p, reason: collision with root package name */
    public static final HashMap f2973p = new HashMap();

    /* renamed from: q, reason: collision with root package name */
    public static final EnumMap f2974q = new EnumMap(EnumC0734k.class);

    /* renamed from: r, reason: collision with root package name */
    public static final HashMap f2975r = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final EnumC0734k f2977c;

    /* renamed from: d, reason: collision with root package name */
    public final String f2978d;

    /* renamed from: e, reason: collision with root package name */
    public final String f2979e;
    public final Q3.c f;

    static {
        for (c cVar : values()) {
            f2972o.add(cVar.e());
            HashMap map = f2973p;
            String str = cVar.f2978d;
            if (str == null) {
                a(11);
                throw null;
            }
            map.put(str, cVar);
            f2974q.put((EnumMap) cVar.d(), (EnumC0734k) cVar);
            f2975r.put(cVar.c(), cVar);
        }
    }

    c(EnumC0734k enumC0734k, String str, String str2, String str3) {
        if (enumC0734k == null) {
            a(6);
            throw null;
        }
        this.f2977c = enumC0734k;
        this.f2978d = str;
        this.f2979e = str2;
        this.f = new Q3.c(str3);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void a(int i5) {
        String str;
        int i6;
        if (i5 != 2 && i5 != 4) {
            switch (i5) {
                case 10:
                case 11:
                case 12:
                case 13:
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i5 != 2 && i5 != 4) {
            switch (i5) {
                case 10:
                case 11:
                case 12:
                case 13:
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
            case 1:
            case 7:
                objArr[0] = "name";
                break;
            case 2:
            case 4:
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType";
                break;
            case 3:
                objArr[0] = "type";
                break;
            case 5:
            case 8:
                objArr[0] = "desc";
                break;
            case 6:
                objArr[0] = "primitiveType";
                break;
            case 9:
                objArr[0] = "wrapperClassName";
                break;
            default:
                objArr[0] = "className";
                break;
        }
        if (i5 != 2 && i5 != 4) {
            switch (i5) {
                case 10:
                    objArr[1] = "getPrimitiveType";
                    break;
                case 11:
                    objArr[1] = "getJavaKeywordName";
                    break;
                case 12:
                    objArr[1] = "getDesc";
                    break;
                case 13:
                    objArr[1] = "getWrapperFqName";
                    break;
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType";
                    break;
            }
        } else {
            objArr[1] = "get";
        }
        switch (i5) {
            case 1:
            case 3:
                objArr[2] = "get";
                break;
            case 2:
            case 4:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 5:
                objArr[2] = "getByDesc";
                break;
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[2] = "<init>";
                break;
            default:
                objArr[2] = "isWrapperClassName";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 2 && i5 != 4) {
            switch (i5) {
                case 10:
                case 11:
                case 12:
                case 13:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    public static c b(String str) {
        c cVar = (c) f2973p.get(str);
        if (cVar != null) {
            return cVar;
        }
        throw new AssertionError("Non-primitive type name passed: ".concat(str));
    }

    public final String c() {
        String str = this.f2979e;
        if (str != null) {
            return str;
        }
        a(12);
        throw null;
    }

    public final EnumC0734k d() {
        EnumC0734k enumC0734k = this.f2977c;
        if (enumC0734k != null) {
            return enumC0734k;
        }
        a(10);
        throw null;
    }

    public final Q3.c e() {
        Q3.c cVar = this.f;
        if (cVar != null) {
            return cVar;
        }
        a(13);
        throw null;
    }
}
