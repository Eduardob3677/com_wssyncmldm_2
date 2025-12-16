package C3;

import R2.u;
import Z0.j;
import h0.AbstractC0432c;
import h4.AbstractC0468v;
import i3.x;
import java.util.ArrayList;
import r3.InterfaceC0786N;
import r3.InterfaceC0798a;
import r3.InterfaceC0802e;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import s3.C0844g;
import s3.InterfaceC0845h;
import u3.AbstractC0889v;
import u3.C0879k;

/* loaded from: classes.dex */
public final class b extends C0879k implements a {

    /* renamed from: H, reason: collision with root package name */
    public Boolean f371H;

    /* renamed from: I, reason: collision with root package name */
    public Boolean f372I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(InterfaceC0802e interfaceC0802e, b bVar, InterfaceC0845h interfaceC0845h, boolean z4, int i5, InterfaceC0786N interfaceC0786N) {
        super(interfaceC0802e, bVar, interfaceC0845h, z4, i5, interfaceC0786N);
        if (interfaceC0802e == null) {
            I0(0);
            throw null;
        }
        if (interfaceC0845h == null) {
            I0(1);
            throw null;
        }
        if (i5 == 0) {
            I0(2);
            throw null;
        }
        if (interfaceC0786N == null) {
            I0(3);
            throw null;
        }
        this.f371H = null;
        this.f372I = null;
    }

    public static /* synthetic */ void I0(int i5) {
        String str = (i5 == 11 || i5 == 18) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 11 || i5 == 18) ? 2 : 3];
        switch (i5) {
            case 1:
            case 5:
            case 9:
            case 15:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 13:
                objArr[0] = "kind";
                break;
            case 3:
            case 6:
            case 10:
                objArr[0] = "source";
                break;
            case 4:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 7:
            case 12:
                objArr[0] = "newOwner";
                break;
            case 11:
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
                break;
            case 14:
                objArr[0] = "sourceElement";
                break;
            case 16:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case 17:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i5 == 11) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i5 != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i5) {
            case 4:
            case 5:
            case 6:
                objArr[2] = "createJavaConstructor";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 11:
            case 18:
                break;
            case 12:
            case 13:
            case 14:
            case 15:
                objArr[2] = "createDescriptor";
                break;
            case 16:
            case 17:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 11 && i5 != 18) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static b h1(InterfaceC0802e interfaceC0802e, InterfaceC0845h interfaceC0845h, boolean z4, w3.f fVar) {
        if (interfaceC0802e != null) {
            return new b(interfaceC0802e, null, interfaceC0845h, z4, 1, fVar);
        }
        I0(4);
        throw null;
    }

    @Override // C3.a
    public final a G0(AbstractC0468v abstractC0468v, ArrayList arrayList, AbstractC0468v abstractC0468v2, Q2.e eVar) {
        b bVarI1 = i1(l(), null, k0(), t(), m());
        bVarI1.V0(abstractC0468v == null ? null : j.E(bVarI1, abstractC0468v, C0844g.f9041a), this.f9494l, u.f2325c, u(), x.v(arrayList, w0(), bVarI1), abstractC0468v2, i(), c());
        if (eVar != null) {
            bVarI1.X0((InterfaceC0798a) eVar.f2212c, eVar.f2213d);
        }
        return bVarI1;
    }

    @Override // u3.C0879k, u3.AbstractC0889v
    public final /* bridge */ /* synthetic */ AbstractC0889v S0(int i5, Q3.f fVar, InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, InterfaceC0786N interfaceC0786N, InterfaceC0845h interfaceC0845h) {
        return i1(interfaceC0807j, interfaceC0816s, i5, interfaceC0845h, interfaceC0786N);
    }

    @Override // u3.AbstractC0889v
    public final void Y0(boolean z4) {
        this.f371H = Boolean.valueOf(z4);
    }

    @Override // u3.AbstractC0889v
    public final void Z0(boolean z4) {
        this.f372I = Boolean.valueOf(z4);
    }

    @Override // u3.C0879k
    /* renamed from: b1 */
    public final /* bridge */ /* synthetic */ C0879k S0(int i5, Q3.f fVar, InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, InterfaceC0786N interfaceC0786N, InterfaceC0845h interfaceC0845h) {
        return i1(interfaceC0807j, interfaceC0816s, i5, interfaceC0845h, interfaceC0786N);
    }

    public final b i1(InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, int i5, InterfaceC0845h interfaceC0845h, InterfaceC0786N interfaceC0786N) {
        if (interfaceC0807j == null) {
            I0(7);
            throw null;
        }
        if (i5 == 0) {
            I0(8);
            throw null;
        }
        if (interfaceC0845h == null) {
            I0(9);
            throw null;
        }
        if (interfaceC0786N == null) {
            I0(10);
            throw null;
        }
        if (i5 != 1 && i5 != 4) {
            throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + interfaceC0807j + "\nkind: " + AbstractC0432c.s(i5));
        }
        InterfaceC0802e interfaceC0802e = (InterfaceC0802e) interfaceC0807j;
        b bVar = (b) interfaceC0816s;
        if (i5 == 0) {
            I0(13);
            throw null;
        }
        b bVar2 = new b(interfaceC0802e, bVar, interfaceC0845h, this.f9439G, i5, interfaceC0786N);
        Boolean bool = this.f371H;
        bool.getClass();
        bVar2.f371H = bool;
        Boolean bool2 = this.f372I;
        bool2.getClass();
        bVar2.f372I = bool2;
        return bVar2;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0799b
    public final boolean o0() {
        return this.f372I.booleanValue();
    }
}
