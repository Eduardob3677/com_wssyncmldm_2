package u3;

import h4.AbstractC0468v;
import java.util.Collections;
import java.util.List;
import r3.InterfaceC0786N;
import r3.InterfaceC0792U;
import r3.InterfaceC0807j;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public abstract class W extends AbstractC0884p implements InterfaceC0792U {

    /* renamed from: g, reason: collision with root package name */
    public AbstractC0468v f9414g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W(InterfaceC0807j interfaceC0807j, InterfaceC0845h interfaceC0845h, Q3.f fVar, AbstractC0468v abstractC0468v, InterfaceC0786N interfaceC0786N) {
        super(interfaceC0807j, interfaceC0845h, fVar, interfaceC0786N);
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
        this.f9414g = abstractC0468v;
    }

    public static /* synthetic */ void I0(int i5) {
        String str;
        int i6;
        switch (i5) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i5) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                i6 = 2;
                break;
            default:
                i6 = 3;
                break;
        }
        Object[] objArr = new Object[i6];
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
            case 7:
            case 8:
            case 9:
            case 10:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i5) {
            case 4:
                objArr[1] = "getType";
                break;
            case 5:
                objArr[1] = "getOriginal";
                break;
            case 6:
                objArr[1] = "getValueParameters";
                break;
            case 7:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 8:
                objArr[1] = "getTypeParameters";
                break;
            case 9:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 10:
                objArr[1] = "getReturnType";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
        }
        switch (i5) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i5) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public C0890w F() {
        return null;
    }

    public C0890w d0() {
        return null;
    }

    @Override // K3.c, b4.d
    public final AbstractC0468v e() {
        AbstractC0468v abstractC0468v = this.f9414g;
        if (abstractC0468v != null) {
            return abstractC0468v;
        }
        I0(4);
        throw null;
    }

    public AbstractC0468v n() {
        AbstractC0468v abstractC0468vE = e();
        if (abstractC0468vE != null) {
            return abstractC0468vE;
        }
        I0(10);
        throw null;
    }

    public boolean o0() {
        return false;
    }

    public List u() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        I0(8);
        throw null;
    }

    @Override // r3.InterfaceC0799b
    public final List w0() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        I0(6);
        throw null;
    }
}
