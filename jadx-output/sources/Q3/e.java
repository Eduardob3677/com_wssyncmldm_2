package Q3;

import com.idm.providers.mo.IDMMoInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: e, reason: collision with root package name */
    public static final f f2236e = f.g("<root>");
    public static final Pattern f = Pattern.compile("\\.");

    /* renamed from: g, reason: collision with root package name */
    public static final d f2237g = new d();

    /* renamed from: a, reason: collision with root package name */
    public final String f2238a;

    /* renamed from: b, reason: collision with root package name */
    public transient c f2239b;

    /* renamed from: c, reason: collision with root package name */
    public transient e f2240c;

    /* renamed from: d, reason: collision with root package name */
    public transient f f2241d;

    public e(String str, c cVar) {
        if (str == null) {
            a(0);
            throw null;
        }
        if (cVar == null) {
            a(1);
            throw null;
        }
        this.f2238a = str;
        this.f2239b = cVar;
    }

    public static /* synthetic */ void a(int i5) {
        String str;
        int i6;
        switch (i5) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 15:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i5) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                i6 = 2;
                break;
            case 9:
            case 15:
            case 16:
            default:
                i6 = 3;
                break;
        }
        Object[] objArr = new Object[i6];
        if (i5 != 1) {
            switch (i5) {
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 17:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                    break;
                case 9:
                    objArr[0] = "name";
                    break;
                case 15:
                    objArr[0] = "segment";
                    break;
                case 16:
                    objArr[0] = "shortName";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
        } else {
            objArr[0] = "safe";
        }
        switch (i5) {
            case 4:
                objArr[1] = "asString";
                break;
            case 5:
            case 6:
                objArr[1] = "toSafe";
                break;
            case 7:
            case 8:
                objArr[1] = "parent";
                break;
            case 9:
            case 15:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                break;
            case 10:
            case 11:
                objArr[1] = "shortName";
                break;
            case 12:
            case 13:
                objArr[1] = "shortNameOrSpecial";
                break;
            case 14:
                objArr[1] = "pathSegments";
                break;
            case 17:
                objArr[1] = "toString";
                break;
        }
        switch (i5) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                break;
            case 9:
                objArr[2] = "child";
                break;
            case 15:
                objArr[2] = "startsWith";
                break;
            case 16:
                objArr[2] = "topLevel";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i5) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                throw new IllegalStateException(str2);
            case 9:
            case 15:
            case 16:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public final e b(f fVar) {
        String strB;
        if (fVar == null) {
            a(9);
            throw null;
        }
        String str = this.f2238a;
        if (str.isEmpty()) {
            strB = fVar.b();
        } else {
            strB = str + IDMMoInterface.IDM_MO_ROOT_PATH + fVar.b();
        }
        return new e(strB, this, fVar);
    }

    public final void c() {
        String str = this.f2238a;
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            this.f2241d = f.d(str.substring(iLastIndexOf + 1));
            this.f2240c = new e(str.substring(0, iLastIndexOf));
        } else {
            this.f2241d = f.d(str);
            this.f2240c = c.f2233c.i();
        }
    }

    public final boolean d() {
        if (this.f2239b == null) {
            String str = this.f2238a;
            if (str == null) {
                a(4);
                throw null;
            }
            if (str.indexOf(60) >= 0) {
                return false;
            }
        }
        return true;
    }

    public final List e() {
        List listEmptyList;
        String str = this.f2238a;
        if (str.isEmpty()) {
            listEmptyList = Collections.emptyList();
        } else {
            String[] strArrSplit = f.split(str);
            d3.i.e("<this>", strArrSplit);
            d3.i.e("transform", f2237g);
            ArrayList arrayList = new ArrayList(strArrSplit.length);
            for (String str2 : strArrSplit) {
                arrayList.add(f.d(str2));
            }
            listEmptyList = arrayList;
        }
        if (listEmptyList != null) {
            return listEmptyList;
        }
        a(14);
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && this.f2238a.equals(((e) obj).f2238a);
    }

    public final f f() {
        f fVar = this.f2241d;
        if (fVar != null) {
            if (fVar != null) {
                return fVar;
            }
            a(10);
            throw null;
        }
        if (this.f2238a.isEmpty()) {
            throw new IllegalStateException("root");
        }
        c();
        f fVar2 = this.f2241d;
        if (fVar2 != null) {
            return fVar2;
        }
        a(11);
        throw null;
    }

    public final c g() {
        c cVar = this.f2239b;
        if (cVar == null) {
            c cVar2 = new c(this);
            this.f2239b = cVar2;
            return cVar2;
        }
        if (cVar != null) {
            return cVar;
        }
        a(5);
        throw null;
    }

    public final int hashCode() {
        return this.f2238a.hashCode();
    }

    public final String toString() {
        String strB = this.f2238a;
        if (strB.isEmpty()) {
            strB = f2236e.b();
        }
        if (strB != null) {
            return strB;
        }
        a(17);
        throw null;
    }

    public e(String str) {
        if (str != null) {
            this.f2238a = str;
        } else {
            a(2);
            throw null;
        }
    }

    public e(String str, e eVar, f fVar) {
        if (str != null) {
            this.f2238a = str;
            this.f2240c = eVar;
            this.f2241d = fVar;
            return;
        }
        a(3);
        throw null;
    }
}
