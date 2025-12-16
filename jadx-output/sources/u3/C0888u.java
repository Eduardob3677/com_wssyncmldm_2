package u3;

import h4.AbstractC0468v;
import java.util.LinkedHashMap;
import java.util.List;
import r3.InterfaceC0807j;
import r3.InterfaceC0815r;
import r3.InterfaceC0816s;
import s3.InterfaceC0845h;

/* renamed from: u3.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0888u implements InterfaceC0815r {

    /* renamed from: c, reason: collision with root package name */
    public h4.S f9462c;

    /* renamed from: d, reason: collision with root package name */
    public InterfaceC0807j f9463d;

    /* renamed from: e, reason: collision with root package name */
    public int f9464e;
    public A3.p f;

    /* renamed from: g, reason: collision with root package name */
    public InterfaceC0816s f9465g;

    /* renamed from: h, reason: collision with root package name */
    public int f9466h;

    /* renamed from: i, reason: collision with root package name */
    public List f9467i;

    /* renamed from: j, reason: collision with root package name */
    public final List f9468j;

    /* renamed from: k, reason: collision with root package name */
    public C0890w f9469k;

    /* renamed from: l, reason: collision with root package name */
    public C0890w f9470l;

    /* renamed from: m, reason: collision with root package name */
    public AbstractC0468v f9471m;
    public Q3.f n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f9472o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f9473p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f9474q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f9475r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f9476s;

    /* renamed from: t, reason: collision with root package name */
    public List f9477t;

    /* renamed from: u, reason: collision with root package name */
    public InterfaceC0845h f9478u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f9479v;

    /* renamed from: w, reason: collision with root package name */
    public final LinkedHashMap f9480w;

    /* renamed from: x, reason: collision with root package name */
    public Boolean f9481x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f9482y;

    /* renamed from: z, reason: collision with root package name */
    public final /* synthetic */ AbstractC0889v f9483z;

    public C0888u(AbstractC0889v abstractC0889v, h4.S s5, InterfaceC0807j interfaceC0807j, int i5, A3.p pVar, int i6, List list, List list2, C0890w c0890w, AbstractC0468v abstractC0468v) {
        if (s5 == null) {
            b(0);
            throw null;
        }
        if (interfaceC0807j == null) {
            b(1);
            throw null;
        }
        if (i5 == 0) {
            b(2);
            throw null;
        }
        if (pVar == null) {
            b(3);
            throw null;
        }
        if (i6 == 0) {
            b(4);
            throw null;
        }
        if (list == null) {
            b(5);
            throw null;
        }
        if (list2 == null) {
            b(6);
            throw null;
        }
        if (abstractC0468v == null) {
            b(7);
            throw null;
        }
        this.f9483z = abstractC0889v;
        this.f9465g = null;
        this.f9470l = abstractC0889v.f9494l;
        this.f9472o = true;
        this.f9473p = false;
        this.f9474q = false;
        this.f9475r = false;
        this.f9476s = abstractC0889v.f9503v;
        this.f9477t = null;
        this.f9478u = null;
        this.f9479v = abstractC0889v.f9504w;
        this.f9480w = new LinkedHashMap();
        this.f9481x = null;
        this.f9482y = false;
        this.f9462c = s5;
        this.f9463d = interfaceC0807j;
        this.f9464e = i5;
        this.f = pVar;
        this.f9466h = i6;
        this.f9467i = list;
        this.f9468j = list2;
        this.f9469k = c0890w;
        this.f9471m = abstractC0468v;
        this.n = null;
    }

    public static /* synthetic */ void b(int i5) {
        String str;
        int i6;
        switch (i5) {
            case 9:
            case 11:
            case 13:
            case 15:
            case 16:
            case 18:
            case 20:
            case 22:
            case 24:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 36:
            case 38:
            case 40:
            case 41:
            case 42:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 10:
            case 12:
            case 14:
            case 17:
            case 19:
            case 21:
            case 23:
            case 25:
            case 35:
            case 37:
            case 39:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i5) {
            case 9:
            case 11:
            case 13:
            case 15:
            case 16:
            case 18:
            case 20:
            case 22:
            case 24:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 36:
            case 38:
            case 40:
            case 41:
            case 42:
                i6 = 2;
                break;
            case 10:
            case 12:
            case 14:
            case 17:
            case 19:
            case 21:
            case 23:
            case 25:
            case 35:
            case 37:
            case 39:
            default:
                i6 = 3;
                break;
        }
        Object[] objArr = new Object[i6];
        switch (i5) {
            case 1:
                objArr[0] = "newOwner";
                break;
            case 2:
                objArr[0] = "newModality";
                break;
            case 3:
                objArr[0] = "newVisibility";
                break;
            case 4:
            case 14:
                objArr[0] = "kind";
                break;
            case 5:
                objArr[0] = "newValueParameterDescriptors";
                break;
            case 6:
                objArr[0] = "newContextReceiverParameters";
                break;
            case 7:
                objArr[0] = "newReturnType";
                break;
            case 8:
                objArr[0] = "owner";
                break;
            case 9:
            case 11:
            case 13:
            case 15:
            case 16:
            case 18:
            case 20:
            case 22:
            case 24:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 36:
            case 38:
            case 40:
            case 41:
            case 42:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                break;
            case 10:
                objArr[0] = "modality";
                break;
            case 12:
                objArr[0] = "visibility";
                break;
            case 17:
                objArr[0] = "name";
                break;
            case 19:
            case 21:
                objArr[0] = "parameters";
                break;
            case 23:
                objArr[0] = "type";
                break;
            case 25:
                objArr[0] = "contextReceiverParameters";
                break;
            case 35:
                objArr[0] = "additionalAnnotations";
                break;
            case 37:
            default:
                objArr[0] = "substitution";
                break;
            case 39:
                objArr[0] = "userDataKey";
                break;
        }
        switch (i5) {
            case 9:
                objArr[1] = "setOwner";
                break;
            case 10:
            case 12:
            case 14:
            case 17:
            case 19:
            case 21:
            case 23:
            case 25:
            case 35:
            case 37:
            case 39:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                break;
            case 11:
                objArr[1] = "setModality";
                break;
            case 13:
                objArr[1] = "setVisibility";
                break;
            case 15:
                objArr[1] = "setKind";
                break;
            case 16:
                objArr[1] = "setCopyOverrides";
                break;
            case 18:
                objArr[1] = "setName";
                break;
            case 20:
                objArr[1] = "setValueParameters";
                break;
            case 22:
                objArr[1] = "setTypeParameters";
                break;
            case 24:
                objArr[1] = "setReturnType";
                break;
            case 26:
                objArr[1] = "setContextReceiverParameters";
                break;
            case 27:
                objArr[1] = "setExtensionReceiverParameter";
                break;
            case 28:
                objArr[1] = "setDispatchReceiverParameter";
                break;
            case 29:
                objArr[1] = "setOriginal";
                break;
            case 30:
                objArr[1] = "setSignatureChange";
                break;
            case 31:
                objArr[1] = "setPreserveSourceElement";
                break;
            case 32:
                objArr[1] = "setDropOriginalInContainingParts";
                break;
            case 33:
                objArr[1] = "setHiddenToOvercomeSignatureClash";
                break;
            case 34:
                objArr[1] = "setHiddenForResolutionEverywhereBesideSupercalls";
                break;
            case 36:
                objArr[1] = "setAdditionalAnnotations";
                break;
            case 38:
                objArr[1] = "setSubstitution";
                break;
            case 40:
                objArr[1] = "putUserData";
                break;
            case 41:
                objArr[1] = "getSubstitution";
                break;
            case 42:
                objArr[1] = "setJustForTypeSubstitution";
                break;
        }
        switch (i5) {
            case 8:
                objArr[2] = "setOwner";
                break;
            case 9:
            case 11:
            case 13:
            case 15:
            case 16:
            case 18:
            case 20:
            case 22:
            case 24:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 36:
            case 38:
            case 40:
            case 41:
            case 42:
                break;
            case 10:
                objArr[2] = "setModality";
                break;
            case 12:
                objArr[2] = "setVisibility";
                break;
            case 14:
                objArr[2] = "setKind";
                break;
            case 17:
                objArr[2] = "setName";
                break;
            case 19:
                objArr[2] = "setValueParameters";
                break;
            case 21:
                objArr[2] = "setTypeParameters";
                break;
            case 23:
                objArr[2] = "setReturnType";
                break;
            case 25:
                objArr[2] = "setContextReceiverParameters";
                break;
            case 35:
                objArr[2] = "setAdditionalAnnotations";
                break;
            case 37:
                objArr[2] = "setSubstitution";
                break;
            case 39:
                objArr[2] = "putUserData";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i5) {
            case 9:
            case 11:
            case 13:
            case 15:
            case 16:
            case 18:
            case 20:
            case 22:
            case 24:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 36:
            case 38:
            case 40:
            case 41:
            case 42:
                throw new IllegalStateException(str2);
            case 10:
            case 12:
            case 14:
            case 17:
            case 19:
            case 21:
            case 23:
            case 25:
            case 35:
            case 37:
            case 39:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r A(Q3.f fVar) {
        if (fVar != null) {
            this.n = fVar;
            return this;
        }
        b(17);
        throw null;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r B(A3.p pVar) {
        if (pVar != null) {
            this.f = pVar;
            return this;
        }
        b(12);
        throw null;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r D() {
        this.f9480w.put(C3.f.f374J, Boolean.TRUE);
        return this;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r E() {
        this.f9479v = true;
        return this;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r F() {
        this.f9477t = R2.u.f2325c;
        return this;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r I(AbstractC0468v abstractC0468v) {
        if (abstractC0468v != null) {
            this.f9471m = abstractC0468v;
            return this;
        }
        b(23);
        throw null;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r N() {
        this.f9476s = true;
        return this;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r O() {
        this.f9473p = true;
        return this;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r a(int i5) {
        if (i5 != 0) {
            this.f9466h = i5;
            return this;
        }
        b(14);
        throw null;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r f(C0890w c0890w) {
        this.f9470l = c0890w;
        return this;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r g() {
        this.f9472o = false;
        return this;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0816s j() {
        return this.f9483z.T0(this);
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r l() {
        this.f9474q = true;
        return this;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r o(List list) {
        this.f9467i = list;
        return this;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r u(InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j != null) {
            this.f9463d = interfaceC0807j;
            return this;
        }
        b(8);
        throw null;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r y(InterfaceC0845h interfaceC0845h) {
        if (interfaceC0845h != null) {
            this.f9478u = interfaceC0845h;
            return this;
        }
        b(35);
        throw null;
    }

    @Override // r3.InterfaceC0815r
    public final InterfaceC0815r z(int i5) {
        if (i5 != 0) {
            this.f9464e = i5;
            return this;
        }
        b(10);
        throw null;
    }
}
