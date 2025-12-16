package u3;

import h4.AbstractC0468v;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import r3.AbstractC0811n;
import r3.InterfaceC0781I;
import r3.InterfaceC0786N;
import r3.InterfaceC0799b;
import r3.InterfaceC0802e;
import r3.InterfaceC0807j;
import r3.InterfaceC0809l;
import s3.C0844g;
import s3.InterfaceC0845h;

/* renamed from: u3.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0890w extends AbstractC0883o implements InterfaceC0781I {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f9508e = 1;
    public final InterfaceC0807j f;

    /* renamed from: g, reason: collision with root package name */
    public final b4.d f9509g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0890w(AbstractC0870b abstractC0870b) {
        super(C0844g.f9041a, Q3.h.f2248d);
        if (abstractC0870b == null) {
            I0(0);
            throw null;
        }
        this.f = abstractC0870b;
        this.f9509g = new b4.c(abstractC0870b);
    }

    public static /* synthetic */ void I0(int i5) {
        String str = (i5 == 1 || i5 == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 1 || i5 == 2) ? 2 : 3];
        if (i5 == 1 || i5 == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else if (i5 != 3) {
            objArr[0] = "descriptor";
        } else {
            objArr[0] = "newOwner";
        }
        if (i5 == 1) {
            objArr[1] = "getValue";
        } else if (i5 != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        if (i5 != 1 && i5 != 2) {
            if (i5 != 3) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "copy";
            }
        }
        String str2 = String.format(str, objArr);
        if (i5 != 1 && i5 != 2) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static /* synthetic */ void J0(int i5) {
        String str = (i5 == 7 || i5 == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 7 || i5 == 8) ? 2 : 3];
        switch (i5) {
            case 1:
            case 4:
                objArr[0] = "value";
                break;
            case 2:
            case 5:
                objArr[0] = "annotations";
                break;
            case 3:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 6:
                objArr[0] = "name";
                break;
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
                break;
            case 9:
                objArr[0] = "newOwner";
                break;
            case 10:
                objArr[0] = "outType";
                break;
        }
        if (i5 == 7) {
            objArr[1] = "getValue";
        } else if (i5 != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        switch (i5) {
            case 7:
            case 8:
                break;
            case 9:
                objArr[2] = "copy";
                break;
            case 10:
                objArr[2] = "setOutType";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 7 && i5 != 8) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static /* synthetic */ void P0(int i5) {
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
            case 11:
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
            case 11:
                i6 = 2;
                break;
            default:
                i6 = 3;
                break;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "substitutor";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
            default:
                objArr[0] = "annotations";
                break;
        }
        switch (i5) {
            case 4:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 5:
                objArr[1] = "getTypeParameters";
                break;
            case 6:
                objArr[1] = "getType";
                break;
            case 7:
                objArr[1] = "getValueParameters";
                break;
            case 8:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 9:
                objArr[1] = "getVisibility";
                break;
            case 10:
                objArr[1] = "getOriginal";
                break;
            case 11:
                objArr[1] = "getSource";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
        }
        switch (i5) {
            case 3:
                objArr[2] = "substitute";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
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
            case 11:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // r3.InterfaceC0799b
    public final C0890w F() {
        return null;
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.k(this, obj);
    }

    public final b4.d Q0() {
        switch (this.f9508e) {
            case 0:
                b4.c cVar = (b4.c) this.f9509g;
                if (cVar != null) {
                    return cVar;
                }
                I0(1);
                throw null;
            default:
                b4.d dVar = this.f9509g;
                if (dVar != null) {
                    return dVar;
                }
                J0(7);
                throw null;
        }
    }

    @Override // r3.InterfaceC0788P
    /* renamed from: R0, reason: merged with bridge method [inline-methods] */
    public final C0890w b(h4.V v4) {
        if (v4 == null) {
            P0(3);
            throw null;
        }
        if (v4.f7042a.e()) {
            return this;
        }
        AbstractC0468v abstractC0468vJ = l() instanceof InterfaceC0802e ? v4.j(3, e()) : v4.j(1, e());
        if (abstractC0468vJ == null) {
            return null;
        }
        return abstractC0468vJ == e() ? this : new C0890w(l(), new b4.e(abstractC0468vJ), t());
    }

    @Override // u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0799b a() {
        return this;
    }

    @Override // r3.InterfaceC0810m, r3.InterfaceC0820w
    public final A3.p c() {
        A3.p pVar = AbstractC0811n.f;
        if (pVar != null) {
            return pVar;
        }
        P0(9);
        throw null;
    }

    @Override // r3.InterfaceC0799b
    public final C0890w d0() {
        return null;
    }

    @Override // K3.c, b4.d
    public final AbstractC0468v e() {
        AbstractC0468v abstractC0468vE = Q0().e();
        if (abstractC0468vE != null) {
            return abstractC0468vE;
        }
        P0(6);
        throw null;
    }

    @Override // r3.InterfaceC0807j
    public final InterfaceC0807j l() {
        switch (this.f9508e) {
            case 0:
                InterfaceC0802e interfaceC0802e = (InterfaceC0802e) this.f;
                if (interfaceC0802e != null) {
                    return interfaceC0802e;
                }
                I0(2);
                throw null;
            default:
                InterfaceC0807j interfaceC0807j = this.f;
                if (interfaceC0807j != null) {
                    return interfaceC0807j;
                }
                J0(8);
                throw null;
        }
    }

    @Override // r3.InterfaceC0808k
    public final InterfaceC0786N m() {
        return InterfaceC0786N.f8790a;
    }

    @Override // r3.InterfaceC0799b
    public final AbstractC0468v n() {
        return e();
    }

    @Override // r3.InterfaceC0799b
    public final boolean o0() {
        return false;
    }

    @Override // r3.InterfaceC0799b
    public final Collection p() {
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet != null) {
            return setEmptySet;
        }
        P0(8);
        throw null;
    }

    @Override // u3.AbstractC0883o
    public String toString() {
        switch (this.f9508e) {
            case 0:
                return "class " + ((InterfaceC0802e) this.f).getName() + "::this";
            default:
                return super.toString();
        }
    }

    @Override // r3.InterfaceC0799b
    public final List u() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        P0(5);
        throw null;
    }

    @Override // r3.InterfaceC0799b
    public final List w0() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        P0(7);
        throw null;
    }

    @Override // u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0807j a() {
        return this;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0890w(InterfaceC0807j interfaceC0807j, K3.c cVar, InterfaceC0845h interfaceC0845h) {
        this(interfaceC0807j, cVar, interfaceC0845h, Q3.h.f2248d);
        if (interfaceC0807j == null) {
            J0(0);
            throw null;
        }
        if (interfaceC0845h != null) {
        } else {
            J0(2);
            throw null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0890w(InterfaceC0807j interfaceC0807j, K3.c cVar, InterfaceC0845h interfaceC0845h, Q3.f fVar) {
        super(interfaceC0845h, fVar);
        if (interfaceC0807j == null) {
            J0(3);
            throw null;
        }
        if (interfaceC0845h == null) {
            J0(5);
            throw null;
        }
        if (fVar != null) {
            this.f = interfaceC0807j;
            this.f9509g = cVar;
            return;
        }
        J0(6);
        throw null;
    }
}
