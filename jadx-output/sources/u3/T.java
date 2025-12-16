package u3;

import h4.AbstractC0450c;
import h4.AbstractC0472z;
import java.util.ArrayList;
import java.util.List;
import r3.C0787O;
import r3.InterfaceC0807j;
import s3.C0843f;
import s3.C0844g;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class T extends AbstractC0878j {

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f9407m;
    public boolean n;

    /* JADX WARN: Illegal instructions before constructor call */
    public T(InterfaceC0807j interfaceC0807j, InterfaceC0845h interfaceC0845h, boolean z4, int i5, Q3.f fVar, int i6, g4.o oVar) {
        C0787O c0787o = C0787O.f8792e;
        if (interfaceC0807j == null) {
            I0(19);
            throw null;
        }
        if (interfaceC0845h == null) {
            I0(20);
            throw null;
        }
        if (i5 == 0) {
            I0(21);
            throw null;
        }
        if (fVar == null) {
            I0(22);
            throw null;
        }
        if (oVar == null) {
            I0(25);
            throw null;
        }
        super(oVar, interfaceC0807j, interfaceC0845h, fVar, i5, z4, i6, c0787o);
        this.f9407m = new ArrayList(1);
        this.n = false;
    }

    public static /* synthetic */ void I0(int i5) {
        String str = (i5 == 5 || i5 == 28) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 5 || i5 == 28) ? 2 : 3];
        switch (i5) {
            case 1:
            case 7:
            case 13:
            case 20:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 14:
            case 21:
                objArr[0] = "variance";
                break;
            case 3:
            case 9:
            case 15:
            case 22:
                objArr[0] = "name";
                break;
            case 4:
            case 11:
            case 18:
            case 25:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 28:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
                break;
            case 6:
            case 12:
            case 19:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 16:
            case 23:
                objArr[0] = "source";
                break;
            case 17:
                objArr[0] = "supertypeLoopsResolver";
                break;
            case 24:
                objArr[0] = "supertypeLoopsChecker";
                break;
            case 26:
                objArr[0] = "bound";
                break;
            case 27:
                objArr[0] = "type";
                break;
        }
        if (i5 == 5) {
            objArr[1] = "createWithDefaultBound";
        } else if (i5 != 28) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
        } else {
            objArr[1] = "resolveUpperBounds";
        }
        switch (i5) {
            case 5:
            case 28:
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createForFurtherModification";
                break;
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
                objArr[2] = "<init>";
                break;
            case 26:
                objArr[2] = "addUpperBound";
                break;
            case 27:
                objArr[2] = "reportSupertypeLoopError";
                break;
            default:
                objArr[2] = "createWithDefaultBound";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 5 && i5 != 28) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static T S0(InterfaceC0807j interfaceC0807j, InterfaceC0845h interfaceC0845h, boolean z4, int i5, Q3.f fVar, int i6, g4.o oVar) {
        if (interfaceC0807j == null) {
            I0(6);
            throw null;
        }
        if (interfaceC0845h == null) {
            I0(7);
            throw null;
        }
        if (i5 == 0) {
            I0(8);
            throw null;
        }
        if (fVar == null) {
            I0(9);
            throw null;
        }
        if (oVar == null) {
            I0(11);
            throw null;
        }
        if (i5 != 0) {
            return new T(interfaceC0807j, interfaceC0845h, z4, i5, fVar, i6, oVar);
        }
        I0(14);
        throw null;
    }

    public static T T0(InterfaceC0807j interfaceC0807j, int i5, Q3.f fVar, int i6, g4.o oVar) {
        C0843f c0843f = C0844g.f9041a;
        if (interfaceC0807j == null) {
            I0(0);
            throw null;
        }
        if (i5 == 0) {
            I0(2);
            throw null;
        }
        if (oVar == null) {
            I0(4);
            throw null;
        }
        T tS0 = S0(interfaceC0807j, c0843f, false, i5, fVar, i6, oVar);
        AbstractC0472z abstractC0472zM = X3.f.e(interfaceC0807j).m();
        if (tS0.n) {
            throw new IllegalStateException("Type parameter descriptor is already initialized: " + tS0.U0());
        }
        if (!AbstractC0450c.i(abstractC0472zM)) {
            tS0.f9407m.add(abstractC0472zM);
        }
        if (!tS0.n) {
            tS0.n = true;
            return tS0;
        }
        throw new IllegalStateException("Type parameter descriptor is already initialized: " + tS0.U0());
    }

    @Override // u3.AbstractC0878j
    public final List R0() {
        if (!this.n) {
            throw new IllegalStateException("Type parameter descriptor is not initialized: " + U0());
        }
        ArrayList arrayList = this.f9407m;
        if (arrayList != null) {
            return arrayList;
        }
        I0(28);
        throw null;
    }

    public final String U0() {
        return getName() + " declared in " + T3.e.g(l());
    }
}
