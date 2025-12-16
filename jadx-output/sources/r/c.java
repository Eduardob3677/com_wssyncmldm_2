package r;

import J.r0;
import java.util.ArrayList;
import java.util.Arrays;
import s.C0826c;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: p, reason: collision with root package name */
    public static boolean f8723p = false;

    /* renamed from: q, reason: collision with root package name */
    public static int f8724q = 1000;

    /* renamed from: c, reason: collision with root package name */
    public final e f8727c;
    public C0765b[] f;

    /* renamed from: l, reason: collision with root package name */
    public final r0 f8735l;

    /* renamed from: o, reason: collision with root package name */
    public C0765b f8737o;

    /* renamed from: a, reason: collision with root package name */
    public boolean f8725a = false;

    /* renamed from: b, reason: collision with root package name */
    public int f8726b = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f8728d = 32;

    /* renamed from: e, reason: collision with root package name */
    public int f8729e = 32;

    /* renamed from: g, reason: collision with root package name */
    public boolean f8730g = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean[] f8731h = new boolean[32];

    /* renamed from: i, reason: collision with root package name */
    public int f8732i = 1;

    /* renamed from: j, reason: collision with root package name */
    public int f8733j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f8734k = 32;

    /* renamed from: m, reason: collision with root package name */
    public f[] f8736m = new f[f8724q];
    public int n = 0;

    public c() {
        this.f = null;
        this.f = new C0765b[32];
        s();
        r0 r0Var = new r0();
        r0Var.f1006c = new I.c();
        r0Var.f1007d = new I.c();
        r0Var.f1008e = new f[32];
        this.f8735l = r0Var;
        e eVar = new e(r0Var);
        eVar.f = new f[128];
        eVar.f8740g = new f[128];
        eVar.f8741h = 0;
        eVar.f8742i = new d(eVar);
        this.f8727c = eVar;
        this.f8737o = new C0765b(r0Var);
    }

    public static int n(C0826c c0826c) {
        f fVar = c0826c.f8892i;
        if (fVar != null) {
            return (int) (fVar.f8747e + 0.5f);
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v0 */
    public final f a(int i5) {
        I.c cVar = (I.c) this.f8735l.f1007d;
        int i6 = cVar.f866b;
        f fVar = null;
        if (i6 > 0) {
            int i7 = i6 - 1;
            ?? r32 = cVar.f865a;
            ?? r42 = r32[i7];
            r32[i7] = 0;
            cVar.f866b = i7;
            fVar = r42;
        }
        f fVar2 = fVar;
        if (fVar2 == null) {
            fVar2 = new f(i5);
            fVar2.f8753l = i5;
        } else {
            fVar2.c();
            fVar2.f8753l = i5;
        }
        int i8 = this.n;
        int i9 = f8724q;
        if (i8 >= i9) {
            int i10 = i9 * 2;
            f8724q = i10;
            this.f8736m = (f[]) Arrays.copyOf(this.f8736m, i10);
        }
        f[] fVarArr = this.f8736m;
        int i11 = this.n;
        this.n = i11 + 1;
        fVarArr[i11] = fVar2;
        return fVar2;
    }

    public final void b(f fVar, f fVar2, int i5, float f, f fVar3, f fVar4, int i6, int i7) {
        C0765b c0765bL = l();
        if (fVar2 == fVar3) {
            c0765bL.f8721d.j(fVar, 1.0f);
            c0765bL.f8721d.j(fVar4, 1.0f);
            c0765bL.f8721d.j(fVar2, -2.0f);
        } else if (f == 0.5f) {
            c0765bL.f8721d.j(fVar, 1.0f);
            c0765bL.f8721d.j(fVar2, -1.0f);
            c0765bL.f8721d.j(fVar3, -1.0f);
            c0765bL.f8721d.j(fVar4, 1.0f);
            if (i5 > 0 || i6 > 0) {
                c0765bL.f8719b = (-i5) + i6;
            }
        } else if (f <= 0.0f) {
            c0765bL.f8721d.j(fVar, -1.0f);
            c0765bL.f8721d.j(fVar2, 1.0f);
            c0765bL.f8719b = i5;
        } else if (f >= 1.0f) {
            c0765bL.f8721d.j(fVar4, -1.0f);
            c0765bL.f8721d.j(fVar3, 1.0f);
            c0765bL.f8719b = -i6;
        } else {
            float f5 = 1.0f - f;
            c0765bL.f8721d.j(fVar, f5 * 1.0f);
            c0765bL.f8721d.j(fVar2, f5 * (-1.0f));
            c0765bL.f8721d.j(fVar3, (-1.0f) * f);
            c0765bL.f8721d.j(fVar4, 1.0f * f);
            if (i5 > 0 || i6 > 0) {
                c0765bL.f8719b = (i6 * f) + ((-i5) * f5);
            }
        }
        if (i7 != 8) {
            c0765bL.a(this, i7);
        }
        c(c0765bL);
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01a5 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(C0765b c0765b) {
        boolean z4;
        boolean z5;
        f fVar;
        f fVarF;
        ArrayList arrayList;
        if (this.f8733j + 1 >= this.f8734k || this.f8732i + 1 >= this.f8729e) {
            o();
        }
        if (c0765b.f8722e) {
            z4 = false;
        } else {
            if (this.f.length != 0) {
                boolean z6 = false;
                while (!z6) {
                    int iF = c0765b.f8721d.f();
                    int i5 = 0;
                    while (true) {
                        arrayList = c0765b.f8720c;
                        if (i5 >= iF) {
                            break;
                        }
                        f fVarG = c0765b.f8721d.g(i5);
                        if (fVarG.f8745c != -1 || fVarG.f) {
                            arrayList.add(fVarG);
                        }
                        i5++;
                    }
                    int size = arrayList.size();
                    if (size > 0) {
                        for (int i6 = 0; i6 < size; i6++) {
                            f fVar2 = (f) arrayList.get(i6);
                            if (fVar2.f) {
                                c0765b.h(this, fVar2, true);
                            } else {
                                c0765b.i(this, this.f[fVar2.f8745c], true);
                            }
                        }
                        arrayList.clear();
                    } else {
                        z6 = true;
                    }
                }
                if (c0765b.f8718a != null && c0765b.f8721d.f() == 0) {
                    c0765b.f8722e = true;
                    this.f8725a = true;
                }
            }
            if (c0765b.e()) {
                return;
            }
            float f = c0765b.f8719b;
            if (f < 0.0f) {
                c0765b.f8719b = f * (-1.0f);
                c0765b.f8721d.i();
            }
            int iF2 = c0765b.f8721d.f();
            float f5 = 0.0f;
            float f6 = 0.0f;
            f fVar3 = null;
            f fVar4 = null;
            boolean z7 = false;
            boolean z8 = false;
            for (int i7 = 0; i7 < iF2; i7++) {
                float fH = c0765b.f8721d.h(i7);
                f fVarG2 = c0765b.f8721d.g(i7);
                if (fVarG2.f8753l == 1) {
                    if (fVar3 == null) {
                        z7 = fVarG2.f8752k <= 1;
                    } else if (f5 > fH) {
                        if (fVarG2.f8752k <= 1) {
                        }
                    } else if (z7 || fVarG2.f8752k > 1) {
                    }
                    fVar3 = fVarG2;
                    f5 = fH;
                } else if (fVar3 == null && fH < 0.0f) {
                    if (fVar4 == null) {
                        z8 = fVarG2.f8752k <= 1;
                    } else if (f6 > fH) {
                        if (fVarG2.f8752k <= 1) {
                        }
                    } else if (z8 || fVarG2.f8752k > 1) {
                    }
                    fVar4 = fVarG2;
                    f6 = fH;
                }
            }
            if (fVar3 == null) {
                fVar3 = fVar4;
            }
            if (fVar3 == null) {
                z5 = true;
            } else {
                c0765b.g(fVar3);
                z5 = false;
            }
            if (c0765b.f8721d.f() == 0) {
                c0765b.f8722e = true;
            }
            if (z5) {
                if (this.f8732i + 1 >= this.f8729e) {
                    o();
                }
                f fVarA = a(3);
                int i8 = this.f8726b + 1;
                this.f8726b = i8;
                this.f8732i++;
                fVarA.f8744b = i8;
                r0 r0Var = this.f8735l;
                ((f[]) r0Var.f1008e)[i8] = fVarA;
                c0765b.f8718a = fVarA;
                int i9 = this.f8733j;
                h(c0765b);
                if (this.f8733j == i9 + 1) {
                    C0765b c0765b2 = this.f8737o;
                    c0765b2.getClass();
                    c0765b2.f8718a = null;
                    c0765b2.f8721d.b();
                    for (int i10 = 0; i10 < c0765b.f8721d.f(); i10++) {
                        c0765b2.f8721d.a(c0765b.f8721d.g(i10), c0765b.f8721d.h(i10), true);
                    }
                    r(this.f8737o);
                    if (fVarA.f8745c == -1) {
                        if (c0765b.f8718a == fVarA && (fVarF = c0765b.f(null, fVarA)) != null) {
                            c0765b.g(fVarF);
                        }
                        if (!c0765b.f8722e) {
                            c0765b.f8718a.e(this, c0765b);
                        }
                        ((I.c) r0Var.f1006c).b(c0765b);
                        this.f8733j--;
                    }
                    z4 = true;
                }
                fVar = c0765b.f8718a;
                if (fVar != null) {
                }
            } else {
                z4 = false;
                fVar = c0765b.f8718a;
                if (fVar != null) {
                    return;
                }
                if (fVar.f8753l != 1 && c0765b.f8719b < 0.0f) {
                    return;
                }
            }
        }
        if (z4) {
            return;
        }
        h(c0765b);
    }

    public final void d(f fVar, int i5) {
        int i6 = fVar.f8745c;
        if (i6 == -1) {
            fVar.d(this, i5);
            for (int i7 = 0; i7 < this.f8726b + 1; i7++) {
                f fVar2 = ((f[]) this.f8735l.f1008e)[i7];
            }
            return;
        }
        if (i6 == -1) {
            C0765b c0765bL = l();
            c0765bL.f8718a = fVar;
            float f = i5;
            fVar.f8747e = f;
            c0765bL.f8719b = f;
            c0765bL.f8722e = true;
            c(c0765bL);
            return;
        }
        C0765b c0765b = this.f[i6];
        if (c0765b.f8722e) {
            c0765b.f8719b = i5;
            return;
        }
        if (c0765b.f8721d.f() == 0) {
            c0765b.f8722e = true;
            c0765b.f8719b = i5;
            return;
        }
        C0765b c0765bL2 = l();
        if (i5 < 0) {
            c0765bL2.f8719b = i5 * (-1);
            c0765bL2.f8721d.j(fVar, 1.0f);
        } else {
            c0765bL2.f8719b = i5;
            c0765bL2.f8721d.j(fVar, -1.0f);
        }
        c(c0765bL2);
    }

    public final void e(f fVar, f fVar2, int i5, int i6) {
        if (i6 == 8 && fVar2.f && fVar.f8745c == -1) {
            fVar.d(this, fVar2.f8747e + i5);
            return;
        }
        C0765b c0765bL = l();
        boolean z4 = false;
        if (i5 != 0) {
            if (i5 < 0) {
                i5 *= -1;
                z4 = true;
            }
            c0765bL.f8719b = i5;
        }
        if (z4) {
            c0765bL.f8721d.j(fVar, 1.0f);
            c0765bL.f8721d.j(fVar2, -1.0f);
        } else {
            c0765bL.f8721d.j(fVar, -1.0f);
            c0765bL.f8721d.j(fVar2, 1.0f);
        }
        if (i6 != 8) {
            c0765bL.a(this, i6);
        }
        c(c0765bL);
    }

    public final void f(f fVar, f fVar2, int i5, int i6) {
        C0765b c0765bL = l();
        f fVarM = m();
        fVarM.f8746d = 0;
        c0765bL.b(fVar, fVar2, fVarM, i5);
        if (i6 != 8) {
            c0765bL.f8721d.j(j(i6), (int) (c0765bL.f8721d.e(fVarM) * (-1.0f)));
        }
        c(c0765bL);
    }

    public final void g(f fVar, f fVar2, int i5, int i6) {
        C0765b c0765bL = l();
        f fVarM = m();
        fVarM.f8746d = 0;
        c0765bL.c(fVar, fVar2, fVarM, i5);
        if (i6 != 8) {
            c0765bL.f8721d.j(j(i6), (int) (c0765bL.f8721d.e(fVarM) * (-1.0f)));
        }
        c(c0765bL);
    }

    public final void h(C0765b c0765b) {
        int i5;
        if (c0765b.f8722e) {
            c0765b.f8718a.d(this, c0765b.f8719b);
        } else {
            C0765b[] c0765bArr = this.f;
            int i6 = this.f8733j;
            c0765bArr[i6] = c0765b;
            f fVar = c0765b.f8718a;
            fVar.f8745c = i6;
            this.f8733j = i6 + 1;
            fVar.e(this, c0765b);
        }
        if (this.f8725a) {
            int i7 = 0;
            while (i7 < this.f8733j) {
                if (this.f[i7] == null) {
                    System.out.println("WTF");
                }
                C0765b c0765b2 = this.f[i7];
                if (c0765b2 != null && c0765b2.f8722e) {
                    c0765b2.f8718a.d(this, c0765b2.f8719b);
                    ((I.c) this.f8735l.f1006c).b(c0765b2);
                    this.f[i7] = null;
                    int i8 = i7 + 1;
                    int i9 = i8;
                    while (true) {
                        i5 = this.f8733j;
                        if (i8 >= i5) {
                            break;
                        }
                        C0765b[] c0765bArr2 = this.f;
                        int i10 = i8 - 1;
                        C0765b c0765b3 = c0765bArr2[i8];
                        c0765bArr2[i10] = c0765b3;
                        f fVar2 = c0765b3.f8718a;
                        if (fVar2.f8745c == i8) {
                            fVar2.f8745c = i10;
                        }
                        i9 = i8;
                        i8++;
                    }
                    if (i9 < i5) {
                        this.f[i9] = null;
                    }
                    this.f8733j = i5 - 1;
                    i7--;
                }
                i7++;
            }
            this.f8725a = false;
        }
    }

    public final void i() {
        for (int i5 = 0; i5 < this.f8733j; i5++) {
            C0765b c0765b = this.f[i5];
            c0765b.f8718a.f8747e = c0765b.f8719b;
        }
    }

    public final f j(int i5) {
        if (this.f8732i + 1 >= this.f8729e) {
            o();
        }
        f fVarA = a(4);
        int i6 = this.f8726b + 1;
        this.f8726b = i6;
        this.f8732i++;
        fVarA.f8744b = i6;
        fVarA.f8746d = i5;
        ((f[]) this.f8735l.f1008e)[i6] = fVarA;
        e eVar = this.f8727c;
        eVar.f8742i.f8738c = fVarA;
        float[] fArr = fVarA.f8749h;
        Arrays.fill(fArr, 0.0f);
        fArr[fVarA.f8746d] = 1.0f;
        eVar.j(fVarA);
        return fVarA;
    }

    public final f k(Object obj) {
        f fVar = null;
        if (obj == null) {
            return null;
        }
        if (this.f8732i + 1 >= this.f8729e) {
            o();
        }
        if (obj instanceof C0826c) {
            C0826c c0826c = (C0826c) obj;
            fVar = c0826c.f8892i;
            if (fVar == null) {
                c0826c.k();
                fVar = c0826c.f8892i;
            }
            int i5 = fVar.f8744b;
            r0 r0Var = this.f8735l;
            if (i5 == -1 || i5 > this.f8726b || ((f[]) r0Var.f1008e)[i5] == null) {
                if (i5 != -1) {
                    fVar.c();
                }
                int i6 = this.f8726b + 1;
                this.f8726b = i6;
                this.f8732i++;
                fVar.f8744b = i6;
                fVar.f8753l = 1;
                ((f[]) r0Var.f1008e)[i6] = fVar;
            }
        }
        return fVar;
    }

    public final C0765b l() {
        Object obj;
        r0 r0Var = this.f8735l;
        I.c cVar = (I.c) r0Var.f1006c;
        int i5 = cVar.f866b;
        if (i5 > 0) {
            int i6 = i5 - 1;
            Object[] objArr = cVar.f865a;
            obj = objArr[i6];
            objArr[i6] = null;
            cVar.f866b = i6;
        } else {
            obj = null;
        }
        C0765b c0765b = (C0765b) obj;
        if (c0765b == null) {
            return new C0765b(r0Var);
        }
        c0765b.f8718a = null;
        c0765b.f8721d.b();
        c0765b.f8719b = 0.0f;
        c0765b.f8722e = false;
        return c0765b;
    }

    public final f m() {
        if (this.f8732i + 1 >= this.f8729e) {
            o();
        }
        f fVarA = a(3);
        int i5 = this.f8726b + 1;
        this.f8726b = i5;
        this.f8732i++;
        fVarA.f8744b = i5;
        ((f[]) this.f8735l.f1008e)[i5] = fVarA;
        return fVarA;
    }

    public final void o() {
        int i5 = this.f8728d * 2;
        this.f8728d = i5;
        this.f = (C0765b[]) Arrays.copyOf(this.f, i5);
        r0 r0Var = this.f8735l;
        r0Var.f1008e = (f[]) Arrays.copyOf((f[]) r0Var.f1008e, this.f8728d);
        int i6 = this.f8728d;
        this.f8731h = new boolean[i6];
        this.f8729e = i6;
        this.f8734k = i6;
    }

    public final void p() {
        e eVar = this.f8727c;
        if (eVar.e()) {
            i();
            return;
        }
        if (!this.f8730g) {
            q(eVar);
            return;
        }
        for (int i5 = 0; i5 < this.f8733j; i5++) {
            if (!this.f[i5].f8722e) {
                q(eVar);
                return;
            }
        }
        i();
    }

    public final void q(e eVar) {
        int i5 = 0;
        while (true) {
            if (i5 >= this.f8733j) {
                break;
            }
            C0765b c0765b = this.f[i5];
            int i6 = 1;
            if (c0765b.f8718a.f8753l != 1) {
                float f = 0.0f;
                if (c0765b.f8719b < 0.0f) {
                    boolean z4 = false;
                    int i7 = 0;
                    while (!z4) {
                        i7 += i6;
                        float f5 = Float.MAX_VALUE;
                        int i8 = -1;
                        int i9 = -1;
                        int i10 = 0;
                        int i11 = 0;
                        while (i10 < this.f8733j) {
                            C0765b c0765b2 = this.f[i10];
                            if (c0765b2.f8718a.f8753l != i6 && !c0765b2.f8722e && c0765b2.f8719b < f) {
                                int iF = c0765b2.f8721d.f();
                                int i12 = 0;
                                while (i12 < iF) {
                                    f fVarG = c0765b2.f8721d.g(i12);
                                    float fE = c0765b2.f8721d.e(fVarG);
                                    if (fE > f) {
                                        for (int i13 = 0; i13 < 9; i13++) {
                                            float f6 = fVarG.f8748g[i13] / fE;
                                            if ((f6 < f5 && i13 == i11) || i13 > i11) {
                                                i11 = i13;
                                                i9 = fVarG.f8744b;
                                                i8 = i10;
                                                f5 = f6;
                                            }
                                        }
                                    }
                                    i12++;
                                    f = 0.0f;
                                }
                            }
                            i10++;
                            f = 0.0f;
                            i6 = 1;
                        }
                        if (i8 != -1) {
                            C0765b c0765b3 = this.f[i8];
                            c0765b3.f8718a.f8745c = -1;
                            c0765b3.g(((f[]) this.f8735l.f1008e)[i9]);
                            f fVar = c0765b3.f8718a;
                            fVar.f8745c = i8;
                            fVar.e(this, c0765b3);
                        } else {
                            z4 = true;
                        }
                        if (i7 > this.f8732i / 2) {
                            z4 = true;
                        }
                        f = 0.0f;
                        i6 = 1;
                    }
                }
            }
            i5++;
        }
        r(eVar);
        i();
    }

    public final void r(C0765b c0765b) {
        for (int i5 = 0; i5 < this.f8732i; i5++) {
            this.f8731h[i5] = false;
        }
        boolean z4 = false;
        int i6 = 0;
        while (!z4) {
            i6++;
            if (i6 >= this.f8732i * 2) {
                return;
            }
            f fVar = c0765b.f8718a;
            if (fVar != null) {
                this.f8731h[fVar.f8744b] = true;
            }
            f fVarD = c0765b.d(this.f8731h);
            if (fVarD != null) {
                boolean[] zArr = this.f8731h;
                int i7 = fVarD.f8744b;
                if (zArr[i7]) {
                    return;
                } else {
                    zArr[i7] = true;
                }
            }
            if (fVarD != null) {
                float f = Float.MAX_VALUE;
                int i8 = -1;
                for (int i9 = 0; i9 < this.f8733j; i9++) {
                    C0765b c0765b2 = this.f[i9];
                    if (c0765b2.f8718a.f8753l != 1 && !c0765b2.f8722e && c0765b2.f8721d.c(fVarD)) {
                        float fE = c0765b2.f8721d.e(fVarD);
                        if (fE < 0.0f) {
                            float f5 = (-c0765b2.f8719b) / fE;
                            if (f5 < f) {
                                i8 = i9;
                                f = f5;
                            }
                        }
                    }
                }
                if (i8 > -1) {
                    C0765b c0765b3 = this.f[i8];
                    c0765b3.f8718a.f8745c = -1;
                    c0765b3.g(fVarD);
                    f fVar2 = c0765b3.f8718a;
                    fVar2.f8745c = i8;
                    fVar2.e(this, c0765b3);
                }
            } else {
                z4 = true;
            }
        }
    }

    public final void s() {
        for (int i5 = 0; i5 < this.f8733j; i5++) {
            C0765b c0765b = this.f[i5];
            if (c0765b != null) {
                ((I.c) this.f8735l.f1006c).b(c0765b);
            }
            this.f[i5] = null;
        }
    }

    public final void t() {
        r0 r0Var;
        int i5 = 0;
        while (true) {
            r0Var = this.f8735l;
            f[] fVarArr = (f[]) r0Var.f1008e;
            if (i5 >= fVarArr.length) {
                break;
            }
            f fVar = fVarArr[i5];
            if (fVar != null) {
                fVar.c();
            }
            i5++;
        }
        I.c cVar = (I.c) r0Var.f1007d;
        f[] fVarArr2 = this.f8736m;
        int length = this.n;
        cVar.getClass();
        if (length > fVarArr2.length) {
            length = fVarArr2.length;
        }
        for (int i6 = 0; i6 < length; i6++) {
            f fVar2 = fVarArr2[i6];
            int i7 = cVar.f866b;
            Object[] objArr = cVar.f865a;
            if (i7 < objArr.length) {
                objArr[i7] = fVar2;
                cVar.f866b = i7 + 1;
            }
        }
        this.n = 0;
        Arrays.fill((f[]) r0Var.f1008e, (Object) null);
        this.f8726b = 0;
        e eVar = this.f8727c;
        eVar.f8741h = 0;
        eVar.f8719b = 0.0f;
        this.f8732i = 1;
        for (int i8 = 0; i8 < this.f8733j; i8++) {
            C0765b c0765b = this.f[i8];
        }
        s();
        this.f8733j = 0;
        this.f8737o = new C0765b(r0Var);
    }
}
