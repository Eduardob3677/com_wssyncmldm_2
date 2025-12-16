package u3;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import r3.InterfaceC0782J;
import r3.InterfaceC0783K;
import r3.InterfaceC0786N;
import r3.InterfaceC0798a;
import r3.InterfaceC0799b;
import r3.InterfaceC0800c;
import r3.InterfaceC0807j;
import r3.InterfaceC0808k;
import r3.InterfaceC0816s;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public abstract class I extends AbstractC0884p implements InterfaceC0782J {

    /* renamed from: g, reason: collision with root package name */
    public boolean f9359g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f9360h;

    /* renamed from: i, reason: collision with root package name */
    public final int f9361i;

    /* renamed from: j, reason: collision with root package name */
    public final InterfaceC0783K f9362j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f9363k;

    /* renamed from: l, reason: collision with root package name */
    public final int f9364l;

    /* renamed from: m, reason: collision with root package name */
    public A3.p f9365m;
    public InterfaceC0816s n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I(int i5, A3.p pVar, InterfaceC0783K interfaceC0783K, InterfaceC0845h interfaceC0845h, Q3.f fVar, boolean z4, boolean z5, boolean z6, int i6, InterfaceC0786N interfaceC0786N) {
        super(interfaceC0783K.l(), interfaceC0845h, fVar, interfaceC0786N);
        if (i5 == 0) {
            I0(0);
            throw null;
        }
        if (pVar == null) {
            I0(1);
            throw null;
        }
        if (interfaceC0845h == null) {
            I0(3);
            throw null;
        }
        if (interfaceC0786N == null) {
            I0(5);
            throw null;
        }
        this.n = null;
        this.f9361i = i5;
        this.f9365m = pVar;
        this.f9362j = interfaceC0783K;
        this.f9359g = z4;
        this.f9360h = z5;
        this.f9363k = z6;
        this.f9364l = i6;
    }

    public static /* synthetic */ void I0(int i5) {
        String str;
        int i6;
        switch (i5) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 7:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i5) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                i6 = 2;
                break;
            case 7:
            default:
                i6 = 3;
                break;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 1:
                objArr[0] = "visibility";
                break;
            case 2:
                objArr[0] = "correspondingProperty";
                break;
            case 3:
                objArr[0] = "annotations";
                break;
            case 4:
                objArr[0] = "name";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 7:
                objArr[0] = "substitutor";
                break;
            case 16:
                objArr[0] = "overriddenDescriptors";
                break;
            default:
                objArr[0] = "modality";
                break;
        }
        switch (i5) {
            case 6:
                objArr[1] = "getKind";
                break;
            case 7:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 8:
                objArr[1] = "substitute";
                break;
            case 9:
                objArr[1] = "getTypeParameters";
                break;
            case 10:
                objArr[1] = "getModality";
                break;
            case 11:
                objArr[1] = "getVisibility";
                break;
            case 12:
                objArr[1] = "getCorrespondingVariable";
                break;
            case 13:
                objArr[1] = "getCorrespondingProperty";
                break;
            case 14:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 15:
                objArr[1] = "getOverriddenDescriptors";
                break;
        }
        switch (i5) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                break;
            case 7:
                objArr[2] = "substitute";
                break;
            case 16:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i5) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                throw new IllegalStateException(str2);
            case 7:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // r3.InterfaceC0816s
    public final InterfaceC0816s B() {
        return this.n;
    }

    @Override // r3.InterfaceC0820w
    public final boolean D() {
        return this.f9360h;
    }

    @Override // r3.InterfaceC0799b
    public final Object E(InterfaceC0798a interfaceC0798a) {
        return null;
    }

    @Override // r3.InterfaceC0799b
    public final C0890w F() {
        return Q0().F();
    }

    @Override // r3.InterfaceC0816s
    public final boolean I() {
        return false;
    }

    @Override // r3.InterfaceC0800c
    public final void M(Collection collection) {
        if (collection != null) {
            return;
        }
        I0(16);
        throw null;
    }

    @Override // r3.InterfaceC0816s
    public final boolean O() {
        return false;
    }

    @Override // r3.InterfaceC0816s
    public final boolean Q() {
        return false;
    }

    public final InterfaceC0783K Q0() {
        InterfaceC0783K interfaceC0783K = this.f9362j;
        if (interfaceC0783K != null) {
            return interfaceC0783K;
        }
        I0(13);
        throw null;
    }

    public final ArrayList R0(boolean z4) {
        ArrayList arrayList = new ArrayList(0);
        for (InterfaceC0783K interfaceC0783K : Q0().p()) {
            InterfaceC0799b interfaceC0799bR = z4 ? interfaceC0783K.r() : interfaceC0783K.f();
            if (interfaceC0799bR != null) {
                arrayList.add(interfaceC0799bR);
            }
        }
        return arrayList;
    }

    @Override // r3.InterfaceC0816s, r3.InterfaceC0788P
    public final InterfaceC0816s b(h4.V v4) {
        if (v4 != null) {
            return this;
        }
        I0(7);
        throw null;
    }

    @Override // r3.InterfaceC0816s
    public final boolean b0() {
        return false;
    }

    @Override // r3.InterfaceC0810m, r3.InterfaceC0820w
    public final A3.p c() {
        A3.p pVar = this.f9365m;
        if (pVar != null) {
            return pVar;
        }
        I0(11);
        throw null;
    }

    @Override // r3.InterfaceC0799b
    public final C0890w d0() {
        return Q0().d0();
    }

    @Override // r3.InterfaceC0816s
    public final boolean h() {
        return false;
    }

    @Override // r3.InterfaceC0820w
    public final int i() {
        int i5 = this.f9361i;
        if (i5 != 0) {
            return i5;
        }
        I0(10);
        throw null;
    }

    @Override // r3.InterfaceC0816s
    public final boolean j() {
        return this.f9363k;
    }

    @Override // r3.InterfaceC0820w
    public final boolean j0() {
        return false;
    }

    @Override // r3.InterfaceC0800c
    public final int k0() {
        int i5 = this.f9364l;
        if (i5 != 0) {
            return i5;
        }
        I0(6);
        throw null;
    }

    @Override // r3.InterfaceC0799b
    public final boolean o0() {
        return false;
    }

    @Override // r3.InterfaceC0799b
    public final List u() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        I0(9);
        throw null;
    }

    @Override // r3.InterfaceC0799b
    public final List v0() {
        List listV0 = Q0().v0();
        if (listV0 != null) {
            return listV0;
        }
        I0(14);
        throw null;
    }

    @Override // r3.InterfaceC0800c
    public final InterfaceC0800c x0(InterfaceC0807j interfaceC0807j, int i5, A3.p pVar) {
        throw new UnsupportedOperationException("Accessors must be copied by the corresponding property");
    }

    @Override // r3.InterfaceC0820w
    public final boolean y() {
        return false;
    }

    @Override // r3.InterfaceC0816s
    public final boolean y0() {
        return false;
    }

    @Override // r3.InterfaceC0788P
    public final /* bridge */ /* synthetic */ InterfaceC0808k b(h4.V v4) {
        b(v4);
        return this;
    }
}
