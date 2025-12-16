package q4;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f8707a;

    public j(Throwable th) {
        this.f8707a = th;
    }

    public static /* synthetic */ void a(int i5) {
        String str = i5 != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i5 != 1 ? 3 : 2];
        if (i5 != 1) {
            objArr[0] = "throwable";
        } else {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper";
        }
        if (i5 != 1) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper";
        } else {
            objArr[1] = "getThrowable";
        }
        if (i5 != 1) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 == 1) {
            throw new IllegalStateException(str2);
        }
    }

    public final String toString() {
        return this.f8707a.toString();
    }
}
