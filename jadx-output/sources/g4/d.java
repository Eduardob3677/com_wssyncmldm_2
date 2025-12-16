package g4;

import A3.C0005d;
import c3.InterfaceC0222b;
import e.v;
import h4.C0453f;

/* loaded from: classes.dex */
public final class d extends h implements m {
    public volatile v f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0222b f6934g = C0453f.f7053e;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0222b f6935h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(l lVar, B3.k kVar, C0005d c0005d) {
        super(lVar, kVar);
        this.f6935h = c0005d;
        if (lVar == null) {
            e(0);
            throw null;
        }
        this.f = null;
    }

    public static /* synthetic */ void b(int i5) {
        String str = i5 != 2 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[i5 != 2 ? 2 : 3];
        if (i5 != 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
        } else {
            objArr[0] = "value";
        }
        if (i5 != 2) {
            objArr[1] = "recursionDetected";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
        }
        if (i5 == 2) {
            objArr[2] = "doPostCompute";
        }
        String str2 = String.format(str, objArr);
        if (i5 == 2) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static /* synthetic */ void e(int i5) {
        String str = i5 != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i5 != 2 ? 3 : 2];
        if (i5 == 1) {
            objArr[0] = "computable";
        } else if (i5 != 2) {
            objArr[0] = "storageManager";
        } else {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
        }
        if (i5 != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
        } else {
            objArr[1] = "invoke";
        }
        if (i5 != 2) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 == 2) {
            throw new IllegalStateException(str2);
        }
    }

    @Override // g4.h, c3.InterfaceC0221a
    public final Object a() {
        Object objF = f();
        if (objF != null) {
            return objF;
        }
        e(2);
        throw null;
    }

    @Override // g4.h
    public final void c(Object obj) {
        v vVar = new v();
        vVar.f6792c = obj;
        vVar.f6793d = Thread.currentThread();
        this.f = vVar;
        try {
            if (obj != null) {
                this.f6935h.e(obj);
            } else {
                b(2);
                throw null;
            }
        } finally {
            this.f = null;
        }
    }

    @Override // g4.h
    public final B1.c d(boolean z4) {
        InterfaceC0222b interfaceC0222b = this.f6934g;
        return interfaceC0222b == null ? super.d(z4) : new B1.c(interfaceC0222b.e(Boolean.valueOf(z4)), false, 5);
    }

    public final Object f() {
        v vVar = this.f;
        if (vVar == null || ((Thread) vVar.f6793d) != Thread.currentThread()) {
            return super.a();
        }
        if (((Thread) vVar.f6793d) == Thread.currentThread()) {
            return vVar.f6792c;
        }
        throw new IllegalStateException("No value in this thread (hasValue should be checked before)");
    }
}
