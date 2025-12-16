package Q3;

/* loaded from: classes.dex */
public final class f implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public final String f2242c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f2243d;

    public f(String str, boolean z4) {
        if (str == null) {
            a(0);
            throw null;
        }
        this.f2242c = str;
        this.f2243d = z4;
    }

    public static /* synthetic */ void a(int i5) {
        String str = (i5 == 1 || i5 == 2 || i5 == 3 || i5 == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 1 || i5 == 2 || i5 == 3 || i5 == 4) ? 2 : 3];
        if (i5 == 1 || i5 == 2 || i5 == 3 || i5 == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/name/Name";
        } else {
            objArr[0] = "name";
        }
        if (i5 == 1) {
            objArr[1] = "asString";
        } else if (i5 == 2) {
            objArr[1] = "getIdentifier";
        } else if (i5 == 3 || i5 == 4) {
            objArr[1] = "asStringStripSpecialMarkers";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/name/Name";
        }
        switch (i5) {
            case 1:
            case 2:
            case 3:
            case 4:
                break;
            case 5:
                objArr[2] = "identifier";
                break;
            case 6:
                objArr[2] = "isValidIdentifier";
                break;
            case 7:
                objArr[2] = "special";
                break;
            case 8:
                objArr[2] = "guessByFirstCharacter";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 1 && i5 != 2 && i5 != 3 && i5 != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static f d(String str) {
        if (str != null) {
            return str.startsWith("<") ? g(str) : e(str);
        }
        a(8);
        throw null;
    }

    public static f e(String str) {
        if (str != null) {
            return new f(str, false);
        }
        a(5);
        throw null;
    }

    public static boolean f(String str) {
        if (str == null) {
            a(6);
            throw null;
        }
        if (str.isEmpty() || str.startsWith("<")) {
            return false;
        }
        for (int i5 = 0; i5 < str.length(); i5++) {
            char cCharAt = str.charAt(i5);
            if (cCharAt == '.' || cCharAt == '/' || cCharAt == '\\') {
                return false;
            }
        }
        return true;
    }

    public static f g(String str) {
        if (str == null) {
            a(7);
            throw null;
        }
        if (str.startsWith("<")) {
            return new f(str, true);
        }
        throw new IllegalArgumentException("special name must start with '<': ".concat(str));
    }

    public final String b() {
        String str = this.f2242c;
        if (str != null) {
            return str;
        }
        a(1);
        throw null;
    }

    public final String c() {
        if (this.f2243d) {
            throw new IllegalStateException("not identifier: " + this);
        }
        String strB = b();
        if (strB != null) {
            return strB;
        }
        a(2);
        throw null;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f2242c.compareTo(((f) obj).f2242c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f2243d == fVar.f2243d && this.f2242c.equals(fVar.f2242c);
    }

    public final int hashCode() {
        return (this.f2242c.hashCode() * 31) + (this.f2243d ? 1 : 0);
    }

    public final String toString() {
        return this.f2242c;
    }
}
