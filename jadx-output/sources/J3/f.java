package J3;

import L3.C;
import L3.C0061j;
import R2.B;
import R3.C0098u;
import java.util.Set;
import u3.E;
import x3.AbstractC0917d;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: b, reason: collision with root package name */
    public static final Set f1150b = L2.b.I(K3.a.CLASS);

    /* renamed from: c, reason: collision with root package name */
    public static final Set f1151c = B.T(K3.a.FILE_FACADE, K3.a.MULTIFILE_CLASS_PART);

    /* renamed from: d, reason: collision with root package name */
    public static final P3.f f1152d;

    /* renamed from: e, reason: collision with root package name */
    public static final P3.f f1153e;

    /* renamed from: a, reason: collision with root package name */
    public d4.i f1154a;

    static {
        new P3.f(new int[]{1, 1, 2}, false);
        f1152d = new P3.f(new int[]{1, 1, 11}, false);
        f1153e = new P3.f(new int[]{1, 1, 13}, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final f4.q a(E e5, w3.b bVar) {
        Q2.e eVarH;
        d3.i.e("descriptor", e5);
        d3.i.e("kotlinClass", bVar);
        K3.b bVar2 = bVar.f9609b;
        String[] strArr = (String[]) bVar2.f;
        if (strArr == null) {
            strArr = (String[]) bVar2.f1291g;
        }
        if (strArr != null) {
            if (!f1151c.contains((K3.a) bVar2.f1289d)) {
                strArr = null;
            }
        }
        if (strArr == null) {
            return null;
        }
        String[] strArr2 = (String[]) bVar2.f1292h;
        try {
        } catch (Throwable th) {
            c().f6531c.getClass();
            d3.i.e("<this>", c().f6531c);
            if (((P3.f) bVar2.f1290e).b(P3.f.f2161g)) {
                throw th;
            }
            eVarH = null;
        }
        if (strArr2 == null) {
            return null;
        }
        try {
            eVarH = P3.h.h(strArr, strArr2);
            if (eVarH == null) {
                return null;
            }
            P3.g gVar = (P3.g) eVarH.f2212c;
            C c2 = (C) eVarH.f2213d;
            d(bVar);
            e(bVar);
            h hVar = new h(bVar, c2, gVar, b(bVar));
            return new f4.q(e5, c2, gVar, (P3.f) bVar2.f1290e, hVar, c(), "scope for " + hVar + " in " + e5, e.f1149d);
        } catch (C0098u e6) {
            throw new IllegalStateException("Could not read data from " + bVar.a(), e6);
        }
    }

    public final int b(w3.b bVar) {
        c().f6531c.getClass();
        int i5 = bVar.f9609b.f1288c;
        if (((i5 & 64) != 0) && (i5 & 32) == 0) {
            return 2;
        }
        return ((i5 & 16) == 0 || (i5 & 32) != 0) ? 1 : 3;
    }

    public final d4.i c() {
        d4.i iVar = this.f1154a;
        if (iVar != null) {
            return iVar;
        }
        d3.i.g("components");
        throw null;
    }

    public final d4.m d(w3.b bVar) {
        c().f6531c.getClass();
        P3.f fVar = (P3.f) bVar.f9609b.f1290e;
        d3.i.e("<this>", c().f6531c);
        P3.f fVar2 = P3.f.f2161g;
        if (fVar.b(fVar2)) {
            return null;
        }
        K3.b bVar2 = bVar.f9609b;
        P3.f fVar3 = (P3.f) bVar2.f1290e;
        d3.i.e("<this>", c().f6531c);
        d3.i.e("<this>", c().f6531c);
        boolean z4 = ((P3.f) bVar2.f1290e).f;
        fVar2.getClass();
        P3.f fVar4 = z4 ? fVar2 : P3.f.f2162h;
        fVar4.getClass();
        int i5 = fVar2.f1866b;
        int i6 = fVar4.f1866b;
        return new d4.m(fVar3, fVar2, fVar2, (i6 <= i5 && (i6 < i5 || fVar4.f1867c <= fVar2.f1867c)) ? fVar2 : fVar4, bVar.a(), AbstractC0917d.a(bVar.f9608a));
    }

    public final boolean e(w3.b bVar) {
        c().f6531c.getClass();
        c().f6531c.getClass();
        K3.b bVar2 = bVar.f9609b;
        return (bVar2.f1288c & 2) != 0 && d3.i.a((P3.f) bVar2.f1290e, f1152d);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final d4.d f(w3.b bVar) {
        Q2.e eVarF;
        K3.b bVar2 = bVar.f9609b;
        String[] strArr = (String[]) bVar2.f;
        if (strArr == null) {
            strArr = (String[]) bVar2.f1291g;
        }
        if (strArr != null) {
            if (!f1150b.contains((K3.a) bVar2.f1289d)) {
                strArr = null;
            }
        }
        if (strArr == null) {
            return null;
        }
        String[] strArr2 = (String[]) bVar2.f1292h;
        P3.f fVar = (P3.f) bVar2.f1290e;
        try {
        } catch (Throwable th) {
            c().f6531c.getClass();
            d3.i.e("<this>", c().f6531c);
            if (fVar.b(P3.f.f2161g)) {
                throw th;
            }
            eVarF = null;
        }
        if (strArr2 == null) {
            return null;
        }
        try {
            eVarF = P3.h.f(strArr, strArr2);
            if (eVarF == null) {
                return null;
            }
            P3.g gVar = (P3.g) eVarF.f2212c;
            C0061j c0061j = (C0061j) eVarF.f2213d;
            d(bVar);
            e(bVar);
            return new d4.d(gVar, c0061j, fVar, new q(bVar, b(bVar)));
        } catch (C0098u e5) {
            throw new IllegalStateException("Could not read data from " + bVar.a(), e5);
        }
    }
}
