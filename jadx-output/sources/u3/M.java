package u3;

import h4.AbstractC0468v;
import h4.AbstractC0472z;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import r3.InterfaceC0782J;
import r3.InterfaceC0783K;
import r3.InterfaceC0786N;
import r3.InterfaceC0809l;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class M extends I implements InterfaceC0782J {

    /* renamed from: o, reason: collision with root package name */
    public V f9399o;

    /* renamed from: p, reason: collision with root package name */
    public final M f9400p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M(InterfaceC0783K interfaceC0783K, InterfaceC0845h interfaceC0845h, int i5, A3.p pVar, boolean z4, boolean z5, boolean z6, int i6, M m5, InterfaceC0786N interfaceC0786N) {
        M m6;
        M m7;
        super(i5, pVar, interfaceC0783K, interfaceC0845h, Q3.f.g("<set-" + interfaceC0783K.getName() + ">"), z4, z5, z6, i6, interfaceC0786N);
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
        if (m5 != null) {
            m7 = this;
            m6 = m5;
        } else {
            m6 = this;
            m7 = m6;
        }
        m7.f9400p = m6;
    }

    public static /* synthetic */ void I0(int i5) {
        String str;
        int i6;
        switch (i5) {
            case 10:
            case 11:
            case 12:
            case 13:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i5) {
            case 10:
            case 11:
            case 12:
            case 13:
                i6 = 2;
                break;
            default:
                i6 = 3;
                break;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 1:
            case 9:
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
                objArr[0] = "parameter";
                break;
            case 7:
                objArr[0] = "setterDescriptor";
                break;
            case 8:
                objArr[0] = "type";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        switch (i5) {
            case 10:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 11:
                objArr[1] = "getValueParameters";
                break;
            case 12:
                objArr[1] = "getReturnType";
                break;
            case 13:
                objArr[1] = "getOriginal";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
        }
        switch (i5) {
            case 6:
                objArr[2] = "initialize";
                break;
            case 7:
            case 8:
            case 9:
                objArr[2] = "createSetterParameter";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i5) {
            case 10:
            case 11:
            case 12:
            case 13:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static V S0(M m5, AbstractC0468v abstractC0468v, InterfaceC0845h interfaceC0845h) {
        if (abstractC0468v == null) {
            I0(8);
            throw null;
        }
        if (interfaceC0845h != null) {
            return new V(m5, null, 0, interfaceC0845h, Q3.h.f2250g, abstractC0468v, false, false, false, null, InterfaceC0786N.f8790a);
        }
        I0(9);
        throw null;
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.p(this, obj);
    }

    @Override // u3.AbstractC0884p, u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    /* renamed from: T0, reason: merged with bridge method [inline-methods] */
    public final M a() {
        M m5 = this.f9400p;
        if (m5 != null) {
            return m5;
        }
        I0(13);
        throw null;
    }

    @Override // r3.InterfaceC0799b
    public final AbstractC0468v n() {
        AbstractC0472z abstractC0472zW = X3.f.e(this).w();
        if (abstractC0472zW != null) {
            return abstractC0472zW;
        }
        I0(12);
        throw null;
    }

    @Override // r3.InterfaceC0800c, r3.InterfaceC0799b
    public final Collection p() {
        return R0(false);
    }

    @Override // r3.InterfaceC0799b
    public final List w0() {
        V v4 = this.f9399o;
        if (v4 == null) {
            throw new IllegalStateException();
        }
        List listSingletonList = Collections.singletonList(v4);
        if (listSingletonList != null) {
            return listSingletonList;
        }
        I0(11);
        throw null;
    }
}
