package g4;

import c3.InterfaceC0221a;

/* loaded from: classes.dex */
public class h implements InterfaceC0221a {

    /* renamed from: c, reason: collision with root package name */
    public final l f6938c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC0221a f6939d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f6940e;

    public h(l lVar, InterfaceC0221a interfaceC0221a) {
        if (lVar == null) {
            b(0);
            throw null;
        }
        this.f6940e = k.f6944c;
        this.f6938c = lVar;
        this.f6939d = interfaceC0221a;
    }

    public static /* synthetic */ void b(int i5) {
        String str = (i5 == 2 || i5 == 3) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 2 || i5 == 3) ? 2 : 3];
        if (i5 == 1) {
            objArr[0] = "computable";
        } else if (i5 == 2 || i5 == 3) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
        } else {
            objArr[0] = "storageManager";
        }
        if (i5 == 2) {
            objArr[1] = "recursionDetected";
        } else if (i5 != 3) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
        } else {
            objArr[1] = "renderDebugInformation";
        }
        if (i5 != 2 && i5 != 3) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 != 2 && i5 != 3) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0046 A[Catch: all -> 0x0022, TRY_LEAVE, TryCatch #0 {all -> 0x0022, blocks: (B:7:0x0011, B:9:0x0017, B:16:0x002a, B:18:0x0035, B:20:0x003a, B:22:0x0043, B:23:0x0046, B:27:0x0055, B:29:0x005b, B:31:0x005f, B:32:0x0066, B:33:0x006d, B:34:0x006e, B:35:0x0074, B:24:0x0048), top: B:38:0x0011, inners: #1 }] */
    @Override // c3.InterfaceC0221a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object a() {
        Object obj = this.f6940e;
        if (!(obj instanceof k)) {
            q4.k.k(obj);
            return obj;
        }
        this.f6938c.f6949a.G();
        try {
            Object objA = this.f6940e;
            if (objA instanceof k) {
                k kVar = k.f6945d;
                k kVar2 = k.f6946e;
                if (objA == kVar) {
                    this.f6940e = kVar2;
                    B1.c cVarD = d(true);
                    if (!cVarD.f197d) {
                        objA = cVarD.f198e;
                    } else if (objA == kVar2) {
                        B1.c cVarD2 = d(false);
                        if (cVarD2.f197d) {
                            this.f6940e = kVar;
                            try {
                                objA = this.f6939d.a();
                                c(objA);
                                this.f6940e = objA;
                            } catch (Throwable th) {
                                if (q4.k.i(th)) {
                                    this.f6940e = k.f6944c;
                                    throw th;
                                }
                                if (this.f6940e == kVar) {
                                    this.f6940e = new q4.j(th);
                                }
                                this.f6938c.f6950b.getClass();
                                throw th;
                            }
                        } else {
                            objA = cVarD2.f198e;
                        }
                    }
                }
            } else {
                q4.k.k(objA);
            }
            return objA;
        } finally {
            this.f6938c.f6949a.C();
        }
    }

    public void c(Object obj) {
    }

    public B1.c d(boolean z4) {
        B1.c cVarE = this.f6938c.e("in a lazy value", null);
        if (cVarE != null) {
            return cVarE;
        }
        b(2);
        throw null;
    }
}
