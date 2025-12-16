package g4;

import c3.InterfaceC0222b;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class e extends j {
    public final /* synthetic */ int f = 0;

    public /* synthetic */ e(l lVar, ConcurrentHashMap concurrentHashMap, InterfaceC0222b interfaceC0222b) {
        super(lVar, concurrentHashMap, interfaceC0222b);
    }

    public static /* synthetic */ void a(int i5) {
        String str = i5 != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i5 != 3 ? 3 : 2];
        if (i5 == 1) {
            objArr[0] = "map";
        } else if (i5 == 2) {
            objArr[0] = "computation";
        } else if (i5 != 3) {
            objArr[0] = "storageManager";
        } else {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
        }
        if (i5 != 3) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
        } else {
            objArr[1] = "computeIfAbsent";
        }
        if (i5 == 2) {
            objArr[2] = "computeIfAbsent";
        } else if (i5 != 3) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 == 3) {
            throw new IllegalStateException(str2);
        }
    }

    public static /* synthetic */ void c(int i5) {
        Object[] objArr = new Object[3];
        if (i5 == 1) {
            objArr[0] = "map";
        } else if (i5 != 2) {
            objArr[0] = "storageManager";
        } else {
            objArr[0] = "computation";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction";
        if (i5 != 2) {
            objArr[2] = "<init>";
        } else {
            objArr[2] = "computeIfAbsent";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    @Override // g4.j, c3.InterfaceC0222b
    public Object e(Object obj) throws Throwable {
        switch (this.f) {
            case 1:
                Object objE = super.e(obj);
                if (objE != null) {
                    return objE;
                }
                throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull", "invoke"));
            default:
                return super.e(obj);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(l lVar, ConcurrentHashMap concurrentHashMap) {
        super(lVar, concurrentHashMap, new f());
        if (lVar != null) {
        } else {
            c(0);
            throw null;
        }
    }
}
