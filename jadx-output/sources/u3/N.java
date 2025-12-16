package u3;

import h4.AbstractC0468v;
import java.util.List;
import r3.InterfaceC0786N;
import r3.InterfaceC0807j;
import r3.InterfaceC0815r;
import r3.InterfaceC0816s;
import s3.C0843f;
import s3.C0844g;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public class N extends AbstractC0889v {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N(InterfaceC0807j interfaceC0807j, N n, InterfaceC0845h interfaceC0845h, Q3.f fVar, int i5, InterfaceC0786N interfaceC0786N) {
        super(i5, fVar, interfaceC0807j, n, interfaceC0786N, interfaceC0845h);
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
        if (i5 == 0) {
            I0(3);
            throw null;
        }
        if (interfaceC0786N != null) {
        } else {
            I0(4);
            throw null;
        }
    }

    public static /* synthetic */ void I0(int i5) {
        String str = (i5 == 13 || i5 == 18 || i5 == 23 || i5 == 24 || i5 == 29 || i5 == 30) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 13 || i5 == 18 || i5 == 23 || i5 == 24 || i5 == 29 || i5 == 30) ? 2 : 3];
        switch (i5) {
            case 1:
            case 6:
            case 27:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 8:
            case 26:
                objArr[0] = "kind";
                break;
            case 4:
            case 9:
            case 28:
                objArr[0] = "source";
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 15:
            case 20:
                objArr[0] = "typeParameters";
                break;
            case 11:
            case 16:
            case 21:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 12:
            case 17:
            case 22:
                objArr[0] = "visibility";
                break;
            case 13:
            case 18:
            case 23:
            case 24:
            case 29:
            case 30:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
                break;
            case 14:
            case 19:
                objArr[0] = "contextReceiverParameters";
                break;
            case 25:
                objArr[0] = "newOwner";
                break;
        }
        if (i5 == 13 || i5 == 18 || i5 == 23) {
            objArr[1] = "initialize";
        } else if (i5 == 24) {
            objArr[1] = "getOriginal";
        } else if (i5 == 29) {
            objArr[1] = "copy";
        } else if (i5 != 30) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
        } else {
            objArr[1] = "newCopyBuilder";
        }
        switch (i5) {
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[2] = "create";
                break;
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 16:
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                objArr[2] = "initialize";
                break;
            case 13:
            case 18:
            case 23:
            case 24:
            case 29:
            case 30:
                break;
            case 25:
            case 26:
            case 27:
            case 28:
                objArr[2] = "createSubstitutedCopy";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 13 && i5 != 18 && i5 != 23 && i5 != 24 && i5 != 29 && i5 != 30) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static N b1(InterfaceC0807j interfaceC0807j, Q3.f fVar, int i5, InterfaceC0786N interfaceC0786N) {
        C0843f c0843f = C0844g.f9041a;
        if (interfaceC0807j == null) {
            I0(5);
            throw null;
        }
        if (fVar == null) {
            I0(7);
            throw null;
        }
        if (i5 == 0) {
            I0(8);
            throw null;
        }
        if (interfaceC0786N != null) {
            return new N(interfaceC0807j, null, c0843f, fVar, i5, interfaceC0786N);
        }
        I0(9);
        throw null;
    }

    @Override // u3.AbstractC0889v
    public AbstractC0889v S0(int i5, Q3.f fVar, InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, InterfaceC0786N interfaceC0786N, InterfaceC0845h interfaceC0845h) {
        if (interfaceC0807j == null) {
            I0(25);
            throw null;
        }
        if (i5 == 0) {
            I0(26);
            throw null;
        }
        if (interfaceC0845h == null) {
            I0(27);
            throw null;
        }
        N n = (N) interfaceC0816s;
        if (fVar == null) {
            fVar = getName();
        }
        return new N(interfaceC0807j, n, interfaceC0845h, fVar, i5, interfaceC0786N);
    }

    @Override // u3.AbstractC0889v, u3.AbstractC0884p, u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    /* renamed from: c1, reason: merged with bridge method [inline-methods] */
    public final N a() {
        N n = (N) super.a();
        if (n != null) {
            return n;
        }
        I0(24);
        throw null;
    }

    @Override // u3.AbstractC0889v
    /* renamed from: d1, reason: merged with bridge method [inline-methods] */
    public final N V0(C0890w c0890w, C0890w c0890w2, List list, List list2, List list3, AbstractC0468v abstractC0468v, int i5, A3.p pVar) {
        if (list == null) {
            I0(14);
            throw null;
        }
        if (list2 == null) {
            I0(15);
            throw null;
        }
        if (list3 == null) {
            I0(16);
            throw null;
        }
        if (pVar != null) {
            return e1(c0890w, c0890w2, list, list2, list3, abstractC0468v, i5, pVar, null);
        }
        I0(17);
        throw null;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0816s
    public InterfaceC0815r e0() {
        return W0(h4.V.f7041b);
    }

    public N e1(C0890w c0890w, C0890w c0890w2, List list, List list2, List list3, AbstractC0468v abstractC0468v, int i5, A3.p pVar, R2.v vVar) {
        if (list == null) {
            I0(19);
            throw null;
        }
        if (list2 == null) {
            I0(20);
            throw null;
        }
        if (list3 == null) {
            I0(21);
            throw null;
        }
        if (pVar != null) {
            super.V0(c0890w, c0890w2, list, list2, list3, abstractC0468v, i5, pVar);
            return this;
        }
        I0(22);
        throw null;
    }
}
