package r;

import J.r0;
import h0.AbstractC0432c;
import java.util.ArrayList;

/* renamed from: r.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0765b {

    /* renamed from: d, reason: collision with root package name */
    public final C0764a f8721d;

    /* renamed from: a, reason: collision with root package name */
    public f f8718a = null;

    /* renamed from: b, reason: collision with root package name */
    public float f8719b = 0.0f;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f8720c = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public boolean f8722e = false;

    public C0765b(r0 r0Var) {
        this.f8721d = new C0764a(this, r0Var);
    }

    public final void a(c cVar, int i5) {
        this.f8721d.j(cVar.j(i5), 1.0f);
        this.f8721d.j(cVar.j(i5), -1.0f);
    }

    public final void b(f fVar, f fVar2, f fVar3, int i5) {
        boolean z4 = false;
        if (i5 != 0) {
            if (i5 < 0) {
                i5 *= -1;
                z4 = true;
            }
            this.f8719b = i5;
        }
        if (z4) {
            this.f8721d.j(fVar, 1.0f);
            this.f8721d.j(fVar2, -1.0f);
            this.f8721d.j(fVar3, -1.0f);
        } else {
            this.f8721d.j(fVar, -1.0f);
            this.f8721d.j(fVar2, 1.0f);
            this.f8721d.j(fVar3, 1.0f);
        }
    }

    public final void c(f fVar, f fVar2, f fVar3, int i5) {
        boolean z4 = false;
        if (i5 != 0) {
            if (i5 < 0) {
                i5 *= -1;
                z4 = true;
            }
            this.f8719b = i5;
        }
        if (z4) {
            this.f8721d.j(fVar, 1.0f);
            this.f8721d.j(fVar2, -1.0f);
            this.f8721d.j(fVar3, 1.0f);
        } else {
            this.f8721d.j(fVar, -1.0f);
            this.f8721d.j(fVar2, 1.0f);
            this.f8721d.j(fVar3, -1.0f);
        }
    }

    public f d(boolean[] zArr) {
        return f(zArr, null);
    }

    public boolean e() {
        return this.f8718a == null && this.f8719b == 0.0f && this.f8721d.f() == 0;
    }

    public final f f(boolean[] zArr, f fVar) {
        int i5;
        int iF = this.f8721d.f();
        f fVar2 = null;
        float f = 0.0f;
        for (int i6 = 0; i6 < iF; i6++) {
            float fH = this.f8721d.h(i6);
            if (fH < 0.0f) {
                f fVarG = this.f8721d.g(i6);
                if ((zArr == null || !zArr[fVarG.f8744b]) && fVarG != fVar && (((i5 = fVarG.f8753l) == 3 || i5 == 4) && fH < f)) {
                    f = fH;
                    fVar2 = fVarG;
                }
            }
        }
        return fVar2;
    }

    public final void g(f fVar) {
        f fVar2 = this.f8718a;
        if (fVar2 != null) {
            this.f8721d.j(fVar2, -1.0f);
            this.f8718a.f8745c = -1;
            this.f8718a = null;
        }
        float fK = this.f8721d.k(fVar, true) * (-1.0f);
        this.f8718a = fVar;
        if (fK == 1.0f) {
            return;
        }
        this.f8719b /= fK;
        this.f8721d.d(fK);
    }

    public final void h(c cVar, f fVar, boolean z4) {
        if (fVar.f) {
            float fE = this.f8721d.e(fVar);
            this.f8719b = (fVar.f8747e * fE) + this.f8719b;
            this.f8721d.k(fVar, z4);
            if (z4) {
                fVar.b(this);
            }
            if (this.f8721d.f() == 0) {
                this.f8722e = true;
                cVar.f8725a = true;
            }
        }
    }

    public void i(c cVar, C0765b c0765b, boolean z4) {
        float fL = this.f8721d.l(c0765b, z4);
        this.f8719b = (c0765b.f8719b * fL) + this.f8719b;
        if (z4) {
            c0765b.f8718a.b(this);
        }
        if (this.f8718a == null || this.f8721d.f() != 0) {
            return;
        }
        this.f8722e = true;
        cVar.f8725a = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        boolean z4;
        String strH = AbstractC0432c.h(this.f8718a == null ? "0" : "" + this.f8718a, " = ");
        if (this.f8719b != 0.0f) {
            strH = strH + this.f8719b;
            z4 = true;
        } else {
            z4 = false;
        }
        int iF = this.f8721d.f();
        for (int i5 = 0; i5 < iF; i5++) {
            f fVarG = this.f8721d.g(i5);
            if (fVarG != null) {
                float fH = this.f8721d.h(i5);
                if (fH != 0.0f) {
                    String string = fVarG.toString();
                    if (!z4) {
                        if (fH < 0.0f) {
                            strH = AbstractC0432c.h(strH, "- ");
                            fH *= -1.0f;
                        }
                        strH = fH == 1.0f ? AbstractC0432c.h(strH, string) : strH + fH + " " + string;
                        z4 = true;
                    } else if (fH > 0.0f) {
                        strH = AbstractC0432c.h(strH, " + ");
                        if (fH == 1.0f) {
                        }
                        z4 = true;
                    } else {
                        strH = AbstractC0432c.h(strH, " - ");
                        fH *= -1.0f;
                        if (fH == 1.0f) {
                        }
                        z4 = true;
                    }
                }
            }
        }
        return !z4 ? AbstractC0432c.h(strH, "0.0") : strH;
    }
}
