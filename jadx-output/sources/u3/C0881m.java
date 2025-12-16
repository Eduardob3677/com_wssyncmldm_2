package u3;

import h4.C0457j;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import r3.AbstractC0790S;
import r3.AbstractC0811n;
import r3.C0785M;
import r3.InterfaceC0786N;
import r3.InterfaceC0807j;
import s3.C0844g;
import s3.InterfaceC0845h;

/* renamed from: u3.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0881m extends AbstractC0880l {

    /* renamed from: j, reason: collision with root package name */
    public final int f9443j;

    /* renamed from: k, reason: collision with root package name */
    public final int f9444k;

    /* renamed from: l, reason: collision with root package name */
    public final C0457j f9445l;

    /* renamed from: m, reason: collision with root package name */
    public a4.o f9446m;
    public Set n;

    /* renamed from: o, reason: collision with root package name */
    public C0879k f9447o;

    /* JADX WARN: Illegal instructions before constructor call */
    public C0881m(InterfaceC0807j interfaceC0807j, Q3.f fVar, int i5, int i6, List list, g4.o oVar) {
        C0785M c0785m = InterfaceC0786N.f8790a;
        if (interfaceC0807j == null) {
            c0(0);
            throw null;
        }
        if (fVar == null) {
            c0(1);
            throw null;
        }
        if (i5 == 0) {
            c0(2);
            throw null;
        }
        if (i6 == 0) {
            c0(3);
            throw null;
        }
        if (oVar == null) {
            c0(6);
            throw null;
        }
        super(oVar, interfaceC0807j, fVar, c0785m);
        this.f9443j = i5;
        this.f9444k = i6;
        this.f9445l = new C0457j(this, Collections.emptyList(), list, oVar);
    }

    public static /* synthetic */ void c0(int i5) {
        String str;
        int i6;
        switch (i5) {
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 12:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i5) {
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                i6 = 2;
                break;
            case 12:
            default:
                i6 = 3;
                break;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
                objArr[0] = "modality";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = "supertypes";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
                objArr[0] = "storageManager";
                break;
            case 7:
                objArr[0] = "unsubstitutedMemberScope";
                break;
            case 8:
                objArr[0] = "constructors";
                break;
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl";
                break;
            case 12:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i5) {
            case 9:
                objArr[1] = "getAnnotations";
                break;
            case 10:
                objArr[1] = "getTypeConstructor";
                break;
            case 11:
                objArr[1] = "getConstructors";
                break;
            case 12:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl";
                break;
            case 13:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 14:
                objArr[1] = "getStaticScope";
                break;
            case 15:
                objArr[1] = "getKind";
                break;
            case 16:
                objArr[1] = "getModality";
                break;
            case 17:
                objArr[1] = "getVisibility";
                break;
            case 18:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 19:
                objArr[1] = "getSealedSubclasses";
                break;
        }
        switch (i5) {
            case 7:
            case 8:
                objArr[2] = "initialize";
                break;
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                break;
            case 12:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i5) {
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                throw new IllegalStateException(str2);
            case 12:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // r3.InterfaceC0802e
    public final Collection A0() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        c0(19);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final boolean D0() {
        return false;
    }

    @Override // r3.InterfaceC0804g
    public final h4.J H() {
        C0457j c0457j = this.f9445l;
        if (c0457j != null) {
            return c0457j;
        }
        c0(10);
        throw null;
    }

    @Override // u3.AbstractC0865A
    public final a4.o J(i4.f fVar) {
        a4.o oVar = this.f9446m;
        if (oVar != null) {
            return oVar;
        }
        c0(13);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final int L() {
        int i5 = this.f9444k;
        if (i5 != 0) {
            return i5;
        }
        c0(15);
        throw null;
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
        return this.f9447o;
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
        c0(17);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final boolean h0() {
        return false;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0820w
    public final int i() {
        int i5 = this.f9443j;
        if (i5 != 0) {
            return i5;
        }
        c0(16);
        throw null;
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
        Set set = this.n;
        if (set != null) {
            return set;
        }
        c0(11);
        throw null;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0805h
    public final List s() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        c0(18);
        throw null;
    }

    @Override // s3.InterfaceC0838a
    public final InterfaceC0845h t() {
        return C0844g.f9041a;
    }

    public String toString() {
        return "class " + getName();
    }

    public final void u0(a4.o oVar, Set set, C0879k c0879k) {
        this.f9446m = oVar;
        this.n = set;
        this.f9447o = c0879k;
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
