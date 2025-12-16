package L3;

import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0090l;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import com.idm.agent.dm.IDMDmInterface;
import com.samsung.android.knox.container.KnoxContainerManager;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: L3.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0059h extends AbstractC0090l {

    /* renamed from: A, reason: collision with root package name */
    public List f1646A;

    /* renamed from: B, reason: collision with root package name */
    public X f1647B;

    /* renamed from: C, reason: collision with root package name */
    public List f1648C;

    /* renamed from: D, reason: collision with root package name */
    public e0 f1649D;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1650g;

    /* renamed from: h, reason: collision with root package name */
    public int f1651h;

    /* renamed from: i, reason: collision with root package name */
    public int f1652i;

    /* renamed from: j, reason: collision with root package name */
    public List f1653j;

    /* renamed from: k, reason: collision with root package name */
    public List f1654k;

    /* renamed from: l, reason: collision with root package name */
    public List f1655l;

    /* renamed from: m, reason: collision with root package name */
    public List f1656m;
    public List n;

    /* renamed from: o, reason: collision with root package name */
    public List f1657o;

    /* renamed from: p, reason: collision with root package name */
    public List f1658p;

    /* renamed from: q, reason: collision with root package name */
    public List f1659q;

    /* renamed from: r, reason: collision with root package name */
    public List f1660r;

    /* renamed from: s, reason: collision with root package name */
    public List f1661s;

    /* renamed from: t, reason: collision with root package name */
    public List f1662t;

    /* renamed from: u, reason: collision with root package name */
    public List f1663u;

    /* renamed from: v, reason: collision with root package name */
    public int f1664v;

    /* renamed from: w, reason: collision with root package name */
    public Q f1665w;

    /* renamed from: x, reason: collision with root package name */
    public int f1666x;

    /* renamed from: y, reason: collision with root package name */
    public List f1667y;

    /* renamed from: z, reason: collision with root package name */
    public List f1668z;

    public static C0059h h() {
        C0059h c0059h = new C0059h();
        c0059h.f1650g = 6;
        c0059h.f1653j = Collections.emptyList();
        c0059h.f1654k = Collections.emptyList();
        c0059h.f1655l = Collections.emptyList();
        c0059h.f1656m = Collections.emptyList();
        c0059h.n = Collections.emptyList();
        c0059h.f1657o = Collections.emptyList();
        c0059h.f1658p = Collections.emptyList();
        c0059h.f1659q = Collections.emptyList();
        c0059h.f1660r = Collections.emptyList();
        c0059h.f1661s = Collections.emptyList();
        c0059h.f1662t = Collections.emptyList();
        c0059h.f1663u = Collections.emptyList();
        c0059h.f1665w = Q.f1476v;
        c0059h.f1667y = Collections.emptyList();
        c0059h.f1668z = Collections.emptyList();
        c0059h.f1646A = Collections.emptyList();
        c0059h.f1647B = X.f1536i;
        c0059h.f1648C = Collections.emptyList();
        c0059h.f1649D = e0.f1629g;
        return c0059h;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        C0061j c0061jG = g();
        if (c0061jG.b()) {
            return c0061jG;
        }
        throw new A0.c();
    }

    public final Object clone() {
        C0059h c0059hH = h();
        c0059hH.i(g());
        return c0059hH;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        C0061j c0061j = null;
        try {
            try {
                C0061j.f1676M.getClass();
                i(new C0061j(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                C0061j c0061j2 = (C0061j) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    c0061j = c0061j2;
                    if (c0061j != null) {
                        i(c0061j);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (c0061j != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        i((C0061j) abstractC0095q);
        return this;
    }

    public final C0061j g() {
        C0061j c0061j = new C0061j(this);
        int i5 = this.f;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        c0061j.f = this.f1650g;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        c0061j.f1689g = this.f1651h;
        if ((i5 & 4) == 4) {
            i6 |= 4;
        }
        c0061j.f1690h = this.f1652i;
        if ((i5 & 8) == 8) {
            this.f1653j = Collections.unmodifiableList(this.f1653j);
            this.f &= -9;
        }
        c0061j.f1691i = this.f1653j;
        if ((this.f & 16) == 16) {
            this.f1654k = Collections.unmodifiableList(this.f1654k);
            this.f &= -17;
        }
        c0061j.f1692j = this.f1654k;
        if ((this.f & 32) == 32) {
            this.f1655l = Collections.unmodifiableList(this.f1655l);
            this.f &= -33;
        }
        c0061j.f1693k = this.f1655l;
        if ((this.f & 64) == 64) {
            this.f1656m = Collections.unmodifiableList(this.f1656m);
            this.f &= -65;
        }
        c0061j.f1695m = this.f1656m;
        if ((this.f & 128) == 128) {
            this.n = Collections.unmodifiableList(this.n);
            this.f &= -129;
        }
        c0061j.f1696o = this.n;
        if ((this.f & 256) == 256) {
            this.f1657o = Collections.unmodifiableList(this.f1657o);
            this.f &= -257;
        }
        c0061j.f1697p = this.f1657o;
        if ((this.f & 512) == 512) {
            this.f1658p = Collections.unmodifiableList(this.f1658p);
            this.f &= -513;
        }
        c0061j.f1699r = this.f1658p;
        if ((this.f & 1024) == 1024) {
            this.f1659q = Collections.unmodifiableList(this.f1659q);
            this.f &= KnoxContainerManager.ERROR_INVALID_PASSWORD_RESET_TOKEN;
        }
        c0061j.f1700s = this.f1659q;
        if ((this.f & 2048) == 2048) {
            this.f1660r = Collections.unmodifiableList(this.f1660r);
            this.f &= -2049;
        }
        c0061j.f1701t = this.f1660r;
        if ((this.f & 4096) == 4096) {
            this.f1661s = Collections.unmodifiableList(this.f1661s);
            this.f &= -4097;
        }
        c0061j.f1702u = this.f1661s;
        if ((this.f & 8192) == 8192) {
            this.f1662t = Collections.unmodifiableList(this.f1662t);
            this.f &= -8193;
        }
        c0061j.f1703v = this.f1662t;
        if ((this.f & NetworkAnalyticsConstants.DataPoints.FLAG_SOURCE_PORT) == 16384) {
            this.f1663u = Collections.unmodifiableList(this.f1663u);
            this.f &= -16385;
        }
        c0061j.f1704w = this.f1663u;
        if ((i5 & NetworkAnalyticsConstants.DataPoints.FLAG_UID) == 32768) {
            i6 |= 8;
        }
        c0061j.f1706y = this.f1664v;
        if ((i5 & NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID) == 65536) {
            i6 |= 16;
        }
        c0061j.f1707z = this.f1665w;
        if ((i5 & NetworkAnalyticsConstants.DataPoints.FLAG_PPID) == 131072) {
            i6 |= 32;
        }
        c0061j.f1677A = this.f1666x;
        if ((this.f & NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH) == 262144) {
            this.f1667y = Collections.unmodifiableList(this.f1667y);
            this.f &= -262145;
        }
        c0061j.f1678B = this.f1667y;
        if ((this.f & NetworkAnalyticsConstants.DataPoints.FLAG_INTERFACE_NAME) == 524288) {
            this.f1668z = Collections.unmodifiableList(this.f1668z);
            this.f &= -524289;
        }
        c0061j.f1680D = this.f1668z;
        if ((this.f & IDMDmInterface.IDM_MAX_OBJ_SIZE) == 1048576) {
            this.f1646A = Collections.unmodifiableList(this.f1646A);
            this.f &= -1048577;
        }
        c0061j.E = this.f1646A;
        if ((i5 & 2097152) == 2097152) {
            i6 |= 64;
        }
        c0061j.f1682G = this.f1647B;
        if ((this.f & 4194304) == 4194304) {
            this.f1648C = Collections.unmodifiableList(this.f1648C);
            this.f &= -4194305;
        }
        c0061j.f1683H = this.f1648C;
        if ((i5 & 8388608) == 8388608) {
            i6 |= 128;
        }
        c0061j.f1684I = this.f1649D;
        c0061j.f1688e = i6;
        return c0061j;
    }

    public final void i(C0061j c0061j) {
        e0 e0Var;
        X x4;
        Q q2;
        if (c0061j == C0061j.f1675L) {
            return;
        }
        int i5 = c0061j.f1688e;
        if ((i5 & 1) == 1) {
            int i6 = c0061j.f;
            this.f = 1 | this.f;
            this.f1650g = i6;
        }
        if ((i5 & 2) == 2) {
            int i7 = c0061j.f1689g;
            this.f = 2 | this.f;
            this.f1651h = i7;
        }
        if ((i5 & 4) == 4) {
            int i8 = c0061j.f1690h;
            this.f = 4 | this.f;
            this.f1652i = i8;
        }
        if (!c0061j.f1691i.isEmpty()) {
            if (this.f1653j.isEmpty()) {
                this.f1653j = c0061j.f1691i;
                this.f &= -9;
            } else {
                if ((this.f & 8) != 8) {
                    this.f1653j = new ArrayList(this.f1653j);
                    this.f |= 8;
                }
                this.f1653j.addAll(c0061j.f1691i);
            }
        }
        if (!c0061j.f1692j.isEmpty()) {
            if (this.f1654k.isEmpty()) {
                this.f1654k = c0061j.f1692j;
                this.f &= -17;
            } else {
                if ((this.f & 16) != 16) {
                    this.f1654k = new ArrayList(this.f1654k);
                    this.f |= 16;
                }
                this.f1654k.addAll(c0061j.f1692j);
            }
        }
        if (!c0061j.f1693k.isEmpty()) {
            if (this.f1655l.isEmpty()) {
                this.f1655l = c0061j.f1693k;
                this.f &= -33;
            } else {
                if ((this.f & 32) != 32) {
                    this.f1655l = new ArrayList(this.f1655l);
                    this.f |= 32;
                }
                this.f1655l.addAll(c0061j.f1693k);
            }
        }
        if (!c0061j.f1695m.isEmpty()) {
            if (this.f1656m.isEmpty()) {
                this.f1656m = c0061j.f1695m;
                this.f &= -65;
            } else {
                if ((this.f & 64) != 64) {
                    this.f1656m = new ArrayList(this.f1656m);
                    this.f |= 64;
                }
                this.f1656m.addAll(c0061j.f1695m);
            }
        }
        if (!c0061j.f1696o.isEmpty()) {
            if (this.n.isEmpty()) {
                this.n = c0061j.f1696o;
                this.f &= -129;
            } else {
                if ((this.f & 128) != 128) {
                    this.n = new ArrayList(this.n);
                    this.f |= 128;
                }
                this.n.addAll(c0061j.f1696o);
            }
        }
        if (!c0061j.f1697p.isEmpty()) {
            if (this.f1657o.isEmpty()) {
                this.f1657o = c0061j.f1697p;
                this.f &= -257;
            } else {
                if ((this.f & 256) != 256) {
                    this.f1657o = new ArrayList(this.f1657o);
                    this.f |= 256;
                }
                this.f1657o.addAll(c0061j.f1697p);
            }
        }
        if (!c0061j.f1699r.isEmpty()) {
            if (this.f1658p.isEmpty()) {
                this.f1658p = c0061j.f1699r;
                this.f &= -513;
            } else {
                if ((this.f & 512) != 512) {
                    this.f1658p = new ArrayList(this.f1658p);
                    this.f |= 512;
                }
                this.f1658p.addAll(c0061j.f1699r);
            }
        }
        if (!c0061j.f1700s.isEmpty()) {
            if (this.f1659q.isEmpty()) {
                this.f1659q = c0061j.f1700s;
                this.f &= KnoxContainerManager.ERROR_INVALID_PASSWORD_RESET_TOKEN;
            } else {
                if ((this.f & 1024) != 1024) {
                    this.f1659q = new ArrayList(this.f1659q);
                    this.f |= 1024;
                }
                this.f1659q.addAll(c0061j.f1700s);
            }
        }
        if (!c0061j.f1701t.isEmpty()) {
            if (this.f1660r.isEmpty()) {
                this.f1660r = c0061j.f1701t;
                this.f &= -2049;
            } else {
                if ((this.f & 2048) != 2048) {
                    this.f1660r = new ArrayList(this.f1660r);
                    this.f |= 2048;
                }
                this.f1660r.addAll(c0061j.f1701t);
            }
        }
        if (!c0061j.f1702u.isEmpty()) {
            if (this.f1661s.isEmpty()) {
                this.f1661s = c0061j.f1702u;
                this.f &= -4097;
            } else {
                if ((this.f & 4096) != 4096) {
                    this.f1661s = new ArrayList(this.f1661s);
                    this.f |= 4096;
                }
                this.f1661s.addAll(c0061j.f1702u);
            }
        }
        if (!c0061j.f1703v.isEmpty()) {
            if (this.f1662t.isEmpty()) {
                this.f1662t = c0061j.f1703v;
                this.f &= -8193;
            } else {
                if ((this.f & 8192) != 8192) {
                    this.f1662t = new ArrayList(this.f1662t);
                    this.f |= 8192;
                }
                this.f1662t.addAll(c0061j.f1703v);
            }
        }
        if (!c0061j.f1704w.isEmpty()) {
            if (this.f1663u.isEmpty()) {
                this.f1663u = c0061j.f1704w;
                this.f &= -16385;
            } else {
                if ((this.f & NetworkAnalyticsConstants.DataPoints.FLAG_SOURCE_PORT) != 16384) {
                    this.f1663u = new ArrayList(this.f1663u);
                    this.f |= NetworkAnalyticsConstants.DataPoints.FLAG_SOURCE_PORT;
                }
                this.f1663u.addAll(c0061j.f1704w);
            }
        }
        int i9 = c0061j.f1688e;
        if ((i9 & 8) == 8) {
            int i10 = c0061j.f1706y;
            this.f |= NetworkAnalyticsConstants.DataPoints.FLAG_UID;
            this.f1664v = i10;
        }
        if ((i9 & 16) == 16) {
            Q q5 = c0061j.f1707z;
            if ((this.f & NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID) != 65536 || (q2 = this.f1665w) == Q.f1476v) {
                this.f1665w = q5;
            } else {
                P pS = Q.s(q2);
                pS.i(q5);
                this.f1665w = pS.g();
            }
            this.f |= NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID;
        }
        if ((c0061j.f1688e & 32) == 32) {
            int i11 = c0061j.f1677A;
            this.f |= NetworkAnalyticsConstants.DataPoints.FLAG_PPID;
            this.f1666x = i11;
        }
        if (!c0061j.f1678B.isEmpty()) {
            if (this.f1667y.isEmpty()) {
                this.f1667y = c0061j.f1678B;
                this.f &= -262145;
            } else {
                if ((this.f & NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH) != 262144) {
                    this.f1667y = new ArrayList(this.f1667y);
                    this.f |= NetworkAnalyticsConstants.DataPoints.FLAG_PARENT_PROCESS_HASH;
                }
                this.f1667y.addAll(c0061j.f1678B);
            }
        }
        if (!c0061j.f1680D.isEmpty()) {
            if (this.f1668z.isEmpty()) {
                this.f1668z = c0061j.f1680D;
                this.f &= -524289;
            } else {
                if ((this.f & NetworkAnalyticsConstants.DataPoints.FLAG_INTERFACE_NAME) != 524288) {
                    this.f1668z = new ArrayList(this.f1668z);
                    this.f |= NetworkAnalyticsConstants.DataPoints.FLAG_INTERFACE_NAME;
                }
                this.f1668z.addAll(c0061j.f1680D);
            }
        }
        if (!c0061j.E.isEmpty()) {
            if (this.f1646A.isEmpty()) {
                this.f1646A = c0061j.E;
                this.f &= -1048577;
            } else {
                if ((this.f & IDMDmInterface.IDM_MAX_OBJ_SIZE) != 1048576) {
                    this.f1646A = new ArrayList(this.f1646A);
                    this.f |= IDMDmInterface.IDM_MAX_OBJ_SIZE;
                }
                this.f1646A.addAll(c0061j.E);
            }
        }
        if ((c0061j.f1688e & 64) == 64) {
            X x5 = c0061j.f1682G;
            if ((this.f & 2097152) != 2097152 || (x4 = this.f1647B) == X.f1536i) {
                this.f1647B = x5;
            } else {
                C0057f c0057fI = X.i(x4);
                c0057fI.l(x5);
                this.f1647B = c0057fI.h();
            }
            this.f |= 2097152;
        }
        if (!c0061j.f1683H.isEmpty()) {
            if (this.f1648C.isEmpty()) {
                this.f1648C = c0061j.f1683H;
                this.f &= -4194305;
            } else {
                if ((this.f & 4194304) != 4194304) {
                    this.f1648C = new ArrayList(this.f1648C);
                    this.f |= 4194304;
                }
                this.f1648C.addAll(c0061j.f1683H);
            }
        }
        if ((c0061j.f1688e & 128) == 128) {
            e0 e0Var2 = c0061j.f1684I;
            if ((this.f & 8388608) != 8388608 || (e0Var = this.f1649D) == e0.f1629g) {
                this.f1649D = e0Var2;
            } else {
                C0064m c0064m = new C0064m(2);
                c0064m.f = Collections.emptyList();
                c0064m.m(e0Var);
                c0064m.m(e0Var2);
                this.f1649D = c0064m.i();
            }
            this.f |= 8388608;
        }
        f(c0061j);
        this.f2400c = this.f2400c.m(c0061j.f1687d);
    }
}
