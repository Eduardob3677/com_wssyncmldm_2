package u3;

import h0.AbstractC0432c;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import r3.InterfaceC0786N;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0806i;
import r3.InterfaceC0807j;
import r3.InterfaceC0809l;
import r3.InterfaceC0816s;
import s3.InterfaceC0845h;

/* renamed from: u3.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0879k extends AbstractC0889v implements InterfaceC0806i {

    /* renamed from: G, reason: collision with root package name */
    public final boolean f9439G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0879k(InterfaceC0802e interfaceC0802e, InterfaceC0806i interfaceC0806i, InterfaceC0845h interfaceC0845h, boolean z4, int i5, InterfaceC0786N interfaceC0786N) {
        super(i5, Q3.h.f2249e, interfaceC0802e, interfaceC0806i, interfaceC0786N, interfaceC0845h);
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
        this.f9439G = z4;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void I0(int i5) {
        String str;
        int i6;
        if (i5 != 21 && i5 != 27) {
            switch (i5) {
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i5 != 21 && i5 != 27) {
            switch (i5) {
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    break;
                default:
                    i6 = 3;
                    break;
            }
        } else {
            i6 = 2;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 1:
            case 5:
            case 8:
            case 25:
                objArr[0] = "annotations";
                break;
            case 2:
            case 24:
                objArr[0] = "kind";
                break;
            case 3:
            case 6:
            case 9:
            case 26:
                objArr[0] = "source";
                break;
            case 4:
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 13:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 11:
            case 14:
                objArr[0] = "visibility";
                break;
            case 12:
                objArr[0] = "typeParameterDescriptors";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 27:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl";
                break;
            case 20:
                objArr[0] = "originalSubstitutor";
                break;
            case 22:
                objArr[0] = "overriddenDescriptors";
                break;
            case 23:
                objArr[0] = "newOwner";
                break;
        }
        if (i5 == 21) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (i5 != 27) {
            switch (i5) {
                case 15:
                case 16:
                    objArr[1] = "calculateContextReceiverParameters";
                    break;
                case 17:
                    objArr[1] = "getContainingDeclaration";
                    break;
                case 18:
                    objArr[1] = "getConstructedClass";
                    break;
                case 19:
                    objArr[1] = "getOriginal";
                    break;
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl";
                    break;
            }
        } else {
            objArr[1] = "copy";
        }
        switch (i5) {
            case 4:
            case 5:
            case 6:
                objArr[2] = "create";
                break;
            case 7:
            case 8:
            case 9:
                objArr[2] = "createSynthesized";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                objArr[2] = "initialize";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 27:
                break;
            case 20:
                objArr[2] = "substitute";
                break;
            case 22:
                objArr[2] = "setOverriddenDescriptors";
                break;
            case 23:
            case 24:
            case 25:
            case 26:
                objArr[2] = "createSubstitutedCopy";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 21 && i5 != 27) {
            switch (i5) {
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.x(this, obj);
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0800c
    public final void M(Collection collection) {
        if (collection != null) {
            return;
        }
        I0(22);
        throw null;
    }

    @Override // r3.InterfaceC0806i
    public final boolean V() {
        return this.f9439G;
    }

    @Override // r3.InterfaceC0806i
    public final InterfaceC0802e Y() {
        InterfaceC0802e interfaceC0802eL = l();
        if (interfaceC0802eL != null) {
            return interfaceC0802eL;
        }
        I0(18);
        throw null;
    }

    @Override // u3.AbstractC0889v
    /* renamed from: b1, reason: merged with bridge method [inline-methods] */
    public C0879k S0(int i5, Q3.f fVar, InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, InterfaceC0786N interfaceC0786N, InterfaceC0845h interfaceC0845h) {
        if (interfaceC0807j == null) {
            I0(23);
            throw null;
        }
        if (i5 == 0) {
            I0(24);
            throw null;
        }
        if (interfaceC0845h == null) {
            I0(25);
            throw null;
        }
        if (i5 == 1 || i5 == 4) {
            return new C0879k((InterfaceC0802e) interfaceC0807j, this, interfaceC0845h, this.f9439G, 1, interfaceC0786N);
        }
        throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + interfaceC0807j + "\nkind: " + AbstractC0432c.s(i5));
    }

    @Override // u3.AbstractC0884p, r3.InterfaceC0807j
    /* renamed from: c1, reason: merged with bridge method [inline-methods] */
    public final InterfaceC0802e l() {
        InterfaceC0802e interfaceC0802e = (InterfaceC0802e) super.l();
        if (interfaceC0802e != null) {
            return interfaceC0802e;
        }
        I0(17);
        throw null;
    }

    @Override // u3.AbstractC0889v, u3.AbstractC0884p, u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    /* renamed from: d1, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final C0879k a() {
        C0879k c0879k = (C0879k) super.a();
        if (c0879k != null) {
            return c0879k;
        }
        I0(19);
        throw null;
    }

    public final void e1(List list, A3.p pVar) {
        if (list == null) {
            I0(13);
            throw null;
        }
        if (pVar != null) {
            f1(list, pVar, l().s());
        } else {
            I0(14);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f1(List list, A3.p pVar, List list2) {
        C0890w c0890wH0;
        List listEmptyList;
        if (list == null) {
            I0(10);
            throw null;
        }
        if (pVar == null) {
            I0(11);
            throw null;
        }
        if (list2 == null) {
            I0(12);
            throw null;
        }
        InterfaceC0802e interfaceC0802eL = l();
        if (interfaceC0802eL.z()) {
            InterfaceC0807j interfaceC0807jL = interfaceC0802eL.l();
            c0890wH0 = interfaceC0807jL instanceof InterfaceC0802e ? ((InterfaceC0802e) interfaceC0807jL).H0() : null;
        }
        InterfaceC0802e interfaceC0802eL2 = l();
        if (interfaceC0802eL2.s0().isEmpty()) {
            listEmptyList = Collections.emptyList();
            if (listEmptyList == null) {
                I0(16);
                throw null;
            }
        } else {
            listEmptyList = interfaceC0802eL2.s0();
            if (listEmptyList == null) {
                I0(15);
                throw null;
            }
        }
        V0(null, c0890wH0, listEmptyList, list2, list, null, 1, pVar);
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0816s, r3.InterfaceC0788P
    /* renamed from: g1, reason: merged with bridge method [inline-methods] */
    public final C0879k b(h4.V v4) {
        if (v4 != null) {
            return (C0879k) super.b(v4);
        }
        I0(20);
        throw null;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0800c, r3.InterfaceC0799b
    public final Collection p() {
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet != null) {
            return setEmptySet;
        }
        I0(21);
        throw null;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0800c
    public final InterfaceC0800c x0(InterfaceC0807j interfaceC0807j, int i5, A3.p pVar) {
        return (C0879k) Q0(interfaceC0807j, i5, pVar);
    }
}
