package u3;

import h4.AbstractC0454g;
import h4.AbstractC0468v;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import o3.AbstractC0732i;
import r3.C0787O;
import r3.InterfaceC0789Q;
import r3.InterfaceC0804g;

/* renamed from: u3.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0877i extends AbstractC0454g {

    /* renamed from: c, reason: collision with root package name */
    public final C0787O f9431c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AbstractC0878j f9432d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0877i(AbstractC0878j abstractC0878j, g4.o oVar, C0787O c0787o) {
        super(oVar);
        if (oVar == null) {
            m(0);
            throw null;
        }
        this.f9432d = abstractC0878j;
        this.f9431c = c0787o;
    }

    public static /* synthetic */ void m(int i5) {
        String str = (i5 == 1 || i5 == 2 || i5 == 3 || i5 == 4 || i5 == 5 || i5 == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 1 || i5 == 2 || i5 == 3 || i5 == 4 || i5 == 5 || i5 == 8) ? 2 : 3];
        switch (i5) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
                break;
            case 6:
                objArr[0] = "type";
                break;
            case 7:
                objArr[0] = "supertypes";
                break;
            case 9:
                objArr[0] = "classifier";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        if (i5 == 1) {
            objArr[1] = "computeSupertypes";
        } else if (i5 == 2) {
            objArr[1] = "getParameters";
        } else if (i5 == 3) {
            objArr[1] = "getDeclarationDescriptor";
        } else if (i5 == 4) {
            objArr[1] = "getBuiltIns";
        } else if (i5 == 5) {
            objArr[1] = "getSupertypeLoopChecker";
        } else if (i5 != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
        } else {
            objArr[1] = "processSupertypesWithoutCycles";
        }
        switch (i5) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
                break;
            case 6:
                objArr[2] = "reportSupertypeLoopError";
                break;
            case 7:
                objArr[2] = "processSupertypesWithoutCycles";
                break;
            case 9:
                objArr[2] = "isSameClassifier";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 1 && i5 != 2 && i5 != 3 && i5 != 4 && i5 != 5 && i5 != 8) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // h4.AbstractC0454g
    public final Collection b() {
        List listR0 = this.f9432d.R0();
        if (listR0 != null) {
            return listR0;
        }
        m(1);
        throw null;
    }

    @Override // h4.AbstractC0454g
    public final AbstractC0468v c() {
        return j4.i.c(j4.h.f7628i, new String[0]);
    }

    @Override // h4.AbstractC0454g
    public final C0787O d() {
        C0787O c0787o = this.f9431c;
        if (c0787o != null) {
            return c0787o;
        }
        m(5);
        throw null;
    }

    @Override // h4.AbstractC0454g
    public final boolean f(InterfaceC0804g interfaceC0804g) {
        if (interfaceC0804g instanceof InterfaceC0789Q) {
            AbstractC0878j abstractC0878j = this.f9432d;
            d3.i.e("a", abstractC0878j);
            if (T3.c.f2719a.d(abstractC0878j, (InterfaceC0789Q) interfaceC0804g, true, T3.b.f2718d)) {
                return true;
            }
        }
        return false;
    }

    @Override // h4.J
    public final AbstractC0732i g() {
        AbstractC0732i abstractC0732iE = X3.f.e(this.f9432d);
        if (abstractC0732iE != null) {
            return abstractC0732iE;
        }
        m(4);
        throw null;
    }

    @Override // h4.J
    public final boolean h() {
        return true;
    }

    @Override // h4.J
    public final InterfaceC0804g i() {
        AbstractC0878j abstractC0878j = this.f9432d;
        if (abstractC0878j != null) {
            return abstractC0878j;
        }
        m(3);
        throw null;
    }

    @Override // h4.J
    public final List k() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        m(2);
        throw null;
    }

    @Override // h4.AbstractC0454g
    public final List l(List list) {
        List listQ0 = this.f9432d.Q0(list);
        if (listQ0 != null) {
            return listQ0;
        }
        m(8);
        throw null;
    }

    public final String toString() {
        return this.f9432d.getName().f2242c;
    }
}
