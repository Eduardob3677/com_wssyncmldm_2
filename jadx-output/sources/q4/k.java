package q4;

import R2.m;
import R2.u;
import c1.w;
import c3.InterfaceC0222b;
import f1.AbstractC0420a;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class k {

    /* renamed from: a, reason: collision with root package name */
    public static final i f8708a = new i();

    public static /* synthetic */ void a(int i5) {
        Object[] objArr = new Object[3];
        switch (i5) {
            case 1:
            case 5:
            case 8:
            case 11:
            case 15:
            case 18:
            case 21:
            case 23:
                objArr[0] = "neighbors";
                break;
            case 2:
            case 12:
            case 16:
            case 19:
            case 24:
                objArr[0] = "visited";
                break;
            case 3:
            case 6:
            case 13:
            case 25:
                objArr[0] = "handler";
                break;
            case 4:
            case 7:
            case 17:
            case 20:
            default:
                objArr[0] = "nodes";
                break;
            case 9:
                objArr[0] = "predicate";
                break;
            case 10:
            case 14:
                objArr[0] = "node";
                break;
            case 22:
                objArr[0] = "current";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/DFS";
        switch (i5) {
            case 7:
            case 8:
            case 9:
                objArr[2] = "ifAny";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                objArr[2] = "dfsFromNode";
                break;
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                objArr[2] = "topologicalOrder";
                break;
            case 22:
            case 23:
            case 24:
            case 25:
                objArr[2] = "doDfs";
                break;
            default:
                objArr[2] = "dfs";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static final void b(AbstractCollection abstractCollection, Object obj) {
        if (obj != null) {
            abstractCollection.add(obj);
        }
    }

    public static final List e(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return u.f2325c;
        }
        if (size == 1) {
            return AbstractC0420a.V(m.M0(arrayList));
        }
        arrayList.trimToSize();
        return arrayList;
    }

    public static Object f(List list, a aVar, k kVar) {
        w wVar = new w(18, false);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            g(it.next(), aVar, wVar, kVar);
        }
        return kVar.j();
    }

    public static void g(Object obj, a aVar, w wVar, k kVar) {
        if (obj == null) {
            a(22);
            throw null;
        }
        if (((Set) wVar.f5265c).add(obj) && kVar.d(obj)) {
            Iterator it = aVar.r(obj).iterator();
            while (it.hasNext()) {
                g(it.next(), aVar, wVar, kVar);
            }
            kVar.c(obj);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [boolean[], java.io.Serializable] */
    public static Boolean h(List list, a aVar, InterfaceC0222b interfaceC0222b) {
        return (Boolean) f(list, aVar, new X3.d(interfaceC0222b, new boolean[1], 2));
    }

    public static final boolean i(Throwable th) {
        Class<?> superclass = th.getClass();
        while (!d3.i.a(superclass.getCanonicalName(), "com.intellij.openapi.progress.ProcessCanceledException")) {
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                return false;
            }
        }
        return true;
    }

    public static void k(Object obj) throws Throwable {
        if (obj instanceof j) {
            Throwable th = ((j) obj).f8707a;
            if (th != null) {
                throw th;
            }
            j.a(1);
            throw null;
        }
    }

    public void c(Object obj) {
    }

    public abstract boolean d(Object obj);

    public abstract Object j();
}
