package u3;

import r3.InterfaceC0786N;
import r3.InterfaceC0807j;
import r3.InterfaceC0808k;
import s3.InterfaceC0845h;

/* renamed from: u3.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0884p extends AbstractC0883o implements InterfaceC0808k {

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC0807j f9451e;
    public final InterfaceC0786N f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC0884p(InterfaceC0807j interfaceC0807j, InterfaceC0845h interfaceC0845h, Q3.f fVar, InterfaceC0786N interfaceC0786N) {
        super(interfaceC0845h, fVar);
        if (interfaceC0807j == null) {
            I0(0);
            throw null;
        }
        if (interfaceC0845h == null) {
            I0(1);
            throw null;
        }
        if (fVar == null) {
            I0(2);
            throw null;
        }
        if (interfaceC0786N == null) {
            I0(3);
            throw null;
        }
        this.f9451e = interfaceC0807j;
        this.f = interfaceC0786N;
    }

    public static /* synthetic */ void I0(int i5) {
        String str = (i5 == 4 || i5 == 5 || i5 == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 4 || i5 == 5 || i5 == 6) ? 2 : 3];
        switch (i5) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "source";
                break;
            case 4:
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        if (i5 == 4) {
            objArr[1] = "getOriginal";
        } else if (i5 == 5) {
            objArr[1] = "getContainingDeclaration";
        } else if (i5 != 6) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl";
        } else {
            objArr[1] = "getSource";
        }
        if (i5 != 4 && i5 != 5 && i5 != 6) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 != 4 && i5 != 5 && i5 != 6) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    /* renamed from: P0 */
    public InterfaceC0808k a() {
        return this;
    }

    public InterfaceC0807j l() {
        InterfaceC0807j interfaceC0807j = this.f9451e;
        if (interfaceC0807j != null) {
            return interfaceC0807j;
        }
        I0(5);
        throw null;
    }

    public InterfaceC0786N m() {
        InterfaceC0786N interfaceC0786N = this.f;
        if (interfaceC0786N != null) {
            return interfaceC0786N;
        }
        I0(6);
        throw null;
    }
}
