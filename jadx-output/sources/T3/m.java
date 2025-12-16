package T3;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: b, reason: collision with root package name */
    public static final m f2732b = new m(1, "SUCCESS");

    /* renamed from: a, reason: collision with root package name */
    public final int f2733a;

    public m(int i5, String str) {
        if (i5 != 0) {
            this.f2733a = i5;
        } else {
            a(3);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void a(int i5) {
        String str = (i5 == 1 || i5 == 2 || i5 == 3 || i5 == 4) ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[(i5 == 1 || i5 == 2 || i5 == 3 || i5 == 4) ? 3 : 2];
        if (i5 == 1 || i5 == 2) {
            objArr[0] = "debugMessage";
        } else if (i5 == 3) {
            objArr[0] = "success";
        } else if (i5 != 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo";
        }
        switch (i5) {
            case 1:
            case 2:
            case 3:
            case 4:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo";
                break;
            case 5:
                objArr[1] = "getResult";
                break;
            case 6:
                objArr[1] = "getDebugMessage";
                break;
            default:
                objArr[1] = "success";
                break;
        }
        if (i5 == 1) {
            objArr[2] = "incompatible";
        } else if (i5 == 2) {
            objArr[2] = "conflict";
        } else if (i5 == 3 || i5 == 4) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 != 1 && i5 != 2 && i5 != 3 && i5 != 4) {
            throw new IllegalStateException(str2);
        }
        throw new IllegalArgumentException(str2);
    }

    public static m b(String str) {
        return new m(3, str);
    }

    public static m d(String str) {
        return new m(2, str);
    }

    public final int c() {
        int i5 = this.f2733a;
        if (i5 != 0) {
            return i5;
        }
        a(5);
        throw null;
    }
}
