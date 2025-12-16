package u3;

import h4.AbstractC0468v;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import r3.InterfaceC0782J;
import r3.InterfaceC0783K;
import r3.InterfaceC0786N;
import r3.InterfaceC0809l;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class L extends I implements InterfaceC0782J {

    /* renamed from: o, reason: collision with root package name */
    public AbstractC0468v f9397o;

    /* renamed from: p, reason: collision with root package name */
    public final L f9398p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L(InterfaceC0783K interfaceC0783K, InterfaceC0845h interfaceC0845h, int i5, A3.p pVar, boolean z4, boolean z5, boolean z6, int i6, L l5, InterfaceC0786N interfaceC0786N) {
        L l6;
        L l7;
        super(i5, pVar, interfaceC0783K, interfaceC0845h, Q3.f.g("<get-" + interfaceC0783K.getName() + ">"), z4, z5, z6, i6, interfaceC0786N);
        if (interfaceC0845h == null) {
            I0(1);
            throw null;
        }
        if (i5 == 0) {
            I0(2);
            throw null;
        }
        if (pVar == null) {
            I0(3);
            throw null;
        }
        if (i6 == 0) {
            I0(4);
            throw null;
        }
        if (interfaceC0786N == null) {
            I0(5);
            throw null;
        }
        if (l5 != null) {
            l7 = this;
            l6 = l5;
        } else {
            l6 = this;
            l7 = l6;
        }
        l7.f9398p = l6;
    }

    public static /* synthetic */ void I0(int i5) {
        String str = (i5 == 6 || i5 == 7 || i5 == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 6 || i5 == 7 || i5 == 8) ? 2 : 3];
        switch (i5) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "modality";
                break;
            case 3:
                objArr[0] = "visibility";
                break;
            case 4:
                objArr[0] = "kind";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        if (i5 == 6) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (i5 == 7) {
            objArr[1] = "getValueParameters";
        } else if (i5 != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
        } else {
            objArr[1] = "getOriginal";
        }
        if (i5 != 6 && i5 != 7 && i5 != 8) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i5 != 6 && i5 != 7 && i5 != 8) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.c(this, obj);
    }

    @Override // u3.AbstractC0884p, u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    /* renamed from: S0, reason: merged with bridge method [inline-methods] */
    public final L a() {
        L l5 = this.f9398p;
        if (l5 != null) {
            return l5;
        }
        I0(8);
        throw null;
    }

    public final void T0(AbstractC0468v abstractC0468v) {
        if (abstractC0468v == null) {
            abstractC0468v = Q0().e();
        }
        this.f9397o = abstractC0468v;
    }

    @Override // r3.InterfaceC0799b
    public final AbstractC0468v n() {
        return this.f9397o;
    }

    @Override // r3.InterfaceC0800c, r3.InterfaceC0799b
    public final Collection p() {
        return R0(true);
    }

    @Override // r3.InterfaceC0799b
    public final List w0() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        I0(7);
        throw null;
    }
}
