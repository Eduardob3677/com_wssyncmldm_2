package u3;

import h4.AbstractC0472z;
import java.util.Collections;
import java.util.List;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import r3.InterfaceC0809l;

/* renamed from: u3.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0870b extends AbstractC0865A {

    /* renamed from: c, reason: collision with root package name */
    public final Q3.f f9417c;

    /* renamed from: d, reason: collision with root package name */
    public final g4.i f9418d;

    /* renamed from: e, reason: collision with root package name */
    public final g4.i f9419e;
    public final g4.i f;

    public AbstractC0870b(g4.o oVar, Q3.f fVar) {
        if (oVar == null) {
            c0(0);
            throw null;
        }
        if (fVar == null) {
            c0(1);
            throw null;
        }
        this.f9417c = fVar;
        g4.l lVar = (g4.l) oVar;
        this.f9418d = new g4.i(lVar, new C0869a(this, 0));
        this.f9419e = new g4.i(lVar, new C0869a(this, 1));
        this.f = new g4.i(lVar, new C0869a(this, 2));
    }

    public static /* synthetic */ void c0(int i5) {
        String str = (i5 == 2 || i5 == 3 || i5 == 4 || i5 == 5 || i5 == 6 || i5 == 9 || i5 == 12 || i5 == 14 || i5 == 16 || i5 == 17 || i5 == 19 || i5 == 20) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 2 || i5 == 3 || i5 == 4 || i5 == 5 || i5 == 6 || i5 == 9 || i5 == 12 || i5 == 14 || i5 == 16 || i5 == 17 || i5 == 19 || i5 == 20) ? 2 : 3];
        switch (i5) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            case 17:
            case 19:
            case 20:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
                break;
            case 7:
            case 13:
                objArr[0] = "typeArguments";
                break;
            case 8:
            case 11:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 10:
            case 15:
                objArr[0] = "typeSubstitution";
                break;
            case 18:
                objArr[0] = "substitutor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        if (i5 == 2) {
            objArr[1] = "getName";
        } else if (i5 == 3) {
            objArr[1] = "getOriginal";
        } else if (i5 == 4) {
            objArr[1] = "getUnsubstitutedInnerClassesScope";
        } else if (i5 == 5) {
            objArr[1] = "getThisAsReceiverParameter";
        } else if (i5 == 6) {
            objArr[1] = "getContextReceivers";
        } else if (i5 == 9 || i5 == 12 || i5 == 14 || i5 == 16) {
            objArr[1] = "getMemberScope";
        } else if (i5 == 17) {
            objArr[1] = "getUnsubstitutedMemberScope";
        } else if (i5 == 19) {
            objArr[1] = "substitute";
        } else if (i5 != 20) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
        } else {
            objArr[1] = "getDefaultType";
        }
        switch (i5) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            case 17:
            case 19:
            case 20:
                break;
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
                objArr[2] = "getMemberScope";
                break;
            case 18:
                objArr[2] = "substitute";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 2 && i5 != 3 && i5 != 4 && i5 != 5 && i5 != 6 && i5 != 9 && i5 != 12 && i5 != 14 && i5 != 16 && i5 != 17 && i5 != 19 && i5 != 20) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // r3.InterfaceC0802e
    public final a4.o C(h4.S s5) {
        if (s5 == null) {
            c0(15);
            throw null;
        }
        X3.f.i(T3.e.d(this));
        a4.o oVarD = d(s5, i4.f.f7172a);
        if (oVarD != null) {
            return oVarD;
        }
        c0(16);
        throw null;
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.b(this, obj);
    }

    @Override // r3.InterfaceC0802e
    public final C0890w H0() {
        C0890w c0890w = (C0890w) this.f.a();
        if (c0890w != null) {
            return c0890w;
        }
        c0(5);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public a4.o R() {
        a4.o oVar = (a4.o) this.f9419e.a();
        if (oVar != null) {
            return oVar;
        }
        c0(4);
        throw null;
    }

    @Override // u3.AbstractC0865A, r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0804g a() {
        return this;
    }

    @Override // u3.AbstractC0865A
    public a4.o d(h4.S s5, i4.f fVar) {
        if (s5 == null) {
            c0(10);
            throw null;
        }
        if (!s5.e()) {
            return new a4.t(J(fVar), h4.V.e(s5));
        }
        a4.o oVarJ = J(fVar);
        if (oVarJ != null) {
            return oVarJ;
        }
        c0(12);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public a4.o f0() {
        X3.f.i(T3.e.d(this));
        a4.o oVarJ = J(i4.f.f7172a);
        if (oVarJ != null) {
            return oVarJ;
        }
        c0(17);
        throw null;
    }

    @Override // r3.InterfaceC0807j
    public final Q3.f getName() {
        Q3.f fVar = this.f9417c;
        if (fVar != null) {
            return fVar;
        }
        c0(2);
        throw null;
    }

    @Override // r3.InterfaceC0788P
    /* renamed from: p0, reason: merged with bridge method [inline-methods] */
    public InterfaceC0802e b(h4.V v4) {
        if (v4 != null) {
            return v4.f7042a.e() ? this : new z(this, v4);
        }
        c0(18);
        throw null;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0804g
    public final AbstractC0472z q() {
        AbstractC0472z abstractC0472z = (AbstractC0472z) this.f9418d.a();
        if (abstractC0472z != null) {
            return abstractC0472z;
        }
        c0(20);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public List s0() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        c0(6);
        throw null;
    }

    @Override // u3.AbstractC0865A, r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0807j a() {
        return this;
    }

    @Override // u3.AbstractC0865A, r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0802e a() {
        return this;
    }
}
