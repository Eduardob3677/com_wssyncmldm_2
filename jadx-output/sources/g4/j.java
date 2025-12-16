package g4;

import c3.InterfaceC0222b;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public class j implements InterfaceC0222b {

    /* renamed from: c, reason: collision with root package name */
    public final l f6941c;

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentMap f6942d;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC0222b f6943e;

    public j(l lVar, ConcurrentHashMap concurrentHashMap, InterfaceC0222b interfaceC0222b) {
        if (lVar == null) {
            a(0);
            throw null;
        }
        this.f6941c = lVar;
        this.f6942d = concurrentHashMap;
        this.f6943e = interfaceC0222b;
    }

    public static /* synthetic */ void a(int i5) {
        String str = (i5 == 3 || i5 == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 3 || i5 == 4) ? 2 : 3];
        if (i5 == 1) {
            objArr[0] = "map";
        } else if (i5 == 2) {
            objArr[0] = "compute";
        } else if (i5 == 3 || i5 == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
        } else {
            objArr[0] = "storageManager";
        }
        if (i5 == 3) {
            objArr[1] = "recursionDetected";
        } else if (i5 != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
        } else {
            objArr[1] = "raceCondition";
        }
        if (i5 != 3 && i5 != 4) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 != 3 && i5 != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public final AssertionError b(Object obj, Object obj2) {
        AssertionError assertionError = new AssertionError("Race condition detected on input " + obj + ". Old value is " + obj2 + " under " + this.f6941c);
        l.f(assertionError);
        return assertionError;
    }

    @Override // c3.InterfaceC0222b
    public Object e(Object obj) throws Throwable {
        ConcurrentMap concurrentMap = this.f6942d;
        Object obj2 = concurrentMap.get(obj);
        k kVar = k.f6945d;
        Object obj3 = q4.k.f8708a;
        if (obj2 != null && obj2 != kVar) {
            q4.k.k(obj2);
            if (obj2 == obj3) {
                return null;
            }
            return obj2;
        }
        l lVar = this.f6941c;
        n nVar = lVar.f6949a;
        n nVar2 = lVar.f6949a;
        nVar.G();
        try {
            Object obj4 = concurrentMap.get(obj);
            k kVar2 = k.f6946e;
            if (obj4 == kVar) {
                B1.c cVarE = lVar.e("", obj);
                if (cVarE == null) {
                    a(3);
                    throw null;
                }
                if (!cVarE.f197d) {
                    Object obj5 = cVarE.f198e;
                    nVar2.C();
                    return obj5;
                }
                obj4 = kVar2;
            }
            if (obj4 == kVar2) {
                B1.c cVarE2 = lVar.e("", obj);
                if (cVarE2 == null) {
                    a(3);
                    throw null;
                }
                if (!cVarE2.f197d) {
                    Object obj6 = cVarE2.f198e;
                    nVar2.C();
                    return obj6;
                }
            }
            if (obj4 != null) {
                q4.k.k(obj4);
                assertionErrorB = obj4 != obj3 ? obj4 : null;
                nVar2.C();
                return assertionErrorB;
            }
            try {
                concurrentMap.put(obj, kVar);
                Object objE = this.f6943e.e(obj);
                if (objE != null) {
                    obj3 = objE;
                }
                Object objPut = concurrentMap.put(obj, obj3);
                if (objPut == kVar) {
                    nVar2.C();
                    return objE;
                }
                assertionErrorB = b(obj, objPut);
                throw assertionErrorB;
            } catch (Throwable th) {
                if (q4.k.i(th)) {
                    concurrentMap.remove(obj);
                    throw th;
                }
                a aVar = lVar.f6950b;
                if (th == assertionErrorB) {
                    aVar.getClass();
                    throw th;
                }
                Object objPut2 = concurrentMap.put(obj, new q4.j(th));
                if (objPut2 != kVar) {
                    throw b(obj, objPut2);
                }
                aVar.getClass();
                throw th;
            }
        } catch (Throwable th2) {
            nVar2.C();
            throw th2;
        }
    }
}
