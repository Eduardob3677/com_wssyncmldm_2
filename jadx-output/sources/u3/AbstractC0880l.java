package u3;

import r3.InterfaceC0786N;
import r3.InterfaceC0807j;

/* renamed from: u3.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0880l extends AbstractC0870b {

    /* renamed from: g, reason: collision with root package name */
    public final InterfaceC0807j f9440g;

    /* renamed from: h, reason: collision with root package name */
    public final InterfaceC0786N f9441h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f9442i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC0880l(g4.o oVar, InterfaceC0807j interfaceC0807j, Q3.f fVar, InterfaceC0786N interfaceC0786N) {
        super(oVar, fVar);
        if (oVar == null) {
            c0(0);
            throw null;
        }
        if (interfaceC0807j == null) {
            c0(1);
            throw null;
        }
        if (fVar == null) {
            c0(2);
            throw null;
        }
        this.f9440g = interfaceC0807j;
        this.f9441h = interfaceC0786N;
        this.f9442i = false;
    }

    public static /* synthetic */ void c0(int i5) {
        String str = (i5 == 4 || i5 == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 4 || i5 == 5) ? 2 : 3];
        if (i5 == 1) {
            objArr[0] = "containingDeclaration";
        } else if (i5 == 2) {
            objArr[0] = "name";
        } else if (i5 == 3) {
            objArr[0] = "source";
        } else if (i5 == 4 || i5 == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[0] = "storageManager";
        }
        if (i5 == 4) {
            objArr[1] = "getContainingDeclaration";
        } else if (i5 != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[1] = "getSource";
        }
        if (i5 != 4 && i5 != 5) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 != 4 && i5 != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public boolean D() {
        return this.f9442i;
    }

    @Override // r3.InterfaceC0807j
    public final InterfaceC0807j l() {
        InterfaceC0807j interfaceC0807j = this.f9440g;
        if (interfaceC0807j != null) {
            return interfaceC0807j;
        }
        c0(4);
        throw null;
    }

    @Override // r3.InterfaceC0808k
    public final InterfaceC0786N m() {
        InterfaceC0786N interfaceC0786N = this.f9441h;
        if (interfaceC0786N != null) {
            return interfaceC0786N;
        }
        c0(5);
        throw null;
    }
}
