package s;

import J.r0;
import com.google.android.gms.internal.p000firebaseauthapi.a5;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import t.C0853b;
import t.C0854c;
import t.n;
import t.o;

/* loaded from: classes.dex */
public final class e extends C0827d {

    /* renamed from: A0, reason: collision with root package name */
    public WeakReference f8951A0;
    public WeakReference B0;

    /* renamed from: C0, reason: collision with root package name */
    public WeakReference f8952C0;

    /* renamed from: D0, reason: collision with root package name */
    public final C0853b f8953D0;
    public ArrayList k0 = new ArrayList();
    public final r0 l0;
    public final t.e m0;
    public a5 n0;
    public boolean o0;

    /* renamed from: p0, reason: collision with root package name */
    public final r.c f8954p0;
    public int q0;
    public int r0;
    public int s0;
    public int t0;
    public C0825b[] u0;

    /* renamed from: v0, reason: collision with root package name */
    public C0825b[] f8955v0;

    /* renamed from: w0, reason: collision with root package name */
    public int f8956w0;

    /* renamed from: x0, reason: collision with root package name */
    public boolean f8957x0;

    /* renamed from: y0, reason: collision with root package name */
    public boolean f8958y0;

    /* renamed from: z0, reason: collision with root package name */
    public WeakReference f8959z0;

    public e() {
        r0 r0Var = new r0();
        r0Var.f1006c = new ArrayList();
        r0Var.f1007d = new C0853b();
        r0Var.f1008e = this;
        this.l0 = r0Var;
        t.e eVar = new t.e();
        eVar.f9089b = true;
        eVar.f9090c = true;
        eVar.f9092e = new ArrayList();
        new ArrayList();
        eVar.f = null;
        eVar.f9093g = new C0853b();
        eVar.f9094h = new ArrayList();
        eVar.f9088a = this;
        eVar.f9091d = this;
        this.m0 = eVar;
        this.n0 = null;
        this.o0 = false;
        this.f8954p0 = new r.c();
        this.s0 = 0;
        this.t0 = 0;
        this.u0 = new C0825b[4];
        this.f8955v0 = new C0825b[4];
        this.f8956w0 = 257;
        this.f8957x0 = false;
        this.f8958y0 = false;
        this.f8959z0 = null;
        this.f8951A0 = null;
        this.B0 = null;
        this.f8952C0 = null;
        this.f8953D0 = new C0853b();
    }

    public static void P(C0827d c0827d, a5 a5Var, C0853b c0853b) {
        int i5;
        int i6;
        if (a5Var == null) {
            return;
        }
        int[] iArr = c0827d.f8935j0;
        c0853b.f9077a = iArr[0];
        c0853b.f9078b = iArr[1];
        c0853b.f9079c = c0827d.n();
        c0853b.f9080d = c0827d.k();
        c0853b.f9084i = false;
        c0853b.f9085j = 0;
        boolean z4 = c0853b.f9077a == 3;
        boolean z5 = c0853b.f9078b == 3;
        boolean z6 = z4 && c0827d.f8908Q > 0.0f;
        boolean z7 = z5 && c0827d.f8908Q > 0.0f;
        if (z4 && c0827d.q(0) && c0827d.f8937l == 0 && !z6) {
            c0853b.f9077a = 2;
            if (z5 && c0827d.f8938m == 0) {
                c0853b.f9077a = 1;
            }
            z4 = false;
        }
        if (z5 && c0827d.q(1) && c0827d.f8938m == 0 && !z7) {
            c0853b.f9078b = 2;
            if (z4 && c0827d.f8937l == 0) {
                c0853b.f9078b = 1;
            }
            z5 = false;
        }
        if (c0827d.w()) {
            c0853b.f9077a = 1;
            z4 = false;
        }
        if (c0827d.x()) {
            c0853b.f9078b = 1;
            z5 = false;
        }
        int[] iArr2 = c0827d.n;
        if (z6) {
            if (iArr2[0] == 4) {
                c0853b.f9077a = 1;
            } else if (!z5) {
                if (c0853b.f9078b == 1) {
                    i6 = c0853b.f9080d;
                } else {
                    c0853b.f9077a = 2;
                    a5Var.b(c0827d, c0853b);
                    i6 = c0853b.f;
                }
                c0853b.f9077a = 1;
                int i7 = c0827d.f8909R;
                if (i7 == 0 || i7 == -1) {
                    c0853b.f9079c = (int) (c0827d.f8908Q * i6);
                } else {
                    c0853b.f9079c = (int) (c0827d.f8908Q / i6);
                }
            }
        }
        if (z7) {
            if (iArr2[1] == 4) {
                c0853b.f9078b = 1;
            } else if (!z4) {
                if (c0853b.f9077a == 1) {
                    i5 = c0853b.f9079c;
                } else {
                    c0853b.f9078b = 2;
                    a5Var.b(c0827d, c0853b);
                    i5 = c0853b.f9081e;
                }
                c0853b.f9078b = 1;
                int i8 = c0827d.f8909R;
                if (i8 == 0 || i8 == -1) {
                    c0853b.f9080d = (int) (i5 / c0827d.f8908Q);
                } else {
                    c0853b.f9080d = (int) (i5 * c0827d.f8908Q);
                }
            }
        }
        a5Var.b(c0827d, c0853b);
        c0827d.H(c0853b.f9081e);
        c0827d.E(c0853b.f);
        c0827d.f8949y = c0853b.f9083h;
        c0827d.B(c0853b.f9082g);
        c0853b.f9085j = 0;
    }

