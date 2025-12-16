package d4;

import L3.Q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import java.util.ArrayList;
import r3.InterfaceC0800c;
import u3.AbstractC0870b;

/* loaded from: classes.dex */
public final class j implements l, k {

    /* renamed from: b, reason: collision with root package name */
    public static final j f6547b = new j();

    /* renamed from: c, reason: collision with root package name */
    public static final j f6548c = new j();

    /* renamed from: d, reason: collision with root package name */
    public static final j f6549d = new j();

    public static /* synthetic */ void d(int i5) {
        Object[] objArr = new Object[3];
        if (i5 != 1) {
            objArr[0] = "descriptor";
        } else {
            objArr[0] = "unresolvedSuperClasses";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1";
        if (i5 != 2) {
            objArr[2] = "reportIncompleteHierarchy";
        } else {
            objArr[2] = "reportCannotInferVisibility";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static int e(L3.A a3) {
        int i5 = a3 == null ? -1 : u.f6576a[a3.ordinal()];
        if (i5 == 1) {
            return 1;
        }
        if (i5 == 2) {
            return 3;
        }
        if (i5 != 3) {
            return i5 != 4 ? 1 : 2;
        }
        return 4;
    }

    @Override // d4.k
    public void a(InterfaceC0800c interfaceC0800c) {
        if (interfaceC0800c != null) {
            return;
        }
        d(2);
        throw null;
    }

    @Override // d4.k
    public void b(AbstractC0870b abstractC0870b, ArrayList arrayList) {
        if (abstractC0870b != null) {
            return;
        }
        d(0);
        throw null;
    }

    @Override // d4.l
    public AbstractC0468v c(Q q2, String str, AbstractC0472z abstractC0472z, AbstractC0472z abstractC0472z2) {
        d3.i.e("proto", q2);
        d3.i.e("flexibleId", str);
        d3.i.e("lowerBound", abstractC0472z);
        d3.i.e("upperBound", abstractC0472z2);
        throw new IllegalArgumentException("This method should not be used.");
    }
}
