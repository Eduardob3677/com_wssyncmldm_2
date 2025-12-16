package h4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import r3.C0787O;
import r3.InterfaceC0802e;

/* renamed from: h4.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0457j extends AbstractC0449b {

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0802e f7060c;

    /* renamed from: d, reason: collision with root package name */
    public final List f7061d;

    /* renamed from: e, reason: collision with root package name */
    public final Collection f7062e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0457j(InterfaceC0802e interfaceC0802e, List list, Collection collection, g4.o oVar) {
        super(oVar);
        if (interfaceC0802e == null) {
            m(0);
            throw null;
        }
        if (list == null) {
            m(1);
            throw null;
        }
        if (collection == null) {
            m(2);
            throw null;
        }
        if (oVar == null) {
            m(3);
            throw null;
        }
        this.f7060c = interfaceC0802e;
        this.f7061d = Collections.unmodifiableList(new ArrayList(list));
        this.f7062e = Collections.unmodifiableCollection(collection);
    }

    public static /* synthetic */ void m(int i5) {
        String str = (i5 == 4 || i5 == 5 || i5 == 6 || i5 == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 4 || i5 == 5 || i5 == 6 || i5 == 7) ? 2 : 3];
        switch (i5) {
            case 1:
                objArr[0] = "parameters";
                break;
            case 2:
                objArr[0] = "supertypes";
                break;
            case 3:
                objArr[0] = "storageManager";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl";
                break;
            default:
                objArr[0] = "classDescriptor";
                break;
        }
        if (i5 == 4) {
            objArr[1] = "getParameters";
        } else if (i5 == 5) {
            objArr[1] = "getDeclarationDescriptor";
        } else if (i5 == 6) {
            objArr[1] = "computeSupertypes";
        } else if (i5 != 7) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl";
        } else {
            objArr[1] = "getSupertypeLoopChecker";
        }
        if (i5 != 4 && i5 != 5 && i5 != 6 && i5 != 7) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 != 4 && i5 != 5 && i5 != 6 && i5 != 7) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // h4.AbstractC0454g
    public final Collection b() {
        Collection collection = this.f7062e;
        if (collection != null) {
            return collection;
        }
        m(6);
        throw null;
    }

    @Override // h4.AbstractC0454g
    public final C0787O d() {
        return C0787O.f8792e;
    }

    @Override // h4.J
    public final boolean h() {
        return true;
    }

    @Override // h4.J
    public final List k() {
        List list = this.f7061d;
        if (list != null) {
            return list;
        }
        m(4);
        throw null;
    }

    @Override // h4.AbstractC0449b
    /* renamed from: n */
    public final InterfaceC0802e i() {
        InterfaceC0802e interfaceC0802e = this.f7060c;
        if (interfaceC0802e != null) {
            return interfaceC0802e;
        }
        m(5);
        throw null;
    }

    public final String toString() {
        String str = T3.e.g(this.f7060c).f2238a;
        if (str != null) {
            return str;
        }
        Q3.e.a(4);
        throw null;
    }
}
