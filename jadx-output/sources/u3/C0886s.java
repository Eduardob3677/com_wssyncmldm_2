package u3;

import h4.AbstractC0472z;
import h4.C0457j;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import r3.AbstractC0790S;
import r3.AbstractC0811n;
import r3.InterfaceC0786N;
import r3.InterfaceC0802e;
import s3.InterfaceC0845h;

/* renamed from: u3.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0886s extends AbstractC0880l {

    /* renamed from: j, reason: collision with root package name */
    public final C0457j f9458j;

    /* renamed from: k, reason: collision with root package name */
    public final r f9459k;

    /* renamed from: l, reason: collision with root package name */
    public final g4.m f9460l;

    /* renamed from: m, reason: collision with root package name */
    public final InterfaceC0845h f9461m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0886s(g4.o oVar, InterfaceC0802e interfaceC0802e, AbstractC0472z abstractC0472z, Q3.f fVar, g4.i iVar, InterfaceC0845h interfaceC0845h, InterfaceC0786N interfaceC0786N) {
        super(oVar, interfaceC0802e, fVar, interfaceC0786N);
        if (oVar == null) {
            c0(6);
            throw null;
        }
        if (interfaceC0802e == null) {
            c0(7);
            throw null;
        }
        if (abstractC0472z == null) {
            c0(8);
            throw null;
        }
        if (fVar == null) {
            c0(9);
            throw null;
        }
        if (iVar == null) {
            c0(10);
            throw null;
        }
        this.f9461m = interfaceC0845h;
        this.f9458j = new C0457j(this, Collections.emptyList(), Collections.singleton(abstractC0472z), oVar);
        this.f9459k = new r(this, oVar);
        this.f9460l = iVar;
    }

    public static /* synthetic */ void c0(int i5) {
        String str;
        int i6;
        switch (i5) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i5) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                i6 = 2;
                break;
            default:
                i6 = 3;
                break;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 1:
                objArr[0] = "enumClass";
                break;
            case 2:
            case 9:
                objArr[0] = "name";
                break;
            case 3:
            case 10:
                objArr[0] = "enumMemberNames";
                break;
            case 4:
            case 11:
                objArr[0] = "annotations";
                break;
            case 5:
            case 12:
                objArr[0] = "source";
                break;
            case 6:
            default:
                objArr[0] = "storageManager";
                break;
            case 7:
                objArr[0] = "containingClass";
                break;
            case 8:
                objArr[0] = "supertype";
                break;
            case 13:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (i5) {
            case 14:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 15:
                objArr[1] = "getStaticScope";
                break;
            case 16:
                objArr[1] = "getConstructors";
                break;
            case 17:
                objArr[1] = "getTypeConstructor";
                break;
            case 18:
                objArr[1] = "getKind";
                break;
            case 19:
                objArr[1] = "getModality";
                break;
            case 20:
                objArr[1] = "getVisibility";
                break;
            case 21:
                objArr[1] = "getAnnotations";
                break;
            case 22:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 23:
                objArr[1] = "getSealedSubclasses";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (i5) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "<init>";
                break;
            case 13:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                break;
            default:
                objArr[2] = "create";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i5) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static C0886s u0(g4.o oVar, InterfaceC0802e interfaceC0802e, Q3.f fVar, g4.i iVar, InterfaceC0845h interfaceC0845h, InterfaceC0786N interfaceC0786N) {
        if (oVar == null) {
            c0(0);
            throw null;
        }
        if (interfaceC0802e == null) {
            c0(1);
            throw null;
        }
        if (fVar == null) {
            c0(2);
            throw null;
        }
        if (iVar != null) {
            return new C0886s(oVar, interfaceC0802e, interfaceC0802e.q(), fVar, iVar, interfaceC0845h, interfaceC0786N);
        }
        c0(3);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final Collection A0() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        c0(23);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final boolean D0() {
        return false;
    }

    @Override // r3.InterfaceC0804g
    public final h4.J H() {
        C0457j c0457j = this.f9458j;
        if (c0457j != null) {
            return c0457j;
        }
        c0(17);
        throw null;
    }

    @Override // u3.AbstractC0865A
    public final a4.o J(i4.f fVar) {
        r rVar = this.f9459k;
        if (rVar != null) {
            return rVar;
        }
        c0(14);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final int L() {
        return 4;
    }

    @Override // r3.InterfaceC0802e
    public final boolean N() {
        return false;
    }

    @Override // r3.InterfaceC0802e
    public final AbstractC0790S S() {
        return null;
    }

    @Override // r3.InterfaceC0802e
    public final C0879k W() {
        return null;
    }

    @Override // r3.InterfaceC0802e
    public final a4.o X() {
        return a4.n.f3128b;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0810m, r3.InterfaceC0820w
    public final A3.p c() {
        A3.p pVar = AbstractC0811n.f8813e;
        if (pVar != null) {
            return pVar;
        }
        c0(20);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final boolean h0() {
        return false;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0820w
    public final int i() {
        return 1;
    }

    @Override // r3.InterfaceC0802e
    public final boolean j() {
        return false;
    }

    @Override // r3.InterfaceC0820w
    public final boolean j0() {
        return false;
    }

    @Override // r3.InterfaceC0802e
    public final Collection k() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        c0(16);
        throw null;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0805h
    public final List s() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        c0(22);
        throw null;
    }

    @Override // s3.InterfaceC0838a
    public final InterfaceC0845h t() {
        InterfaceC0845h interfaceC0845h = this.f9461m;
        if (interfaceC0845h != null) {
            return interfaceC0845h;
        }
        c0(21);
        throw null;
    }

    public final String toString() {
        return "enum entry " + getName();
    }

    @Override // r3.InterfaceC0802e
    public final boolean v() {
        return false;
    }

    @Override // r3.InterfaceC0820w
    public final boolean y() {
        return false;
    }

    @Override // r3.InterfaceC0805h
    public final boolean z() {
        return false;
    }
}
