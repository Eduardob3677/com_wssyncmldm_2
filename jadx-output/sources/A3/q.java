package A3;

import com.samsung.android.knox.ex.KnoxContract;
import java.util.HashMap;
import r3.AbstractC0811n;
import r3.C0787O;
import r3.InterfaceC0775C;
import r3.InterfaceC0800c;
import r3.InterfaceC0807j;
import r3.InterfaceC0810m;
import v3.C0894a;
import v3.C0895b;
import v3.C0896c;

/* loaded from: classes.dex */
public abstract class q {

    /* renamed from: a, reason: collision with root package name */
    public static final p f142a;

    /* renamed from: b, reason: collision with root package name */
    public static final p f143b;

    /* renamed from: c, reason: collision with root package name */
    public static final p f144c;

    /* renamed from: d, reason: collision with root package name */
    public static final HashMap f145d;

    static {
        C0894a c0894a = C0894a.f9554c;
        p pVar = new p(c0894a, 0);
        f142a = pVar;
        C0896c c0896c = C0896c.f9556c;
        p pVar2 = new p(c0896c, 1);
        f143b = pVar2;
        C0895b c0895b = C0895b.f9555c;
        p pVar3 = new p(c0895b, 2);
        f144c = pVar3;
        HashMap map = new HashMap();
        f145d = map;
        map.put(c0894a, pVar);
        map.put(c0896c, pVar2);
        map.put(c0895b, pVar3);
    }

    public static /* synthetic */ void a(int i5) {
        String str = (i5 == 5 || i5 == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 5 || i5 == 6) ? 2 : 3];
        switch (i5) {
            case 1:
                objArr[0] = "from";
                break;
            case 2:
                objArr[0] = "first";
                break;
            case 3:
                objArr[0] = KnoxContract.Config.DateTime.PARAM_SECOND;
                break;
            case 4:
                objArr[0] = "visibility";
                break;
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
                break;
            default:
                objArr[0] = "what";
                break;
        }
        if (i5 == 5 || i5 == 6) {
            objArr[1] = "toDescriptorVisibility";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
        }
        if (i5 == 2 || i5 == 3) {
            objArr[2] = "areInSamePackage";
        } else if (i5 == 4) {
            objArr[2] = "toDescriptorVisibility";
        } else if (i5 != 5 && i5 != 6) {
            objArr[2] = "isVisibleForProtectedAndPackage";
        }
        String str2 = String.format(str, objArr);
        if (i5 != 5 && i5 != 6) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static boolean b(C0787O c0787o, InterfaceC0810m interfaceC0810m, InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j == null) {
            a(1);
            throw null;
        }
        int i5 = T3.e.f2720a;
        if (c(interfaceC0810m instanceof InterfaceC0800c ? T3.e.u((InterfaceC0800c) interfaceC0810m) : interfaceC0810m, interfaceC0807j)) {
            return true;
        }
        return AbstractC0811n.f8811c.m(c0787o, interfaceC0810m, interfaceC0807j);
    }

    public static boolean c(InterfaceC0807j interfaceC0807j, InterfaceC0807j interfaceC0807j2) {
        if (interfaceC0807j == null) {
            a(2);
            throw null;
        }
        if (interfaceC0807j2 == null) {
            a(3);
            throw null;
        }
        InterfaceC0775C interfaceC0775C = (InterfaceC0775C) T3.e.j(interfaceC0807j, InterfaceC0775C.class, false);
        InterfaceC0775C interfaceC0775C2 = (InterfaceC0775C) T3.e.j(interfaceC0807j2, InterfaceC0775C.class, false);
        return (interfaceC0775C2 == null || interfaceC0775C == null || !((u3.E) interfaceC0775C).f9353g.equals(((u3.E) interfaceC0775C2).f9353g)) ? false : true;
    }
}
