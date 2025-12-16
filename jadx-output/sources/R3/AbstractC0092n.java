package R3;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: R3.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0092n extends AbstractC0095q {

    /* renamed from: c, reason: collision with root package name */
    public final C0088j f2406c;

    public AbstractC0092n() {
        this.f2406c = new C0088j();
    }

    public final boolean i() {
        int i5 = 0;
        while (true) {
            F f = this.f2406c.f2397a;
            if (i5 >= f.f2346d.size()) {
                Iterator it = f.c().iterator();
                while (it.hasNext()) {
                    if (!C0088j.e((Map.Entry) it.next())) {
                        return false;
                    }
                }
                return true;
            }
            if (!C0088j.e((Map.Entry) f.f2346d.get(i5))) {
                return false;
            }
            i5++;
        }
    }

    public final int j() {
        F f;
        int i5 = 0;
        int iD = 0;
        while (true) {
            f = this.f2406c.f2397a;
            if (i5 >= f.f2346d.size()) {
                break;
            }
            Map.Entry entry = (Map.Entry) f.f2346d.get(i5);
            iD += C0088j.d((C0093o) entry.getKey(), entry.getValue());
            i5++;
        }
        for (Map.Entry entry2 : f.c()) {
            iD += C0088j.d((C0093o) entry2.getKey(), entry2.getValue());
        }
        return iD;
    }

    public final Object k(C0094p c0094p) {
        p(c0094p);
        F f = this.f2406c.f2397a;
        C0093o c0093o = c0094p.f2413d;
        Object obj = f.get(c0093o);
        if (obj == null) {
            return c0094p.f2411b;
        }
        if (!c0093o.f2409e) {
            return c0094p.a(obj);
        }
        if (c0093o.f2408d.f2365c != U.ENUM) {
            return obj;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            arrayList.add(c0094p.a(it.next()));
        }
        return arrayList;
    }

    public final boolean l(C0094p c0094p) {
        p(c0094p);
        C0088j c0088j = this.f2406c;
        c0088j.getClass();
        C0093o c0093o = c0094p.f2413d;
        if (c0093o.f2409e) {
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }
        return c0088j.f2397a.get(c0093o) != null;
    }

    public final void m() {
        this.f2406c.f();
    }

    public final C0091m n() {
        return new C0091m(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean o(C0084f c0084f, B1.j jVar, C0087i c0087i, int i5) throws C0098u {
        boolean z4;
        boolean z5;
        Object objC;
        AbstractC0080b abstractC0080b;
        AbstractC0089k abstractC0089kD = null;
        AbstractC0080b abstractC0080bA = a();
        int i6 = i5 & 7;
        c0087i.getClass();
        C0094p c0094p = (C0094p) c0087i.f2395a.get(new C0086h(i5 >>> 3, abstractC0080bA));
        if (c0094p == null) {
            z5 = false;
            z4 = true;
        } else {
            C0093o c0093o = c0094p.f2413d;
            T t2 = c0093o.f2408d;
            C0088j c0088j = C0088j.f2396d;
            if (i6 == t2.f2366d) {
                z4 = false;
                z5 = false;
            } else if (c0093o.f2409e && t2.a() && i6 == 2) {
                z4 = false;
                z5 = true;
            }
        }
        if (z4) {
            return c0084f.q(i5, jVar);
        }
        C0088j c0088j2 = this.f2406c;
        if (z5) {
            int iD = c0084f.d(c0084f.k());
            C0093o c0093o2 = c0094p.f2413d;
            if (c0093o2.f2408d != T.f2363i) {
                while (c0084f.b() > 0) {
                    c0088j2.a(c0093o2, C0088j.h(c0084f, c0093o2.f2408d));
                }
            } else if (c0084f.b() > 0) {
                c0084f.k();
                c0093o2.getClass();
                throw null;
            }
            c0084f.c(iD);
            return true;
        }
        int iOrdinal = c0094p.f2413d.f2408d.f2365c.ordinal();
        C0093o c0093o3 = c0094p.f2413d;
        if (iOrdinal == 7) {
            c0084f.k();
            c0093o3.getClass();
            throw null;
        }
        if (iOrdinal != 8) {
            objC = C0088j.h(c0084f, c0093o3.f2408d);
        } else {
            if (!c0093o3.f2409e && (abstractC0080b = (AbstractC0080b) c0088j2.f2397a.get(c0093o3)) != null) {
                abstractC0089kD = abstractC0080b.e();
            }
            if (abstractC0089kD == null) {
                abstractC0089kD = c0094p.f2412c.d();
            }
            if (c0093o3.f2408d == T.f2361g) {
                int i7 = c0084f.f2391i;
                if (i7 >= 64) {
                    throw new C0098u("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
                }
                c0084f.f2391i = i7 + 1;
                abstractC0089kD.d(c0084f, c0087i);
                c0084f.a((c0093o3.f2407c << 3) | 4);
                c0084f.f2391i--;
            } else {
                int iK = c0084f.k();
                if (c0084f.f2391i >= 64) {
                    throw new C0098u("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
                }
                int iD2 = c0084f.d(iK);
                c0084f.f2391i++;
                abstractC0089kD.d(c0084f, c0087i);
                c0084f.a(0);
                c0084f.f2391i--;
                c0084f.c(iD2);
            }
            objC = abstractC0089kD.c();
        }
        if (c0093o3.f2409e) {
            c0088j2.a(c0093o3, c0094p.b(objC));
            return true;
        }
        c0088j2.i(c0093o3, c0094p.b(objC));
        return true;
    }

    public final void p(C0094p c0094p) {
        if (c0094p.f2410a != a()) {
            throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
        }
    }

    public AbstractC0092n(AbstractC0090l abstractC0090l) {
        abstractC0090l.f2401d.f();
        abstractC0090l.f2402e = false;
        this.f2406c = abstractC0090l.f2401d;
    }
}
