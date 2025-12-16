package u3;

import h4.AbstractC0472z;
import java.util.List;
import r3.C0785M;
import r3.C0787O;
import r3.InterfaceC0786N;
import r3.InterfaceC0789Q;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import r3.InterfaceC0808k;
import r3.InterfaceC0809l;
import s3.InterfaceC0845h;

/* renamed from: u3.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0878j extends AbstractC0884p implements InterfaceC0789Q {

    /* renamed from: g, reason: collision with root package name */
    public final int f9433g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f9434h;

    /* renamed from: i, reason: collision with root package name */
    public final int f9435i;

    /* renamed from: j, reason: collision with root package name */
    public final g4.i f9436j;

    /* renamed from: k, reason: collision with root package name */
    public final g4.i f9437k;

    /* renamed from: l, reason: collision with root package name */
    public final g4.l f9438l;

    /* JADX WARN: Illegal instructions before constructor call */
    public AbstractC0878j(g4.o oVar, InterfaceC0807j interfaceC0807j, InterfaceC0845h interfaceC0845h, Q3.f fVar, int i5, boolean z4, int i6, C0787O c0787o) {
        C0785M c0785m = InterfaceC0786N.f8790a;
        if (oVar == null) {
            I0(0);
            throw null;
        }
        if (interfaceC0807j == null) {
            I0(1);
            throw null;
        }
        if (interfaceC0845h == null) {
            I0(2);
            throw null;
        }
        if (fVar == null) {
            I0(3);
            throw null;
        }
        if (i5 == 0) {
            I0(4);
            throw null;
        }
        if (c0787o == null) {
            I0(6);
            throw null;
        }
        super(interfaceC0807j, interfaceC0845h, fVar, c0785m);
        this.f9433g = i5;
        this.f9434h = z4;
        this.f9435i = i6;
        C0874f c0874f = new C0874f(this, oVar, c0787o);
        g4.l lVar = (g4.l) oVar;
        this.f9436j = new g4.i(lVar, c0874f);
        this.f9437k = new g4.i(lVar, new C0876h(this, fVar, 0));
        this.f9438l = lVar;
    }

    public static /* synthetic */ void I0(int i5) {
        String str;
        int i6;
        switch (i5) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 12:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i5) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
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
                objArr[0] = "containingDeclaration";
                break;
            case 2:
                objArr[0] = "annotations";
                break;
            case 3:
                objArr[0] = "name";
                break;
            case 4:
                objArr[0] = "variance";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
                objArr[0] = "supertypeLoopChecker";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
            case 12:
                objArr[0] = "bounds";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (i5) {
            case 7:
                objArr[1] = "getVariance";
                break;
            case 8:
                objArr[1] = "getUpperBounds";
                break;
            case 9:
                objArr[1] = "getTypeConstructor";
                break;
            case 10:
                objArr[1] = "getDefaultType";
                break;
            case 11:
                objArr[1] = "getOriginal";
                break;
            case 12:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
            case 13:
                objArr[1] = "processBoundsWithoutCycles";
                break;
            case 14:
                objArr[1] = "getStorageManager";
                break;
        }
        switch (i5) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                break;
            case 12:
                objArr[2] = "processBoundsWithoutCycles";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i5) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                throw new IllegalStateException(str2);
            case 12:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // r3.InterfaceC0789Q
    public final int A() {
        int i5 = this.f9433g;
        if (i5 != 0) {
            return i5;
        }
        I0(7);
        throw null;
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.t(this, obj);
    }

    @Override // r3.InterfaceC0804g
    public final h4.J H() {
        h4.J j3 = (h4.J) this.f9436j.a();
        if (j3 != null) {
            return j3;
        }
        I0(9);
        throw null;
    }

    @Override // r3.InterfaceC0789Q
    public final g4.o K() {
        g4.l lVar = this.f9438l;
        if (lVar != null) {
            return lVar;
        }
        I0(14);
        throw null;
    }

    @Override // u3.AbstractC0884p
    /* renamed from: P0 */
    public final InterfaceC0808k a() {
        return this;
    }

    public List Q0(List list) {
        return list;
    }

    public abstract List R0();

    @Override // u3.AbstractC0884p, u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0804g a() {
        return this;
    }

    @Override // r3.InterfaceC0789Q
    public final List getUpperBounds() {
        List listJ = ((C0877i) H()).j();
        if (listJ != null) {
            return listJ;
        }
        I0(8);
        throw null;
    }

    @Override // r3.InterfaceC0789Q
    public final boolean m0() {
        return false;
    }

    @Override // r3.InterfaceC0789Q
    public final boolean n0() {
        return this.f9434h;
    }

    @Override // r3.InterfaceC0804g
    public final AbstractC0472z q() {
        AbstractC0472z abstractC0472z = (AbstractC0472z) this.f9437k.a();
        if (abstractC0472z != null) {
            return abstractC0472z;
        }
        I0(10);
        throw null;
    }

    @Override // r3.InterfaceC0789Q
    public final int z0() {
        return this.f9435i;
    }

    @Override // u3.AbstractC0884p, u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0807j a() {
        return this;
    }

    @Override // u3.AbstractC0884p, u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0789Q a() {
        return this;
    }
}
