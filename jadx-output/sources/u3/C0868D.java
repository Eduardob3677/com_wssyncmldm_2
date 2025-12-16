package u3;

import h4.C0457j;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import r3.AbstractC0790S;
import r3.C0785M;
import r3.InterfaceC0786N;
import s3.C0844g;
import s3.InterfaceC0845h;

/* renamed from: u3.D, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0868D extends AbstractC0880l {

    /* renamed from: j, reason: collision with root package name */
    public final int f9346j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f9347k;

    /* renamed from: l, reason: collision with root package name */
    public int f9348l;

    /* renamed from: m, reason: collision with root package name */
    public A3.p f9349m;
    public C0457j n;

    /* renamed from: o, reason: collision with root package name */
    public ArrayList f9350o;

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f9351p;

    /* renamed from: q, reason: collision with root package name */
    public final g4.o f9352q;

    /* JADX WARN: Illegal instructions before constructor call */
    public C0868D(q3.l lVar, Q3.f fVar, g4.b bVar) {
        C0785M c0785m = InterfaceC0786N.f8790a;
        if (fVar == null) {
            c0(2);
            throw null;
        }
        if (bVar == null) {
            c0(4);
            throw null;
        }
        super(bVar, lVar, fVar, c0785m);
        this.f9351p = new ArrayList();
        this.f9352q = bVar;
        this.f9346j = 2;
        this.f9347k = false;
    }

    public static /* synthetic */ void c0(int i5) {
        String str;
        int i6;
        switch (i5) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i5) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                i6 = 2;
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                i6 = 3;
                break;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 1:
                objArr[0] = "kind";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "source";
                break;
            case 4:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 6:
                objArr[0] = "modality";
                break;
            case 9:
                objArr[0] = "visibility";
                break;
            case 12:
                objArr[0] = "supertype";
                break;
            case 14:
                objArr[0] = "typeParameters";
                break;
            case 16:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i5) {
            case 5:
                objArr[1] = "getAnnotations";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 7:
                objArr[1] = "getModality";
                break;
            case 8:
                objArr[1] = "getKind";
                break;
            case 10:
                objArr[1] = "getVisibility";
                break;
            case 11:
                objArr[1] = "getTypeConstructor";
                break;
            case 13:
                objArr[1] = "getConstructors";
                break;
            case 15:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 17:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 18:
                objArr[1] = "getStaticScope";
                break;
            case 19:
                objArr[1] = "getSealedSubclasses";
                break;
        }
        switch (i5) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                break;
            case 6:
                objArr[2] = "setModality";
                break;
            case 9:
                objArr[2] = "setVisibility";
                break;
            case 12:
                objArr[2] = "addSupertype";
                break;
            case 14:
                objArr[2] = "setTypeParameterDescriptors";
                break;
            case 16:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i5) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                throw new IllegalStateException(str2);
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
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
        C0457j c0457j = this.n;
        if (c0457j != null) {
            return c0457j;
        }
        c0(11);
        throw null;
    }

    @Override // u3.AbstractC0865A
    public final a4.o J(i4.f fVar) {
        return a4.n.f3128b;
    }

    @Override // r3.InterfaceC0802e
    public final int L() {
        int i5 = this.f9346j;
        if (i5 != 0) {
            return i5;
        }
        c0(8);
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
        return null;
    }

    @Override // r3.InterfaceC0802e
    public final a4.o X() {
        return a4.n.f3128b;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0810m, r3.InterfaceC0820w
    public final A3.p c() {
        A3.p pVar = this.f9349m;
        if (pVar != null) {
            return pVar;
        }
        c0(10);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final boolean h0() {
        return false;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0820w
    public final int i() {
        int i5 = this.f9348l;
        if (i5 != 0) {
            return i5;
        }
        c0(7);
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
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet != null) {
            return setEmptySet;
        }
        c0(13);
        throw null;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0805h
    public final List s() {
        ArrayList arrayList = this.f9350o;
        if (arrayList != null) {
            return arrayList;
        }
        c0(15);
        throw null;
    }

    @Override // s3.InterfaceC0838a
    public final InterfaceC0845h t() {
        return C0844g.f9041a;
    }

    public final String toString() {
        return AbstractC0883o.O0(this);
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
        return this.f9347k;
    }
}
