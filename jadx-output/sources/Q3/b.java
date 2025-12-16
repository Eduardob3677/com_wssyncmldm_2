package Q3;

import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import com.idm.providers.mo.IDMMoInterface;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final c f2230a;

    /* renamed from: b, reason: collision with root package name */
    public final c f2231b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2232c;

    public b(c cVar, c cVar2, boolean z4) {
        if (cVar == null) {
            a(1);
            throw null;
        }
        this.f2230a = cVar;
        this.f2231b = cVar2;
        this.f2232c = z4;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void a(int i5) {
        String str;
        int i6;
        if (i5 != 5 && i5 != 6 && i5 != 7 && i5 != 9) {
            switch (i5) {
                case 13:
                case 14:
                case 15:
                case 16:
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i5 != 5 && i5 != 6 && i5 != 7 && i5 != 9) {
            switch (i5) {
                case 13:
                case 14:
                case 15:
                case 16:
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
            case 3:
                objArr[0] = "packageFqName";
                break;
            case 2:
                objArr[0] = "relativeClassName";
                break;
            case 4:
                objArr[0] = "topLevelName";
                break;
            case 5:
            case 6:
            case 7:
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/name/ClassId";
                break;
            case 8:
                objArr[0] = "name";
                break;
            case 10:
                objArr[0] = "segment";
                break;
            case 11:
            case 12:
                objArr[0] = "string";
                break;
            default:
                objArr[0] = "topLevelFqName";
                break;
        }
        if (i5 == 5) {
            objArr[1] = "getPackageFqName";
        } else if (i5 == 6) {
            objArr[1] = "getRelativeClassName";
        } else if (i5 == 7) {
            objArr[1] = "getShortClassName";
        } else if (i5 != 9) {
            switch (i5) {
                case 13:
                case 14:
                    objArr[1] = "asString";
                    break;
                case 15:
                case 16:
                    objArr[1] = "asFqNameString";
                    break;
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/name/ClassId";
                    break;
            }
        } else {
            objArr[1] = "asSingleFqName";
        }
        switch (i5) {
            case 1:
            case 2:
            case 3:
            case 4:
                objArr[2] = "<init>";
                break;
            case 5:
            case 6:
            case 7:
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
                break;
            case 8:
                objArr[2] = "createNestedClassId";
                break;
            case 10:
                objArr[2] = "startsWith";
                break;
            case 11:
            case 12:
                objArr[2] = "fromString";
                break;
            default:
                objArr[2] = "topLevel";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 5 && i5 != 6 && i5 != 7 && i5 != 9) {
            switch (i5) {
                case 13:
                case 14:
                case 15:
                case 16:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    public static b e(String str) {
        return f(str, false);
    }

    public static b f(String str, boolean z4) {
        String str2;
        if (str == null) {
            a(12);
            throw null;
        }
        int iLastIndexOf = str.lastIndexOf("/");
        if (iLastIndexOf == -1) {
            str2 = "";
        } else {
            String strReplace = str.substring(0, iLastIndexOf).replace(IDMTndsXmlWbxmlDefine.XML_SLASH, '.');
            str = str.substring(iLastIndexOf + 1);
            str2 = strReplace;
        }
        return new b(new c(str2), new c(str), z4);
    }

    public static b k(c cVar) {
        if (cVar != null) {
            return new b(cVar.e(), cVar.f());
        }
        a(0);
        throw null;
    }

    public final c b() {
        c cVar = this.f2230a;
        boolean zD = cVar.d();
        c cVar2 = this.f2231b;
        if (zD) {
            if (cVar2 != null) {
                return cVar2;
            }
            a(9);
            throw null;
        }
        return new c(cVar.b() + IDMMoInterface.IDM_MO_ROOT_PATH + cVar2.b());
    }

    public final String c() {
        c cVar = this.f2230a;
        boolean zD = cVar.d();
        c cVar2 = this.f2231b;
        if (zD) {
            String strB = cVar2.b();
            if (strB != null) {
                return strB;
            }
            a(13);
            throw null;
        }
        String str = cVar.b().replace('.', IDMTndsXmlWbxmlDefine.XML_SLASH) + "/" + cVar2.b();
        if (str != null) {
            return str;
        }
        a(14);
        throw null;
    }

    public final b d(f fVar) {
        if (fVar != null) {
            return new b(h(), this.f2231b.c(fVar), this.f2232c);
        }
        a(8);
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f2230a.equals(bVar.f2230a) && this.f2231b.equals(bVar.f2231b) && this.f2232c == bVar.f2232c;
    }

    public final b g() {
        c cVarE = this.f2231b.e();
        if (cVarE.d()) {
            return null;
        }
        return new b(h(), cVarE, this.f2232c);
    }

    public final c h() {
        c cVar = this.f2230a;
        if (cVar != null) {
            return cVar;
        }
        a(5);
        throw null;
    }

    public final int hashCode() {
        return Boolean.valueOf(this.f2232c).hashCode() + ((this.f2231b.hashCode() + (this.f2230a.hashCode() * 31)) * 31);
    }

    public final c i() {
        c cVar = this.f2231b;
        if (cVar != null) {
            return cVar;
        }
        a(6);
        throw null;
    }

    public final f j() {
        f fVarF = this.f2231b.f();
        if (fVarF != null) {
            return fVarF;
        }
        a(7);
        throw null;
    }

    public final String toString() {
        if (!this.f2230a.d()) {
            return c();
        }
        return "/" + c();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(c cVar, f fVar) {
        this(cVar, c.j(fVar), false);
        if (cVar == null) {
            a(3);
            throw null;
        }
        if (fVar != null) {
        } else {
            a(4);
            throw null;
        }
    }
}
