package u3;

import h0.AbstractC0432c;
import r3.C0787O;
import r3.InterfaceC0807j;
import s3.InterfaceC0845h;

/* renamed from: u3.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0871c extends AbstractC0878j {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC0871c(g4.o oVar, InterfaceC0807j interfaceC0807j, InterfaceC0845h interfaceC0845h, Q3.f fVar, int i5, boolean z4, int i6, C0787O c0787o) {
        super(oVar, interfaceC0807j, interfaceC0845h, fVar, i5, z4, i6, c0787o);
        if (oVar == null) {
            I0(0);
            throw null;
        }
        if (interfaceC0807j == null) {
            I0(1);
            throw null;
        }
        if (i5 == 0) {
            I0(4);
            throw null;
        }
        if (c0787o != null) {
        } else {
            I0(6);
            throw null;
        }
    }

    public static /* synthetic */ void I0(int i5) {
        Object[] objArr = new Object[3];
        switch (i5) {
            case 1:
                objArr[0] = "containingDeclaration";
                break;
            case 2:
                objArr[0] = "annotations";
                break;
            case 3:
                objArr[0] = "name";
                break;
            case 4:
                objArr[0] = "variance";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
                objArr[0] = "supertypeLoopChecker";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractLazyTypeParameterDescriptor";
        objArr[2] = "<init>";
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    @Override // u3.AbstractC0883o
    public final String toString() {
        return (this.f9434h ? "reified " : "") + (A() != 1 ? AbstractC0432c.n(A()).concat(" ") : "") + getName();
    }
}
