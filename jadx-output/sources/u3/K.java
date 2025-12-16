package u3;

import c3.InterfaceC0221a;
import h4.AbstractC0468v;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import r3.C0785M;
import r3.InterfaceC0782J;
import r3.InterfaceC0783K;
import r3.InterfaceC0786N;
import r3.InterfaceC0798a;
import r3.InterfaceC0807j;
import r3.InterfaceC0809l;
import r3.InterfaceC0816s;
import s3.C0843f;
import s3.C0844g;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public class K extends W implements InterfaceC0783K {

    /* renamed from: A, reason: collision with root package name */
    public M f9376A;

    /* renamed from: B, reason: collision with root package name */
    public C0887t f9377B;

    /* renamed from: C, reason: collision with root package name */
    public C0887t f9378C;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f9379h;

    /* renamed from: i, reason: collision with root package name */
    public g4.h f9380i;

    /* renamed from: j, reason: collision with root package name */
    public InterfaceC0221a f9381j;

    /* renamed from: k, reason: collision with root package name */
    public final int f9382k;

    /* renamed from: l, reason: collision with root package name */
    public A3.p f9383l;

    /* renamed from: m, reason: collision with root package name */
    public Collection f9384m;
    public final InterfaceC0783K n;

    /* renamed from: o, reason: collision with root package name */
    public final int f9385o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f9386p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f9387q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f9388r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f9389s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f9390t;

    /* renamed from: u, reason: collision with root package name */
    public final boolean f9391u;

    /* renamed from: v, reason: collision with root package name */
    public List f9392v;

    /* renamed from: w, reason: collision with root package name */
    public C0890w f9393w;

    /* renamed from: x, reason: collision with root package name */
    public C0890w f9394x;

    /* renamed from: y, reason: collision with root package name */
    public ArrayList f9395y;

    /* renamed from: z, reason: collision with root package name */
    public L f9396z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K(InterfaceC0807j interfaceC0807j, InterfaceC0783K interfaceC0783K, InterfaceC0845h interfaceC0845h, int i5, A3.p pVar, boolean z4, Q3.f fVar, int i6, InterfaceC0786N interfaceC0786N, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10) {
        super(interfaceC0807j, interfaceC0845h, fVar, null, interfaceC0786N);
        if (interfaceC0807j == null) {
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
        if (pVar == null) {
            I0(3);
            throw null;
        }
        if (fVar == null) {
            I0(4);
            throw null;
        }
        if (i6 == 0) {
            I0(5);
            throw null;
        }
        if (interfaceC0786N == null) {
            I0(6);
            throw null;
        }
        this.f9379h = z4;
        this.f9384m = null;
        this.f9392v = Collections.emptyList();
        this.f9382k = i5;
        this.f9383l = pVar;
        this.n = interfaceC0783K == null ? this : interfaceC0783K;
        this.f9385o = i6;
        this.f9386p = z5;
        this.f9387q = z6;
        this.f9388r = z7;
        this.f9389s = z8;
        this.f9390t = z9;
        this.f9391u = z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void I0(int i5) {
        String str;
        int i6;
        if (i5 != 28 && i5 != 38 && i5 != 39 && i5 != 41 && i5 != 42) {
            switch (i5) {
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i5 != 28 && i5 != 38 && i5 != 39 && i5 != 41 && i5 != 42) {
            switch (i5) {
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
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
            case 8:
                objArr[0] = "annotations";
                break;
            case 2:
            case 9:
                objArr[0] = "modality";
                break;
            case 3:
            case 10:
            case 20:
                objArr[0] = "visibility";
                break;
            case 4:
            case 11:
                objArr[0] = "name";
                break;
            case 5:
            case 12:
            case 35:
                objArr[0] = "kind";
                break;
            case 6:
            case 13:
            case 37:
                objArr[0] = "source";
                break;
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 14:
                objArr[0] = "inType";
                break;
            case 15:
            case 17:
                objArr[0] = "outType";
                break;
            case 16:
            case 18:
                objArr[0] = "typeParameters";
                break;
            case 19:
                objArr[0] = "contextReceiverParameters";
                break;
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 28:
            case 38:
            case 39:
            case 41:
            case 42:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl";
                break;
            case 27:
                objArr[0] = "originalSubstitutor";
                break;
            case 29:
                objArr[0] = "copyConfiguration";
                break;
            case 30:
                objArr[0] = "substitutor";
                break;
            case 31:
                objArr[0] = "accessorDescriptor";
                break;
            case 32:
                objArr[0] = "newOwner";
                break;
            case 33:
                objArr[0] = "newModality";
                break;
            case 34:
                objArr[0] = "newVisibility";
                break;
            case 36:
                objArr[0] = "newName";
                break;
            case 40:
                objArr[0] = "overriddenDescriptors";
                break;
        }
        if (i5 == 28) {
            objArr[1] = "getSourceToUseForCopy";
        } else if (i5 == 38) {
            objArr[1] = "getOriginal";
        } else if (i5 == 39) {
            objArr[1] = "getKind";
        } else if (i5 == 41) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (i5 != 42) {
            switch (i5) {
                case 21:
                    objArr[1] = "getTypeParameters";
                    break;
                case 22:
                    objArr[1] = "getContextReceiverParameters";
                    break;
                case 23:
                    objArr[1] = "getReturnType";
                    break;
                case 24:
                    objArr[1] = "getModality";
                    break;
                case 25:
                    objArr[1] = "getVisibility";
                    break;
                case 26:
                    objArr[1] = "getAccessors";
                    break;
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl";
                    break;
            }
        } else {
            objArr[1] = "copy";
        }
        switch (i5) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[2] = "create";
                break;
            case 14:
                objArr[2] = "setInType";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[2] = "setType";
                break;
            case 20:
                objArr[2] = "setVisibility";
                break;
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 28:
            case 38:
            case 39:
            case 41:
            case 42:
                break;
            case 27:
                objArr[2] = "substitute";
                break;
            case 29:
                objArr[2] = "doSubstitute";
                break;
            case 30:
            case 31:
                objArr[2] = "getSubstitutedInitialSignatureDescriptor";
                break;
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 40:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 28 && i5 != 38 && i5 != 39 && i5 != 41 && i5 != 42) {
            switch (i5) {
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    public static /* synthetic */ void Q0(int i5) {
        Object[] objArr = new Object[3];
        if (i5 == 1) {
            objArr[0] = "annotations";
        } else if (i5 == 2) {
            objArr[0] = "name";
        } else if (i5 == 3) {
            objArr[0] = "source";
        } else if (i5 == 4 || i5 == 5) {
            objArr[0] = "compileTimeInitializerFactory";
        } else {
            objArr[0] = "containingDeclaration";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorWithInitializerImpl";
        if (i5 == 4) {
            objArr[2] = "setCompileTimeInitializerFactory";
        } else if (i5 != 5) {
            objArr[2] = "<init>";
        } else {
            objArr[2] = "setCompileTimeInitializer";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static K S0(InterfaceC0807j interfaceC0807j, int i5, A3.p pVar, boolean z4, Q3.f fVar, int i6, InterfaceC0786N interfaceC0786N) {
        C0843f c0843f = C0844g.f9041a;
        if (interfaceC0807j == null) {
            I0(7);
            throw null;
        }
        if (i5 == 0) {
            I0(9);
            throw null;
        }
        if (pVar == null) {
            I0(10);
            throw null;
        }
        if (fVar == null) {
            I0(11);
            throw null;
        }
        if (i6 == 0) {
            I0(12);
            throw null;
        }
        if (interfaceC0786N != null) {
            return new K(interfaceC0807j, null, c0843f, i5, pVar, z4, fVar, i6, interfaceC0786N, false, false, false, false, false, false);
        }
        I0(13);
        throw null;
    }

    public static InterfaceC0816s U0(h4.V v4, InterfaceC0782J interfaceC0782J) {
        if (interfaceC0782J == null) {
            I0(31);
            throw null;
        }
        InterfaceC0816s interfaceC0816s = ((I) interfaceC0782J).n;
        if (interfaceC0816s != null) {
            return interfaceC0816s.b(v4);
        }
        return null;
    }

    @Override // r3.InterfaceC0792U
    public final boolean C0() {
        return this.f9386p;
    }

    public boolean D() {
        return this.f9390t;
    }

    public Object E(InterfaceC0798a interfaceC0798a) {
        return null;
    }

    @Override // u3.W, r3.InterfaceC0799b
    public final C0890w F() {
        return this.f9393w;
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.h(this, obj);
    }

    @Override // r3.InterfaceC0783K
    public final boolean G() {
        return this.f9391u;
    }

    @Override // r3.InterfaceC0800c
    public final void M(Collection collection) {
        if (collection != null) {
            this.f9384m = collection;
        } else {
            I0(40);
            throw null;
        }
    }

    public boolean P() {
        return this.f9387q;
    }

    @Override // r3.InterfaceC0800c
    /* renamed from: R0, reason: merged with bridge method [inline-methods] */
    public final K x0(InterfaceC0807j interfaceC0807j, int i5, A3.p pVar) {
        J j3 = new J(this);
        if (interfaceC0807j == null) {
            J.a(0);
            throw null;
        }
        j3.f9366a = interfaceC0807j;
        j3.f9369d = null;
        if (i5 == 0) {
            J.a(6);
            throw null;
        }
        j3.f9367b = i5;
        if (pVar == null) {
            J.a(8);
            throw null;
        }
        j3.f9368c = pVar;
        j3.f9370e = 2;
        j3.f9371g = false;
        K kB = j3.b();
        if (kB != null) {
            return kB;
        }
        I0(42);
        throw null;
    }

    @Override // r3.InterfaceC0792U
    public final boolean T() {
        return this.f9379h;
    }

    public K T0(InterfaceC0807j interfaceC0807j, int i5, A3.p pVar, InterfaceC0783K interfaceC0783K, int i6, Q3.f fVar) {
        C0785M c0785m = InterfaceC0786N.f8790a;
        if (interfaceC0807j == null) {
            I0(32);
            throw null;
        }
        if (i5 == 0) {
            I0(33);
            throw null;
        }
        if (pVar == null) {
            I0(34);
            throw null;
        }
        if (i6 == 0) {
            I0(35);
            throw null;
        }
        if (fVar == null) {
            I0(36);
            throw null;
        }
        InterfaceC0845h interfaceC0845hT = t();
        boolean zP = P();
        boolean zD = D();
        return new K(interfaceC0807j, interfaceC0783K, interfaceC0845hT, i5, pVar, this.f9379h, fVar, i6, c0785m, this.f9386p, zP, this.f9388r, this.f9389s, zD, this.f9391u);
    }

    public final void V0(L l5, M m5, C0887t c0887t, C0887t c0887t2) {
        this.f9396z = l5;
        this.f9376A = m5;
        this.f9377B = c0887t;
        this.f9378C = c0887t2;
    }

    public final void W0(g4.h hVar, InterfaceC0221a interfaceC0221a) {
        if (interfaceC0221a == null) {
            Q0(5);
            throw null;
        }
        this.f9381j = interfaceC0221a;
        if (hVar == null) {
            hVar = (g4.h) interfaceC0221a.a();
        }
        this.f9380i = hVar;
    }

    public void X0(AbstractC0468v abstractC0468v) {
    }

    public final void Y0(AbstractC0468v abstractC0468v, List list, C0890w c0890w, C0890w c0890w2, List list2) {
        if (abstractC0468v == null) {
            I0(17);
            throw null;
        }
        if (list == null) {
            I0(18);
            throw null;
        }
        if (list2 == null) {
            I0(19);
            throw null;
        }
        this.f9414g = abstractC0468v;
        this.f9395y = new ArrayList(list);
        this.f9394x = c0890w2;
        this.f9393w = c0890w;
        this.f9392v = list2;
    }

    @Override // r3.InterfaceC0810m, r3.InterfaceC0820w
    public final A3.p c() {
        A3.p pVar = this.f9383l;
        if (pVar != null) {
            return pVar;
        }
        I0(25);
        throw null;
    }

    @Override // u3.W, r3.InterfaceC0799b
    public final C0890w d0() {
        return this.f9394x;
    }

    @Override // r3.InterfaceC0783K
    public final M f() {
        return this.f9376A;
    }

    @Override // r3.InterfaceC0792U
    public final V3.g g0() {
        g4.h hVar = this.f9380i;
        if (hVar != null) {
            return (V3.g) hVar.a();
        }
        return null;
    }

    @Override // r3.InterfaceC0820w
    public final int i() {
        int i5 = this.f9382k;
        if (i5 != 0) {
            return i5;
        }
        I0(24);
        throw null;
    }

    @Override // r3.InterfaceC0783K
    public final C0887t i0() {
        return this.f9378C;
    }

    @Override // r3.InterfaceC0820w
    public final boolean j0() {
        return this.f9389s;
    }

    @Override // r3.InterfaceC0800c
    public final int k0() {
        int i5 = this.f9385o;
        if (i5 != 0) {
            return i5;
        }
        I0(39);
        throw null;
    }

    @Override // u3.W, r3.InterfaceC0799b
    public final AbstractC0468v n() {
        AbstractC0468v abstractC0468vE = e();
        if (abstractC0468vE != null) {
            return abstractC0468vE;
        }
        I0(23);
        throw null;
    }

    @Override // r3.InterfaceC0799b
    public final Collection p() {
        Collection collectionEmptyList = this.f9384m;
        if (collectionEmptyList == null) {
            collectionEmptyList = Collections.emptyList();
        }
        if (collectionEmptyList != null) {
            return collectionEmptyList;
        }
        I0(41);
        throw null;
    }

    @Override // r3.InterfaceC0783K
    public final L r() {
        return this.f9396z;
    }

    @Override // r3.InterfaceC0783K
    public final C0887t r0() {
        return this.f9377B;
    }

    @Override // u3.W, r3.InterfaceC0799b
    public final List u() {
        ArrayList arrayList = this.f9395y;
        if (arrayList != null) {
            return arrayList;
        }
        throw new IllegalStateException("typeParameters == null for " + AbstractC0883o.O0(this));
    }

    @Override // r3.InterfaceC0799b
    public final List v0() {
        List list = this.f9392v;
        if (list != null) {
            return list;
        }
        I0(22);
        throw null;
    }

    @Override // r3.InterfaceC0783K
    public final ArrayList w() {
        ArrayList arrayList = new ArrayList(2);
        L l5 = this.f9396z;
        if (l5 != null) {
            arrayList.add(l5);
        }
        M m5 = this.f9376A;
        if (m5 != null) {
            arrayList.add(m5);
        }
        return arrayList;
    }

    @Override // r3.InterfaceC0820w
    public final boolean y() {
        return this.f9388r;
    }

    @Override // r3.InterfaceC0788P
    public final InterfaceC0783K b(h4.V v4) {
        if (v4 == null) {
            I0(27);
            throw null;
        }
        if (v4.f7042a.e()) {
            return this;
        }
        J j3 = new J(this);
        h4.S sG = v4.g();
        if (sG == null) {
            J.a(15);
            throw null;
        }
        j3.f = sG;
        j3.f9369d = a();
        return j3.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [r3.K] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    @Override // u3.AbstractC0884p, u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0783K a() {
        InterfaceC0783K interfaceC0783K = this.n;
        ?? A4 = this;
        if (interfaceC0783K != this) {
            A4 = interfaceC0783K.a();
        }
        if (A4 != 0) {
            return A4;
        }
        I0(38);
        throw null;
    }
}