    @Override // s.C0827d
    public final void A(r0 r0Var) {
        super.A(r0Var);
        int size = this.k0.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((C0827d) this.k0.get(i5)).A(r0Var);
        }
    }

    @Override // s.C0827d
    public final void I(boolean z4, boolean z5) {
        super.I(z4, z5);
        int size = this.k0.size();
        for (int i5 = 0; i5 < size; i5++) {
            ((C0827d) this.k0.get(i5)).I(z4, z5);
        }
    }

    public final void K(C0827d c0827d, int i5) {
        if (i5 == 0) {
            int i6 = this.s0 + 1;
            C0825b[] c0825bArr = this.f8955v0;
            if (i6 >= c0825bArr.length) {
                this.f8955v0 = (C0825b[]) Arrays.copyOf(c0825bArr, c0825bArr.length * 2);
            }
            C0825b[] c0825bArr2 = this.f8955v0;
            int i7 = this.s0;
            c0825bArr2[i7] = new C0825b(c0827d, 0, this.o0);
            this.s0 = i7 + 1;
            return;
        }
        if (i5 == 1) {
            int i8 = this.t0 + 1;
            C0825b[] c0825bArr3 = this.u0;
            if (i8 >= c0825bArr3.length) {
                this.u0 = (C0825b[]) Arrays.copyOf(c0825bArr3, c0825bArr3.length * 2);
            }
            C0825b[] c0825bArr4 = this.u0;
            int i9 = this.t0;
            c0825bArr4[i9] = new C0825b(c0827d, 1, this.o0);
            this.t0 = i9 + 1;
        }
    }

    public final void L(r.c cVar) {
        boolean zQ = Q(64);
        b(cVar, zQ);
        int size = this.k0.size();
        boolean z4 = false;
        for (int i5 = 0; i5 < size; i5++) {
            C0827d c0827d = (C0827d) this.k0.get(i5);
            boolean[] zArr = c0827d.f8904M;
            zArr[0] = false;
            zArr[1] = false;
            if (c0827d instanceof C0824a) {
                z4 = true;
            }
        }
        if (z4) {
            for (int i6 = 0; i6 < size; i6++) {
                C0827d c0827d2 = (C0827d) this.k0.get(i6);
                if (c0827d2 instanceof C0824a) {
                    C0824a c0824a = (C0824a) c0827d2;
                    for (int i7 = 0; i7 < c0824a.l0; i7++) {
                        C0827d c0827d3 = c0824a.k0[i7];
                        int i8 = c0824a.m0;
                        if (i8 == 0 || i8 == 1) {
                            c0827d3.f8904M[0] = true;
                        } else if (i8 == 2 || i8 == 3) {
                            c0827d3.f8904M[1] = true;
                        }
                    }
                }
            }
        }
        for (int i9 = 0; i9 < size; i9++) {
            C0827d c0827d4 = (C0827d) this.k0.get(i9);
            c0827d4.getClass();
            if ((c0827d4 instanceof g) || (c0827d4 instanceof h)) {
                c0827d4.b(cVar, zQ);
            }
        }
        if (r.c.f8723p) {
            HashSet hashSet = new HashSet();
            for (int i10 = 0; i10 < size; i10++) {
                C0827d c0827d5 = (C0827d) this.k0.get(i10);
                c0827d5.getClass();
                if (!(c0827d5 instanceof g) && !(c0827d5 instanceof h)) {
                    hashSet.add(c0827d5);
                }
            }
            a(this, cVar, hashSet, this.f8935j0[0] == 2 ? 0 : 1, false);
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                C0827d c0827d6 = (C0827d) it.next();
                j.b(this, cVar, c0827d6);
                c0827d6.b(cVar, zQ);
            }
        } else {
            for (int i11 = 0; i11 < size; i11++) {
                C0827d c0827d7 = (C0827d) this.k0.get(i11);
                if (c0827d7 instanceof e) {
                    int[] iArr = c0827d7.f8935j0;
                    int i12 = iArr[0];
                    int i13 = iArr[1];
                    if (i12 == 2) {
                        c0827d7.F(1);
                    }
                    if (i13 == 2) {
                        c0827d7.G(1);
                    }
                    c0827d7.b(cVar, zQ);
                    if (i12 == 2) {
                        c0827d7.F(i12);
                    }
                    if (i13 == 2) {
                        c0827d7.G(i13);
                    }
                } else {
                    j.b(this, cVar, c0827d7);
                    if (!(c0827d7 instanceof g) && !(c0827d7 instanceof h)) {
                        c0827d7.b(cVar, zQ);
                    }
                }
            }
        }
        if (this.s0 > 0) {
            j.a(this, cVar, null, 0);
        }
        if (this.t0 > 0) {
            j.a(this, cVar, null, 1);
        }
    }

    public final void M(C0826c c0826c) {
        WeakReference weakReference = this.f8959z0;
        if (weakReference == null || weakReference.get() == null || c0826c.d() > ((C0826c) this.f8959z0.get()).d()) {
            this.f8959z0 = new WeakReference(c0826c);
        }
    }

    public final boolean N(int i5, boolean z4) {
        boolean z5;
        boolean z6 = true;
        boolean z7 = z4 & true;
        t.e eVar = this.m0;
        e eVar2 = eVar.f9088a;
        int iJ = eVar2.j(0);
        int iJ2 = eVar2.j(1);
        int iO = eVar2.o();
        int iP = eVar2.p();
        ArrayList arrayList = eVar.f9092e;
        if (z7 && (iJ == 2 || iJ2 == 2)) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                o oVar = (o) it.next();
                if (oVar.f == i5 && !oVar.k()) {
                    z7 = false;
                    break;
                }
            }
            if (i5 == 0) {
                if (z7 && iJ == 2) {
                    eVar2.F(1);
                    eVar2.H(eVar.d(eVar2, 0));
                    eVar2.f8924d.f9122e.d(eVar2.n());
                }
            } else if (z7 && iJ2 == 2) {
                eVar2.G(1);
                eVar2.E(eVar.d(eVar2, 1));
                eVar2.f8926e.f9122e.d(eVar2.k());
            }
        }
        int[] iArr = eVar2.f8935j0;
        if (i5 == 0) {
            int i6 = iArr[0];
            if (i6 == 1 || i6 == 4) {
                int iN = eVar2.n() + iO;
                eVar2.f8924d.f9125i.d(iN);
                eVar2.f8924d.f9122e.d(iN - iO);
                z5 = true;
            }
            z5 = false;
        } else {
            int i7 = iArr[1];
            if (i7 == 1 || i7 == 4) {
                int iK = eVar2.k() + iP;
                eVar2.f8926e.f9125i.d(iK);
                eVar2.f8926e.f9122e.d(iK - iP);
                z5 = true;
            }
            z5 = false;
        }
        eVar.g();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            o oVar2 = (o) it2.next();
            if (oVar2.f == i5 && (oVar2.f9119b != eVar2 || oVar2.f9123g)) {
                oVar2.e();
            }
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            o oVar3 = (o) it3.next();
            if (oVar3.f == i5 && (z5 || oVar3.f9119b != eVar2)) {
                if (!oVar3.f9124h.f9103j || !oVar3.f9125i.f9103j || (!(oVar3 instanceof C0854c) && !oVar3.f9122e.f9103j)) {
                    z6 = false;
                    break;
                }
            }
        }
        eVar2.F(iJ);
        eVar2.G(iJ2);
        return z6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0606  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x0631  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0664  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x067a  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0695  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x06a0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:393:0x06a6  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x06ae  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x06b5  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x06bf  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x06dc  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x073e  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x07eb  */
    /* JADX WARN: Removed duplicated region for block: B:480:0x0811  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0827  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0889  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x089a  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x08a5  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x08b8  */
    /* JADX WARN: Removed duplicated region for block: B:509:0x08c0  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x08c5  */
    /* JADX WARN: Removed duplicated region for block: B:524:0x08f7  */
    /* JADX WARN: Removed duplicated region for block: B:528:0x0904  */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void O() {
        int i5;
        int i6;
        Object[] objArr;
        C0826c c0826c;
        int i7;
        int i8;
        C0826c c0826c2;
        int i9;
        int i10;
        r.c cVar;
        int i11;
        boolean z4;
        char c2;
        int i12;
        int i13;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        int iMax;
        ?? r6;
        boolean z9;
        int iMax2;
        boolean z10;
        boolean z11;
        r.c cVar2;
        int i14;
        int i15;
        char c5;
        n nVar;
        int i16;
        int iN;
        int i17;
        int iK;
        int iB;
        n nVar2;
        n nVar3;
        int[] iArr;
        boolean z12 = false;
        this.f8910S = 0;
        this.f8911T = 0;
        this.f8957x0 = false;
        this.f8958y0 = false;
        int size = this.k0.size();
        int iMax3 = Math.max(0, n());
        int iMax4 = Math.max(0, k());
        int[] iArr2 = this.f8935j0;
        int i18 = iArr2[1];
        int i19 = iArr2[0];
        boolean zC = j.c(this.f8956w0, 1);
        C0826c c0826c3 = this.f8896D;
        C0826c c0826c4 = this.f8895C;
        if (zC) {
            a5 a5Var = this.n0;
            int i20 = iArr2[0];
            int i21 = iArr2[1];
            this.f8930h = false;
            this.f8932i = false;
            ArrayList arrayList = this.f8903L;
            int size2 = arrayList.size();
            int i22 = 0;
            while (i22 < size2) {
                int i23 = size2;
                C0826c c0826c5 = (C0826c) arrayList.get(i22);
                c0826c5.f8887c = false;
                c0826c5.f8886b = 0;
                i22++;
                size2 = i23;
            }
            ArrayList arrayList2 = this.k0;
            int size3 = arrayList2.size();
            int i24 = 0;
            while (i24 < size3) {
                int i25 = iMax4;
                C0827d c0827d = (C0827d) arrayList2.get(i24);
                c0827d.f8930h = z12;
                c0827d.f8932i = z12;
                ArrayList arrayList3 = c0827d.f8903L;
                int size4 = arrayList3.size();
                int i26 = iMax3;
                int i27 = 0;
                while (i27 < size4) {
                    int i28 = size4;
                    C0826c c0826c6 = (C0826c) arrayList3.get(i27);
                    c0826c6.f8887c = false;
                    c0826c6.f8886b = 0;
                    i27++;
                    arrayList3 = arrayList3;
                    size4 = i28;
                }
                i24++;
                iMax4 = i25;
                iMax3 = i26;
                z12 = false;
            }
            i5 = iMax3;
            i6 = iMax4;
            boolean z13 = this.o0;
            if (i20 == 1) {
                C(0, n());
            } else {
                c0826c4.l(0);
                this.f8910S = 0;
            }
            boolean z14 = false;
            int i29 = 0;
            boolean z15 = false;
            while (i29 < size3) {
                C0827d c0827d2 = (C0827d) arrayList2.get(i29);
                C0826c c0826c7 = c0826c4;
                if (c0827d2 instanceof h) {
                    h hVar = (h) c0827d2;
                    iArr = iArr2;
                    if (hVar.o0 == 1) {
                        int i30 = hVar.l0;
                        if (i30 != -1) {
                            hVar.K(i30);
                        } else if (hVar.m0 != -1 && w()) {
                            hVar.K(n() - hVar.m0);
                        } else if (w()) {
                            hVar.K((int) ((hVar.k0 * n()) + 0.5f));
                        }
                        z14 = true;
                    }
                } else {
                    iArr = iArr2;
                    if ((c0827d2 instanceof C0824a) && ((C0824a) c0827d2).N() == 0) {
                        z15 = true;
                    }
                }
                i29++;
                c0826c4 = c0826c7;
                iArr2 = iArr;
            }
            objArr = iArr2;
            c0826c = c0826c4;
            if (z14) {
                for (int i31 = 0; i31 < size3; i31++) {
                    C0827d c0827d3 = (C0827d) arrayList2.get(i31);
                    if (c0827d3 instanceof h) {
                        h hVar2 = (h) c0827d3;
                        if (hVar2.o0 == 1) {
                            t.h.c(a5Var, hVar2, z13);
                        }
                    }
                }
            }
            t.h.c(a5Var, this, z13);
            if (z15) {
                for (int i32 = 0; i32 < size3; i32++) {
                    C0827d c0827d4 = (C0827d) arrayList2.get(i32);
                    if (c0827d4 instanceof C0824a) {
                        C0824a c0824a = (C0824a) c0827d4;
                        if (c0824a.N() == 0 && c0824a.M()) {
                            t.h.c(a5Var, c0824a, z13);
                        }
                    }
                }
            }
            if (i21 == 1) {
                D(0, k());
            } else {
                c0826c3.l(0);
                this.f8911T = 0;
            }
            boolean z16 = false;
            boolean z17 = false;
            for (int i33 = 0; i33 < size3; i33++) {
                C0827d c0827d5 = (C0827d) arrayList2.get(i33);
                if (c0827d5 instanceof h) {
                    h hVar3 = (h) c0827d5;
                    if (hVar3.o0 == 0) {
                        int i34 = hVar3.l0;
                        if (i34 != -1) {
                            hVar3.K(i34);
                        } else if (hVar3.m0 == -1 || !x()) {
                            if (x()) {
                                hVar3.K((int) ((hVar3.k0 * k()) + 0.5f));
                            }
                            z17 = true;
                        } else {
                            hVar3.K(k() - hVar3.m0);
                        }
                        z17 = true;
                    }
                } else if ((c0827d5 instanceof C0824a) && ((C0824a) c0827d5).N() == 1) {
                    z16 = true;
                }
            }
            if (z17) {
                for (int i35 = 0; i35 < size3; i35++) {
                    C0827d c0827d6 = (C0827d) arrayList2.get(i35);
                    if (c0827d6 instanceof h) {
                        h hVar4 = (h) c0827d6;
                        if (hVar4.o0 == 0) {
                            t.h.i(a5Var, hVar4);
                        }
                    }
                }
            }
            t.h.i(a5Var, this);
            if (z16) {
                for (int i36 = 0; i36 < size3; i36++) {
                    C0827d c0827d7 = (C0827d) arrayList2.get(i36);
                    if (c0827d7 instanceof C0824a) {
                        C0824a c0824a2 = (C0824a) c0827d7;
                        if (c0824a2.N() == 1 && c0824a2.M()) {
                            t.h.i(a5Var, c0824a2);
                        }
                    }
                }
            }
            for (int i37 = 0; i37 < size3; i37++) {
                C0827d c0827d8 = (C0827d) arrayList2.get(i37);
                if (c0827d8.v() && t.h.a(c0827d8)) {
                    P(c0827d8, a5Var, t.h.f9107a);
                    t.h.c(a5Var, c0827d8, z13);
                    t.h.i(a5Var, c0827d8);
                }
            }
            for (int i38 = 0; i38 < size; i38++) {
                C0827d c0827d9 = (C0827d) this.k0.get(i38);
                if (c0827d9.v() && !(c0827d9 instanceof h) && !(c0827d9 instanceof C0824a) && !(c0827d9 instanceof g) && !c0827d9.f8950z) {
                    int iJ = c0827d9.j(0);
                    int iJ2 = c0827d9.j(1);
                    if (iJ != 3 || c0827d9.f8937l == 1 || iJ2 != 3 || c0827d9.f8938m == 1) {
                        P(c0827d9, this.n0, new C0853b());
                    }
                }
            }
        } else {
            i5 = iMax3;
            i6 = iMax4;
            objArr = iArr2;
            c0826c = c0826c4;
        }
        r.c cVar3 = this.f8954p0;
        if (size <= 2 || !((i19 == 2 || i18 == 2) && j.c(this.f8956w0, 1024))) {
            i7 = size;
            i8 = i18;
            c0826c2 = c0826c3;
            i9 = i6;
            i10 = i5;
            cVar = cVar3;
            i11 = i19;
        } else {
            a5 a5Var2 = this.n0;
            ArrayList arrayList4 = this.k0;
            int size5 = arrayList4.size();
            for (int i39 = 0; i39 < size5; i39++) {
                C0827d c0827d10 = (C0827d) arrayList4.get(i39);
                char c6 = objArr[0];
                char c7 = objArr[1];
                int[] iArr3 = c0827d10.f8935j0;
                if (!t.h.h(c6, c7, iArr3[0], iArr3[1]) || (c0827d10 instanceof g)) {
                    i7 = size;
                    i14 = i18;
                    i15 = i19;
                    c0826c2 = c0826c3;
                    cVar = cVar3;
                    break;
                }
            }
            int i40 = 0;
            ArrayList arrayList5 = null;
            ArrayList arrayList6 = null;
            ArrayList arrayList7 = null;
            ArrayList arrayList8 = null;
            ArrayList arrayList9 = null;
            ArrayList arrayList10 = null;
            while (i40 < size5) {
                C0826c c0826c8 = c0826c3;
                C0827d c0827d11 = (C0827d) arrayList4.get(i40);
                int i41 = size;
                char c8 = objArr[0];
                int i42 = i18;
                char c9 = objArr[1];
                int i43 = i19;
                int[] iArr4 = c0827d11.f8935j0;
                r.c cVar4 = cVar3;
                if (!t.h.h(c8, c9, iArr4[0], iArr4[1])) {
                    P(c0827d11, a5Var2, this.f8953D0);
                }
                boolean z18 = c0827d11 instanceof h;
                if (z18) {
                    h hVar5 = (h) c0827d11;
                    if (hVar5.o0 == 0) {
                        if (arrayList7 == null) {
                            arrayList7 = new ArrayList();
                        }
                        arrayList7.add(hVar5);
                    }
                    if (hVar5.o0 == 1) {
                        if (arrayList5 == null) {
                            arrayList5 = new ArrayList();
                        }
                        arrayList5.add(hVar5);
                    }
                }
                if (c0827d11 instanceof i) {
                    if (c0827d11 instanceof C0824a) {
                        C0824a c0824a3 = (C0824a) c0827d11;
                        if (c0824a3.N() == 0) {
                            if (arrayList6 == null) {
                                arrayList6 = new ArrayList();
                            }
                            arrayList6.add(c0824a3);
                        }
                        if (c0824a3.N() == 1) {
                            if (arrayList8 == null) {
                                arrayList8 = new ArrayList();
                            }
                            arrayList8.add(c0824a3);
                        }
                    } else {
                        i iVar = (i) c0827d11;
                        if (arrayList6 == null) {
                            arrayList6 = new ArrayList();
                        }
                        arrayList6.add(iVar);
                        if (arrayList8 == null) {
                            arrayList8 = new ArrayList();
                        }
                        arrayList8.add(iVar);
                    }
                }
                if (c0827d11.f8895C.f == null && c0827d11.E.f == null && !z18 && !(c0827d11 instanceof C0824a)) {
                    if (arrayList9 == null) {
                        arrayList9 = new ArrayList();
                    }
                    arrayList9.add(c0827d11);
                }
                if (c0827d11.f8896D.f == null && c0827d11.f8897F.f == null && c0827d11.f8898G.f == null && !z18 && !(c0827d11 instanceof C0824a)) {
                    if (arrayList10 == null) {
                        arrayList10 = new ArrayList();
                    }
                    arrayList10.add(c0827d11);
                }
                i40++;
                size = i41;
                c0826c3 = c0826c8;
                i18 = i42;
                i19 = i43;
                cVar3 = cVar4;
            }
            r.c cVar5 = cVar3;
            i7 = size;
            i14 = i18;
            i15 = i19;
            c0826c2 = c0826c3;
            ArrayList arrayList11 = new ArrayList();
            if (arrayList5 != null) {
                Iterator it = arrayList5.iterator();
                while (it.hasNext()) {
                    t.h.b((h) it.next(), 0, arrayList11, null);
                }
            }
            int i44 = 0;
            n nVar4 = null;
            if (arrayList6 != null) {
                Iterator it2 = arrayList6.iterator();
                while (it2.hasNext()) {
                    i iVar2 = (i) it2.next();
                    n nVarB = t.h.b(iVar2, i44, arrayList11, nVar4);
                    iVar2.K(i44, arrayList11, nVarB);
                    nVarB.a(arrayList11);
                    i44 = 0;
                    nVar4 = null;
                }
            }
            HashSet hashSet = i(2).f8885a;
            if (hashSet != null) {
                Iterator it3 = hashSet.iterator();
                while (it3.hasNext()) {
                    t.h.b(((C0826c) it3.next()).f8888d, 0, arrayList11, null);
                }
            }
            HashSet hashSet2 = i(4).f8885a;
            if (hashSet2 != null) {
                Iterator it4 = hashSet2.iterator();
                while (it4.hasNext()) {
                    t.h.b(((C0826c) it4.next()).f8888d, 0, arrayList11, null);
                }
            }
            HashSet hashSet3 = i(7).f8885a;
            if (hashSet3 != null) {
                Iterator it5 = hashSet3.iterator();
                while (it5.hasNext()) {
                    t.h.b(((C0826c) it5.next()).f8888d, 0, arrayList11, null);
                }
            }
            n nVar5 = null;
            if (arrayList9 != null) {
                Iterator it6 = arrayList9.iterator();
                while (it6.hasNext()) {
                    t.h.b((C0827d) it6.next(), 0, arrayList11, null);
                }
            }
            if (arrayList7 != null) {
                Iterator it7 = arrayList7.iterator();
                while (it7.hasNext()) {
                    t.h.b((h) it7.next(), 1, arrayList11, null);
                }
            }
            int i45 = 1;
            if (arrayList8 != null) {
                Iterator it8 = arrayList8.iterator();
                while (it8.hasNext()) {
                    i iVar3 = (i) it8.next();
                    n nVarB2 = t.h.b(iVar3, i45, arrayList11, nVar5);
                    iVar3.K(i45, arrayList11, nVarB2);
                    nVarB2.a(arrayList11);
                    i45 = 1;
                    nVar5 = null;
                }
            }
            HashSet hashSet4 = i(3).f8885a;
            if (hashSet4 != null) {
                Iterator it9 = hashSet4.iterator();
                while (it9.hasNext()) {
                    t.h.b(((C0826c) it9.next()).f8888d, 1, arrayList11, null);
                }
            }
            HashSet hashSet5 = i(6).f8885a;
            if (hashSet5 != null) {
                Iterator it10 = hashSet5.iterator();
                while (it10.hasNext()) {
                    t.h.b(((C0826c) it10.next()).f8888d, 1, arrayList11, null);
                }
            }
            HashSet hashSet6 = i(5).f8885a;
            if (hashSet6 != null) {
                Iterator it11 = hashSet6.iterator();
                while (it11.hasNext()) {
                    t.h.b(((C0826c) it11.next()).f8888d, 1, arrayList11, null);
                }
            }
            HashSet hashSet7 = i(7).f8885a;
            if (hashSet7 != null) {
                Iterator it12 = hashSet7.iterator();
                while (it12.hasNext()) {
                    t.h.b(((C0826c) it12.next()).f8888d, 1, arrayList11, null);
                }
            }
            if (arrayList10 != null) {
                Iterator it13 = arrayList10.iterator();
                while (it13.hasNext()) {
                    t.h.b((C0827d) it13.next(), 1, arrayList11, null);
                }
            }
            for (int i46 = 0; i46 < size5; i46++) {
                C0827d c0827d12 = (C0827d) arrayList4.get(i46);
                int[] iArr5 = c0827d12.f8935j0;
                if (iArr5[0] == 3 && iArr5[1] == 3) {
                    int i47 = c0827d12.f8931h0;
                    int size6 = arrayList11.size();
                    int i48 = 0;
                    while (true) {
                        if (i48 >= size6) {
                            nVar2 = null;
                            break;
                        }
                        nVar2 = (n) arrayList11.get(i48);
                        if (i47 == nVar2.f9114b) {
                            break;
                        } else {
                            i48++;
                        }
                    }
                    int i49 = c0827d12.f8933i0;
                    int size7 = arrayList11.size();
                    int i50 = 0;
                    while (true) {
                        if (i50 >= size7) {
                            nVar3 = null;
                            break;
                        }
                        nVar3 = (n) arrayList11.get(i50);
                        if (i49 == nVar3.f9114b) {
                            break;
                        } else {
                            i50++;
                        }
                    }
                    if (nVar2 != null && nVar3 != null) {
                        nVar2.c(0, nVar3);
                        nVar3.f9115c = 2;
                        arrayList11.remove(nVar2);
                    }
                }
            }
            if (arrayList11.size() > 1) {
                if (objArr[0] == 2) {
                    Iterator it14 = arrayList11.iterator();
                    int i51 = 0;
                    nVar = null;
                    while (it14.hasNext()) {
                        n nVar6 = (n) it14.next();
                        if (nVar6.f9115c != 1) {
                            r.c cVar6 = cVar5;
                            int iB2 = nVar6.b(cVar6, 0);
                            if (iB2 > i51) {
                                nVar = nVar6;
                                i51 = iB2;
                            }
                            cVar5 = cVar6;
                        }
                    }
                    cVar = cVar5;
                    c5 = 1;
                    if (nVar != null) {
                        F(1);
                        H(i51);
                    }
                    if (objArr[c5] != 2) {
                        Iterator it15 = arrayList11.iterator();
                        int i52 = 0;
                        n nVar7 = null;
                        while (it15.hasNext()) {
                            n nVar8 = (n) it15.next();
                            if (nVar8.f9115c != 0 && (iB = nVar8.b(cVar, 1)) > i52) {
                                nVar7 = nVar8;
                                i52 = iB;
                            }
                        }
                        if (nVar7 != null) {
                            G(1);
                            E(i52);
                        } else {
                            nVar7 = null;
                        }
                        if (nVar != null || nVar7 != null) {
                            i11 = i15;
                            if (i11 == 2) {
                                i16 = i5;
                                if (i16 >= n() || i16 <= 0) {
                                    iN = n();
                                    i8 = i14;
                                    if (i8 != 2) {
                                        i17 = i6;
                                        if (i17 >= k() || i17 <= 0) {
                                            iK = k();
                                            i9 = iK;
                                            i10 = iN;
                                            z4 = true;
                                        } else {
                                            E(i17);
                                            this.f8958y0 = true;
                                        }
                                    } else {
                                        i17 = i6;
                                    }
                                    iK = i17;
                                    i9 = iK;
                                    i10 = iN;
                                    z4 = true;
                                } else {
                                    H(i16);
                                    this.f8957x0 = true;
                                }
                            } else {
                                i16 = i5;
                            }
                            iN = i16;
                            i8 = i14;
                            if (i8 != 2) {
                            }
                            iK = i17;
                            i9 = iK;
                            i10 = iN;
                            z4 = true;
                        }
                    }
                    boolean z19 = Q(64) || Q(128);
                    cVar.getClass();
                    cVar.f8730g = false;
                    if (this.f8956w0 == 0 || !z19) {
                        c2 = 1;
                    } else {
                        c2 = 1;
                        cVar.f8730g = true;
                    }
                    ArrayList arrayList12 = this.k0;
                    boolean z20 = objArr[0] == 2 || objArr[c2] == 2;
                    this.s0 = 0;
                    this.t0 = 0;
                    i12 = i7;
                    for (i13 = 0; i13 < i12; i13++) {
                        C0827d c0827d13 = (C0827d) this.k0.get(i13);
                        if (c0827d13 instanceof e) {
                            ((e) c0827d13).O();
                        }
                    }
                    boolean zQ = Q(64);
                    boolean z21 = z4;
                    int i53 = 0;
                    z5 = true;
                    while (z5) {
                        int i54 = i53 + 1;
                        try {
                            cVar.t();
                            this.s0 = 0;
                            this.t0 = 0;
                            g(cVar);
                            for (int i55 = 0; i55 < i12; i55++) {
                                ((C0827d) this.k0.get(i55)).g(cVar);
                            }
                            L(cVar);
                            try {
                                WeakReference weakReference = this.f8959z0;
                                if (weakReference != null) {
                                    try {
                                        if (weakReference.get() != null) {
                                            C0826c c0826c9 = (C0826c) this.f8959z0.get();
                                            C0826c c0826c10 = c0826c2;
                                            try {
                                                r.f fVarK = cVar.k(c0826c10);
                                                r.c cVar7 = this.f8954p0;
                                                z7 = z21;
                                                c0826c2 = c0826c10;
                                                try {
                                                    cVar7.f(cVar7.k(c0826c9), fVarK, 0, 5);
                                                    this.f8959z0 = null;
                                                } catch (Exception e5) {
                                                    e = e5;
                                                    z5 = true;
                                                    e.printStackTrace();
                                                    System.out.println("EXCEPTION : " + e);
                                                    boolean[] zArr = j.f9003a;
                                                    if (z5) {
                                                    }
                                                    if (z20) {
                                                    }
                                                    iMax = Math.max(this.f8913V, n());
                                                    if (iMax <= n()) {
                                                    }
                                                    iMax2 = Math.max(this.f8914W, k());
                                                    if (iMax2 <= k()) {
                                                    }
                                                    if (!z11) {
                                                    }
                                                    z5 = z10;
                                                    z21 = z11;
                                                    i53 = i54;
                                                }
                                            } catch (Exception e6) {
                                                e = e6;
                                                z7 = z21;
                                                c0826c2 = c0826c10;
                                            }
                                        } else {
                                            z7 = z21;
                                        }
                                        try {
                                            WeakReference weakReference2 = this.B0;
                                            if (weakReference2 != null && weakReference2.get() != null) {
                                                C0826c c0826c11 = (C0826c) this.B0.get();
                                                r.f fVarK2 = cVar.k(this.f8897F);
                                                r.c cVar8 = this.f8954p0;
                                                cVar8.f(fVarK2, cVar8.k(c0826c11), 0, 5);
                                                this.B0 = null;
                                            }
                                            WeakReference weakReference3 = this.f8951A0;
                                            if (weakReference3 != null && weakReference3.get() != null) {
                                                C0826c c0826c12 = (C0826c) this.f8951A0.get();
                                                C0826c c0826c13 = c0826c;
                                                try {
                                                    r.f fVarK3 = cVar.k(c0826c13);
                                                    r.c cVar9 = this.f8954p0;
                                                    c0826c = c0826c13;
                                                    cVar9.f(cVar9.k(c0826c12), fVarK3, 0, 5);
                                                    this.f8951A0 = null;
                                                } catch (Exception e7) {
                                                    e = e7;
                                                    c0826c = c0826c13;
                                                    z5 = true;
                                                    e.printStackTrace();
                                                    System.out.println("EXCEPTION : " + e);
                                                    boolean[] zArr2 = j.f9003a;
                                                    if (z5) {
                                                    }
                                                    if (z20) {
                                                    }
                                                    iMax = Math.max(this.f8913V, n());
                                                    if (iMax <= n()) {
                                                    }
                                                    iMax2 = Math.max(this.f8914W, k());
                                                    if (iMax2 <= k()) {
                                                    }
                                                    if (!z11) {
                                                    }
                                                    z5 = z10;
                                                    z21 = z11;
                                                    i53 = i54;
                                                }
                                            }
                                            WeakReference weakReference4 = this.f8952C0;
                                            if (weakReference4 != null && weakReference4.get() != null) {
                                                C0826c c0826c14 = (C0826c) this.f8952C0.get();
                                                r.f fVarK4 = cVar.k(this.E);
                                                try {
                                                    cVar2 = this.f8954p0;
                                                } catch (Exception e8) {
                                                    e = e8;
                                                    z5 = true;
                                                    e.printStackTrace();
                                                    System.out.println("EXCEPTION : " + e);
                                                    boolean[] zArr22 = j.f9003a;
                                                    if (z5) {
                                                    }
                                                    if (z20) {
                                                        z8 = false;
                                                    }
                                                    iMax = Math.max(this.f8913V, n());
                                                    if (iMax <= n()) {
                                                    }
                                                    iMax2 = Math.max(this.f8914W, k());
                                                    if (iMax2 <= k()) {
                                                    }
                                                    if (!z11) {
                                                    }
                                                    z5 = z10;
                                                    z21 = z11;
                                                    i53 = i54;
                                                }
                                                try {
                                                    cVar2.f(fVarK4, cVar2.k(c0826c14), 0, 5);
                                                } catch (Exception e9) {
                                                    e = e9;
                                                    z5 = true;
                                                    e.printStackTrace();
                                                    System.out.println("EXCEPTION : " + e);
                                                    boolean[] zArr222 = j.f9003a;
                                                    if (z5) {
                                                    }
                                                    if (z20) {
                                                    }
                                                    iMax = Math.max(this.f8913V, n());
                                                    if (iMax <= n()) {
                                                    }
                                                    iMax2 = Math.max(this.f8914W, k());
                                                    if (iMax2 <= k()) {
                                                    }
                                                    if (!z11) {
                                                    }
                                                    z5 = z10;
                                                    z21 = z11;
                                                    i53 = i54;
                                                }
                                                try {
                                                    this.f8952C0 = null;
                                                } catch (Exception e10) {
                                                    e = e10;
                                                    z5 = true;
                                                    e.printStackTrace();
                                                    System.out.println("EXCEPTION : " + e);
                                                    boolean[] zArr2222 = j.f9003a;
                                                    if (z5) {
                                                    }
                                                    if (z20) {
                                                    }
                                                    iMax = Math.max(this.f8913V, n());
                                                    if (iMax <= n()) {
                                                    }
                                                    iMax2 = Math.max(this.f8914W, k());
                                                    if (iMax2 <= k()) {
                                                    }
                                                    if (!z11) {
                                                    }
                                                    z5 = z10;
                                                    z21 = z11;
                                                    i53 = i54;
                                                }
                                            }
                                            cVar.p();
                                            z5 = true;
                                        } catch (Exception e11) {
                                            e = e11;
                                        }
                                    } catch (Exception e12) {
                                        e = e12;
                                        z7 = z21;
                                    }
                                }
                            } catch (Exception e13) {
                                e = e13;
                                z7 = z21;
                            }
                        } catch (Exception e14) {
                            e = e14;
                            z7 = z21;
                        }
                        boolean[] zArr22222 = j.f9003a;
                        if (z5) {
                            J(cVar, zQ);
                            for (int i56 = 0; i56 < i12; i56++) {
                                ((C0827d) this.k0.get(i56)).J(cVar, zQ);
                            }
                        } else {
                            zArr22222[2] = false;
                            boolean zQ2 = Q(64);
                            J(cVar, zQ2);
                            int size8 = this.k0.size();
                            for (int i57 = 0; i57 < size8; i57++) {
                                ((C0827d) this.k0.get(i57)).J(cVar, zQ2);
                            }
                        }
                        if (z20 || i54 >= 8 || !zArr22222[2]) {
                            z8 = false;
                        } else {
                            int iMax5 = 0;
                            int iMax6 = 0;
                            for (int i58 = 0; i58 < i12; i58++) {
                                C0827d c0827d14 = (C0827d) this.k0.get(i58);
                                iMax5 = Math.max(iMax5, c0827d14.n() + c0827d14.f8910S);
                                iMax6 = Math.max(iMax6, c0827d14.k() + c0827d14.f8911T);
                            }
                            int iMax7 = Math.max(this.f8913V, iMax5);
                            int iMax8 = Math.max(this.f8914W, iMax6);
                            if (i11 != 2 || n() >= iMax7) {
                                z8 = false;
                            } else {
                                H(iMax7);
                                objArr[0] = 2;
                                z8 = true;
                                z7 = true;
                            }
                            if (i8 == 2 && k() < iMax8) {
                                E(iMax8);
                                objArr[1] = 2;
                                z8 = true;
                                z7 = true;
                            }
                        }
                        iMax = Math.max(this.f8913V, n());
                        if (iMax <= n()) {
                            H(iMax);
                            r6 = 1;
                            objArr[0] = 1;
                            z8 = true;
                            z9 = true;
                        } else {
                            r6 = 1;
                            z9 = z7;
                        }
                        iMax2 = Math.max(this.f8914W, k());
                        if (iMax2 <= k()) {
                            E(iMax2);
                            objArr[r6] = r6;
                            z11 = r6;
                            z10 = z11;
                        } else {
                            z10 = z8;
                            z11 = z9;
                        }
                        if (!z11) {
                            if (objArr[0] == 2 && i10 > 0 && n() > i10) {
                                this.f8957x0 = r6;
                                objArr[0] = r6;
                                H(i10);
                                z11 = r6;
                                z10 = z11;
                            }
                            if (objArr[r6] == 2 && i9 > 0 && k() > i9) {
                                this.f8958y0 = r6;
                                objArr[r6] = r6;
                                E(i9);
                                z21 = true;
                                z5 = true;
                            }
                            i53 = i54;
                        }
                        z5 = z10;
                        z21 = z11;
                        i53 = i54;
                    }
                    z6 = z21;
                    this.k0 = arrayList12;
                    if (z6) {
                        objArr[0] = i11;
                        objArr[1] = i8;
                    }
                    A(cVar.f8735l);
                }
                cVar = cVar5;
                c5 = 1;
                nVar = null;
                if (objArr[c5] != 2) {
                }
                if (Q(64)) {
                }
                cVar.getClass();
                cVar.f8730g = false;
                if (this.f8956w0 == 0) {
                    c2 = 1;
                }
                ArrayList arrayList122 = this.k0;
                if (objArr[0] == 2) {
                }
                this.s0 = 0;
                this.t0 = 0;
                i12 = i7;
                while (i13 < i12) {
                }
                boolean zQ3 = Q(64);
                boolean z212 = z4;
                int i532 = 0;
                z5 = true;
                while (z5) {
                }
                z6 = z212;
                this.k0 = arrayList122;
                if (z6) {
                }
                A(cVar.f8735l);
            }
            cVar = cVar5;
            i9 = i6;
            i10 = i5;
            i8 = i14;
            i11 = i15;
        }
        z4 = false;
        if (Q(64)) {
        }
        cVar.getClass();
        cVar.f8730g = false;
        if (this.f8956w0 == 0) {
        }
        ArrayList arrayList1222 = this.k0;
        if (objArr[0] == 2) {
        }
        this.s0 = 0;
        this.t0 = 0;
        i12 = i7;
        while (i13 < i12) {
        }
        boolean zQ32 = Q(64);
        boolean z2122 = z4;
        int i5322 = 0;
        z5 = true;
        while (z5) {
        }
        z6 = z2122;
        this.k0 = arrayList1222;
        if (z6) {
        }
        A(cVar.f8735l);
    }

    public final boolean Q(int i5) {
        return (this.f8956w0 & i5) == i5;
    }

    public final void R() {
        this.k0.clear();
        super.y();
    }

    @Override // s.C0827d
    public final void y() {
        this.f8954p0.t();
        this.q0 = 0;
        this.r0 = 0;
        R();
    }
}
