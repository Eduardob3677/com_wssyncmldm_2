package u3;

import c3.InterfaceC0221a;
import h4.AbstractC0450c;
import h4.AbstractC0468v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import r3.AbstractC0811n;
import r3.C0785M;
import r3.InterfaceC0783K;
import r3.InterfaceC0786N;
import r3.InterfaceC0807j;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class J {

    /* renamed from: a, reason: collision with root package name */
    public InterfaceC0807j f9366a;

    /* renamed from: b, reason: collision with root package name */
    public int f9367b;

    /* renamed from: c, reason: collision with root package name */
    public A3.p f9368c;

    /* renamed from: e, reason: collision with root package name */
    public int f9370e;

    /* renamed from: h, reason: collision with root package name */
    public final C0890w f9372h;

    /* renamed from: i, reason: collision with root package name */
    public final Q3.f f9373i;

    /* renamed from: j, reason: collision with root package name */
    public final AbstractC0468v f9374j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ K f9375k;

    /* renamed from: d, reason: collision with root package name */
    public InterfaceC0783K f9369d = null;
    public h4.S f = h4.S.f7040a;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9371g = true;

    public J(K k5) {
        this.f9375k = k5;
        this.f9366a = k5.l();
        this.f9367b = k5.i();
        this.f9368c = k5.c();
        this.f9370e = k5.k0();
        this.f9372h = k5.f9393w;
        this.f9373i = k5.getName();
        this.f9374j = k5.e();
    }

    public static /* synthetic */ void a(int i5) {
        String str = (i5 == 1 || i5 == 2 || i5 == 3 || i5 == 5 || i5 == 7 || i5 == 9 || i5 == 11 || i5 == 19 || i5 == 13 || i5 == 14 || i5 == 16 || i5 == 17) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 1 || i5 == 2 || i5 == 3 || i5 == 5 || i5 == 7 || i5 == 9 || i5 == 11 || i5 == 19 || i5 == 13 || i5 == 14 || i5 == 16 || i5 == 17) ? 2 : 3];
        switch (i5) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 7:
            case 9:
            case 11:
            case 13:
            case 14:
            case 16:
            case 17:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
                break;
            case 4:
                objArr[0] = "type";
                break;
            case 6:
                objArr[0] = "modality";
                break;
            case 8:
                objArr[0] = "visibility";
                break;
            case 10:
                objArr[0] = "kind";
                break;
            case 12:
                objArr[0] = "typeParameters";
                break;
            case 15:
                objArr[0] = "substitution";
                break;
            case 18:
                objArr[0] = "name";
                break;
            default:
                objArr[0] = "owner";
                break;
        }
        if (i5 == 1) {
            objArr[1] = "setOwner";
        } else if (i5 == 2) {
            objArr[1] = "setOriginal";
        } else if (i5 == 3) {
            objArr[1] = "setPreserveSourceElement";
        } else if (i5 == 5) {
            objArr[1] = "setReturnType";
        } else if (i5 == 7) {
            objArr[1] = "setModality";
        } else if (i5 == 9) {
            objArr[1] = "setVisibility";
        } else if (i5 == 11) {
            objArr[1] = "setKind";
        } else if (i5 == 19) {
            objArr[1] = "setName";
        } else if (i5 == 13) {
            objArr[1] = "setTypeParameters";
        } else if (i5 == 14) {
            objArr[1] = "setDispatchReceiverParameter";
        } else if (i5 == 16) {
            objArr[1] = "setSubstitution";
        } else if (i5 != 17) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
        } else {
            objArr[1] = "setCopyOverrides";
        }
        switch (i5) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 7:
            case 9:
            case 11:
            case 13:
            case 14:
            case 16:
            case 17:
            case 19:
                break;
            case 4:
                objArr[2] = "setReturnType";
                break;
            case 6:
                objArr[2] = "setModality";
                break;
            case 8:
                objArr[2] = "setVisibility";
                break;
            case 10:
                objArr[2] = "setKind";
                break;
            case 12:
                objArr[2] = "setTypeParameters";
                break;
            case 15:
                objArr[2] = "setSubstitution";
                break;
            case 18:
                objArr[2] = "setName";
                break;
            default:
                objArr[2] = "setOwner";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 1 && i5 != 2 && i5 != 3 && i5 != 5 && i5 != 7 && i5 != 9 && i5 != 11 && i5 != 19 && i5 != 13 && i5 != 14 && i5 != 16 && i5 != 17) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public final K b() {
        C0890w c0890w;
        C0890w c0890w2;
        L l5;
        M m5;
        InterfaceC0221a interfaceC0221a;
        C0890w c0890w3;
        C0890w c0890w4;
        K k5 = this.f9375k;
        k5.getClass();
        InterfaceC0807j interfaceC0807j = this.f9366a;
        int i5 = this.f9367b;
        A3.p pVar = this.f9368c;
        InterfaceC0783K interfaceC0783K = this.f9369d;
        int i6 = this.f9370e;
        C0785M c0785m = InterfaceC0786N.f8790a;
        K kT0 = k5.T0(interfaceC0807j, i5, pVar, interfaceC0783K, i6, this.f9373i);
        List listU = k5.u();
        ArrayList arrayList = new ArrayList(((ArrayList) listU).size());
        h4.V vU = AbstractC0450c.u(listU, this.f, kT0, arrayList);
        AbstractC0468v abstractC0468v = this.f9374j;
        AbstractC0468v abstractC0468vJ = vU.j(3, abstractC0468v);
        if (abstractC0468vJ != null) {
            AbstractC0468v abstractC0468vJ2 = vU.j(2, abstractC0468v);
            if (abstractC0468vJ2 != null) {
                kT0.X0(abstractC0468vJ2);
            }
            C0890w c0890w5 = this.f9372h;
            if (c0890w5 != null) {
                C0890w c0890wB = c0890w5.b(vU);
                c0890w = c0890wB != null ? c0890wB : null;
            }
            C0890w c0890w6 = k5.f9394x;
            if (c0890w6 != null) {
                AbstractC0468v abstractC0468vJ3 = vU.j(2, c0890w6.e());
                if (abstractC0468vJ3 == null) {
                    c0890w4 = null;
                } else {
                    c0890w6.Q0();
                    c0890w4 = new C0890w(kT0, new b4.b(kT0, abstractC0468vJ3), c0890w6.t());
                }
                c0890w2 = c0890w4;
            } else {
                c0890w2 = null;
            }
            ArrayList arrayList2 = new ArrayList();
            for (C0890w c0890w7 : k5.f9392v) {
                AbstractC0468v abstractC0468vJ4 = vU.j(2, c0890w7.e());
                if (abstractC0468vJ4 == null) {
                    c0890w3 = null;
                } else {
                    Q3.f fVarO0 = ((b4.a) c0890w7.Q0()).O0();
                    c0890w7.Q0();
                    c0890w3 = new C0890w(kT0, new b4.a(kT0, abstractC0468vJ4, fVarO0), c0890w7.t());
                }
                if (c0890w3 != null) {
                    arrayList2.add(c0890w3);
                }
            }
            kT0.Y0(abstractC0468vJ, arrayList, c0890w, c0890w2, arrayList2);
            L l6 = k5.f9396z;
            if (l6 == null) {
                l5 = null;
            } else {
                InterfaceC0845h interfaceC0845hT = l6.t();
                int i7 = this.f9367b;
                A3.p pVarC = k5.f9396z.c();
                if (this.f9370e == 2 && AbstractC0811n.e(AbstractC0811n.f(pVarC.f140a.c()))) {
                    pVarC = AbstractC0811n.f8815h;
                }
                A3.p pVar2 = pVarC;
                L l7 = k5.f9396z;
                boolean z4 = l7.f9359g;
                int i8 = this.f9370e;
                InterfaceC0783K interfaceC0783K2 = this.f9369d;
                l5 = new L(kT0, interfaceC0845hT, i7, pVar2, z4, l7.f9360h, l7.f9363k, i8, interfaceC0783K2 == null ? null : interfaceC0783K2.r(), c0785m);
            }
            if (l5 != null) {
                L l8 = k5.f9396z;
                AbstractC0468v abstractC0468v2 = l8.f9397o;
                l5.n = K.U0(vU, l8);
                l5.T0(abstractC0468v2 != null ? vU.j(3, abstractC0468v2) : null);
            }
            M m6 = k5.f9376A;
            if (m6 == null) {
                m5 = null;
            } else {
                InterfaceC0845h interfaceC0845hT2 = m6.t();
                int i9 = this.f9367b;
                A3.p pVarC2 = k5.f9376A.c();
                if (this.f9370e == 2 && AbstractC0811n.e(AbstractC0811n.f(pVarC2.f140a.c()))) {
                    pVarC2 = AbstractC0811n.f8815h;
                }
                A3.p pVar3 = pVarC2;
                M m7 = k5.f9376A;
                boolean z5 = m7.f9359g;
                int i10 = this.f9370e;
                InterfaceC0783K interfaceC0783K3 = this.f9369d;
                m5 = new M(kT0, interfaceC0845hT2, i9, pVar3, z5, m7.f9360h, m7.f9363k, i10, interfaceC0783K3 == null ? null : interfaceC0783K3.f(), c0785m);
            }
            if (m5 != null) {
                List listU0 = AbstractC0889v.U0(m5, k5.f9376A.w0(), vU, false, false, null);
                if (listU0 == null) {
                    listU0 = Collections.singletonList(M.S0(m5, X3.f.e(this.f9366a).n(), ((V) k5.f9376A.w0().get(0)).t()));
                }
                if (listU0.size() != 1) {
                    throw new IllegalStateException();
                }
                m5.n = K.U0(vU, k5.f9376A);
                V v4 = (V) listU0.get(0);
                if (v4 == null) {
                    M.I0(6);
                    throw null;
                }
                m5.f9399o = v4;
            }
            C0887t c0887t = k5.f9377B;
            C0887t c0887t2 = c0887t == null ? null : new C0887t(c0887t.t(), kT0);
            C0887t c0887t3 = k5.f9378C;
            kT0.V0(l5, m5, c0887t2, c0887t3 != null ? new C0887t(c0887t3.t(), kT0) : null);
            if (this.f9371g) {
                q4.h hVar = new q4.h();
                Iterator it = k5.p().iterator();
                while (it.hasNext()) {
                    hVar.add(((InterfaceC0783K) it.next()).b(vU));
                }
                kT0.M(hVar);
            }
            if (!k5.P() || (interfaceC0221a = k5.f9381j) == null) {
                return kT0;
            }
            kT0.W0(k5.f9380i, interfaceC0221a);
            return kT0;
        }
        return null;
    }
}
