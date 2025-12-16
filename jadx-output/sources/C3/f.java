package C3;

import A3.p;
import R2.v;
import Z0.j;
import h4.AbstractC0468v;
import h4.V;
import i3.x;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.regex.Pattern;
import n4.i;
import n4.r;
import r3.InterfaceC0786N;
import r3.InterfaceC0798a;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import s3.C0844g;
import s3.InterfaceC0845h;
import u3.AbstractC0889v;
import u3.C0888u;
import u3.C0890w;
import u3.N;

/* loaded from: classes.dex */
public final class f extends N implements a {

    /* renamed from: I, reason: collision with root package name */
    public static final e f373I = new e();

    /* renamed from: J, reason: collision with root package name */
    public static final e f374J = new e();

    /* renamed from: G, reason: collision with root package name */
    public int f375G;

    /* renamed from: H, reason: collision with root package name */
    public final boolean f376H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(InterfaceC0807j interfaceC0807j, N n, InterfaceC0845h interfaceC0845h, Q3.f fVar, int i5, InterfaceC0786N interfaceC0786N, boolean z4) {
        super(interfaceC0807j, n, interfaceC0845h, fVar, i5, interfaceC0786N);
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
        this.f375G = 0;
        this.f376H = z4;
    }

    public static /* synthetic */ void I0(int i5) {
        String str = (i5 == 13 || i5 == 18 || i5 == 21) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 13 || i5 == 18 || i5 == 21) ? 2 : 3];
        switch (i5) {
            case 1:
            case 6:
            case 16:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 15:
                objArr[0] = "kind";
                break;
            case 4:
            case 8:
            case 17:
                objArr[0] = "source";
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 9:
                objArr[0] = "contextReceiverParameters";
                break;
            case 10:
                objArr[0] = "typeParameters";
                break;
            case 11:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 12:
                objArr[0] = "visibility";
                break;
            case 13:
            case 18:
            case 21:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
                break;
            case 14:
                objArr[0] = "newOwner";
                break;
            case 19:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case 20:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i5 == 13) {
            objArr[1] = "initialize";
        } else if (i5 == 18) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i5 != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i5) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "createJavaMethod";
                break;
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "initialize";
                break;
            case 13:
            case 18:
            case 21:
                break;
            case 14:
            case 15:
            case 16:
            case 17:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 19:
            case 20:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 != 13 && i5 != 18 && i5 != 21) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static f f1(InterfaceC0807j interfaceC0807j, D3.c cVar, Q3.f fVar, w3.f fVar2, boolean z4) {
        if (interfaceC0807j == null) {
            I0(5);
            throw null;
        }
        if (fVar != null) {
            return new f(interfaceC0807j, null, cVar, fVar, 1, fVar2, z4);
        }
        I0(7);
        throw null;
    }

    @Override // C3.a
    public final a G0(AbstractC0468v abstractC0468v, ArrayList arrayList, AbstractC0468v abstractC0468v2, Q2.e eVar) {
        ArrayList arrayListV = x.v(arrayList, w0(), this);
        C0890w c0890wE = abstractC0468v == null ? null : j.E(this, abstractC0468v, C0844g.f9041a);
        C0888u c0888uW0 = W0(V.f7041b);
        c0888uW0.f9467i = arrayListV;
        c0888uW0.I(abstractC0468v2);
        c0888uW0.f9469k = c0890wE;
        c0888uW0.f9475r = true;
        c0888uW0.f9474q = true;
        f fVar = (f) c0888uW0.f9483z.T0(c0888uW0);
        if (eVar != null) {
            fVar.X0((InterfaceC0798a) eVar.f2212c, eVar.f2213d);
        }
        if (fVar != null) {
            return fVar;
        }
        I0(21);
        throw null;
    }

    @Override // u3.N, u3.AbstractC0889v
    public final AbstractC0889v S0(int i5, Q3.f fVar, InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, InterfaceC0786N interfaceC0786N, InterfaceC0845h interfaceC0845h) {
        if (interfaceC0807j == null) {
            I0(14);
            throw null;
        }
        if (i5 == 0) {
            I0(15);
            throw null;
        }
        if (interfaceC0845h == null) {
            I0(16);
            throw null;
        }
        N n = (N) interfaceC0816s;
        if (fVar == null) {
            fVar = getName();
        }
        f fVar2 = new f(interfaceC0807j, n, interfaceC0845h, fVar, i5, interfaceC0786N, this.f376H);
        int i6 = this.f375G;
        fVar2.g1(B.f.g(i6), B.f.h(i6));
        return fVar2;
    }

    @Override // u3.N
    public final N e1(C0890w c0890w, C0890w c0890w2, List list, List list2, List list3, AbstractC0468v abstractC0468v, int i5, p pVar, v vVar) {
        n4.f fVar;
        if (list == null) {
            I0(9);
            throw null;
        }
        if (list2 == null) {
            I0(10);
            throw null;
        }
        if (list3 == null) {
            I0(11);
            throw null;
        }
        if (pVar == null) {
            I0(12);
            throw null;
        }
        super.e1(c0890w, c0890w2, list, list2, list3, abstractC0468v, i5, pVar, vVar);
        for (i iVar : r.f8374b) {
            iVar.getClass();
            Q3.f fVar2 = iVar.f8354a;
            if (fVar2 == null || d3.i.a(getName(), fVar2)) {
                Q2.a aVar = iVar.f8355b;
                if (aVar != null) {
                    String strB = getName().b();
                    d3.i.d("functionDescriptor.name.asString()", strB);
                    if (!((Pattern) aVar.f2208d).matcher(strB).matches()) {
                        continue;
                    }
                }
                Collection collection = iVar.f8356c;
                if (collection == null || collection.contains(getName())) {
                    n4.e[] eVarArr = iVar.f8358e;
                    int length = eVarArr.length;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= length) {
                            fVar = ((String) iVar.f8357d.e(this)) != null ? new n4.f(false) : n4.f.f8343c;
                        } else {
                            if (eVarArr[i6].a(this) != null) {
                                fVar = new n4.f(false);
                                break;
                            }
                            i6++;
                        }
                    }
                    this.f9496o = fVar.f8344a;
                    return this;
                }
            }
        }
        fVar = n4.f.f8342b;
        this.f9496o = fVar.f8344a;
        return this;
    }

    public final void g1(boolean z4, boolean z5) {
        this.f375G = z4 ? z5 ? 4 : 2 : z5 ? 3 : 1;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0799b
    public final boolean o0() {
        return B.f.h(this.f375G);
    }
}
