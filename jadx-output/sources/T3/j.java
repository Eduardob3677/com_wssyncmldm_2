package T3;

import f4.t;
import java.util.Comparator;
import r3.InterfaceC0783K;
import r3.InterfaceC0802e;
import r3.InterfaceC0806i;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;

/* loaded from: classes.dex */
public final class j implements Comparator {

    /* renamed from: b, reason: collision with root package name */
    public static final j f2727b = new j(0);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2728a;

    public /* synthetic */ j(int i5) {
        this.f2728a = i5;
    }

    public static int a(InterfaceC0807j interfaceC0807j) {
        if (e.n(interfaceC0807j)) {
            return 8;
        }
        if (interfaceC0807j instanceof InterfaceC0806i) {
            return 7;
        }
        if (interfaceC0807j instanceof InterfaceC0783K) {
            return ((InterfaceC0783K) interfaceC0807j).d0() == null ? 6 : 5;
        }
        if (interfaceC0807j instanceof InterfaceC0816s) {
            return ((InterfaceC0816s) interfaceC0807j).d0() == null ? 4 : 3;
        }
        if (interfaceC0807j instanceof InterfaceC0802e) {
            return 2;
        }
        return interfaceC0807j instanceof t ? 1 : 0;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Integer numValueOf;
        switch (this.f2728a) {
            case 0:
                InterfaceC0807j interfaceC0807j = (InterfaceC0807j) obj;
                InterfaceC0807j interfaceC0807j2 = (InterfaceC0807j) obj2;
                int iA = a(interfaceC0807j2) - a(interfaceC0807j);
                if (iA != 0) {
                    numValueOf = Integer.valueOf(iA);
                } else if (e.n(interfaceC0807j) && e.n(interfaceC0807j2)) {
                    numValueOf = 0;
                } else {
                    int iCompareTo = interfaceC0807j.getName().f2242c.compareTo(interfaceC0807j2.getName().f2242c);
                    numValueOf = iCompareTo != 0 ? Integer.valueOf(iCompareTo) : null;
                }
                if (numValueOf != null) {
                    return numValueOf.intValue();
                }
                return 0;
            default:
                return L2.b.e(X3.f.g((InterfaceC0802e) obj).b(), X3.f.g((InterfaceC0802e) obj2).b());
        }
    }
}
