package C3;

import A3.p;
import A3.z;
import I3.s;
import R2.u;
import Z0.j;
import c3.InterfaceC0221a;
import d3.i;
import h4.AbstractC0468v;
import h4.X;
import i3.x;
import java.util.ArrayList;
import o3.AbstractC0732i;
import o3.m;
import o3.r;
import r3.C0785M;
import r3.InterfaceC0783K;
import r3.InterfaceC0786N;
import r3.InterfaceC0798a;
import r3.InterfaceC0807j;
import s3.C0844g;
import s3.C0846i;
import s3.InterfaceC0845h;
import u3.C0890w;
import u3.K;
import u3.L;
import u3.M;
import u3.V;

/* loaded from: classes.dex */
public class g extends K implements a {

    /* renamed from: D, reason: collision with root package name */
    public final boolean f377D;
    public final Q2.e E;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(InterfaceC0807j interfaceC0807j, InterfaceC0845h interfaceC0845h, int i5, p pVar, boolean z4, Q3.f fVar, InterfaceC0786N interfaceC0786N, InterfaceC0783K interfaceC0783K, int i6, boolean z5, Q2.e eVar) {
        super(interfaceC0807j, interfaceC0783K, interfaceC0845h, i5, pVar, z4, fVar, i6, interfaceC0786N, false, false, false, false, false, false);
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
        if (interfaceC0786N == null) {
            I0(5);
            throw null;
        }
        if (i6 == 0) {
            I0(6);
            throw null;
        }
        this.f377D = z5;
        this.E = eVar;
    }

    public static /* synthetic */ void I0(int i5) {
        String str = i5 != 21 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i5 != 21 ? 3 : 2];
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
                objArr[0] = "visibility";
                break;
            case 4:
            case 11:
                objArr[0] = "name";
                break;
            case 5:
            case 12:
            case 18:
                objArr[0] = "source";
                break;
            case 6:
            case 16:
                objArr[0] = "kind";
                break;
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 13:
                objArr[0] = "newOwner";
                break;
            case 14:
                objArr[0] = "newModality";
                break;
            case 15:
                objArr[0] = "newVisibility";
                break;
            case 17:
                objArr[0] = "newName";
                break;
            case 19:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case 20:
                objArr[0] = "enhancedReturnType";
                break;
            case 21:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
                break;
            case 22:
                objArr[0] = "inType";
                break;
        }
        if (i5 != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i5) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "create";
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 19:
            case 20:
                objArr[2] = "enhance";
                break;
            case 21:
                break;
            case 22:
                objArr[2] = "setInType";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 == 21) {
            throw new IllegalStateException(str2);
        }
    }

    public static g Z0(InterfaceC0807j interfaceC0807j, D3.c cVar, p pVar, boolean z4, Q3.f fVar, w3.f fVar2, boolean z5) {
        if (interfaceC0807j == null) {
            I0(7);
            throw null;
        }
        if (fVar != null) {
            return new g(interfaceC0807j, cVar, 1, pVar, z4, fVar, fVar2, null, 1, z5, null);
        }
        I0(11);
        throw null;
    }

    @Override // u3.K, r3.InterfaceC0799b
    public final Object E(InterfaceC0798a interfaceC0798a) {
        Q2.e eVar = this.E;
        if (eVar == null || !((InterfaceC0798a) eVar.f2212c).equals(interfaceC0798a)) {
            return null;
        }
        return eVar.f2213d;
    }

    @Override // C3.a
    public final a G0(AbstractC0468v abstractC0468v, ArrayList arrayList, AbstractC0468v abstractC0468v2, Q2.e eVar) {
        L l5;
        C0890w c0890w;
        M m5;
        InterfaceC0783K interfaceC0783KA = a() == this ? null : a();
        g gVar = new g(l(), t(), i(), c(), this.f9379h, getName(), m(), interfaceC0783KA, k0(), this.f377D, eVar);
        L l6 = this.f9396z;
        if (l6 != null) {
            l5 = l;
            L l7 = new L(gVar, l6.t(), l6.i(), l6.c(), l6.f9359g, l6.f9360h, l6.f9363k, k0(), interfaceC0783KA == null ? null : interfaceC0783KA.r(), l6.m());
            l5.n = l6.n;
            l5.T0(abstractC0468v2);
        } else {
            l5 = null;
        }
        M m6 = this.f9376A;
        if (m6 != null) {
            M m7 = m6;
            m5 = m;
            M m8 = new M(gVar, m6.t(), m7.i(), m7.c(), m7.f9359g, m7.f9360h, m7.f9363k, k0(), interfaceC0783KA == null ? null : interfaceC0783KA.f(), m6.m());
            m5.n = m5.n;
            V v4 = (V) m6.w0().get(0);
            if (v4 == null) {
                M.I0(6);
                throw null;
            }
            m5.f9399o = v4;
            c0890w = null;
        } else {
            c0890w = null;
            m5 = null;
        }
        gVar.V0(l5, m5, this.f9377B, this.f9378C);
        InterfaceC0221a interfaceC0221a = this.f9381j;
        if (interfaceC0221a != null) {
            gVar.W0(this.f9380i, interfaceC0221a);
        }
        gVar.M(p());
        gVar.Y0(abstractC0468v2, u(), this.f9393w, abstractC0468v == null ? c0890w : j.E(this, abstractC0468v, C0844g.f9041a), u.f2325c);
        return gVar;
    }

    @Override // u3.K, r3.InterfaceC0792U
    public final boolean P() {
        AbstractC0468v abstractC0468vE = e();
        if (this.f377D) {
            i.e("type", abstractC0468vE);
            if (((AbstractC0732i.F(abstractC0468vE) || r.a(abstractC0468vE)) && !X.f(abstractC0468vE)) || AbstractC0732i.D(abstractC0468vE, m.f)) {
                C0846i c0846i = s.f925a;
                Q3.c cVar = z.f178p;
                i.d("ENHANCED_NULLABILITY_ANNOTATION", cVar);
                if (!x.f0(abstractC0468vE, cVar) || AbstractC0732i.D(abstractC0468vE, m.f)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // u3.K
    public final K T0(InterfaceC0807j interfaceC0807j, int i5, p pVar, InterfaceC0783K interfaceC0783K, int i6, Q3.f fVar) {
        C0785M c0785m = InterfaceC0786N.f8790a;
        if (interfaceC0807j == null) {
            I0(13);
            throw null;
        }
        if (i5 == 0) {
            I0(14);
            throw null;
        }
        if (pVar == null) {
            I0(15);
            throw null;
        }
        if (i6 == 0) {
            I0(16);
            throw null;
        }
        if (fVar == null) {
            I0(17);
            throw null;
        }
        return new g(interfaceC0807j, t(), i5, pVar, this.f9379h, fVar, c0785m, interfaceC0783K, i6, this.f377D, this.E);
    }

    @Override // u3.K
    public final void X0(AbstractC0468v abstractC0468v) {
    }

    @Override // u3.W, r3.InterfaceC0799b
    public final boolean o0() {
        return false;
    }
}
