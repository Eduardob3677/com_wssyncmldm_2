package O3;

import R3.A;
import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;

/* loaded from: classes.dex */
public final class d extends AbstractC0089k implements A {

    /* renamed from: d, reason: collision with root package name */
    public int f1970d;

    /* renamed from: e, reason: collision with root package name */
    public b f1971e;
    public c f;

    /* renamed from: g, reason: collision with root package name */
    public c f1972g;

    /* renamed from: h, reason: collision with root package name */
    public c f1973h;

    /* renamed from: i, reason: collision with root package name */
    public c f1974i;

    public static d g() {
        d dVar = new d();
        dVar.f1971e = b.f1956i;
        c cVar = c.f1963i;
        dVar.f = cVar;
        dVar.f1972g = cVar;
        dVar.f1973h = cVar;
        dVar.f1974i = cVar;
        return dVar;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        e eVarF = f();
        if (eVarF.b()) {
            return eVarF;
        }
        throw new A0.c();
    }

    public final Object clone() {
        d dVarG = g();
        dVarG.h(f());
        return dVarG;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        e eVar = null;
        try {
            try {
                e.f1976m.getClass();
                h(new e(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                e eVar2 = (e) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    eVar = eVar2;
                    if (eVar != null) {
                        h(eVar);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (eVar != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        h((e) abstractC0095q);
        return this;
    }

    public final e f() {
        e eVar = new e(this);
        int i5 = this.f1970d;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        eVar.f1979e = this.f1971e;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        eVar.f = this.f;
        if ((i5 & 4) == 4) {
            i6 |= 4;
        }
        eVar.f1980g = this.f1972g;
        if ((i5 & 8) == 8) {
            i6 |= 8;
        }
        eVar.f1981h = this.f1973h;
        if ((i5 & 16) == 16) {
            i6 |= 16;
        }
        eVar.f1982i = this.f1974i;
        eVar.f1978d = i6;
        return eVar;
    }

    public final void h(e eVar) {
        c cVar;
        c cVar2;
        c cVar3;
        c cVar4;
        b bVar;
        if (eVar == e.f1975l) {
            return;
        }
        if ((eVar.f1978d & 1) == 1) {
            b bVar2 = eVar.f1979e;
            if ((this.f1970d & 1) != 1 || (bVar = this.f1971e) == b.f1956i) {
                this.f1971e = bVar2;
            } else {
                a aVar = new a(0);
                aVar.h(bVar);
                aVar.h(bVar2);
                this.f1971e = aVar.f();
            }
            this.f1970d |= 1;
        }
        if ((eVar.f1978d & 2) == 2) {
            c cVar5 = eVar.f;
            if ((this.f1970d & 2) != 2 || (cVar4 = this.f) == c.f1963i) {
                this.f = cVar5;
            } else {
                a aVarI = c.i(cVar4);
                aVarI.i(cVar5);
                this.f = aVarI.g();
            }
            this.f1970d |= 2;
        }
        if ((eVar.f1978d & 4) == 4) {
            c cVar6 = eVar.f1980g;
            if ((this.f1970d & 4) != 4 || (cVar3 = this.f1972g) == c.f1963i) {
                this.f1972g = cVar6;
            } else {
                a aVarI2 = c.i(cVar3);
                aVarI2.i(cVar6);
                this.f1972g = aVarI2.g();
            }
            this.f1970d |= 4;
        }
        if ((eVar.f1978d & 8) == 8) {
            c cVar7 = eVar.f1981h;
            if ((this.f1970d & 8) != 8 || (cVar2 = this.f1973h) == c.f1963i) {
                this.f1973h = cVar7;
            } else {
                a aVarI3 = c.i(cVar2);
                aVarI3.i(cVar7);
                this.f1973h = aVarI3.g();
            }
            this.f1970d |= 8;
        }
        if ((eVar.f1978d & 16) == 16) {
            c cVar8 = eVar.f1982i;
            if ((this.f1970d & 16) != 16 || (cVar = this.f1974i) == c.f1963i) {
                this.f1974i = cVar8;
            } else {
                a aVarI4 = c.i(cVar);
                aVarI4.i(cVar8);
                this.f1974i = aVarI4.g();
            }
            this.f1970d |= 16;
        }
        this.f2400c = this.f2400c.m(eVar.f1977c);
    }
}
