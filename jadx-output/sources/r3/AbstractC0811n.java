package r3;

import com.samsung.android.knox.ex.KnoxContract;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ServiceLoader;

/* renamed from: r3.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0811n {

    /* renamed from: a, reason: collision with root package name */
    public static final A3.p f8809a;

    /* renamed from: b, reason: collision with root package name */
    public static final A3.p f8810b;

    /* renamed from: c, reason: collision with root package name */
    public static final A3.p f8811c;

    /* renamed from: d, reason: collision with root package name */
    public static final A3.p f8812d;

    /* renamed from: e, reason: collision with root package name */
    public static final A3.p f8813e;
    public static final A3.p f;

    /* renamed from: g, reason: collision with root package name */
    public static final A3.p f8814g;

    /* renamed from: h, reason: collision with root package name */
    public static final A3.p f8815h;

    /* renamed from: i, reason: collision with root package name */
    public static final A3.p f8816i;

    /* renamed from: j, reason: collision with root package name */
    public static final A3.p f8817j;

    /* renamed from: k, reason: collision with root package name */
    public static final C0787O f8818k;

    /* renamed from: l, reason: collision with root package name */
    public static final C0787O f8819l;

    /* renamed from: m, reason: collision with root package name */
    public static final C0787O f8820m;
    public static final n4.o n;

    /* renamed from: o, reason: collision with root package name */
    public static final HashMap f8821o;

    static {
        C0797Z c0797z = C0797Z.f8798c;
        A3.p pVar = new A3.p(c0797z, 3);
        f8809a = pVar;
        a0 a0Var = a0.f8799c;
        A3.p pVar2 = new A3.p(a0Var, 4);
        f8810b = pVar2;
        b0 b0Var = b0.f8800c;
        A3.p pVar3 = new A3.p(b0Var, 5);
        f8811c = pVar3;
        C0794W c0794w = C0794W.f8795c;
        A3.p pVar4 = new A3.p(c0794w, 6);
        f8812d = pVar4;
        c0 c0Var = c0.f8801c;
        A3.p pVar5 = new A3.p(c0Var, 7);
        f8813e = pVar5;
        C0796Y c0796y = C0796Y.f8797c;
        A3.p pVar6 = new A3.p(c0796y, 8);
        f = pVar6;
        C0793V c0793v = C0793V.f8794c;
        A3.p pVar7 = new A3.p(c0793v, 9);
        f8814g = pVar7;
        C0795X c0795x = C0795X.f8796c;
        A3.p pVar8 = new A3.p(c0795x, 10);
        f8815h = pVar8;
        d0 d0Var = d0.f8805c;
        A3.p pVar9 = new A3.p(d0Var, 11);
        f8816i = pVar9;
        Collections.unmodifiableSet(R2.B.T(pVar, pVar2, pVar4, pVar6));
        HashMap map = new HashMap(6);
        map.put(pVar2, 0);
        map.put(pVar, 0);
        map.put(pVar4, 1);
        map.put(pVar3, 1);
        map.put(pVar5, 2);
        Collections.unmodifiableMap(map);
        f8817j = pVar5;
        f8818k = new C0787O(2);
        f8819l = new C0787O(3);
        f8820m = new C0787O(4);
        Iterator it = ServiceLoader.load(n4.o.class, n4.o.class.getClassLoader()).iterator();
        n = it.hasNext() ? (n4.o) it.next() : n4.o.f8368a;
        HashMap map2 = new HashMap();
        f8821o = map2;
        map2.put(c0797z, pVar);
        map2.put(a0Var, pVar2);
        map2.put(b0Var, pVar3);
        map2.put(c0794w, pVar4);
        map2.put(c0Var, pVar5);
        map2.put(c0796y, pVar6);
        map2.put(c0793v, pVar7);
        map2.put(c0795x, pVar8);
        map2.put(d0Var, pVar9);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void a(int i5) {
        String str = i5 != 16 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i5 != 16 ? 3 : 2];
        if (i5 != 1 && i5 != 3 && i5 != 5 && i5 != 7) {
            switch (i5) {
                case 9:
                    break;
                case 10:
                case 12:
                    objArr[0] = "first";
                    break;
                case 11:
                case 13:
                    objArr[0] = KnoxContract.Config.DateTime.PARAM_SECOND;
                    break;
                case 14:
                case 15:
                    objArr[0] = "visibility";
                    break;
                case 16:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities";
                    break;
                default:
                    objArr[0] = "what";
                    break;
            }
        } else {
            objArr[0] = "from";
        }
        if (i5 != 16) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities";
        } else {
            objArr[1] = "toDescriptorVisibility";
        }
        switch (i5) {
            case 2:
            case 3:
                objArr[2] = "isVisibleIgnoringReceiver";
                break;
            case 4:
            case 5:
                objArr[2] = "isVisibleWithAnyReceiver";
                break;
            case 6:
            case 7:
                objArr[2] = "inSameFile";
                break;
            case 8:
            case 9:
                objArr[2] = "findInvisibleMember";
                break;
            case 10:
            case 11:
                objArr[2] = "compareLocal";
                break;
            case 12:
            case 13:
                objArr[2] = "compare";
                break;
            case 14:
                objArr[2] = "isPrivate";
                break;
            case 15:
                objArr[2] = "toDescriptorVisibility";
                break;
            case 16:
                break;
            default:
                objArr[2] = "isVisible";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 == 16) {
            throw new IllegalStateException(str2);
        }
    }

    public static Integer b(A3.p pVar, A3.p pVar2) {
        if (pVar == null) {
            a(12);
            throw null;
        }
        if (pVar2 == null) {
            a(13);
            throw null;
        }
        f0 f0Var = pVar.f140a;
        f0 f0Var2 = pVar2.f140a;
        Integer numA = f0Var.a(f0Var2);
        if (numA != null) {
            return numA;
        }
        Integer numA2 = f0Var2.a(f0Var);
        if (numA2 != null) {
            return Integer.valueOf(-numA2.intValue());
        }
        return null;
    }

    public static InterfaceC0810m c(C0787O c0787o, InterfaceC0810m interfaceC0810m, InterfaceC0807j interfaceC0807j) {
        InterfaceC0810m interfaceC0810mC;
        if (interfaceC0810m == null) {
            a(8);
            throw null;
        }
        if (interfaceC0807j == null) {
            a(9);
            throw null;
        }
        for (InterfaceC0810m interfaceC0810m2 = (InterfaceC0810m) interfaceC0810m.a(); interfaceC0810m2 != null && interfaceC0810m2.c() != f; interfaceC0810m2 = (InterfaceC0810m) T3.e.j(interfaceC0810m2, InterfaceC0810m.class, true)) {
            if (!interfaceC0810m2.c().m(c0787o, interfaceC0810m2, interfaceC0807j)) {
                return interfaceC0810m2;
            }
        }
        if (!(interfaceC0810m instanceof u3.P) || (interfaceC0810mC = c(c0787o, ((u3.S) ((u3.P) interfaceC0810m)).f9406I, interfaceC0807j)) == null) {
            return null;
        }
        return interfaceC0810mC;
    }

    public static boolean d(InterfaceC0807j interfaceC0807j, InterfaceC0807j interfaceC0807j2) {
        if (interfaceC0807j2 == null) {
            a(7);
            throw null;
        }
        C0787O c0787oF = T3.e.f(interfaceC0807j2);
        if (c0787oF != C0787O.f8791d) {
            return c0787oF.equals(T3.e.f(interfaceC0807j));
        }
        return false;
    }

    public static boolean e(A3.p pVar) {
        if (pVar != null) {
            return pVar == f8809a || pVar == f8810b;
        }
        a(14);
        throw null;
    }

    public static A3.p f(f0 f0Var) {
        if (f0Var == null) {
            a(15);
            throw null;
        }
        A3.p pVar = (A3.p) f8821o.get(f0Var);
        if (pVar != null) {
            return pVar;
        }
        throw new IllegalArgumentException("Inapplicable visibility: " + f0Var);
    }
}
